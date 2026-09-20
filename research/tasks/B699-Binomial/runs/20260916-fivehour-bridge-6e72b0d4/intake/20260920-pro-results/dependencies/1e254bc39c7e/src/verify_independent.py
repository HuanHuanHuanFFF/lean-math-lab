#!/usr/bin/env python3
"""Independent finite arithmetic implementation.
No import from the primary checker. Polynomial checks use bounded-degree
interpolation; class-number samples use direct finite-ring unit counts.
This does NOT mechanically verify the ideal-theoretic paper argument.
"""
from __future__ import annotations
import argparse,itertools,json,sys
from fractions import Fraction
from math import gcd,isqrt
from pathlib import Path
sys.dont_write_bytecode=True

def need(ok:bool,msg:str)->None:
    if not ok:raise ValueError(msg)

def evaluate(table,point,bounds):
    need(len(point)==len(bounds),'arity')
    z=Fraction(0);seen=set()
    for ex,num,den in table:
        need(len(ex)==len(bounds),'exponent arity')
        need(all(type(a) is int and 0<=a<=b for a,b in zip(ex,bounds)),'degree bound')
        need(tuple(ex) not in seen,'duplicate monomial');seen.add(tuple(ex))
        need(type(num) is int and type(den) is int and den>0 and num!=0,'coefficient schema')
        c=Fraction(num,den)
        for x,e in zip(point,ex):c*=x**e
        z+=c
    return z

def check_interpolation(table,bounds,fn):
    count=0
    for pt in itertools.product(*(range(d+1) for d in bounds)):
        need(evaluate(table,pt,bounds)==fn(*pt),'interpolation identity')
        count+=1
    return count

def mm(a,b):
    return [[sum(a[i][k]*b[k][j] for k in range(2)) for j in range(2)] for i in range(2)]

def power5(x,y,v):
    m=[[x,-v*y],[y,x]];out=[[1,0],[0,1]]
    for _ in range(5):out=mm(out,m)
    return out[0][0],out[1][0]

