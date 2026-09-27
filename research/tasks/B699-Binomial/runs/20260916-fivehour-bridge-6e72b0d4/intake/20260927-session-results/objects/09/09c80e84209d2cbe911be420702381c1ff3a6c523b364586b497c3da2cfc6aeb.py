"""Common I/O and frozen-parent intake. No mathematical replay of old branches."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import hashlib,json,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PFX='B699-D-i3-20260926-A208-TRUE13-FN31/'
PARENT_SHA='0088921f959fa172931a88800b82cb4f3840b7494227ccb6de313905aafc6e78'
C5={5,25,125,289,101,169,173,193,293,121,269,1}
def need(x,msg='exact assertion failed'):
    if not x:raise ValueError(msg)
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(b):return hashlib.sha256(b).hexdigest()
def parent():
    path=ROOT/'inputs/parent_A208_evidence.zip'
    need(sha(path.read_bytes())==PARENT_SHA,'parent digest')
    with zipfile.ZipFile(path) as z:
        need(z.testzip() is None,'parent CRC')
        def rd(n):return json.loads(z.read(PFX+n))
        fc=rd('certificates/03_same_input_FN31.json')
        qc=rd('certificates/05_original_Q31_consumer.json')
        p0=rd('inputs/parent_frontier_M0.json');p1=rd('inputs/parent_frontier_M1.json')
        pf=rd('certificates/06_same_M2_frontier.json')
        rows={r['A_mod496']:r for r in fc['rows']}
        zero=set(qc['condition_A_mod496']);c31=set(qc['positive_power_cycle_mod336'])
        R=[a for a in p0['surviving_A_residues'] if rows[a%496]['allowed_H'] and (a%496 not in zero or (a+1)%336 in c31)]
        need(len(R)==71805,'adopted current M0 list')
        # Byte adoption only, not old mathematical replay.
        checked=0
        for line in z.read(PFX+'SHA256SUMS.txt').decode().splitlines():
            h,n=line.split(maxsplit=1);need(sha(z.read(PFX+n.removeprefix('./')))==h,'parent member hash');checked+=1
        for n in ('HANDOFF.md','PROOFS.md'):
            need((ROOT/'inputs'/n).read_bytes()==z.read(PFX+n),'parent exact excerpt')
    return dict(rows=rows,R=R,M0=p0['new_A_modulus'],M2=pf['M2_unchanged'],bad725=set(p1['bad_new_residues']),parent_ledger=pf,parent_hash_members=checked)
def labels31(row):
    return {(c,s%5) for r in row['F_roots'] if r['H'] in row['allowed_H'] for c,s in r['c_and_positive_s_residue_mod5']}
def weight(a):return 1692 if (a+1)%336 not in C5 else (1837 if a%9==0 else 2127)
