#!/usr/bin/env python3
import sympy as s

d,v,W=s.symbols('d v W')
S=v**4+5*d*v**3+10*d**2*v**2+10*d**3*v+5*d**4+d**2*W

# Endpoint residue verification for a generic range of rho.
allowed={}
for rho in range(3,65):
    cur=[]
    for aa in range(1,rho+1):
        bb=rho+1-aa
        residues=set()
        for du in (1,3,5,7):
            for vu in (1,3,5,7):
                for wu in (1,3,5,7):
                    residues.add(int(S.subs({d:du,v:(2**aa*vu)%8,W:(2**bb*wu)%8}))%8)
        if 1 in residues:
            cur.append((aa,bb))
    assert cur==[(1,rho),(rho-1,2)]
    allowed[rho]=cur

# Main term symbolic cancellations.
Z,al,r3,E2,R2,lam,theta,RX,RY,RD,RU=s.symbols(
    'Z al r3 E2 R2 lam theta RX RY RD RU', nonzero=True)
X=Z*RX/(2*r3)
y=al*Z**2*RY/4
d0=r3*al*Z**2*RD/4
A=2*lam*X/E2
vv=A*y
M=s.factor(8*vv**6/d0**3)
N0=lam**6*al**3*Z**12/(8*E2**6*r3**9)
assert s.simplify(M/N0-RX**6*RY**6/RD**3)==0

U=al*Z*RU/2
lam_dual=9*R2*U*theta/X
N0_from=s.factor(N0.subs(lam,lam_dual))
N0_dual=3**12*R2**6*theta**6*al**9*Z**12/(8*E2**6*r3**3)
assert s.simplify(N0_from/N0_dual-(RU/RX)**6)==0
assert s.simplify(M.subs(lam,lam_dual)/N0_dual-RU**6*RY**6/RD**3)==0

print('ODD_ENDPOINT_SYMBOLIC=PASS; rho=3..64')
print('DIRECT_MAIN_TERM=PASS')
print('DUAL_MAIN_TERM=PASS')
