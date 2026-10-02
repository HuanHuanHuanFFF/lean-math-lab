"""Verify package and rerun the new R7 arithmetic audit; no old theorem execution."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import hashlib,json,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def check_manifest():
    path=ROOT/'SHA256SUMS.txt'
    if not path.exists():path=ROOT/'PAYLOAD_SHA256SUMS.txt'
    if not path.is_file():raise RuntimeError('missing manifest')
    seen=set()
    for line in path.read_text().splitlines():
        h,name=line.split('  ',1);rel=Path(name)
        if rel.is_absolute() or '..' in rel.parts or name in seen:raise RuntimeError('unsafe or repeated path')
        seen.add(name);p=ROOT/rel
        if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=h:raise RuntimeError('member hash mismatch: '+name)
    allowed={path.name}
    if path.name=='PAYLOAD_SHA256SUMS.txt':allowed|={'SHA256SUMS.txt','CLEAN_REPLAY_RECEIPT.json'}
    actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()}
    if actual-seen-allowed:raise RuntimeError('unlisted member: '+repr(sorted(actual-seen-allowed)))

def check_input():
    p=ROOT/'sources/R6_original.zip'
    if hashlib.sha256(p.read_bytes()).hexdigest()!='2ee51038f01c3c0c4a3d876ff92567779c9170f44831ae8014f5e8a36cd43285':raise RuntimeError('wrong R6 archive')
    prefix='B699-E-R6-COMPLETE-SMALL-PART/'
    with zipfile.ZipFile(p) as z:
        checked=set()
        for line in z.read(prefix+'SHA256SUMS.txt').decode().splitlines():
            h,name=line.split(None,1);name=name.strip();rel=Path(name)
            if rel.is_absolute() or '..' in rel.parts:raise RuntimeError('unsafe input member')
            if hashlib.sha256(z.read(prefix+name)).hexdigest()!=h:raise RuntimeError('input member changed')
            checked.add(prefix+name)
        if set(z.namelist())!=checked|{prefix+'SHA256SUMS.txt'}:raise RuntimeError('input member enumeration mismatch')
    if hashlib.sha256((ROOT/'sources/OVERVIEW.md').read_bytes()).hexdigest()!='96f92ba7061e8facb774bdf2d42c5d445f3f1a63564ca0e2b71ceaca08d44066':raise RuntimeError('wrong Overview')

def main():
    check_manifest();check_input()
    import audit,io,contextlib
    out=io.StringIO()
    with contextlib.redirect_stdout(out):audit.main()
    data=json.loads(out.getvalue());expected=json.loads((ROOT/'certificates/EXPECTED_AUDIT.json').read_text())
    if data!=expected:raise RuntimeError('new audit differs from expected results')
    print(json.dumps({'status':'PASS','new_audit_matches_expected':True,'payload_manifest_checked':True,'original_R6_bytes_checked':True,
                     'new_audit':data,'note':'Universal proofs are in PROOFS.md. This is not Lean or external review.'},indent=2,ensure_ascii=False))
if __name__=='__main__':main()
