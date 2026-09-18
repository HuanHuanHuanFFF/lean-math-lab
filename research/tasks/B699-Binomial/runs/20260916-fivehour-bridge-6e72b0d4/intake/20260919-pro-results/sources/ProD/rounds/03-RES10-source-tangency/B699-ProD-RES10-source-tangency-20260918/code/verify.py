"""Replay the new finite algebraic obligations, not an unbounded n scan."""
from __future__ import annotations
import argparse,copy,json,sys
from fractions import Fraction
from pathlib import Path
from math import gcd
sys.dont_write_bytecode=True
from exact_poly import *
from consumer import valuation,vp_binomial,inspect
from model import model
ROOT=Path(__file__).resolve().parents[1]

def expect(test: bool,msg: str):
    if not test:raise AssertionError(msg)

def make_certificate():
    K=kernels()
    qplus=sub(K['Q'],add(X,const(7)),add(X,Y,const(7)))
    return {'schema':1,'coordinates':'j,k',
            'polynomials':{k:rows(K[k]) for k in ['F3','F4','Q']},
            'positive_Q_translation':rows(qplus)}

def algebra(cert):
    K=kernels()
    for name in ['F3','F4','Q']:
        expect(from_rows(cert['polynomials'][name])==K[name],name+' coefficients')
    F3,F4=K['F3'],K['F4']
    actual=[]
    def jet(name,p,r,b,w):
        v=order(shift(p,b,r-b));expect(v>=w,f'{name} row {r} slot {b}')
        actual.append({'kernel':name,'r':r,'b':b,'required':w,'actual':v,'type':'ordinary'})
    for b in range(2):jet('F3',F3,1,b,3);jet('F4',F4,1,b,4)
    for b in [1,2]:jet('F3',F3,3,b,2)
    for b in range(5):jet('F3',F3,4,b,1)
    for b in range(4):jet('F4',F4,3,b,2)
    for b in [1,2,3]:jet('F4',F4,4,b,2)
    # x = n-r, y = endpoint coordinate; weights are (1,2).
    for name,F,r in [('F3',F3,3),('F4',F4,4)]:
        for endpoint in ['j','k']:
            left=Y;right=add(const(r),X,scale(Y,-1))
            f=sub(F,left,right) if endpoint=='j' else sub(F,right,left)
            v=order(f,(1,2));expect(v>=2,'weighted endpoint jet')
            actual.append({'kernel':name,'r':r,'endpoint':endpoint,'required':2,
                           'actual':v,'type':'weights(1,2)'})
    expect(order(F3)>=3,'origin cancellation g^3')
    expect(order(F4)>=2,'origin cancellation g^2')
    plus=sub(K['Q'],add(X,const(7)),add(X,Y,const(7)))
    expect(plus==from_rows(cert['positive_Q_translation']),'Q positivity coefficients')
    expect(all(c>0 for c in plus.values()) and plus.get((0,0),0)>0,'strict Q positivity')
    # 4 - 243u^2 + 729u^3 = (9u-2)^2(9u+1).
    lhs=add(const(4),scale(power(X,2),-243),scale(power(X,3),729))
    rhs=mul(power(add(scale(X,9),const(-2)),2),add(scale(X,9),const(1)))
    expect(lhs==rhs,'sharp F3 leading bound')
    # n=X,U=Y. Exact quotient / center identities.
    n,u=X,Y;NN=add(n,const(-1))
    T=add(scale(n,2),const(4),scale(u,-9))
    center=add(mul(NN,add(u,const(-2))),const(2))
    expect(add(scale(center,9),mul(NN,T))==scale(power(add(n,const(-4)),2),2),
           'center redundancy identity')
    smallK=add(scale(power(n,2),10),scale(mul(n,u),-36),scale(n,-34),
               scale(power(u,2),27),scale(u,81),const(12))
    bigQ_NJ={}
    # Q(n,J) written directly, separately from j,k kernel construction.
    J=mul(NN,u)
    qexp=add(scale(power(n,4),10),scale(mul(power(n,2),J),-36),
          scale(power(J,2),27),scale(power(n,3),-54),scale(mul(n,J),117),
          scale(power(n,2),90),scale(J,-81),scale(n,-58),const(12))
    expect(qexp==mul(power(NN,2),smallK),'Q=N^2 K')
    expect(scale(smallK,3)==add(scale(power(add(n,const(-4)),2),10),
                      mul(add(scale(n,8),const(-35)),T),power(T,2)),'3K identity')
    b=add(n,scale(u,-3))
    expect(smallK==add(scale(power(b,2),3),scale(mul(b,add(scale(n,2),const(-9))),3),
                 mul(add(n,const(-3)),add(n,const(-4)))),'K and positive L3 identity')
    expect(smallK==add(mul(add(n,const(-3)),add(scale(n,10),scale(u,-36),const(-4))),
                         scale(mul(u,add(u,const(-1))),27)), 'auxiliary B division identity')
    inequality=add(scale(mul(add(n,const(-1)),add(n,const(-3))),16),
                   scale(power(add(n,const(-2)),2),-3))
    expect(inequality==add(scale(power(add(n,const(-2)),2),13),const(-16)),
           'auxiliary strict decrease bound identity')
    expect(Fraction(1)-Fraction(13,5130)>Fraction(8,9),'F3 product bound')
    expect(Fraction(1)-Fraction(18,5130)>Fraction(15,16),'F4 product bound')
    # Infinite valuation proof is the two parity identities, not these samples.
    m=X
    expect(add(scale(m,2),scale(m,2))==scale(m,4),'even valuation identity')
    expect(add(scale(m,2),const(2),scale(m,2))==add(scale(m,4),const(2)),
           'odd valuation identity')
    return {'jet_obligations':actual,'origin_orders':{'F3':order(F3),'F4':order(F4)},
            'Q_positive_terms':len(plus),'F3_terms':len(F3),'F4_terms':len(F4),
            'all_symbolic_obligations':'PASS'}

