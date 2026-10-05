import pathlib,json,time
from sympy.polys.rings import ring
from sympy import QQ,GF
W=pathlib.Path('/mnt/data/r4_work');R,u,y=ring('u,y',QQ)
def rd(i):return R.from_dict({tuple(m):QQ(c) for m,c in json.loads((W/f'U{i}_exact.json').read_text())['terms']})
U=[rd(i) for i in [4,3,2]];t=time.time();content=None
for a in range(U[0].degree(u)+1):
 c=U[0].coeff_wrt(u,a).drop(u)
 if c:content=c if content is None else content.gcd(c)
 if content.degree()==0:break
print('content U4 in u',content,'seconds',time.time()-t,'coef index',a,flush=True)
LC=U[0].coeff_wrt(u,U[0].degree(u)).drop(u);print('U4 LC',LC.factor_list(),flush=True)
p=32003;rr,x=ring('u',GF(p));fs=[]
for i,P in zip([4,3,2],U):
 spec=P.evaluate(y,2);g=rr.from_dict({m:rr.domain(int(c.numerator))*rr.domain(int(c.denominator))**-1 for m,c in spec.items()});fs.append(g);print('U',i,'specdegree',g.degree(), 'fulldegu',P.degree(u),'lc',g.LC,flush=True)
gcd=fs[0]
for g in fs[1:]:gcd=gcd.gcd(g)
print('GCD specialized U4U3U2',gcd,flush=True)
# sparse content certificate (gcdext of coefficient polynomials) enough with two low columns?
base=None
for a in [0,1,2,3,4,59]:
 c=U[0].coeff_wrt(u,a).drop(u)
 base=c if base is None else base.gcd(c)
 print('content through',a,base.degree(),flush=True)
