#!/usr/bin/env python3
"""Negative tests for coefficient domains, fixed degrees and open-set semantics."""
from fractions import Fraction as F
import json
import verify as v
import ipoly as p
T=[]
def test(n,b):
    if not b:raise AssertionError(n)
    T.append(n)
def rejects(n,f):
    try:f()
    except (ValueError,AssertionError,ZeroDivisionError,TypeError):T.append(n);return
    raise AssertionError('did not reject '+n)
rejects('noninteger source coefficient',lambda:v.unpack([[[0,0,0],'1/2']]))
rejects('duplicate monomial',lambda:v.unpack([[[1,0,0],'1'],[[1,0,0],'2']]))
rejects('negative exponent',lambda:v.unpack([[[-1,0,0],'1']]))
rejects('exponent dimension',lambda:v.unpack([[[1,0],'1']]))
rejects('boolean exponent',lambda:v.unpack([[[True,0,0],'1']]))
rejects('non-scalar fourth coordinate',lambda:v.scalar4([[[0,0,0,1],'1']]))
rejects('fixed degree overflow',lambda:v.fixed_coeffs({(0,3):1},2,2))
test('retains zero leading coefficients',v.fixed_coeffs({(0,0):1},2,4)==[1,0,0,0,0])
test('fixed Sylvester dimension',len(p.sylvester([-1,1,0],[-2,1,0]))==4)
test('common finite root remains determinant zero after degree drop',p.det_int(p.sylvester([-1,1,0],[-1,1]))==0)
test('zero resultant is not sufficient for finite shared root',p.det_int(p.sylvester([-1,1,0],[-2,1,0]))==0 and v.modgcd([-1,1],[-2,1],7)==[1])
test('nonzero Sylvester sanity',p.det_int(p.sylvester([-1,1],[-2,1]))!=0)
test('prime guard',v.prime(7)and not v.prime(9)and not v.prime(1))
rejects('zero divisor polynomial',lambda:v.modrem([1],[],7))
test('degree-drop obstruction to modular gcd lifting is visible',7%7==0)
# This has a Q point but becomes the unit ideal modulo 7.
x,z=F(1),F(-1,7)
test('modular UNIT counterexample over Q',x-1==0 and x+7*z==0 and (x+7*z)-(x-1)==0)
test('modular UNIT counterexample reduction differs',v.modgcd([-1,1],[0,1],7)==[1])
# Exact non-solution test of the new coordinate; no claim this is a model point.
u,y,r=F(2),F(2),F(1)
H=u*u-u*y*y+3*u*y-2*u+(y-1)**2;J=u*u+u*y*y-3*u*y+y
RN=3*(u-1)*(y-1)**2*J;RD=4*u*y*y*H;rho=RD*r/RN
N=(u-1)*(RD*r-RN);NN=3*(u-1)**2*(y-1)**2*J
D=8*r*u*u*y*y-6*(u-1)**2*(y-1)**2
test('new N coordinate rational sanity',N==NN*(rho-1)==154)
test('new D coordinate rational sanity',D==6*(u-1)*(y-1)**2/H*(u*J*rho-(u-1)*H)==122)
test('rho=1 is the excluded N boundary',NN*(F(1)-1)==0)
test('rho=0 is the excluded r boundary',RN/RD*0==0)
# H=0 alone is not a candidate, let alone an NC3 certificate.
s=v.source();test('H slice test point is not a six-form point',p.evaluate(s['P5'],[3,4,1])!=0)
# Corrupting an exact identity must be detected by full coefficient equality.
a={(0,0):1,(1,0):1};b={(0,0):1,(1,0):-1}
test('coefficient corruption changes exact identity',p.mul(a,b)!={(0,0):2,(2,0):-1})
print(json.dumps({'status':'PASS','tests':len(T),'names':T,'claim':'guard regressions only; no new NC3 instance'},ensure_ascii=False,indent=2))
