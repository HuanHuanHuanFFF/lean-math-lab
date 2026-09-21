import sympy as S,time,argparse
from pathlib import Path
x,b,q,t=S.symbols('x b q t'); pa=argparse.ArgumentParser();pa.add_argument('--z',type=int,default=0);pa.add_argument('--gb',action='store_true');ns=pa.parse_args();z=ns.z
k=t-z;R=1-(q-1)*k;A=q-1-b*k*R
U=R+A*x+b*R*x*x; V=R+(q*A-b*R**2)*x+q*b*R*x*x;W=z*R+(t*A+R)*x+t*b*R*x*x
F=S.Poly(U*V-R**2,x);N=S.Poly(W*(W-U)*(W-2*U),x)
rem=S.prem(N,F)
polys=[S.factor(e) for e in rem.all_coeffs() if e!=0]
p=Path(__file__).resolve().parents[1]/'outputs';fn=p/f'reduced-z{z}.txt';fn.write_text('\n'.join(map(str,polys)))
print('counts',len(polys),[len(S.Poly(e,b,q,t).terms()) for e in polys],flush=True)
# factor out b,q,R; nonzero under true degree and inverse conditions
reduced=[]
for e in polys:
 factors=S.factor_list(e)[1]
 keep=S.prod(f**m for f,m in factors if f not in (b,q,R,-R,q*t-t-1, q*t-q*z-t+z-1))
 reduced.append(S.expand(keep))
(p/f'reduced-core-z{z}.txt').write_text('\n'.join(map(str,reduced)))
if ns.gb:
 print('groebner starting',flush=True);st=time.monotonic();gb=S.groebner(reduced,b,q,t,order='grevlex',modulus=101);print('time',time.monotonic()-st,'size',len(gb.polys),flush=True);(p/f'reduced-gb-z{z}.txt').write_text('\n'.join(str(p.as_expr()) for p in gb.polys))
