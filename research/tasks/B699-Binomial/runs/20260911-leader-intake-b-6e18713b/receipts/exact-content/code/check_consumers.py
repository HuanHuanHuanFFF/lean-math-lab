"""Exact identities and examples; finite examples do not prove the infinite families."""
import json,sys
from fractions import Fraction as F
from pathlib import Path
from math import comb,isqrt,gcd
from functools import reduce
from content_kernel import *

def plus(a,b):
    c=dict(a)
    for m,v in b.items():
        c[m]=c.get(m,F(0))+v
        if c[m]==0:del c[m]
    return c

def scale(a,s):return {m:v*s for m,v in a.items() if v*s}
def times(a,b):
    c={}
    for (i,j),v in a.items():
        for (k,l),w in b.items():c[i+k,j+l]=c.get((i+k,j+l),F(0))+v*w
    return {m:v for m,v in c.items() if v}
def power(a,e):
    z={(0,0):F(1)}
    for _ in range(e):z=times(z,a)
    return z
ONE={(0,0):F(1)};J={(1,0):F(1)};K={(0,1):F(1)}
def mc(a,c):return plus(a,scale(ONE,-F(c)))
def cp(a,r):
    z=ONE
    for k in range(r):z=scale(times(z,mc(a,k)),F(1,k+1))
    return z

def egcd(a,b):
    if b==0:return a,1,0
    g,u,v=egcd(b,a%b);return g,v,u-(a//b)*v

def bezout_all(values):
    g=0;ws=[]
    for z in values:
        h,u,v=egcd(g,z);ws=[u*x for x in ws]+[v];g=h
    assert sum(x*y for x,y in zip(ws,values))==g
    return g,ws

def main():
    a=cp(J,3);b=times(cp(J,2),K);c=times(J,cp(K,2));d=cp(K,3)
    D=plus(times(power(b,2),power(c,2)),scale(times(a,power(c,3)),-4))
    D=plus(D,scale(times(power(b,3),d),-4));D=plus(D,scale(times(power(a,2),power(d,2)),-27))
    D=plus(D,scale(times(times(a,b),times(c,d)),18));n=plus(J,K)
    rhs=scale(times(times(power(J,2),power(K,2)),times(times(mc(J,1),mc(K,1)),times(power(mc(n,2),2),mc(n,1)))),F(1,12))
    assert D==rhs and max(x for x,y in D)<=6 and max(y for x,y in D)<=6
    grid=0
    for j in range(7):
        for k in range(7):
            aa=comb(j,3) if j>=3 else 0;bb=(comb(j,2) if j>=2 else 0)*k
            cc=j*(comb(k,2) if k>=2 else 0);dd=comb(k,3) if k>=3 else 0
            got=bb*bb*cc*cc-4*aa*cc**3-4*bb**3*dd-27*aa*aa*dd*dd+18*aa*bb*cc*dd
            assert got==F(j*j*k*k*(j-1)*(k-1)*(j+k-2)**2*(j+k-1),12);grid+=1
    assert F(27,16)<2 and F(1,2**9)+F(1,2**17)<F(1,16)
    assert pow(2,60,5*7*11*13)==1
    ps=prime_list(10000);gap=[];multi=[]
    for ell in range(2,13):
        n=2**(12*ell);step=2**(3*ell+1);v=n//(4*step);j=step*isqrt(2*v*v)
        assert 4<=j<=n//2 and cubic_gate(n,j)
        assert 4*(n-2)*(n-1)**2<9*j*j*(j-1)**2
        dd=n-2*j;assert 2*(n-2)*(n-1)**2<9*(dd*dd-1)**2
        co=[comb(j,r)*comb(n-j,3-r) for r in range(4)];L=comb(n,3)//reduce(gcd,co)
        odd=L//2**vp(L,2);assert odd>1
        p=next(p for p in ps if p>=3 and odd%p==0)
        assert choose_vp(n,3,p)>0 and choose_vp(n,j,p)>0
        row={'k':ell,'n':n,'j':j,'v2_j':vp(j,2),'L':L,'prime_witness':p,'v_choose_3':choose_vp(n,3,p),'v_choose_j':choose_vp(n,j,p)}
        if ell<=4:
            B=0
            while 512*(B+1)**6<=n:B+=1
            cnt=0
            for bb in range(3,B+1):
                for aa in range(1,(bb-1)//2+1):
                    assert 8*abs(bb*j-aa*(n-1))**3>n*n;cnt+=1
            row.update({'denominator_max':B,'tube_pairs_checked':cnt})
        gap.append(row)
    for ell in range(1,9):
        n=3*2**(60*ell);step=2**(15*ell);j=step*isqrt(2*(n//(4*step))**2)
        assert 4<=j<=n//2 and cubic_gate(n,j)
        for p in [3,5,7,11,13]:assert choose_vp(n,3,p)==0
        co=[comb(j,r)*comb(n-j,3-r) for r in range(4)];HH,bs=bezout_all(co);L=comb(n,3)//HH
        odd=L//2**vp(L,2);assert odd>1 and gcd(odd,2*3*5*7*11*13)==1
        assert all(comb(n,i)%odd==0 for i in range(3,15))
        p=next((p for p in ps if p>=17 and odd%p==0),None)
        vals=None
        if p is not None:
            assert choose_vp(n,j,p)>0;vals=[choose_vp(n,i,p) for i in range(3,15)];assert min(vals)>0
        multi.append({'k':ell,'n':n,'j':j,'prime_witness':p,'factor_free_common_divisor':odd,
                      'coefficient_content':HH,'bezout_coefficients':bs,'full_divisor_checked_indices':list(range(3,15)),
                      'v_choose_j':choose_vp(n,j,p) if p is not None else None,'v_choose_i':vals})
    assert comb(16,4)%5==0 and comb(16,7)%5==0 and comb(16,5)%5!=0
    out={'status':'passed','cubic_discriminant_polynomial_terms':len(D),'independent_complete_grid_points':grid,
         'degree_bound_each_variable':6,'old_gap_examples':gap,'same_prime_examples':multi,
         'bounded_explicit_prime_search_limit':10000,'examples_with_explicit_prime':sum(z['prime_witness'] is not None for z in multi),
         'invalid_transfer_counterexample':{'n':16,'source_i':4,'target_i':5,'j':7,'p':5},
         'caution':'Infinite claims are proved on paper. Null prime witnesses only mean this bounded optional search did not find one; full factor-free divisors are retained.'}
    p=Path(sys.argv[1]);p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({'status':'passed','polynomial_terms':len(D),'grid_points':grid,'gap_examples':len(gap),
                      'same_prime_examples':len(multi),'explicit_prime_examples':out['examples_with_explicit_prime'],
                      'first_gap_example':gap[0],'first_multi_prime':multi[0]['prime_witness']}))
if __name__=='__main__':main()
