#!/usr/bin/env python3
from fractions import Fraction
from math import gcd,isqrt
import json, pathlib

C=23137949116800
q0=2**53
L=Fraction(371,10)
fd=(2*L+7+C*(L+2)*(L+7))/q0
fv=(L+5+C*(L+3)*(L+7))/q0
assert fd==Fraction(99742492603973723,22517998136852480)
assert fv==Fraction(409173805976403301,90071992547409920)
assert fd<Fraction(26,5) and fv<Fraction(26,5)

# Rational Taylor certificate e^(13/10)<37/10, copied algebraically from Round16.
x=Fraction(13,10)
partial=sum((x**j)/__import__('math').factorial(j) for j in range(6))
tail=(x**6/__import__('math').factorial(6))/(1-Fraction(13,70))
assert partial+tail<Fraction(37,10)

# Pell helpers.
def pell(n):
    U,X=1,0; a,b=2,1
    while n:
        if n&1: U,X=U*a+3*X*b,U*b+X*a
        a,b=a*a+3*b*b,2*a*b
        n//=2
    return U,X

def vp(n,p):
    z=0
    while n%p==0:
        n//=p; z+=1
    return z

def square_data(q,A,B):
    U,_=pell(4*q+1); _,X=pell(4*q)
    d=3*U*X+1
    y=isqrt((d*d+d+1)//3)
    assert 3*y*y==d*d+d+1
    v=A*y; W=B*y
    S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*W
    return U,X,d,y,S

# Round10 t=41 weak model.
q=5
A=867656512844; B=421816446324
U=512706121226; X=79315912984
rho=vp(X,2); xodd=X>>rho; e=vp(B,2)
lam=Fraction((2**(e-1))*A,X)
assert lam==Fraction(19719466201,901317193)
a,b=lam.numerator,lam.denominator
assert xodd%b==0 and (9*U)%a==0
x1=xodd//b; u1=9*U//a
assert (x1,u1)==(11,234)
assert A==2**(rho+1-e)*a*x1
assert B==2**(e-1)*b*u1
_,_,d,y,S=square_data(q,A,B)
r=isqrt(S)
assert r*r!=S

# Formal central shell samples.
shell=[]
for q in range(2,101):
    if q%3==1: continue
    U,_=pell(4*q+1); _,X=pell(4*q)
    rho=vp(X,2); x=X>>rho; u=U//2
    A=2**(rho-1); B=18*U*x
    assert A*B==9*U*X
    assert vp(A,2)==rho-1 and vp(B,2)==2
    BU=B//gcd(B,9*X); BX=B//gcd(B,9*U)
    assert BU==u and BX==2*x
    assert (BU//(2**vp(BU,2)))>1 and (BX//(2**vp(BX,2)))>1
    assert (9*X)%B!=0 and (9*U)%B!=0
    d=3*U*X+1
    assert d<8*B*B
    shell.append({'q':q,'rho':rho,'lambda_height':x,'theta_height':9*U})

# Local p=5 complete residue check modulo 25.
sq25={i*i%25 for i in range(25)}
valid5=0
for d0 in range(1,25,5):
  for y0 in range(1,25,5):
    if (d0*d0+d0+1-3*y0*y0)%25: continue
    for A0 in (5,10,15,20):
      for B0 in (5,10,15,20):
        if (A0*B0-3*(d0-1))%25: continue
        v=A0*y0%25; W=B0*y0%25
        S0=(v**4+5*d0*v**3+10*d0*d0*v*v+10*d0**3*v+5*d0**4+d0*d0*W)%25
        valid5+=1
        if S0 in sq25:
            assert B0%25==20
assert valid5==16

out={
 'status':'PASS',
 'direct_ratio':str(fd),
 'dual_ratio':str(fv),
 'threshold':'26/5',
 'weak_model':{
   'q':5,'rho':rho,'lambda':f'{a}/{b}','x1':x1,'u1':u1,
   'square':False
 },
 'formal_shell_samples':len(shell),
 'p5_residue_states':valid5,
 'claims':[
   'H(lambda)<=q => q<2^53',
   'H(theta)<=q => q<2^53',
   'shared p!=5 requires p mod5 in {1,4}',
   'shared 5 requires v5(B)=1 and B/5=4 mod5'
 ]
}
path=pathlib.Path(__file__).resolve().parents[1]/'outputs'/'replay.json'
path.write_text(json.dumps(out,indent=2)+'\n')
print('MATVEEV_RATIONAL_COMPARISONS=PASS')
print('WEAK_MODEL=PASS')
print(f'CENTRAL_SHELL_SAMPLES=PASS; count={len(shell)}')
print('UNITARY5_MOD25=PASS; states=16')
print('ROUND19_VERIFY=PASS')
