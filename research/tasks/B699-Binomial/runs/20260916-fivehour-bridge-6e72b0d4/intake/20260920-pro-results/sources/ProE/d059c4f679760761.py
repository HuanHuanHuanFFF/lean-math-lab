"""Read-only replay; no network, package installation, or repository writes."""
import hashlib,subprocess,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def snapshot():
    return {str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
            for p in ROOT.rglob('*') if p.is_file()}

def main():
    before=snapshot(); recorded={}
    for line in (ROOT/'SHA256SUMS').read_text().splitlines():
        h,name=line.split('  ',1)
        p=(ROOT/name).resolve()
        if ROOT not in p.parents or not p.is_file(): raise ValueError('unsafe or missing manifest path')
        if name in recorded: raise ValueError('duplicate manifest path')
        recorded[name]=h
        if hashlib.sha256(p.read_bytes()).hexdigest()!=h: raise ValueError('hash mismatch: '+name)
    if set(recorded)!=set(before)-{'SHA256SUMS'}: raise ValueError('manifest member mismatch')
    print('PASS_MEMBER_SHA256')
    for script in ('check_primary.py','check_independent.py','test_bad_certificates.py','check_diagnostics.py'):
        p=subprocess.run([sys.executable,'-B',str(ROOT/script)],capture_output=True,text=True)
        print(p.stdout,end='')
        if p.returncode:
            print(p.stderr,file=sys.stderr); raise SystemExit(p.returncode)
    if snapshot()!=before: raise ValueError('replay modified package bytes')
    print('PASS_READ_ONLY_PLUS_SQUARE_REPLAY')
if __name__=='__main__': main()
