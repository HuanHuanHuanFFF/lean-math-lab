"""Exact regressions, not a replacement for the infinite proofs."""
from math import comb,gcd,isqrt
from pathlib import Path
import argparse,json

def prime(n):return n>=2 and all(n%d for d in range(2,isqrt(n)+1))
def facval(n,p):
    x=0
    while n:n//=p;x+=n
    return x
def cv(n,j,p):return facval(n,p)-facval(j,p)-facval(n-j,p)
def carries(n,j,p):
    ans=0;q=p
    while q<=n:
        ans+=j%q>n%q;q*=p
    return ans

def run():
    # Independently verify full low/high digit equivalence for actually computed binomials.
    digit_tests=0; valuation_tests=0
    for p in [3,5,7]:
        for A in range(1,p):
            for B in range(1,p):
                for f in [1,2]:
                    for e in [f+1,f+2]:
                        n=A*p**e+B*p**f
                        if n>512:continue
                        for j in range(0,n+1):
                            remainder=j;v=(remainder//p**f)%p;u=(remainder//p**e)%p
                            digit_form=(j==u*p**e+v*p**f and u<=A and v<=B)
                            if digit_form != (cv(n,j,p)==0):raise ValueError('digit equivalence')
                            if cv(n,j,p)!=carries(n,j,p):raise ValueError('valuation')
                            digit_tests+=1;valuation_tests+=1
    # A finite, explicitly labelled row regression for the new whole-row result.
    ns=set()
    for p in [3,5,7,11,13]:
        for A in range(1,min(8,p-1)+1):
            for B in range(1,min(8,p-1)+1):
                for f in range(1,4):
                    for e in range(f+1,6):
                        n=A*p**e+B*p**f
                        if 8<=n<=1024:ns.add(n)
    pairs=0
    for n in sorted(ns):
        c3=comb(n,3);bj=1
        for j in range(1,n//2+1):
            bj=bj*(n-j+1)//j
            if j<4:continue
            z=gcd(c3,bj)
            while z%2==0:z//=2
            if z==1:raise ValueError(('actual binomial gcd',n,j))
            pairs+=1
    # Test selected high-exponent rows by exhaustive no-carry digit choices only.
    high=[]
    for p,A,B,e,f in [(3,2,2,12,3),(5,4,4,10,3),(11,10,10,11,4),
                       (13,12,12,9,1),(17,16,14,10,2),(7,5,3,17,5)]:
        n=A*p**e+B*p**f;T=p**f
        legal=gr=fr=0
        if n%4:
            high.append([p,A,B,e,f,'4-divisibility exclusion']);continue
        for u in range(A+1):
            for v in range(B+1):
                j=u*p**e+v*T
                if not 4<=j<=n//2:continue
                legal+=1
                if cv(n,j,p):raise ValueError('selected no-carry state has carry')
                if gcd(n,j)**4>=3*n:gr+=1
                elif 3*j*(j-1)%(n-1):fr+=1
                else:raise ValueError(('high row survivor',p,A,B,e,f,u,v))
        high.append([p,A,B,e,f,legal,gr,fr])
    # Exact boundaries and a model that passes new size inequalities but fails W1.
    boundary={'isolated_three':{'n':12,'j':4,'vp3_choose3':cv(12,3,3),'vp3_choosej':cv(12,4,3)},
              'same_prime_endpoint':{'n':56,'j':11,'vp3_choose3':cv(56,3,3),'vp3_choosej':cv(56,11,3)},
              'weak_windows_not_NC':{'n':56,'j':11,'gcd':gcd(comb(56,3),comb(56,11))}}
    if boundary['weak_windows_not_NC']['gcd']!=840:raise ValueError('old weak example')
    p,A,B,e,f,u,v=11,9,5,4,1,1,3
    T=p**f;n=A*p**e+B*T;j=u*p**e+v*T;D=A*v-B*u;g=gcd(n,j)
    checks=[g**4<3*n,T<=3*abs(D)+2,n<=3*(A+T*abs(D))**2+1]
    if not all(checks) or 3*j*(j-1)%(n-1)==0:raise ValueError('method boundary model')
    model={'p':p,'A':A,'B':B,'e':e,'f':f,'u':u,'v':v,'n':n,'j':j,'g':g,
           'delta':D,'all_size_conditions':True,'first_window_remainder':3*j*(j-1)%(n-1),
           'not_a_projection_solution':True}
    return {'status':'PASS','digit_equivalence_tests':digit_tests,'valuation_comparisons':valuation_tests,
            'actual_small_rows':len(ns),'actual_binomial_pairs':pairs,'high_exponent_row_regressions':high,
            'boundaries':boundary,'size_only_model':model}

if __name__=='__main__':
    a=argparse.ArgumentParser();a.add_argument('--out',type=Path,required=True);ns=a.parse_args()
    ans=run();ns.out.parent.mkdir(parents=True,exist_ok=True);ns.out.write_text(json.dumps(ans,indent=2)+'\n')
    print(json.dumps({k:ans[k] for k in ['status','digit_equivalence_tests','actual_small_rows','actual_binomial_pairs']}))
