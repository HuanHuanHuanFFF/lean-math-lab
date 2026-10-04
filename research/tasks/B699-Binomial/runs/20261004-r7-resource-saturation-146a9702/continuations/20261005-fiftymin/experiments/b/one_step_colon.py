from pathlib import Path
import sys,json,time,hashlib
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r;out=Path(__file__).parent;st=time.monotonic();rows={z['name']:z for z in json.loads((out/'Nzero-factor-diagnostic.json').read_text())}
def dec(ts):return rs.R.from_dict({tuple(e)+(0,):rs.QQ(c) for e,c in ts})
C0=dec(rows['V0']['core']);C1=dec(rows['V1']['core']);T,rem=gs['N'].div(u-1);assert not rem
F=2*C0*fs['V1']-y*(u-1)*(y-1)**2*C1*fs['V0']
print('numerator',rs.stats(F),flush=True)
W,rem=F.div(T);assert not rem;assert T*W==F
print('quotient',rs.stats(W),flush=True)
factors={};U=rs.R.one
for name,b in [('u',u),('y',y),('um',u-1),('ym',y-1),('r',r),('E',u*y-y+1)]:
 k=0
 while True:
  q,rem=W.div(b)
  if rem:break
  W=q;U*=b;k+=1
 factors[name]=k
from math import gcd
content=0
for c in W.values():content=gcd(content,abs(int(c)))
W=W.quo_ground(content);U*=content
assert T*U*W==F
print('stripped',factors,'content',content,rs.stats(W),flush=True)
# A complete one-dimensional function-field test is not claimed from this modular witness.
# One B9 point with N1 != 0 where the new exact W is nonzero shows W does not vanish identically on all old N-zero points.
def ev(P,u0,y0,r0,p):return sum(int(c)*pow(u0,e[0],p)*pow(y0,e[1],p)*pow(r0,e[2],p) for e,c in P.items())%p
component=json.loads((out/'Nzero-component.json').read_text());B9=dec(component['polynomials']['B9']);n1=dec(component['polynomials']['N1']);n0=dec(component['polynomials']['N0']);witness=None
for p in [101,257]:
 scan=json.loads((out/f'scan-{p}.json').read_text())
 for point in scan['common_fibres']:
  a,b=point['u'],point['y'];v1=ev(n1,a,b,0,p)
  if not v1 or ev(B9,a,b,0,p):continue
  z=-ev(n0,a,b,0,p)*pow(v1,-1,p)%p;ww=ev(W,a,b,z,p)
  if ww:witness={'prime':p,'u':a,'y':b,'r':z,'W':ww,'N1':v1};break
 if witness:break
result={'identity':'(N/(u-1))*unit*W=2*C0*V1-y*(u-1)*(y-1)^2*C1*V0','basic_unit_factors':factors,'nonzero_rational_content':str(content),'W':[[list(e),str(c)] for e,c in sorted(W.items())],'W_stats':rs.stats(W),'C0':rows['V0']['core'],'C1':rows['V1']['core'],'modular_nonvanishing_witness':witness,'source_provenance':prov,'seconds':time.monotonic()-st}
p=out/'one-step-N-colon.json';p.write_text(json.dumps(result,separators=(',',':'))+'\n',encoding='utf-8');print({'witness':witness,'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'seconds':result['seconds']},flush=True)
