"""Clean extraction + read-only reception, with before/after byte checks."""
from __future__ import annotations
from pathlib import Path, PurePosixPath
import argparse,hashlib,json,os,stat,subprocess,sys,tempfile,zipfile

def sha(p): return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def canonical(x): return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def tree(root):
    return {str(p.relative_to(root)):sha(p) for p in sorted(root.rglob('*')) if p.is_file()}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('archive');ap.add_argument('--output',required=True)
    args=ap.parse_args(); archive=Path(args.archive).resolve(); output=Path(args.output).resolve()
    if not archive.is_file():raise ValueError('archive not found')
    with tempfile.TemporaryDirectory(prefix='b699-m2top-clean-') as td:
        work=Path(td); extracted=work/'extracted';extracted.mkdir()
        with zipfile.ZipFile(archive) as z:
            for item in z.infolist():
                name=PurePosixPath(item.filename)
                if name.is_absolute() or '..' in name.parts or '\\' in item.filename:
                    raise ValueError('unsafe archive path')
                if stat.S_ISLNK(item.external_attr>>16):raise ValueError('symlink in archive')
            entries=len(z.infolist());z.extractall(extracted)
        scripts=list(extracted.glob('*/scripts/verify.py'))
        if len(scripts)!=1:raise ValueError('exactly one reception root required')
        root=scripts[0].parents[1]
        before=tree(root); result_path=work/'verification.json'
        command=[sys.executable,'-B',str(scripts[0]),'--output',str(result_path)]
        env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',PYTHONHASHSEED='0')
        run=subprocess.run(command,cwd=root,env=env,text=True,capture_output=True,timeout=120)
        if run.returncode:
            raise RuntimeError('reception failed:\n'+run.stdout+'\n'+run.stderr)
        result=json.loads(result_path.read_text())
        after=tree(root)
        assert before==after,'extracted tree changed during reception'
        assert result['status']=='PASS'
        cert=json.loads((root/'certificates'/'independent_terminal.json').read_text())
        receipt=dict(status='PASS',archive_name=archive.name,archive_sha256=sha(archive),
                     archive_entries=entries,extracted_files=len(before),
                     clean_extraction=True,extracted_tree_unchanged=True,
                     temporary_directory_removed_after_run=True,
                     execution='Python standard library; no network; no repository access',
                     verifier_result=result,exact_independent_terminal_comparisons=cert['exact_tests'],
                     python=sys.version,stdout_sha256=hashlib.sha256(run.stdout.encode()).hexdigest(),
                     scope='byte integrity and recomputation, not Lean or external mathematical review')
    output.parent.mkdir(parents=True,exist_ok=True);output.write_bytes(canonical(receipt))
    print(json.dumps(receipt,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
