import sympy as S,json
from pathlib import Path
u=S.symbols('u'); c1,c2,c3,c4=S.symbols('c1 c2 c3 c4')
I=c1-2*c2*u+8*c4*u**3; R=1-c1*u-2*c2*u**2+8*c3*u**3-8*c4*u**4
T=c1**3*c3**3+c1**2*c2**3*c4-c1**2*c2**2*c3**2-3*c1**2*c3**2*c4-c1*c2**2*c3*c4+3*c1*c3*c4**2-c2**4*c4+c2**3*c3**2+2*c2**2*c4**2-c4**3
U,V,g=S.gcdex(I,R,u)
U=S.cancel(U*T);V=S.cancel(V*T)
assert S.cancel(U*I+V*R-T)==0
print('degrees',S.degree(U,u),S.degree(V,u),'terms',len(S.Add.make_args(S.expand(U))),len(S.Add.make_args(S.expand(V))),flush=True)
print('denominators',S.denom(U),S.denom(V),flush=True)
base=Path('research/tasks/M1-Hypercomb/independent')
(base/'bezout.json').write_text(json.dumps({'I':str(I),'R':str(R),'T':str(T),'U':str(U),'V':str(V)},indent=2)+'\n',encoding='utf-8')
