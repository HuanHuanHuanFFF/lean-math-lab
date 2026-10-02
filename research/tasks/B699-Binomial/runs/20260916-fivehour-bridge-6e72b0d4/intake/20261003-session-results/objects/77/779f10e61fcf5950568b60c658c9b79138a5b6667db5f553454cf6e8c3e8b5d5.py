#!/usr/bin/env python3
"""Reconstruct the REG4 scale certificates, using exact QQ polynomial arithmetic.
Run from any working directory. Requires SymPy 1.14 (no Lean, network or repository).
The replay checker verify.py uses only the Python standard library.
"""
from pathlib import Path
import json, time
from sympy import QQ
from sympy.polys.rings import ring

ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'certificates'
OUT.mkdir(exist_ok=True)

def pack(p):
    return [[list(m),str(c)] for m,c in sorted(p.items())]
def sub(terms, values, R):
    if not terms:return R.zero
    powers=[]
    for i,v in enumerate(values):
        pp=[R.one]
        for _ in range(max(m[i] for m,c in terms)):pp.append(pp[-1]*v)
        powers.append(pp)
    ans=R.zero
    for m,c in terms:
        term=R.ground_new(QQ(c))
        for i in sorted(range(len(values)),key=lambda i:len(powers[i][m[i]])):
            if m[i]:term*=powers[i][m[i]]
        ans+=term
    return ans

def arrays(R):
    def add(p,q):
        ans=[R.zero for _ in range(max(len(p),len(q)))]
        for i,t in enumerate(p):ans[i]+=t
        for i,t in enumerate(q):ans[i]+=t
        return ans
    def mul(p,q):
        ans=[R.zero for _ in range(len(p)+len(q)-1)]
        for i,t in enumerate(p):
            for j,s in enumerate(q):ans[i+j]+=t*s
        return ans
    return add,mul

start=time.monotonic()
R,h,c,k,l,eta,nu,a0=ring('h,c,k,l,eta,nu,a0',QQ)
add,mul=arrays(R)
H3=[k,c,h,R.one]
D7=add([R.zero]+mul(H3,H3),[-a0,nu,eta,l])
t=a0+k*k+nu
V=add(mul([-R.one,R.one],D7),[-a0]);assert V[0]==0
C7=V[1:]
num=add(add(mul(mul(C7,C7),D7),[-5*a0*t*e/4 for e in C7]),[-a0*t*t/4,a0*t*t/4])
assert num[0]==0
P=num[1:];assert P[-1]==1
B=[R.zero for _ in range(11)];B[-1]=R.one
for e in range(19,9,-1):B[e-10]=(P[e]-mul(B,B)[e])/2
BB=mul(B,B)
assert all(P[e]==BB[e] for e in range(10,21))
E=[P[i]-BB[i] for i in range(10)]
generic={'variables':['h','c','k','l','eta','nu','a0'],
         'B':[pack(p) for p in B],'E':[pack(p) for p in E]}
print('original P and all E0..E9 reconstructed',flush=True)

S,h,w,u,v,z,l=ring('h,w,u,v,z,l',QQ)
cstar=(4*z*w-6*z)/3+h*(u*u-2*u)-w*l-u*u+2*(u-1)*v
values=[h,cstar,l*w,l,l*(h+u),l*(cstar+h*u+v),l*z]
F=[sub(pack(e),values,S).exquo(l*l) for e in E]
assert F[9]==0
ratio={'variables':['h','w','u','v','z','l'],'F':[pack(p) for p in F]}
T,w,u,y,L,A=ring('w,u,y,L,A',QQ)
G=6*u*u*(u-1)**2
vv=u+u*(u-1)*y
hh=y*y-2*u*y-1+L*(6*w*(u-1)**2-1)-A*(8*w*u*u-12*u*u+12*u-4)
values=[hh,w,u,vv,G*A,G*L]
regular={}
for i in range(9):
    e=sub(pack(F[i]),values,T); q=e
    powers=[]
    for divisor in (u,u-1):
        power=0
        while q and q.rem(divisor)==0:
            q=q.exquo(divisor);power+=1
        powers.append(power)
    assert e==q*u**powers[0]*(u-1)**powers[1]
    regular[str(i)]={'u_power':powers[0],'um1_power':powers[1],'terms':pack(q)}
