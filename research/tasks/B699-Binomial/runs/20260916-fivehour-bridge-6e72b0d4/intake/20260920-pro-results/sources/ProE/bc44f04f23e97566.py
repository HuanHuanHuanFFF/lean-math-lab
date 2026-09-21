#!/usr/bin/env python3
"""Checker B: independent Fraction/Newton interpolation; no checker A imports."""
from __future__ import annotations
import json,sys,subprocess
from pathlib import Path
from fractions import Fraction as F
from math import factorial,gcd

def need(ok,msg):
    if not ok:raise ValueError(msg)

def interpolation(fn,degree,start=0):
    differences=[F(fn(start+j)) for j in range(degree+1)]
    result={};basis={0:F(1)}
    for k in range(degree+1):
        c=differences[0]/factorial(k)
        for e,b in basis.items():result[e]=result.get(e,F(0))+c*b
        differences=[b-a for a,b in zip(differences,differences[1:])]
        updated={}
        for e,b in basis.items():
            updated[e+1]=updated.get(e+1,F(0))+b
            updated[e]=updated.get(e,F(0))-(start+k)*b
        basis=updated
    top=max((e for e,c in result.items() if c),default=0)
    vals=[result.get(e,F(0)) for e in range(top+1)]
    need(all(c.denominator==1 for c in vals),'nonintegral interpolated coefficient')
    return [int(c) for c in vals]

def eval_coeff(c,x):return sum(a*x**i for i,a in enumerate(c))
def phi_count(n):return sum(gcd(n,k)==1 for k in range(1,n+1))
def ds(n):return tuple(k for k in range(1,n+1) if n%k==0)
def cycv(n,x):
    values={}
    for k in ds(n):
        denominator=1
        for d in ds(k)[:-1]:denominator*=values[d]
        numerator=x**k-1
        need(numerator%denominator==0,'nonintegral recursive cyclotomic value')
        values[k]=numerator//denominator
    return values[n]

def funcs():
    A=lambda y:2*y*y-1
    B=lambda y:2*y*y+1
    C=lambda y:2*y*y-2*y+1
    D=lambda y:2*y*y+2*y+1
    T=lambda y:16*y**8+1
    M4=lambda y:16*y**8-1
    M8=lambda y:256*y**16-1
    U4=lambda y:B(y)*D(y)
    U8=lambda y:T(y)*D(y)
    de4=lambda y:M4(y)**2-U4(y)**3
    de8=lambda y:M8(y)**2-U8(y)**3
    f=lambda y:F(de4(y),2*y*B(y)**2*D(y)**2)
    g=lambda y:F(de8(y),2*y*T(y)**2*D(y)**2)
    return {'A':(A,2,0),'B':(B,2,0),'C':(C,2,0),'D':(D,2,0),'T':(T,8,0),
            'M4':(M4,8,0),'M8':(M8,16,0),'U4':(U4,4,0),'U8':(U8,10,0),
            'delta4':(de4,16,0),'delta8':(de8,32,0),'f':(f,7,1),'g':(g,11,1),
            'f_shift2':(lambda y:f(y+2),7,0),'g_shift2':(lambda y:g(y+2),11,0)}

