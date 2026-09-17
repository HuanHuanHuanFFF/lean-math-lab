import json, math
from pathlib import Path

def v2(a):
    return (a & -a).bit_length()-1

def odd_divisors(a):
    return [d for d in range(1,a+1,2) if a%d==0]

def poly(u,g,E,T,A):
    x=u*g*g
    return 8*T*x**3+4*(3*E*T-2*A)*x*x+6*E*(E*T-2*A)*x+E*E*(E*T-3*A)

rows=[]
for la,mu in [(1,1),(1,3),(3,1)]:
    A=la**3*mu**2
    for E in range(1,3*A,2):
        for T in range(1,(3*A-1)//E+1,2):
            D=E*T-3*A
            v=v2(-D)
            if v%2==0: continue
            e=(v-1)//2
            for g0 in odd_divisors((-D)>>v):
                g=g0<<e
                if math.gcd(g,la*mu*E)>1:continue
                # n v2 >=4e+9 => poly v2 >=4e+8
                # derivative of poly/2^(2e+1) at odd u is odd
                den=1<<(2*e+1)
                target=2*e+7
                roots=[1]
                for b in range(1,target):
                    modulus=1<<(b+1)
                    roots=[x for r in roots for x in (r,r+(1<<b)) if (poly(x,g,E,T,A)//den)%modulus==0]
                for u in roots:
                    M=1<<(2*e+4)
                    z=(u*g*g*T-A)*pow(E*E,-1,M)%M
                    C=(4*z*u*g*g+4*z*E+T)*pow(la*la*mu*mu,-1,M)%M
                    num=(la*mu*mu*C*C+z)%M
                    divisible=num%(1<<(2*e))==0
                    ds=(num//(1<<(2*e)))*pow(la*g0*g0,-1,16)%16 if divisible else None
                    rows.append(dict(la=la,mu=mu,E=E,T=T,g=g,e=e,u_res=u,u_mod=1<<target,delta2_mod16=ds,pass2=ds in [1,9]))
p={'count':len(rows),'survivors':sum(r['pass2'] for r in rows),'rows':rows}
out=Path(__file__).resolve().parents[1]/'outputs/second_defect_probe.json'
out.write_text(json.dumps(p,indent=2))
print('classes',len(rows),'survivors',p['survivors'])
for r in rows:
 if r['pass2']:print(r)