assert not regular['8']['terms']
Dw=8*A*u*u*y*y-6*L*(u-1)**2*(y-1)**2
Nw=L*(-2*u*y+3*u-y*y+2*y-2)+A*(12*u*u*y*y-12*u*u*y-12*u*y*y+20*u*y-4*u+4*y*y-8*y+4)+y*y*(y-1)**2
r7=T.from_dict({tuple(m):QQ(c) for m,c in regular['7']['terms']})
assert r7==QQ(3,4)*(Dw*w-Nw)
print('complete regular residuals and safe normalization factors reconstructed',flush=True)

U,u,y,r,L=ring('u,y,r,L',QQ)
D=8*r*u*u*y*y-6*(u-1)**2*(y-1)**2
F0=-2*u*y+3*u-y*y+2*y-2+r*(12*u*u*y*y-12*u*u*y-12*u*y*y+20*u*y-4*u+4*y*y-8*y+4)
C=y*y*(y-1)**2
N=L*F0+C;DD=L*D

def clear(i):
    terms=regular[str(i)]['terms']
    dw=max(m[0] for m,c in terms)
    ans=U.zero
    for (ww,uu,yy,ll,aa),co in terms:
        ans+=QQ(co)*N**ww*DD**(dw-ww)*u**uu*y**yy*L**ll*(r*L)**aa
    return ans,dw
z7,dw7=clear(7);assert z7==0
z6,dw6=clear(6);z5,dw5=clear(5)
assert (dw6,dw5)==(2,3)
Q2=z6.exquo(-3*L**2);Q3=z5.exquo(-6*L**3)
def cf(p,j):return U.from_dict({m[:3]+(0,):co for m,co in p.items() if m[3]==j})
c2,b2,a2=[cf(Q2,i) for i in range(3)]
g3,f3,e3,d3=[cf(Q3,i) for i in range(4)]
assert c2==3*r*u*u*(u-1)**2*y**4*(y-1)**4
H=(b2*b2-4*a2*c2).exquo((u-1)**2*(D/2)**2)
q=d3.exquo(a2)
eprime=e3-q*b2
linear=a2*Q3-(a2*q*L+eprime)*Q2
S1=cf(linear,1).exquo(u*(u-1)*(D/2)**2)
Cstar=3*r*u*u*(u-1)*y**4*(y-1)**4
K=cf(linear,0).exquo(u*(u-1)*(D/2)**2*Cstar)
assert linear==u*(u-1)*(D/2)**2*(S1*L+Cstar*K)
scale={'variables':['u','y','r','L'], 'w_degrees':{'R7':dw7,'R6':dw6,'R5':dw5},
       **{name:pack(p) for name,p in [('D',D),('F',F0),('C',C),('Q2',Q2),('Q3',Q3),
         ('a',a2),('b',b2),('c',c2),('H',H),('q',q),('eprime',eprime),('S',S1),('K',K),('Cstar',Cstar)]}}
print('quadratic, discriminant, cubic, and division-free linear identity verified',flush=True)

# Specialization with a Bernstein positivity certificate, independent of samples.
Z,z=ring('z',QQ)
Hslice=sub(pack(H),[Z.ground_new(-3),Z.ground_new(QQ(1,2)),(1+z)/2,Z.zero],Z)
Pminus=-Hslice*QQ(16,9)
bern=[QQ(3565,2),QQ(25927,8),QQ(15675,4),QQ(31717,8),QQ(3446)]
from math import comb
assert Pminus==sum((bern[i]*comb(4,i)*z**i*(1-z)**(4-i) for i in range(5)),Z.zero)
assert all(b>0 for b in bern)
slice_cert={'variables':['z'],'u':'-3','y':'1/2','r':'(1+z)/2',
            'z_interval':['0','1'],'minus_quartic':pack(Pminus),
            'bernstein_degree':4,'bernstein_coefficients':[str(b) for b in bern]}
for name,data in [('generic',generic),('ratio',ratio),
                  ('regular',{'variables':['w','u','y','L','A'],'R':regular}),
                  ('scale',scale),('bernstein',slice_cert)]:
    (OUT/(name+'.json')).write_text(json.dumps(data,ensure_ascii=False,sort_keys=True,separators=(',',':'))+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','seconds':round(time.monotonic()-start,3),
                  'R_term_counts':{i:len(v['terms']) for i,v in regular.items()},
                  'scale_term_counts':{n:len(scale[n]) for n in ['Q2','Q3','H','S','K']}},ensure_ascii=False),flush=True)