def direct_order(v):
    matches=[]
    for d in [1,2,3,6]:
        if v%d==0 and isqrt(v//d)**2==v//d:matches.append((d,isqrt(v//d)))
    need(len(matches)==1,'squarefree kernel')
    d,s=matches[0];D=-d if d==3 else -4*d;f=2*s if d==3 else s
    hk=2 if d==6 else 1;index=3 if d==3 else 2 if d==1 and f>1 else 1
    def norm(a,b):return a*a+a*b+b*b if d==3 else a*a+d*b*b
    units=sum(gcd(norm(a,b),f)==1 for a in range(f) for b in range(f))
    phi=sum(gcd(a,f)==1 for a in range(f))
    classnum=Fraction(hk*units,phi*index)
    need(classnum.denominator==1,'finite-unit quotient')
    return {'v':v,'d':d,'s':s,'D_K':D,'conductor':f,'h_K':hk,'unit_index':index,
            'h_order':classnum.numerator,'ring_units':units,'scalar_units':phi}

def factorial_val(n,p):
    a=0
    while n:n//=p;a+=n
    return a

def verify(c):
    need(c['schema']=='b699-order5-v1' and c['quarter_denominator']==4,'scope')
    a=c['algebra'];count=0
    def lhs(Q,v,nu,P):return (Q-v)**2+v*((Q-v)*nu-Q*Q)**2-Q**5
    def rhs(Q,v,nu,P):return (Q-v)**2*(v*nu*nu-P*Q*Q+1)+(Q-v)*Q*Q*(P*(Q-v)-Q*Q-2*v*nu)
    for tag,fn in [('norm_lhs',lhs),('norm_rhs',rhs),
                   ('norm_residual_1',lambda Q,v,n,P:v*n*n-P*Q*Q+1),
                   ('norm_residual_2',lambda Q,v,n,P:P*(Q-v)-Q*Q-2*v*n)]:
        count+=check_interpolation(a[tag],(5,3,2,1),fn)
    for pt in itertools.product(range(6),range(4),range(3),range(2)):
        need(lhs(*pt)==rhs(*pt),'independent norm syzygy')
    def G(h,x):return (x-1)*(h-x)**2-4*h*x
    count+=check_interpolation(a['G'],(3,3),G)
    count+=check_interpolation(a['G_at4'],(2,0),lambda h,x:(h-12)*(3*h-4))
    count+=check_interpolation(a['G_quarter_times64'],(3,0),lambda h,x:h*(h-12)*(9*h+20))
    for h in range(4):need(64*G(h,1+Fraction(h,4))==h*(h-12)*(9*h+20),'endpoint relation')
    count+=check_interpolation(a['G_second'],(1,1),lambda h,x:6*x-4*h-2)
    positive_functions=[lambda t:3*t*t+50*t+123,lambda t:9*t*t+182*t+465,
                        lambda t:Fraction(5*t+67,2)]
    need(len(a['positive_shift_polynomials'])==3,'missing positivity gate')
    for table,fn in zip(a['positive_shift_polynomials'],positive_functions):
        count+=check_interpolation(table,(2,),fn)
        need(all(num>0 for _,num,den in table),'positive coefficients')
    for tag,position in [('fifth_real',0),('fifth_imag',1)]:
        count+=check_interpolation(a[tag],(5,5,2),lambda x,y,v:power5(x,y,v)[position])
    endpoint=[]
    need([r['x'] for r in c['principal_endpoint']]==[-5,-1,1,5],'missing signed endpoint')
    for row in c['principal_endpoint']:
        x=row['x'];u=Fraction(4*x**4+x,5);rr=[]
        if u.denominator==1 and u>=0 and isqrt(u.numerator)**2==u:
            t=isqrt(u.numerator);rr=sorted(set([x*x-t,x*x+t]))
        need(rr==row['integer_roots_v'],'completed-square endpoint')
        valid=[v for v in rr if v>0 and not v%2 and gcd(x,v)==1]
        need(valid==row['positive_even_coprime_roots_v'],'endpoint filter')
        endpoint.extend([x*x+v,v] for v in valid)
    need(endpoint==[[3,2]],'principal exception')
    need(power5(1,-1,2)==(1,11),'sharp principal example')
    direct=[]
    for row in c['order_samples']:
        z=direct_order(row['v'])
        for key in ['d','s','D_K','conductor','h_K','unit_index','h_order']:
            need(z[key]==row[key],'conductor/class mismatch at v='+str(row['v']))
        direct.append(z)
    need(len(direct)==22,'sample coverage')
    need(next(z for z in direct if z['v']==242)['h_order']==10,'conductor exception')
    # A complete truth table for the local residue implication, not a prime scan.
    need(c['safe_mod5_cases']==[[t,k,(t-k)%5] for t in [2,3] for k in [-1,0,1]],'residue coverage')
    need(c['single_five_cases']==[[-1,6],[1,4]],'single-five exception')
    w=c['weak_shell'];n=5342;j=981
    C3=n*(n-1)*(n-2)//6
    prime_factors=[(2,2),(5,1),(7,2),(89,1),(109,1),(2671,1)]
    z=1
    for p,e in prime_factors:
        need(all(p%d for d in range(2,isqrt(p)+1)),'trial prime certificate');z*=p**e
    need(z==C3==w['binom_n_3'],'complete C(n,3) factorization')
    common=1
    for p,e in prime_factors:
        vbin=factorial_val(n,p)-factorial_val(j,p)-factorial_val(n-j,p)
        common*=p**min(e,vbin)
    need(common==w['gcd_binomials']==2617580,'full original-binomial diagnostic')
    need((n-2)//2%3==0 and ((n-2)//2)%9!=0 and w['true_mu']==3,'isolated 3')
    return {'status':'PASS_INDEPENDENT_ORDER5_CHECKS','interpolation_evaluations':count,
            'principal_pairs_Q_v':endpoint,'finite_ring_unit_counts':direct,
            'weak_shell_binomial_gcd_by_factorial_valuations':common,
            'proof_boundary':'finite arithmetic only; no automated ideal-theory proof'}

def main():
    p=argparse.ArgumentParser();p.add_argument('certificate',type=Path);z=p.parse_args()
    try:r=verify(json.loads(z.certificate.read_text(encoding='utf-8')))
    except (ValueError,KeyError,TypeError,AssertionError) as e:print('REJECTED: '+str(e),file=sys.stderr);raise SystemExit(1)
    print(json.dumps(r,ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()