def verify_model(d):
    n,j,g,z=int(d['n']),int(d['j']),int(d['g']),int(d['w']);k=n-j;N=n-1
    U=int(d['U']);C=int(d['C']);V=int(d['V4']);E=int(d['E'])
    expect(n%9000==5130 and 7<=j<=n//2,'diagnostic original row')
    expect(gcd(n,j)==g==430,'diagnostic real gcd')
    expect(N*j*k==10*int(d['Y'])**2,'diagnostic ten-square identity')
    expect(j*k==N*U and U==10*g*g*z*z,'diagnostic first source row')
    expect(valuation(n-5,5)==E,'diagnostic arbitrary prescribed E')
    expect(n==3*((n-3)//3)+3==2*((n-4)//2)+4==5**E*int(d['q5'])+5,
           'three exact neighbor identities')
    expect(C==7 and gcd((n-4)//2,j-2)==C,'nontrivial actual center block')
    expect((N*(U-2)+2)%(C*C)==0 and C*C*V==2*n+4-9*U and V!=0,
           'center square and V4')
    expect(int(d['alpha'])%13==0 and int(d['alpha'])>13,'deliberately violates pure 3-power')
    expect(int(d['E3'])==331 and int(d['E4'])==1,'diagnostic endpoint blocks')
    expect(pow(10,(331-1)//2,331)==330,'diagnostic negative character')
    return {'E':E,'n_digits':len(str(n)),'C':C,'V4_nonzero':True,
            'E3':331,'E4':1,'alpha_divisible_by_13':True,
            'is_model_of_full_remaining_RES10':False}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--make-certificate',action='store_true')
    ap.add_argument('--json',action='store_true');args=ap.parse_args()
    if args.make_certificate:
        print(json.dumps(make_certificate(),indent=2));return
    cert=json.loads((ROOT/'certificates/algebra.json').read_text())
    result=algebra(cert)
    bad=copy.deepcopy(cert);bad['polynomials']['F3'][0][2]+=1
    rejected=False
    try:algebra(bad)
    except AssertionError:rejected=True
    expect(rejected,'mutated coefficient must be rejected')
    result['mutated_certificate_rejected']=True
    result['integer_diagnostics']=[verify_model(model(E)) for E in [3,7,11]]
    local=[]
    for r in [3,4]:
        for m in [1,2,5]:
            p=7;Q=p**(2*m);nn=2*Q+r;jj=Q
            expect(vp_binomial(nn,6,p)==2*m,'local true source exponent')
            expect(vp_binomial(nn,jj,p)==0,'all local target carry layers vanish')
            expect(valuation(jj*(nn-jj),p)==2*m,'local even target exponent')
            cost=Q*Q//gcd(Q*Q,jj*(nn-jj))
            expect(cost==Q,'unbounded local missing-square cost')
            local.append({'r':r,'m':m,'p':p,'source_exponent':2*m,
                          'target_binomial_exponent':0,'cost':str(cost),
                          'full_RES10_model':False})
    result['single_prime_diagnostics']=local
    # An exact source-separated gcd test, not an original NC input or a scan.
    d3,d4=7,13;h3,h4=7**2*11,13*17**2;vv=h3*19
    e3,e4=d3*h3*h3,d4*h4*h4;zz=d3*d4*h3*h4*vv
    for ee,hh in [(e3,h3),(e4,h4)]:
        expect(ee*ee//gcd(ee*ee,zz*zz)==(hh//gcd(hh,vv))**2,
               'source-separated exact rho identity')
    result['source_split_gcd_identity']='PASS (illustration; general proof in PROOFS section 1)'

    old=json.loads((ROOT/'diagnostics/old_first_row_example.json').read_text())
    n=int(old['n']);j=int(old['j']);tested=inspect(n,j)
    expect(tested['source_defects'] and tested['new_consumers'],'known input triggers exact Delta consumer')
    expect(vp_binomial(n,6,11)>0 and vp_binomial(n,j,11)>0,'known common prime 11')
    result['old_fixed_test']={'new_coverage':False,'p':11,
          'source_valuation':vp_binomial(n,6,11),'target_valuation':vp_binomial(n,j,11)}
    result['status']='PASS_RES10_SOURCE_TANGENCY'
    result['scope']='New symbolic certificate and fixed diagnostics only; no historical proof-chain replay.'
    print(json.dumps(result,indent=2) if args.json else result['status'])

if __name__=='__main__':main()
