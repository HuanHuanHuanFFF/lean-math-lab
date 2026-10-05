#!/usr/bin/env python3
"""Verify a sealed packet ZIP, extract a new copy, and optionally write a DETACHED receipt.
Checks paths, duplicates, CRC, the exact manifest member set and SHA-256 after extraction.
Also records independent system unzip/sha256sum checks when available. Not a Lean checker.
"""
from pathlib import Path, PurePosixPath
import argparse, datetime, hashlib, json, re, shutil, stat, subprocess, tempfile, zipfile


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def verify(archive: Path, extraction: Path) -> dict:
    archive=archive.resolve(strict=True)
    if extraction.exists():raise FileExistsError('Extraction destination must not already exist')
    extraction.mkdir(parents=True)
    with zipfile.ZipFile(archive) as z:
        infos=z.infolist()
        names=[i.filename for i in infos]
        if len(names)!=len(set(names)):raise ValueError('Duplicate ZIP member')
        if not names:raise ValueError('Empty archive')
        for i in infos:
            pp=PurePosixPath(i.filename)
            if pp.is_absolute() or '..' in pp.parts or '\\' in i.filename or ':' in pp.parts[0]:
                raise ValueError('Unsafe archive member path')
            if i.is_dir() or stat.S_ISLNK(i.external_attr>>16):
                raise ValueError('This sealed format requires regular file entries only')
        roots={PurePosixPath(n).parts[0] for n in names}
        if len(roots)!=1:raise ValueError('Expected a single packet root')
        prefix=next(iter(roots))+'/'
        manifest_name=prefix+'MANIFEST.sha256'
        if manifest_name not in names:raise ValueError('Manifest missing')
        expected={}
        for line in z.read(manifest_name).decode().splitlines():
            m=re.fullmatch(r'([0-9a-f]{64})  (.+)',line)
            if not m or m[2] in expected:raise ValueError('Invalid/duplicate manifest line')
            expected[m[2]]=m[1]
        actual_relative={n[len(prefix):] for n in names}
        if set(expected)!=(actual_relative-{'MANIFEST.sha256'}):
            raise ValueError('Manifest does not cover exactly all non-manifest members')
        if z.testzip() is not None:raise ValueError('ZIP CRC check failed')
        members=[]
        for i in infos:
            data=z.read(i)
            path=extraction/i.filename
            path.parent.mkdir(parents=True,exist_ok=True)
            path.write_bytes(data)
            reread=path.read_bytes()
            digest=sha(reread)
            if data!=reread:raise ValueError('Extraction byte mismatch')
            rel=i.filename[len(prefix):]
            if rel!='MANIFEST.sha256' and digest!=expected[rel]:
                raise ValueError('Member SHA mismatch: '+rel)
            members.append({'path':i.filename,'bytes':len(reread),'sha256':digest,
                            'crc32':f'{i.CRC:08x}','manifest_entry_matches':None if rel=='MANIFEST.sha256' else True})
    commands=[]
    checks=[('unzip',['unzip','-t',str(archive)],extraction),
            ('sha256sum',['sha256sum','-c','MANIFEST.sha256'],extraction/prefix)]
    for tool,argv,cwd in checks:
        if not shutil.which(tool):
            commands.append({'argv':argv,'status':'NOT_RUN_TOOL_MISSING','exit_code':None})
            continue
        r=subprocess.run(argv,cwd=cwd,capture_output=True)
        commands.append({'argv':argv,'cwd':str(cwd),'exit_code':r.returncode,
                         'stdout':r.stdout.decode(errors='replace'),'stderr':r.stderr.decode(errors='replace')})
        if r.returncode:raise ValueError('Independent byte check failed: '+tool)
    return {
        'created_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'scope':'archive/member/extraction integrity only, NOT proof validity',
        'archive_name':archive.name,'archive_bytes':archive.stat().st_size,'archive_sha256':sha(archive.read_bytes()),
        'zip_crc_check':'PASS','unique_safe_regular_members':True,
        'member_count':len(members),'manifest_entry_count':len(expected),
        'manifest_coverage':'all members except MANIFEST.sha256 itself; its hash is in this detached receipt',
        'manifest_sha256':sha((extraction/manifest_name).read_bytes()),
        'actual_extraction_directory':str(extraction),
        'post_extraction_member_hashes_match':True,
        'members':members,'independent_commands':commands,
        'lean_run':False,'axiom_audit_run':False,'project_checker_run':False,
    }


def main() -> int:
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('archive',type=Path)
    p.add_argument('--extract-to',type=Path)
    p.add_argument('--receipt',type=Path)
    a=p.parse_args()
    if a.receipt and a.receipt.exists():raise FileExistsError('Refusing to overwrite detached receipt')
    if a.extract_to:
        result=verify(a.archive,a.extract_to.resolve())
        result['extracted_copy_retained']=True
    else:
        with tempfile.TemporaryDirectory(prefix='b699-unpack-') as tmp:
            result=verify(a.archive,Path(tmp)/'extracted')
        result['extracted_copy_retained']=False
    text=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
    if a.receipt:
        a.receipt.parent.mkdir(parents=True,exist_ok=True)
        a.receipt.write_text(text)
    print(json.dumps({k:v for k,v in result.items() if k not in ['members','independent_commands']},ensure_ascii=False,indent=2))
    return 0


if __name__=='__main__':
    raise SystemExit(main())
