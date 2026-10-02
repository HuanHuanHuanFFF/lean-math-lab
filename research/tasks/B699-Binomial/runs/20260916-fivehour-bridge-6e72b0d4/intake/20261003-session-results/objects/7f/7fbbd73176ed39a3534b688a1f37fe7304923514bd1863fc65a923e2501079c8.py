#!/usr/bin/env python3
"""Deterministic full source reconstruction: stdlib only, no CAS or network."""
from pathlib import Path
from fractions import Fraction as F
from math import comb
import json,time,hashlib,platform
import sys
sys.path.insert(0,str(Path(__file__).resolve().parent))
from sparse import Poly,unpack,ring,array_add as add,array_mul as mul
ROOT=Path(__file__).resolve().parents[1];C=ROOT/'certificates'
start=time.monotonic();checks=[]
def check(name,condition):
    if not condition:raise AssertionError(name)
    checks.append(name)
def read(name):return json.loads((C/(name+'.json')).read_text(encoding='utf-8'))
def announce(s):print(s,flush=True)

h,c,k,l,eta,nu,a0=ring(7);zero=Poly(7);one=Poly.const(7,1)
H3=[k,c,h,one];D7=add([zero]+mul(H3,H3),[-a0,nu,eta,l]);t=a0+k*k+nu
V=add(mul([-one,one],D7),[-a0]);check('V divisible by x',V[0]==0)
C7=V[1:]
num=add(add(mul(mul(C7,C7),D7),[-5*a0*t*e/4 for e in C7]),[-a0*t*t/4,a0*t*t/4])
check('P numerator divisible by x',num[0]==0)
P=num[1:];check('P monic degree20',len(P)==21 and P[-1]==1)
B=[Poly(7) for _ in range(11)];B[-1]=one
for e in range(19,9,-1):B[e-10]=(P[e]-mul(B,B)[e])/2
BB=mul(B,B);E=[P[i]-BB[i] for i in range(10)];gen=read('generic')
for i in range(11):
    check(f'B{i} exact coefficient',B[i]==unpack(gen['B'][i],7))
    check(f'high square coefficient {i+10}',P[i+10]==BB[i+10])
for i in range(10):check(f'E{i} exact source residual',E[i]==unpack(gen['E'][i],7))
announce('PASS: original P, unique monic B, all ten source residuals')

h,w,u,v,z,l=ring(6)
cstar=(4*z*w-6*z)/3+h*(u*u-2*u)-w*l-u*u+2*(u-1)*v
values=[h,cstar,l*w,l,l*(h+u),l*(cstar+h*u+v),l*z]
ratio=read('ratio');Fs=[]
for i in range(10):
    fi=unpack(ratio['F'][i],6)
    check(f'ratio E{i}=ell^2 F{i}',E[i].substitute(values)==l*l*fi);Fs.append(fi)
check('F9 identically zero',not Fs[9]);announce('PASS: ratio coordinates, no variable division hidden')

w,u,y,L,A=ring(5);G=6*u*u*(u-1)**2;vv=u+u*(u-1)*y
hh=y*y-2*u*y-1+L*(6*w*(u-1)**2-1)-A*(8*w*u*u-12*u*u+12*u-4)
values=[hh,w,u,vv,G*A,G*L];reg=read('regular');Rs={}
for i in range(9):
    data=reg['R'][str(i)];ri=unpack(data['terms'],5)
    check(f'regular F{i} safe factor identity',Fs[i].substitute(values)==u**data['u_power']*(u-1)**data['um1_power']*ri)
    check(f'normalization powers {i}',data['u_power']>=0 and data['um1_power']>=0);Rs[i]=ri
check('R8 identically zero',not Rs[8])
Dw=8*A*u*u*y*y-6*L*(u-1)**2*(y-1)**2
Nw=L*(-2*u*y+3*u-y*y+2*y-2)+A*(12*u*u*y*y-12*u*u*y-12*u*y*y+20*u*y-4*u+4*y*y-8*y+4)+y*y*(y-1)**2
check('source R7 exact normalization',Rs[7]==F(3,4)*(Dw*w-Nw))
check('frozen R14 diagnostic',Rs[6].evaluate([F(38,61),2,2,1,1])==F(-157221,7442))
announce('PASS: all regular residuals, both vanishing equations, frozen diagnostic')

