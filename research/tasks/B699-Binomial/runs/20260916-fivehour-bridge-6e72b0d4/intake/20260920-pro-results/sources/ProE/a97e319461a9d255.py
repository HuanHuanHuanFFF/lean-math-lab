"""Exact data construction for generator/checker A. Standard library only."""
from __future__ import annotations
from math import comb, prod, gcd
from fractions import Fraction

def trim(p):
    p = list(p)
    while len(p)>1 and p[-1]==0: p.pop()
    return p

def add(a,b):
    r=[0]*max(len(a),len(b))
    for i,c in enumerate(a):r[i]+=c
    for i,c in enumerate(b):r[i]+=c
    return trim(r)

def scale(a,k): return trim([k*c for c in a])
def sub(a,b): return add(a,scale(b,-1))
def mul(a,b):
    r=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):r[i+j]+=x*y
    return trim(r)

def power(a,n):
    r=[1]
    for _ in range(n):r=mul(r,a)
    return r

def shift(a,c):
    r=[0]*len(a)
    for i,x in enumerate(a):
        for j in range(i+1):r[j]+=x*comb(i,j)*c**(i-j)
    return trim(r)

def val(a,x):
    r=0
    for c in reversed(a):r=r*x+c
    return r

def divide(a,b):
    a=[Fraction(c) for c in a]
    b=[Fraction(c) for c in b]
    q=[Fraction(0)]*max(1,len(a)-len(b)+1)
    while len(a)>=len(b) and any(a):
        k=len(a)-len(b); c=a[-1]/b[-1]; q[k]+=c
        for j,v in enumerate(b):a[k+j]-=c*v
        a=trim(a)
    if any(a):raise ValueError('inexact polynomial division')
    if any(c.denominator!=1 for c in q):raise ValueError('nonintegral quotient')
    return trim([int(c) for c in q])

def divisors(n): return [d for d in range(1,n+1) if n%d==0]
def phi(n): return sum(gcd(k,n)==1 for k in range(1,n+1))

def cyclotomics(n):
    out={}
    for d in divisors(n):
        p=[-1]+[0]*(d-1)+[1]
        for e in divisors(d)[:-1]:p=divide(p,out[e])
        out[d]=p
    return out

CONTRACT={
 'scope':'NC3 canonical minimal branch; c_alpha=1',
 'sources':'two complete odd prime powers with different bases; each >=11',
 'isolated_three':'remove only the actual single 3; keep higher full 3 powers',
 'phi_upper_constant':4, 'joint_gap_min':14,
 'kernel':'positive, odd, squarefree, not divisible by 3',
 'exceptional_prime_power':'ell^(v_ell(x^(4S/ell)-1)+1)',
 'large_x_min':8, 'no_lean':True
}

def build_payload():
    y=[0,1]; x=[0,0,2]; b=[0,2]
    A=sub(x,[1]); B=add(x,[1]); C=add(sub(x,b),[1]); D=add(add(x,b),[1]); T=add(power(x,4),[1])
    M4=sub(power(x,4),[1]); M8=sub(power(x,8),[1]); U4=mul(B,D); U8=mul(T,D)
    delta4=sub(power(M4,2),power(U4,3)); delta8=sub(power(M8,2),power(U8,3))
    pref4=mul(scale(y,2),mul(power(B,2),power(D,2)))
    pref8=mul(scale(y,2),mul(power(T,2),power(D,2)))
    f=divide(delta4,pref4); g=divide(delta8,pref8)
    polys={'A':A,'B':B,'C':C,'D':D,'T':T,'M4':M4,'M8':M8,'U4':U4,'U8':U8,
           'delta4':delta4,'delta8':delta8,'f':f,'g':g,'f_shift2':shift(f,2),'g_shift2':shift(g,2)}
    for n in(20,28):
        for d,p in cyclotomics(n).items():polys[f'Phi_{n}_{d}']=p
    endpoints=[]
    for d,fs in ((4,[3,5]),(8,[3,5,17])):
        endpoints.append({'u':1,'x':2,'D':d,'M':2**d-1,'complete_odd_powers':fs,
                          'count_at_least_11':sum(a>=11 for a in fs)})
    examples=[]
    for S in (143,187,209,221):
        L=phi(S); examples.append({'S':S,'phi':L,'gap':8*S-9*L,'D':4*S})
    n=1<<17;P=257;Q=17;nu=(n-2)//(P*Q);vf=Fraction(P*Q*Q-1,nu*nu)
    cases=[(5,1,None,['G4']),(9,1,None,['G8']),(21,1,None,['G4','J5']),
           (41,1,None,['G8','J5']),(81,1,None,['J5']),(113,1,None,['J7']),
           (2289,1,143,['J14']),(17,1,None,[]),(11,1,None,[]),
           (7,1,None,[]),(81,3,None,[])]
    return {
      'schema':'B699-ProE-JOINT-CYC-v1','contract':CONTRACT,
      'polynomials':polys,
      'residual_coefficients':{
        'one_exception_l7':['287','258*a','31*a^2','20*U','8*a*U','14*V','2*a*V'],
        'two_exceptions_l5_k7':['98','41*a','25*b','8*a*b'],
        'ell5_lower_numerator':280,
        'small_kernel_thresholds':{'5':[4,32,4,500],'7':[2,32,8,1372]}},
      'endpoints':endpoints,'joint_examples':examples,
      'collision5':{'x':2,'D':20,'M':2**20-1,'Phi4':5,'Phi20':205,'complete_5_power':25},
      'failure_at_s17':{'s':17,'P':P,'Q':Q,'nu':nu,'v_num':vf.numerator,'v_den':vf.denominator,
                       'capacity_lower_passes':((n-2)//2)**2<(P*Q)**3,
                       'is_original_counterexample':False},
      'mod9_witness':{'P':1,'Q':1,'nu':1,'v':0,'h':3,'n_mod9':3,
                      'is_exact_integer_core_solution':False},
      'consumer_cases':[{'s':s,'c_alpha':c,'S_hint':S,'expected':ex} for s,c,S,ex in cases]
    }
