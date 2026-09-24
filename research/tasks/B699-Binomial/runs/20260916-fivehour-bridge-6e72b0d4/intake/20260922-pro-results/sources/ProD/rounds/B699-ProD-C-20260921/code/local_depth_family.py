"""Exact arbitrary-finite-depth weak models, NEVER NC6 counterexamples.
The paper proof establishes the quantified family; examples only replay identities.
"""
from math import gcd, lcm
import json
from pathlib import Path
P=31
DELTA=7

def log3_mod31_power(target: int, H: int) -> int:
    if H < 1: raise ValueError('H must be positive')
    a=next(a for a in range(30) if pow(3,a,31)==target%31)
    order=30;modulus=31
    for _ in range(1,H):
        new_modulus=31*modulus
        a=next(a+t*order for t in range(31)
               if pow(3,a+t*order,new_modulus)==target%new_modulus)
        order*=31;modulus=new_modulus
    assert pow(3,a,modulus)==target%modulus
    return a

def lift_sqrt(value: int, p: int, H: int) -> int:
    r=next(r for r in range(1,p) if r*r%p==value%p)
    modulus=p
    for _ in range(1,H):
        digit=((value-r*r)//modulus)*pow(2*r,-1,p)%p
        r+=digit*modulus;modulus*=p
    assert (r*r-value)%modulus==0
    return r

def parameters(e: int, H: int):
    if not (1<=e<H):raise ValueError('Require 1 <= e < H')
    Q=P**e;modulus=P**H
    target=DELTA*(5+Q)*pow(3+Q,-1,modulus)%modulus
    a0=log3_mod31_power(target,H)
    # L preserves alpha modulo both 31^H and 1000.
    L=lcm(30*P**(H-1),100)
    r1000=570*pow(3,(2-a0)%100,1000)%1000
    r31=(3+Q)*pow(DELTA,-1,modulus)%modulus
    g=r1000+1000*((r31-r1000)*pow(1000,-1,modulus)%modulus)
    assert g>=10 and g%10==0 and g%4==2
    # Choosing an exponent in this progression, not scanning possible n.
    a=a0
    while a<8 or pow(3,a)<=8*g**3:a+=L
    return dict(p=P,e=e,H=H,delta=DELTA,g=g,a_start=a,period=L)

def verify(e: int,H: int,m: int):
    par=parameters(e,H);g=par['g'];a=par['a_start']+m*par['period'];Q=P**e
    alpha=3**a;n=g*alpha;beta=(alpha-DELTA)//2;j=g*beta;k=n-j
    assert n%9000==5130 and gcd(n,j)==g and j%2==0
    assert 7<=j<=n//2 and 8*g**4<n and n>DELTA**2*g*g
    modulus=P**H
    assert (n-5)%Q==0 and (n-5)%(P*Q)!=0
    assert n%modulus==5+Q and j%modulus==1
    carries=[]
    for h in range(1,H+1):
        ph=P**h;carries.append(int(j%ph>n%ph))
    assert not any(carries)
    # The exact first-source failure, not merely a missing verification.
    assert (j*k)%(n-1)!=0
    assert (4*j*k)%(n-1)==(1-DELTA**2*g*g)%(n-1)
    assert all(((alpha-1)//gcd(alpha-1,x))**3>alpha for x in (beta,alpha-beta))
    assert all(((alpha+1)//gcd(alpha+1,x)-1)**3>alpha for x in (beta,alpha-beta))
    # A 31-adic norm root to the same finite precision; NOT an integer norm solution.
    local_z2=(alpha*alpha-DELTA*DELTA)*pow(40*(n-1),-1,modulus)%modulus
    zr=lift_sqrt(local_z2,P,H)
    assert (DELTA**2+40*(n-1)*zr*zr-alpha*alpha)%modulus==0
    return dict(**par,m=m,a=a,n_bit_length=n.bit_length(),
        n_mod_9000=n%9000,n_mod_pH=n%modulus,j_mod_pH=j%modulus,
        carries_through_H=carries,local_norm_root_mod_pH=zr,
        true_gcd=True,low_mass=True,first_source=False,
        ternary_weight_beta=a-1,ternary_weight_gamma=a,
        DENminus=False,DENplus=False,
        warning='Weak original-input family; first source fails identically. Not NC6.')

def main():
    assert pow(3,30,31)==1
    assert all(pow(3,30//p,31)!=1 for p in (2,3,5))
    assert pow(3,30,31**2)==528
    assert 14*14%31==10
    out={'quantified_theorem':'For every 1<=e<H, all m>=0 in the constructed progression.',
         'examples':[verify(e,H,m) for e,H,m in ((1,2,0),(1,2,1),(1,3,0),(2,3,0))]}
    path=Path(__file__).resolve().parents[1]/'outputs'/'local_depth_family.json'
    path.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(out,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
