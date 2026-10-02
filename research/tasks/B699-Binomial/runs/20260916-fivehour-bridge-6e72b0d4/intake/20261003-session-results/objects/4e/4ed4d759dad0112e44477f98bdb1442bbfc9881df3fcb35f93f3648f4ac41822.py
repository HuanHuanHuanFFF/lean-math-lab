"""Fresh R7 arithmetic audit. Standard library only; does not import R6 code.
Analytic universal steps are proved in PROOFS.md; these are their exact finite
certificates plus deliberately falsifiable local arithmetic checks.
"""
from __future__ import annotations
import sys
sys.dont_write_bytecode = True
from fractions import Fraction as F
from functools import lru_cache
from math import comb, gcd, isqrt, prod
import hashlib, json

class IV:
    def __init__(self, lo, hi=None):
        self.lo=F(lo); self.hi=F(lo if hi is None else hi)
        if self.lo>self.hi: raise ArithmeticError('reversed interval')
    @staticmethod
    def cast(x): return x if isinstance(x,IV) else IV(x)
    def __add__(self,y):
        y=IV.cast(y); return IV(self.lo+y.lo,self.hi+y.hi)
    __radd__=__add__
    def __neg__(self): return IV(-self.hi,-self.lo)
    def __sub__(self,y): return self+-IV.cast(y)
    def __rsub__(self,y): return IV.cast(y)+-self
    def __mul__(self,y):
        y=IV.cast(y); a=[self.lo*y.lo,self.lo*y.hi,self.hi*y.lo,self.hi*y.hi]; return IV(min(a),max(a))
    __rmul__=__mul__
    def __truediv__(self,y):
        y=IV.cast(y)
        if y.lo<=0<=y.hi: raise ArithmeticError('division by interval containing zero')
        return self*IV(1/y.hi,1/y.lo)
    def __rtruediv__(self,y): return IV.cast(y)/self
    def decimal(self,places=15):
        d=10**places
        lo=(self.lo.numerator*d)//self.lo.denominator
        hi=-((-self.hi.numerator*d)//self.hi.denominator)
        def fmt(v):
            s='-' if v<0 else ''; v=abs(v); return f'{s}{v//d}.{v%d:0{places}d}'
        return [fmt(lo),fmt(hi)]
    def rational(self): return {'lo':str(self.lo),'hi':str(self.hi)}

# This log method uses convex quadrature, not the R6 atanh series or
# the first-order left/right rectangular implementation. Midpoint is a lower
# integral sum for a convex function; trapezoids are an upper integral sum.
@lru_cache(None)
def normalized_log(y:F, panels:int=8192)->IV:
    y=F(y)
    if not 1<=y<=2: raise ValueError('normalize to [1,2]')
    if y==1:return IV(0)
    A=y.numerator; B=y.denominator; diff=A-B; den=panels*B; Q=10**24
    mid=0; trap2=0
    for k in range(panels):
        # Exact midpoint integrand 2*den / (2*den+(2*k+1)*diff).
        mid += (Q*2*den)//(2*den+(2*k+1)*diff)
    for k in range(panels+1):
        d=den+k*diff
        v=(Q*den+d-1)//d
        trap2 += v*(1 if k in (0,panels) else 2)
    step=F(diff,den)
    return IV(step*F(mid,Q),step*F(trap2,2*Q))

@lru_cache(None)
def log_iv(x:F)->IV:
    x=F(x)
    if x<=0:raise ValueError('log argument not positive')
    if x<1:return -log_iv(1/x)
    k=0; y=x
    while y>=2:y/=2;k+=1
    return k*normalized_log(F(2))+normalized_log(y)

def root_iv(n:int,e:int,scale:int=10**12)->IV:
    if n<1 or e<1:raise ValueError('invalid root')
    target=n*scale**e
    lo=0;hi=1<<((target.bit_length()+e-1)//e)
    while lo+1<hi:
        m=(lo+hi)//2
        if m**e<=target:lo=m
        else:hi=m
    assert lo**e<=target<(lo+1)**e
    if lo**e==target:return IV(F(lo,scale))
    return IV(F(lo,scale),F(lo+1,scale))

def numerical_certificates():
    I=4883;c=F(10769,10000)
    a0=F(4,5)-F(1,I);b0=F(2,3)-F(1,I)
    v0=F(19,15)-F(2,I);E0=F(194,225)+F(17,15*I)
    alpha=1-E0/v0
    assert alpha==F(443648,1391205) and v0>0
    d0=a0*a0*log_iv(2*a0)+F(2,9)*log_iv(b0)-F(24,25)-F(1,3)
    assert d0.hi<0
    beta=1-(1+log_iv(F(I)))/I+(d0-F(17,15*I)*log_iv(F(I)))/v0
    rows=[]
    sensitivity=[]
    for T in (32,4096):
        x=I*T
        phi=alpha*log_iv(F(T))+log_iv(1-F(1,T))+beta
        roots=sum((root_iv(x,e) for e in range(2,9)),IV(0))
        tail=log_iv(F(x))/log_iv(F(2))*root_iv(x,9)
        upper=c*(1+(roots+tail)/I)
        gap=phi-upper
        weak_gap=phi-F(1089,1000)*(upper/c)
        assert weak_gap.lo>0
        sensitivity.append({'T':T,'theta_constant':'1089/1000','existence_gap':weak_gap.decimal()})
        assert gap.lo>F(1,100)
        if T==4096:assert gap.lo>F(3,5)
        # New comparison: affine subtraction from a concave function.
        six_reserve=gap-F(11,2*I)*log_iv(F(x))
        assert six_reserve.lo>0
        count_ratio=I*gap/log_iv(F(x))
        assert count_ratio.lo>F(11,2)
        rows.append({'T':T,'Phi':phi.decimal(),'U':upper.decimal(),'gap':gap.decimal(),
                     'gap_exact':gap.rational(),'weighted_prime_count_lower':count_ratio.decimal(),
                     'six_prime_concavity_reserve':six_reserve.decimal()})
    assert log_iv(F(32*I)).lo>F(9,8)
    # Mutation control: applying the high-t cost to the low-t endpoint destroys the certificate.
    phi32=alpha*log_iv(F(32))+log_iv(F(31,32))+beta
    x=I*4096
    cost4096=c*(1+(sum((root_iv(x,e) for e in range(2,9)),IV(0))+log_iv(F(x))/log_iv(F(2))*root_iv(x,9))/I)
    collapsed=phi32-cost4096
    assert collapsed.hi<0
    return {'method':'convex midpoint/trapezoid quadrature; 8192 panels; exact directed integer reciprocals',
            'root_method':'integer bisection; decimal scale 10^12; exact power certificates',
            'I':I,'theta_c':str(c),'a0':str(a0),'b0':str(b0),'v0':str(v0),'E0':str(E0),
            'alpha':str(alpha),'d0':d0.decimal(),'beta':beta.decimal(),'endpoints':rows,
            'collapsed_t_bound_negative_control':collapsed.decimal(),'weaker_theta_suffices_for_existence':sensitivity}

def primes_upto(N):
    b=bytearray(b'\x01')*(N+1);b[0:2]=b'\x00\x00'
    for p in range(2,isqrt(N)+1):
        if b[p]:b[p*p:N+1:p]=b'\x00'*(((N-p*p)//p)+1)
    return [p for p in range(2,N+1) if b[p]]

def vp_fact(n,p):
    s=0
    while n:n//=p;s+=n
    return s

def vp_choose(n,k,p):return vp_fact(n,p)-vp_fact(k,p)-vp_fact(n-k,p)
def vp_int(x,p):
    if x<=0:raise ValueError('vp expects positive integer')
    r=0
    while x%p==0:x//=p;r+=1
    return r

def local_audit():
    # Full local systems at small i. These are mutation/regression tests,
    # not proofs of a universal claim or original counterexample scans.
    count=0; minimum_slack=None; equality_cases=0
    for i in range(2,97):
        s=4*i//5;ell=2*i//3;r=i-ell-1;lam=2*s-r
        for a in range(i):
            for b in range(a+1):
                child1=sum(h>b for h in range(1,s+1))
                child2=sum(h>a-b for h in range(1,s+1))
                mother=sum(h>=i-a for h in range(1,ell+1))
                closed=max(s-b,0)+max(s-a+b,0)+max(a-r,0)
                assert child1+child2+mother==closed and closed>=lam
                slack=closed-lam;minimum_slack=slack if minimum_slack is None else min(minimum_slack,slack)
                equality_cases+=slack==0;count+=1
    # Direct mother-window endpoint fixture; this one MUST fail if >= changes to >.
    # Use n=149: a=6, critical h=i-a=4.
    n,i,p,h=149,10,13,4
    assert n%p==6 and p>i and p*p>n
    actual=vp_choose(n-i+h,h,p)
    assert actual==1 and int(h>i-(n%p))==0
    j=16; ss=8; ll=6; lam=13
    assert vp_choose(n,i,p)==1 and vp_choose(n,j,p)==0
    w=prod(comb(j,k)*comb(n-j,k) for k in range(1,ss+1))*prod(comb(n-i+k,k) for k in range(1,ll+1))
    assert vp_int(w,p)==lam
    wrong=sum(k>j%p for k in range(1,ss+1))+sum(k>(n-j)%p for k in range(1,ss+1))+sum(k>i-n%p for k in range(1,ll+1))
    assert wrong==lam-1
    # p=i is not excluded outside n<i^2; global replacement p>=i by p>i is false.
    small_gcd=gcd(comb(28,5),comb(28,14))
    assert small_gcd==1080
    assert [p for p in primes_upto(small_gcd) if small_gcd%p==0 and p>=5]==[5]
    assert vp_choose(6,3,3)==0 and vp_choose(9,3,3)==1
    # Removing all higher small-prime layers fails for a genuine legal input.
    # C(16,3)=560=2^4*5*7; small part below i=3 is16, exp(theta(2))=2.
    assert comb(16,3)==560 and vp_choose(16,3,2)==4
    assert 2**vp_choose(16,3,2)>2
    # The negative-denominator direction in R6 is correct; upper replacing lower is false.
    N0=F(-2);v=F(1);v_upper=F(2)
    assert N0/v < N0/v_upper
    return {'local_integer_states':count,'minimum_window_slack':minimum_slack,'equality_states':equality_cases,
            'negative_controls':[
                {'name':'mother endpoint must use h>=i-a','n':149,'i':10,'p':13,'h':4,'j':16,'actual_valuation':actual,'wrong_strict_endpoint':0,'correct_window_valuation':13,'mutated_count':12},
                {'name':'global p>i replacement is false','n':28,'i':5,'j':14,'gcd':small_gcd,'eligible_common_primes':[5]},
                {'name':'p=i exclusion needs n<i^2','p':3,'i':3,'n_at_square':9,'valuation':1},
                {'name':'dropping small-prime high powers','n':16,'i':3,'j':4,'small_part':16,'exp_theta_i_minus_1':2},
                {'name':'negative numerator requires lower denominator','numerator':'-2','v':'1','wrong_upper_v':'2','correct':'-2','false_proposed_lower':'-1'}]}

def floor_certificate():
    rows=[]
    for r in range(15):
        sr=4*r//5;lr=2*r//3;lamr=2*sr+lr+1-r
        # i=15m+r makes s=12m+sr, ell=10m+lr, lambda=19m+lamr.
        ds=5*sr-4*r;dl=3*lr-2*r;dv=15*lamr-19*r
        assert -5<ds<=0 and -3<dl<=0 and dv>=-30
        rows.append({'residue_mod_15':r,'s_offset':sr,'ell_offset':lr,'lambda_offset':lamr,'15_lambda_minus_19_i':dv})
    return {'symbolic_family':'i=15m+r; s=12m+s_r; ell=10m+ell_r; lambda=19m+lambda_r', 'rows':rows,'all_m_nonnegative_covered':True}

def exact_fixtures():
    fixtures=[]
    # Direct integers independent of modular formulas, all primes complete; no assumptions of NC.
    for n,i,j in [(35,6,7),(48,7,14),(96,10,40),(145,13,65),(196,15,64)]:
        assert 1<=i<j<=n//2 and n<i*i
        ps=primes_upto(n);B=comb(n,i);J=comb(n,j);s=4*i//5;ell=2*i//3;lam=2*s+ell+1-i
        S=prod(p**vp_int(B,p) for p in ps if p<i);P=B//S
        assert prod(p**vp_choose(n,i,p) for p in ps)==B
        assert P==prod(p for p in ps if p>i and B%p==0)
        W=prod(comb(j,h)*comb(n-j,h) for h in range(1,s+1))*prod(comb(n-i+h,h) for h in range(1,ell+1))
        for p in ps:
            if p>i and P%p==0 and J%p:
                assert vp_int(W,p)>=lam
        SF=lambda m:prod(__import__('math').factorial(h) for h in range(1,m+1))
        Cw=2**(s*(s+1))*SF(s)**2*SF(ell);D=s*(s+1)+ell*(ell+1)//2
        assert Cw*W<=n**D
        # Whole-factorization double count for the small-part upper bound.
        layered=prod(p for p in ps if p<i)
        for e in range(2,n.bit_length()):
            layered*=prod(p for p in ps if p**e<=n)
        assert S<=layered
        fixtures.append({'n':n,'i':i,'j':j,'s':s,'ell':ell,'lambda':lam,'P':str(P),'S':str(S),'factorization_and_window_checks':True})
    # A few target-domain boundary fixtures, not a search over n,i,j.
    ps=primes_upto(20001026)
    real=[]
    for i,n,j in [(4883,32*4883,4884),(4883,32*4883,16*4883),(4883,4096*4883,4884),(4903,32*4903,4904)]:
        assert 32*i<=n<=4096*i and n<i*i
        commons=[p for p in ps if i<=p<=n and vp_choose(n,i,p)>0 and vp_choose(n,j,p)>0]
        assert len(commons)>=6
        assert all(p>i and vp_choose(n,i,p)==1 for p in commons)
        gpart=prod(commons)
        assert gpart*gpart>n**11
        # Same-prime data are actual and reproduce with integer arithmetic.
        real.append({'n':n,'i':i,'j':j,'common_prime_count':len(commons),'common_primes_sha256':hashlib.sha256(','.join(map(str,commons)).encode()).hexdigest(),
                     'first_six':commons[:6],'G_squared_gt_n_power_11':True})
    return {'small_complete_factorization_fixtures':fixtures,'target_domain_fixtures':real}

def coverage_certificate():
    accepted_low={1,2,11,29}|set(range(35,4883))
    remaining=[i for i in range(1,4883) if i not in accepted_low]
    assert len(remaining)==30
    R7=set(range(3,10));nonr7=[i for i in remaining if i not in R7]
    assert len(nonr7)==23
    return {'baseline':'frozen Overview, not a new acceptance or live repository status',
            'recorded_accepted_complete_indices':'{1,2,11,29} union [35,4882]',
            'adopted_paper_tail':'[4883,infinity)',
            'mixed_grade_union':'{1,2,11,29} union [35,infinity)',
            'remaining_30_indices':remaining,'R7':sorted(R7),'remaining_non_R7_23':nonr7,
            'below_1000':all(i<1000 for i in remaining),'global_height_for_remaining_indices_proved':False,
            'historical_all_author_paper_union_difference_certified':False}

def main():
    out={'numerical':numerical_certificates(),'local_audit':local_audit(),
         'floor_certificate':floor_certificate(),'exact_fixtures':exact_fixtures(),'coverage':coverage_certificate(),
         'universal_analysis_is_in':'PROOFS.md; finite checks do not replace it',
         'new_claims':{'R6_conditional_core':'no flaw found in checked inference chain',
                       'six_actual_common_primes':'i>=4883, 32i<=n<=4096i, all legal same (n,i,j), under R5 theta',
                       'product_bound':'G_large^2>n^11 and log G_large>i/100',
                       'Lean_executed':False,'external_independent_review':False}}
    print(json.dumps(out,indent=2,ensure_ascii=False))

if __name__=='__main__':main()
