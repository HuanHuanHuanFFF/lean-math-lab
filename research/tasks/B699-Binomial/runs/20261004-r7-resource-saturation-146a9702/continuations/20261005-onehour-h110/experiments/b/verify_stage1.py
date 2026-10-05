"""Read-only author verification of the fixed strictness fibers and compact r2 identity."""
from pathlib import Path
import sys,json,hashlib,time,sympy as s
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r;out=Path(__file__).parent;prior=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/b');st=time.monotonic()
def dec(ts,n):
 assert len({tuple(e) for e,c in ts})==len(ts) and all(len(e)==n and all(k>=0 for k in e) and rs.QQ(c).denominator==1 for e,c in ts)
 return rs.R.from_dict({tuple(e)+((0,) if n==2 else ()):rs.QQ(c) for e,c in ts})
wb=(prior/'one-step-N-colon.json').read_bytes();assert hashlib.sha256(wb).hexdigest()=='9151546b31ec8f2e6882acf142364c234226ce55eefee12ee70a151fa1d2d45f';W=dec(json.loads(wb)['W'],3)
zraw=(out/'r2-compact-certificate.json').read_bytes();assert hashlib.sha256(zraw).hexdigest()=='7c2856b663c147af885510140f89a128389effc9c9c06b01756ca02f03348fbd';z=json.loads(zraw);Z=dec(z['Z'],3);J=dec(z['Jcal'],2);M=dec(z['M'],2);B=dec(z['B1'],2)
assert r*r*u*u*y*y*Z==-J*J*fs['V0']-(J*M+r*B)*fs['P5']
F0=2*u*u*y*y-6*u*u*y+5*u*u+2*u*y-4*u+1
for F in list(fs.values())+[W]:
 c0=rs.R.from_dict({(a,b,0):c for (a,b,k),c in F.items() if k==0});assert not c0.div(F0)[1]
T=s.symbols('t');results=[]
for filename in ['strict-support-fiber.json','r0-removal-fiber.json']:
 data=json.loads((out/filename).read_text());q=s.Poly(sum(s.Rational(c)*T**i for i,c in enumerate(data['q'])),T,domain=s.QQ);assert q.degree()>0
 rdata=data['r'] if isinstance(data['r'],list) else [str(data['r'])];rr=s.Poly(sum(s.Rational(c)*T**i for i,c in enumerate(rdata)),T,domain=s.QQ);rp=[s.Poly(1,T,domain=s.QQ)]
 for i in range(1,10):rp.append((rp[-1]*rr).rem(q))
 allF=fs|gs|{'W':W,'Z':Z};vals={}
 for name in data['values']:
  F=allF[name];vv=s.Poly(0,T,domain=s.QQ)
  for k in range(1+max(e[2] for e in F)):
   coeffs={}
   for (a,b,j),c in F.items():
    if j==k:coeffs[a]=coeffs.get(a,0)+int(c)*2**b
   pp=s.Poly.from_dict({(a,):c for a,c in coeffs.items()},T,domain=s.QQ);vv=(vv+pp.rem(q)*rp[k]).rem(q)
  expected=s.Poly(sum(s.Rational(c)*T**i for i,c in enumerate(data['values'][name])),T,domain=s.QQ);assert vv==expected;vals[name]=vv
 units=data.get('unit_inverses',data.get('inverses'))
 extra={'r':rr,'u':s.Poly(T,T),'um':s.Poly(T-1,T),'E':s.Poly(2*T-1,T)}
 for name,cs in units.items():
  inv=s.Poly(sum(s.Rational(c)*T**i for i,c in enumerate(cs)),T,domain=s.QQ);v=vals[name] if name in vals else extra[name];assert (v*inv).rem(q)==1
 assert all(vals[n].is_zero for n in fs)
 if filename.startswith('strict'):assert vals['N'].is_zero and vals['K'].is_zero and not vals['W'].is_zero
 else:assert vals['W'].is_zero and not vals['Z'].is_zero
 results.append({'file':filename,'q_degree':q.degree(),'full_values_checked':len(vals),'unit_inverses_checked':len(units)})
print(json.dumps({'status':'AUTHOR_STAGE1_PASS','full_r2_identity':True,'constant_F0_divisibility_checks':7,'fibers':results,'source_provenance':prov,'seconds':time.monotonic()-st},ensure_ascii=False))
