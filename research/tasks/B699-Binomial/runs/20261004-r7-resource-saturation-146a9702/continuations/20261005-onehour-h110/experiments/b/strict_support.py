from pathlib import Path
import sys,json,time,hashlib,sympy as s
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();out=Path(__file__).parent;prior=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/b');wr=(prior/'one-step-N-colon.json').read_bytes();assert hashlib.sha256(wr).hexdigest()=='9151546b31ec8f2e6882acf142364c234226ce55eefee12ee70a151fa1d2d45f';wdata=json.loads(wr);W=rs.R.from_dict({tuple(e):rs.QQ(c) for e,c in wdata['W']});st=time.monotonic();U=s.symbols('u');q=s.Poly(72*U**9-313*U**8+488*U**7-350*U**6-476*U**5+1475*U**4-1732*U**3+1248*U**2-408*U+60,U,domain=s.QQ)
def upoly(F,k=0):
 d={}
 for (i,j,z),c in F.items():
  if z==k:d[i]=d.get(i,0)+int(c)*2**j
 return s.Poly.from_dict({(i,):v for i,v in d.items()},U,domain=s.QQ)
a=upoly(gs['N'],1);b=upoly(gs['N'],0);ai=s.invert(a,q);rr=(-b*ai).rem(q);rp=[s.Poly(1,U,domain=s.QQ)]
for k in range(1,10):rp.append((rp[-1]*rr).rem(q))
def evaluate(F):
 val=s.Poly(0,U,domain=s.QQ)
 for k in range(1+max(e[2] for e in F)):val=(val+upoly(F,k).rem(q)*rp[k]).rem(q)
 return val
values={n:evaluate(F) for n,F in (fs|gs|{'W':W}).items()}
for n in list(fs)+['N','K']:assert values[n].is_zero
assert not values['W'].is_zero
units={'W':values['W'],'r':rr,'D':values['D'],'u':s.Poly(U,U),'um':s.Poly(U-1,U),'E':s.Poly(2*U-1,U)}
inverses={n:s.invert(v,q) for n,v in units.items()}
for n,v in units.items():assert (v*inverses[n]).rem(q)==1
assert s.gcd(q,q.diff()).degree()==0
enc=lambda p:[str(p.nth(i)) for i in range(max(0,p.degree())+1)]
cert={'claim':'There are exact complex points of J_new with W nonzero; hence W is not in sqrt(J_new), and adjoining W strictly shrinks the ordinary complex zero set. These points have N=K=0 and are outside the legal h-open set.','q':enc(q),'u':'t','y':2,'r':enc(rr),'values':{n:enc(v) for n,v in values.items()},'unit_inverses':{n:enc(v) for n,v in inverses.items()},'source_provenance':prov,'W_source_sha256':hashlib.sha256(wr).hexdigest(),'seconds':time.monotonic()-st}
p=out/'strict-support-fiber.json';p.write_text(json.dumps(cert,indent=2)+'\n',encoding='utf-8');print({'status':'PASS','degree_q':q.degree(),'all_six_zero':True,'W_invertible':True,'N_zero':True,'K_zero':True,'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'seconds':cert['seconds']})
