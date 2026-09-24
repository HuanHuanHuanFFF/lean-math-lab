#!/usr/bin/env python3
from __future__ import annotations
from pathlib import Path
from collections import Counter
from math import comb
import hashlib,json,subprocess,sys,tempfile

ROOT=Path(__file__).resolve().parents[1]
CERT=ROOT/'certificates'


def sha(path:Path)->str:
    h=hashlib.sha256()
    with path.open('rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()

def is_prime(n:int)->bool:
    if n<2:return False
    d=2
    while d*d<=n:
        if n%d==0:return False
        d+=1
    return True

def source_values(q:int, mult:list[list[int]]):
    sums=[]; sq=[]; z=0; loads=[0]*9; genus=0
    for r in range(3,9):
        row=mult[r-3]
        assert len(row)==r//2+1 and sum(row)==q
        s1=s2=0
        for s,m in enumerate(row):
            v=s*(r-s)
            s1+=m*v;s2+=m*v*v;z+=int(m>0);genus+=comb(m,2)
            loads[s]+=m;loads[r-s]+=m
        if r%2==0:genus+=comb(row[r//2],2)
        sums.append(s1);sq.append(s2)
    return sums,sq,z,loads,genus

def quadratic_six(vals:list[int])->bool:
    return all(vals[i+3]-3*vals[i+2]+3*vals[i+1]-vals[i]==0 for i in range(3))

def fifth_difference_zero(vals:list[int])->bool:
    c=[-1,5,-10,10,-5,1]
    return sum(a*b for a,b in zip(c,vals))==0

def parse_gate(label:str,q:int,line:str):
    a=list(map(int,line.split()))
    if label=='KSAT2_q31':
        assert len(a)==3+21 and a[0]==q
        kd,g=a[1],a[2];assert kd in (0,1,2)
        raw=a[3:]
        kind='kappa1'
    else:
        assert len(a)==4+21 and a[0]==q and a[1]==0 and a[2]==0
        kd=None;g=a[3];raw=a[4:]
        kind='zero'
    mult=[];pos=0
    for r in range(3,9):
        n=r//2+1;mult.append(raw[pos:pos+n]);pos+=n
    assert pos==21
    sums,sq,z,loads,gen=source_values(q,mult)
    assert quadratic_six(sums)
    assert fifth_difference_zero(sq)
    assert z>=14
    if kind=='kappa1':
        kr=4+2*kd;ks=kr//2;m=mult[kr-3][ks];assert m>=1
        loads[ks]-=1
        gen-=m-1
    assert all(x<=2*q for x in loads)
    assert gen==g and gen<=(q-1)*(q-1)
    return mult,kd

def check_pivot_ids(q:int,mult:list[list[int]],kd:int|None,ids:list[int]):
    K=(q-2)*(q-2)+1
    assert len(ids)==K and len(set(ids))==K
    for ident in ids:
        r=ident//100000;rem=ident%100000
        ss=rem//10000;rem%=10000
        i=rem//100;j=rem%100
        assert 3<=r<=8 and 0<=ss<=r//2 and i>=1 and j>=0
        m=mult[r-3][ss];diag=(2*ss==r)
        if diag:
            lim=2*m-(1 if kd is not None and r==4+2*kd else 0)
            assert i+2*j<lim
        else:
            assert i+j<m

def run_json(script:str,out:Path):
    subprocess.run([sys.executable,'-B',str(ROOT/'code'/script),str(out)],check=True,capture_output=True,text=True)
    return json.loads(out.read_text())

def main():
    summary=json.loads((CERT/'geometry_summary.json').read_text())
    assert summary['status']=='PASS_CANONICAL_GEOMETRY_EVIDENCE'
    assert summary['modulus']==257 and is_prime(257)
    total=0;door=[]
    for brief in summary['receipts']:
        label=brief['label'];q=brief['q'];d=CERT/'geometry'/label
        rec=json.loads((d/'receipt.json').read_text())
        assert rec['modulus']==257 and rec['prime'] and rec['all_full_rank']
        assert rec['matrix_columns']==(q-2)*(q-2)+1
        assert sha(d/'gates_full.txt')==rec['full_gate_sha256']
        full=(d/'gates_full.txt').read_text().splitlines()
        covered=[];processed=0
        for ch in rec['chunks']:
            ip=d/f"chunk_{ch['index']:03d}.in";op=d/f"chunk_{ch['index']:03d}.out"
            assert sha(ip)==ch['input_sha256'];assert sha(op)==ch['output_sha256']
            il=ip.read_text().splitlines();ol=op.read_text().splitlines()
            assert len(il)==len(ol)==ch['input_lines']==ch['output_lines']
            for idx,(gline,oline) in enumerate(zip(il,ol)):
                mult,kd=parse_gate(label,q,gline)
                a=oline.split();K=rec['matrix_columns']
                assert len(a)==K+3 and int(a[0])==idx and int(a[1])==K
                det=int(a[2]);assert 0<det<257
                check_pivot_ids(q,mult,kd,list(map(int,a[3:])))
            covered.extend(il);processed+=len(il)
        assert Counter(covered)==Counter(full)
        assert processed==rec['processed_count']==rec['gate_count']==len(full)
        total+=processed;door.append((label,processed,rec['matrix_columns']))
    assert total==summary['total_systems']==4933
    assert summary['ksat2_q31_systems']==1123
    assert summary['ksat37_42_systems']==3810

    # Frozen-source hashes.
    assert sha(ROOT/'sources'/'OVERVIEW-2026-09-22.md.txt')=='4ad5a387242d834c57d08cebf011ed82507bd5f9bf661589a323f98b480c56c5'
    expected={
      'ledger_core.py':'e7a1d44f42864b0dd08c9c6588f79ee14a0f0db0932a47a79c20dc20eb500dc2',
      'moment_core.py':'b31ec280778b10d23e59661fdc51e093a6786c76648bbec019eed63d3a9d8dd3',
      'research_round.py':'b44622b560af2b3826a1c577439b66180a468affdea35e313d027d4433a0554d'}
    for n,h in expected.items():assert sha(ROOT/'code'/'baseline'/n)==h

    with tempfile.TemporaryDirectory() as td:
        td=Path(td)
        a=run_json('ledger_cover8.py',td/'ledger.json')
        b=run_json('check_ledger_independent.py',td/'independent.json')
        c=run_json('make_stagewise.py',td/'stagewise.json')
        assert a==json.loads((CERT/'ledger_cover8.json').read_text())
        assert b==json.loads((CERT/'ledger_independent.json').read_text())
        assert c==json.loads((CERT/'stagewise_payoff.json').read_text())
    assert a['COVER8_proved'] and a['remaining_nine_factor_states']==0
    assert b['all_twelve_fail']
    cross=json.loads((CERT/'cross_prime_spot_checks.json').read_text())
    assert cross['status']=='PASS_CROSS_PRIME_SPOT_CHECKS' and cross['all_full_rank']
    src=(ROOT/'code'/'jets_zero_p257_fast.cpp').read_text()
    assert 'P[32][100]' in src and 'n<100' in src and 'b<100' in src
    result={'status':'PASS_EXISTING_CERTIFICATE_VERIFICATION','prime':257,
            'geometry_systems':total,'doors':door,
            'ledger_status':a['status'],'independent_status':b['status'],
            'stagewise_status':c['status'],'cross_prime_spot_status':cross['status'],'same_G_cover_upper_bound':8,
            'Lean':False,'external_independent_full_chain_review':False,
            'repository_modified':False}
    print(json.dumps(result,indent=2))
    return result
if __name__=='__main__':main()