def verify(path):
    data=json.loads(Path(path).read_text())
    need(set(data)=={'schema','contract','polynomials','residual_coefficients','endpoints',
                    'joint_examples','collision5','failure_at_s17','mod9_witness','consumer_cases'},'field set')
    need(data['schema']=='B699-ProE-JOINT-CYC-v1','schema')
    need(data['contract']=={
      'scope':'NC3 canonical minimal branch; c_alpha=1',
      'sources':'two complete odd prime powers with different bases; each >=11',
      'isolated_three':'remove only the actual single 3; keep higher full 3 powers',
      'phi_upper_constant':4,'joint_gap_min':14,
      'kernel':'positive, odd, squarefree, not divisible by 3',
      'exceptional_prime_power':'ell^(v_ell(x^(4S/ell)-1)+1)',
      'large_x_min':8,'no_lean':True},'scope/contract')
    fns=funcs();expected={name:interpolation(fn,d,k) for name,(fn,d,k) in fns.items()}
    for n in(20,28):
        for d in ds(n):
            expected[f'Phi_{n}_{d}']=interpolation(lambda x,d=d:cycv(d,x),phi_count(d),2)
    need(data['polynomials']==expected,'independent interpolated coefficients')
    for name in('f_shift2','g_shift2'):need(min(expected[name])>0,'positive coefficients')
    # Degree+1 exact nodes certify the two quotient identities, not merely root samples.
    for y in range(17):
        X=2*y*y;B=X+1;D=X+2*y+1
        need((X**4-1)**2-(B*D)**3==2*y*B*B*D*D*eval_coeff(expected['f'],y),'f factor identity')
    for y in range(33):
        X=2*y*y;T=X**4+1;D=X+2*y+1
        need((X**8-1)**2-(T*D)**3==2*y*T*T*D*D*eval_coeff(expected['g'],y),'g factor identity')
    for n in(20,28):
        for x in range(2,n+3):
            z=1
            for d in ds(n):z*=eval_coeff(expected[f'Phi_{n}_{d}'],x)
            need(z==x**n-1,'degree-certified cyclotomic identity')
    residues={
      'one_exception_l7':['287','258*a','31*a^2','20*U','8*a*U','14*V','2*a*V'],
      'two_exceptions_l5_k7':['98','41*a','25*b','8*a*b'],
      'ell5_lower_numerator':280,
      'small_kernel_thresholds':{'5':[4,32,4,500],'7':[2,32,8,1372]}}
    need(data['residual_coefficients']==residues,'joint residual certificate')
    # Complete tensor grids for the degree (2,1,1) / (1,1) identities.
    for a in range(3):
        for U in range(2):
            for V in range(2):
                ell=7+a;S=5*ell+U;gap=14+V;L=F(8*S-gap,9)
                E=8*S-F(12*S,ell)-6*L
                lhs=3*ell*(E-3*ell-8)
                rhs=287+258*a+31*a*a+20*U+8*a*U+14*V+2*a*V
                need(lhs==rhs,'one exceptional prime residual')
    for a in range(2):
        for b in range(2):
            ell=5+a;k=7+b
            need(8*ell*k-15*(ell+k)-2==98+41*a+25*b+8*a*b,'two exception residual')
    endpoints=[]
    for D in(4,8):
        N=2**D-1;left=N;parts=[]
        for p in range(3,N+1,2):
            if all(gcd(p,d)==1 for d in range(1,p)):
                w=1
                while left%p==0:left//=p;w*=p
                if w>1:parts.append(w)
            if left==1:break
        need(left==1,'endpoint fully factored')
        endpoints.append({'u':1,'x':2,'D':D,'M':N,'complete_odd_powers':parts,
                          'count_at_least_11':sum(p>=11 for p in parts)})
    need(data['endpoints']==endpoints and all(e['count_at_least_11']<2 for e in endpoints),'full endpoints')
    examples=[{'S':S,'phi':phi_count(S),'gap':8*S-9*phi_count(S),'D':4*S}
              for S in(143,187,209,221)]
    need(data['joint_examples']==examples,'examples')
    collision={'x':2,'D':20,'M':2**20-1,'Phi4':cycv(4,2),'Phi20':cycv(20,2),'complete_5_power':25}
    need(collision['M']%25==0 and collision['M']%125!=0,'complete 5 power')
    need(data['collision5']==collision,'collision counterexample')
    nu=(2**17-2)//(257*17);v=F(257*17*17-1,nu*nu)
    failure={'s':17,'P':257,'Q':17,'nu':nu,'v_num':v.numerator,'v_den':v.denominator,
             'capacity_lower_passes':(2**16-1)**2<(257*17)**3,'is_original_counterexample':False}
    need(data['failure_at_s17']==failure and v.denominator!=1,'weak model boundary')
    need(data['mod9_witness']=={'P':1,'Q':1,'nu':1,'v':0,'h':3,'n_mod9':3,
                              'is_exact_integer_core_solution':False},'local witness')
    cases=[(5,1,None),(9,1,None),(21,1,None),(41,1,None),(81,1,None),(113,1,None),
           (2289,1,143),(17,1,None),(11,1,None),(7,1,None),(81,3,None)]
    expected_cases=[]
    for s,c,S in cases:
        tags=[]
        if c==1:
            if s%8==5:tags.append('G4')
            if s%16==9:tags.append('G8')
            if s>1 and s%20==1:tags.append('J5')
            if s>1 and s%28==1:tags.append('J7')
            if S is not None and (s-1)%(4*S)==0 and 8*S-9*phi_count(S)>=14:tags.append('J14')
        expected_cases.append({'s':s,'c_alpha':c,'S_hint':S,'expected':tags})
        cmd=[sys.executable,str(Path(__file__).parent/'consumer.py'),'--s',str(s),'--c-alpha',str(c)]
        if S is not None:cmd+=['--S',str(S)]
        result=json.loads(subprocess.check_output(cmd,text=True))
        need(result['theorems']==tags and 'scope_required' in result,'actual consumer implementation')
    need(data['consumer_cases']==expected_cases,'consumer test set complete')
    return {'status':'PASS_INDEPENDENT_NEWTON_AND_RECURSIVE_CYC',
            'polynomial_records':len(expected),'consumer_cases':len(cases)}

if __name__=='__main__':
    try:out=verify(sys.argv[1] if len(sys.argv)>1 else Path(__file__).parent/'certificates/certificate.json')
    except Exception as exc:
        print('REJECT: '+str(exc),file=sys.stderr);raise SystemExit(1)
    print(json.dumps(out,sort_keys=True))
