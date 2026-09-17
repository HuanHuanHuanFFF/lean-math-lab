"""Independent direct evaluations of the parent's short nonbinary b=3 certificate."""
from pathlib import Path
from math import comb,gcd,isqrt,lcm
from datetime import datetime,timezone
import hashlib,json

here=Path(__file__).resolve().parent;run=here.parents[1]
source=run/'experiments/main/b3_remaining_small_cases.json'
code=source.with_suffix('.py');data=json.loads(source.read_text())
assert data['status']=='PASS' and data['script_sha256']==hashlib.sha256(code.read_bytes()).hexdigest()

def residual(epsilon,m,h,x,u):
    d=x-epsilon
    return 4*u*(m*m*u-3*d)*(m*m*u-6*d)-(h*d-9*u)*(x*x-2)

expected={(ep,m,h,x) for m,h in ((7,1),(5,2)) for ep,xs in ((1,(2,5)),(-1,(4,7))) for x in xs}
seen=set();table_values=0
for row in data['mod9_cases']:
    ep,m,h,x=(row[n] for n in ('epsilon','m','h','x_mod9'))
    values=[residual(ep,m,h,x,u)%9 for u in range(9)]
    assert values==row['values'] and all(values)
    seen.add((ep,m,h,x));table_values+=9
assert seen==expected and len(seen)==8

covers=data['m5_minus_prime_covers'];joint=lcm(6,*(row['m'] for row in covers))
assert data['m5_minus_period']%joint==0 and joint==120
checks=[];evaluations=0
for row in covers:
    p,period=row['p'],row['m']
    assert p>2 and all(p%d for d in range(2,isqrt(p)+1))
    assert pow(2,period,p)==1 and joint%period==0
    for r in row['bad_exponent_residues']:
        x=5*pow(2,r,p)%p
        # Directly evaluate the original epsilon=- polynomial; no F1(-x,-u) import.
        values=[residual(-1,5,1,x,u)%p for u in range(p)]
        assert all(values)
        evaluations+=p
        checks.append({'p':p,'exponent_residue':r,'all_p_residues_nonzero':True})
assert len(checks)==data['direct_cubic_tests']==11
live=[s for s in range(joint) if s%6 in (3,5)]
for row in covers:live=[s for s in live if s%row['m'] not in row['bad_exponent_residues']]
assert not live

bottom=[]
for j in range(4,9):
    odd=gcd(comb(16,3),comb(16,j))
    while odd%2==0:odd//=2
    assert odd>1
    bottom.append({'n':16,'j':j,'common_odd_divisor':odd})
out={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),
     'source':str(source),'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
     'source_code_sha256':hashlib.sha256(code.read_bytes()).hexdigest(),
     'method':'stdlib direct residue enumeration, original epsilon=- polynomial, exact binomials for n=16',
     'mod9_tables':8,'mod9_evaluations':table_values,'prime_checks':checks,'prime_field_evaluations':evaluations,
     'declared_period':data['m5_minus_period'],'actual_joint_period':joint,'allowed_joint_period_classes':40,'survivors':[],
     'complete_n16_bottom':bottom,
     'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
dest=here/'nonbinary-normalized-check.json';assert not dest.exists()
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','mod9_tables':8,'prime_tests':len(checks),'direct_evaluations':evaluations,
                  'joint_period':joint,'survivors':0,'all_n16_legal_pairs':len(bottom),'output':str(dest)}))
