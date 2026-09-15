"""Independent exact acceptance of the adopted SQ modular tail and small bottom."""
from pathlib import Path
from datetime import datetime,timezone
from math import comb,gcd
import hashlib,json,re

here=Path(__file__).resolve().parent;run=here.parents[1];repo=run.parents[4]
source=repo/'research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/intake/20260915-daily-results/materials/B-two-neighbor-square-and-primitive-block/notes/PROOFS.md'
body=source.read_text(encoding='utf-8')
part=body.split('|ε|ρ|p|x modp|',1)[1].split('ε=1全部模数',1)[0]
rows=[]
for line in part.splitlines():
    match=re.fullmatch(r'\|([−-]?1)\|([12])\|(\d+)\|(\d+)\|',line.strip())
    if match:rows.append(tuple(int(v.replace('−','-')) for v in match.groups()))
assert len(rows)==20
def P(ep,rho,x,a):
    d=x-ep
    return 12*a*(a-d)*(a-2*d)-(rho*d-3*a)*(x*x-2)

checks=[];evaluations=0
for ep,r,p,x in rows:
    assert pow(2,36 if ep==1 else 60,p)==1
    for rr in (r,6-r):
        values=[P(ep,rr,x,a)%p for a in range(p)]
        assert all(values)
        checks.append({'epsilon':ep,'rho':rr,'p':p,'x_modp':x,'all_residues_nonzero':True})
    evaluations+=p
assert evaluations==622
states=0
for ep,period,allowed in [(1,36,(2,4)),(-1,60,(1,5))]:
    for ss in range(period):
        if ss%6 not in allowed:continue
        for r in (1,2,4,5):
            candidates=[(e,r0,p,x) for e,r0,p,x in rows if e==ep and min(r,6-r)==r0 and pow(2,ss,p)==x]
            assert candidates,(ep,ss,r)
            states+=1
assert states==128
bottom=[]
for x in range(2,13,2):
    n=x*x
    for a in range(1,x+1):
        zeta=a*(x-1);j=min(zeta,n-zeta)
        if not 4<=j<=n//2:continue
        odd=gcd(comb(n,3),comb(n,j))
        while odd%2==0:odd//=2
        assert odd>1
        bottom.append({'x':x,'a':a,'zeta':zeta,'j':j,'odd_common_divisor':odd})
assert len(bottom)==39
out={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),'source':str(source),
     'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
     'scope':'SQ source §§2–5, direct original rho=1/2/4/5 checks and complete small epsilon=- domain.',
     'rows':20,'source_root_evaluations':622,'independent_reflected_root_evaluations':1244,
     'full_original_rho_exponent_states':128,'checks':checks,'small_bottom_count':39,'small_bottom':bottom,
     'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
dest=here/'SQ-source-check.json';assert not dest.exists()
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','rows':20,'root_evaluations':1244,'full_states':128,'small_bottom':39,'output':str(dest)}))
