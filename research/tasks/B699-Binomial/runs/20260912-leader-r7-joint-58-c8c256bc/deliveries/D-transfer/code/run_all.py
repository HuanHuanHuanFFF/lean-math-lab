from pathlib import Path
import subprocess, tempfile, sys, json, hashlib, time

def main():
    root=Path(__file__).resolve().parents[1]
    manifest=root/'MANIFEST.json'
    if manifest.exists():
        for name,digest in json.loads(manifest.read_text()).items():
            p=root/name
            assert p.is_file() and hashlib.sha256(p.read_bytes()).hexdigest()==digest, name
    runs=[]
    with tempfile.TemporaryDirectory(prefix='b699-d-transfer-regen-') as d:
        commands=[
            [sys.executable,str(root/'code/generate.py'),d],
            [sys.executable,str(root/'code/verify.py'),str(Path(d)/'certificate.json')],
            [sys.executable,str(root/'code/check_new.py')],
        ]
        start=time.monotonic()
        for cmd in commands:
            r=subprocess.run(cmd,cwd=root,capture_output=True,text=True,check=True)
            runs.append({'command':[Path(x).name if '/' in x else x for x in cmd],
                         'returncode':r.returncode,'stdout':r.stdout.strip(),'stderr':r.stderr.strip()})
        assert (Path(d)/'certificate.json').read_bytes()==(root/'evidence/certificate.json').read_bytes()
    result={'status':'PASS','regenerated_certificate_byte_identical':True,
            'seconds_diagnostic':time.monotonic()-start,'commands':runs,
            'lean_run':False,'independent_human_review':False,
            'upstream_B523_states_replayed':False}
    print(json.dumps(result,indent=2,ensure_ascii=False))
if __name__=='__main__':main()
