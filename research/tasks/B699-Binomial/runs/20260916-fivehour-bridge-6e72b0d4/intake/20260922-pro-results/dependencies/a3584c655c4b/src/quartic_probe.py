import sympy as S,json,time,argparse
from pathlib import Path
x=S.symbols('x'); a,c,d,s,t=S.symbols('a c d s t')
pa=argparse.ArgumentParser(); pa.add_argument('--z',type=int,default=0); pa.add_argument('--modulus',type=int,default=32003);ns=pa.parse_args()
U=1+a*x+x*x;V=1+c*x+d*x*x;W=ns.z+s*x+t*x*x
r1=S.Poly(S.rem(S.Poly(V*W-1,x),S.Poly(U,x)),x)
rr=S.prem(S.Poly(W*(W-U)*(W-2*U),x),S.Poly(U*V-1,x))
polys=[S.factor(e) for e in r1.all_coeffs()+rr.all_coeffs() if e!=0]
p=Path(__file__).resolve().parents[1]/'outputs'
(p/f'quartic-equations-z{ns.z}.txt').write_text('\n'.join(map(str,polys)))
print('equations',len(polys),'terms',[len(S.Poly(v,a,c,d,s,t).terms()) for v in polys],flush=True)
st=time.monotonic()
gb=S.groebner(polys,s,c,a,d,t,order='grevlex',modulus=ns.modulus)
print('gb seconds',time.monotonic()-st,'len',len(gb.polys),flush=True)
(p/f'quartic-gb-z{ns.z}.txt').write_text('\n'.join(str(v.as_expr()) for v in gb.polys))
print('degrees',[p.total_degree() for p in gb.polys],flush=True)