u,y,r,L=ring(4)
D=8*r*u*u*y*y-6*(u-1)**2*(y-1)**2
f0=-2*u*y+3*u-y*y+2*y-2+r*(12*u*u*y*y-12*u*u*y-12*u*y*y+20*u*y-4*u+4*y*y-8*y+4)
c0=y*y*(y-1)**2;N=L*f0+c0;DD=L*D
sc=read('scale');names=['D','F','C','Q2','Q3','a','b','c','H','q','eprime','S','K','Cstar']
ps={key:unpack(sc[key],4) for key in names}
for name,p in [('D',D),('F',f0),('C',c0)]:check(name+' definition',ps[name]==p)
def clear(p):
    dw=p.degree(0);out=Poly(4)
    # Group by w degree; producer uses monomial-wise substitution instead.
    for j in range(dw+1):
        chunk=p.coeff(0,j).substitute([Poly(4),u,y,L,r*L])
        out+=N**j*DD**(dw-j)*chunk
    return out,dw
for i,name,unit,powL in [(7,None,0,0),(6,'Q2',-3,2),(5,'Q3',-6,3)]:
    raw,dw=clear(Rs[i]);check(f'w degree R{i}',dw==sc['w_degrees'][f'R{i}'])
    check(f'cleared R{i}',raw==(Poly(4) if name is None else unit*L**powL*ps[name]))
Q2,Q3=ps['Q2'],ps['Q3'];a,b,c=ps['a'],ps['b'],ps['c']
check('Q2 all coefficients',Q2==a*L*L+b*L+c)
check('Q3 degree3',Q3.degree(3)==3)
check('nonzero quadratic constant identity',c==3*r*u*u*(u-1)**2*y**4*(y-1)**4)
check('discriminant factorization',b*b-4*a*c==(u-1)**2*(D/2)**2*ps['H'])
check('Q3 leading divisible by a polynomial identity',Q3.coeff(3,3)==a*ps['q'])
check('eprime definition',ps['eprime']==Q3.coeff(3,2)-ps['q']*b)
check('Cstar definition',ps['Cstar']==3*r*u*u*(u-1)*y**4*(y-1)**4)
check('division-free linear certificate',a*Q3-(a*ps['q']*L+ps['eprime'])*Q2==u*(u-1)*(D/2)**2*(ps['S']*L+ps['Cstar']*ps['K']))
check('all auxiliary coefficients scale independent',all(ps[n].degree(3)<=0 for n in ['a','b','c','H','q','eprime','S','K','Cstar']))
announce('PASS: quadratic and discriminant; division-free linear identity including a=0')

sl=read('bernstein');z=Poly.var(1,0);one=Poly.const(1,1)
special=ps['H'].substitute([-3,F(1,2),(one+z)/2,Poly(1)])
minus=unpack(sl['minus_quartic'],1)
check('Bernstein slice specialization',minus==-F(16,9)*special)
bs=list(map(F,sl['bernstein_coefficients']))
check('Bernstein complete identity',minus==sum((bs[i]*comb(4,i)*z**i*(one-z)**(4-i) for i in range(5)),Poly(1)))
check('Bernstein every coefficient strictly positive',len(bs)==5 and min(bs)>0)
check('slice D never zero exact formula',D.substitute([-3,F(1,2),(one+z)/2,Poly(1)])==9*z-15)
source=ROOT/'inputs'/'R14_HANDOFF.md'
check('R14 source SHA256',hashlib.sha256(source.read_bytes()).hexdigest()=='400b3af9713f0c528be83ff1fae2935879a987b91bf3873068d93e68049f0461')
announce('PASS: entire real interval excluded; exact handoff source hash')
print(json.dumps({'status':'PASS','checker':'stdlib Fraction sparse expansion',
 'python':platform.python_version(),'checks':len(checks),'elapsed_seconds':round(time.monotonic()-start,3),
 'claims_not_checked':['old NC3-to-GATE bridge','UU applicability','global REG4 emptiness','Lean','external independent review'],
 'checked_identities':checks},ensure_ascii=False,indent=2),flush=True)
