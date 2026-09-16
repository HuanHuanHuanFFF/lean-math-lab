"""Bounded new diagnostics, not the 1.4-billion-entry matrix and not NC enumeration."""
from collections import defaultdict
from itertools import product
from math import comb
from fractions import Fraction


def multiply(a,b,cap=3):
    c=defaultdict(int)
    for (i,j),x in a.items():
        for (k,l),y in b.items():
            if i+k<=cap and j+l<=cap:c[i+k,j+l]+=x*y
    return dict(c)

def direct_series(r,s,a,b,cap=3):
    q={(0,0):1}
    for _ in range(a):q=multiply(q,{(0,0):r,(1,0):1},cap)
    base={(0,0):s*(r-s),(0,1):1}
    if 2*s==r:base[1,0]=s
    for _ in range(b):q=multiply(q,base,cap)
    return q

def closed_entry(r,s,a,b,i,h):
    if b<h:return 0
    if 2*s!=r:
        if a<i:return 0
        return comb(a,i)*comb(b,h)*r**(a-i)*(s*(r-s))**(b-h)
    return comb(b,h)*sum(comb(b-h,l)*comb(a,i-l)*(s*s)**(b-h-l)*s**l*r**(a-i+l)
                        for l in range(max(0,i-a),min(b-h,i)+1))

def rank_q(vectors):
    a=[[Fraction(x) for x in v] for v in vectors]
    if not a:return 0
    r=0
    for c in range(len(a[0])):
        piv=next((i for i in range(r,len(a)) if a[i][c]),None)
        if piv is None:continue
        a[r],a[piv]=a[piv],a[r];d=a[r][c];a[r]=[x/d for x in a[r]]
        for i in range(r+1,len(a)):
            if a[i][c]:
                t=a[i][c];a[i]=[x-t*y for x,y in zip(a[i],a[r])]
        r+=1
        if r==len(a):break
    return r

def run():
    count=0
    for r in range(1,9):
        for s in range(r//2+1):
            for a in range(7):
                for b in range(5):
                    got=direct_series(r,s,a,b)
                    for i in range(4):
                        for h in range(4):
                            assert got.get((i,h),0)==closed_entry(r,s,a,b,i,h)
                            count+=1
    # Pigeonhole dimension lemma in small, fully enumerated boxes.
    cases=[([[1,1,1,1]],3,2),([[1,0,1,2,0],[0,1,1,0,2]],3,2),([[1,1,0,0]],2,2)]
    records=[]
    for A,B,d in cases:
        C=len(A[0]);bound=1
        for row in A:bound*=B*sum(row)+1
        assert (B+1)**(C-d+1)>bound
        fibers=defaultdict(list)
        for x in product(range(B+1),repeat=C):
            fibers[tuple(sum(a*b for a,b in zip(row,x)) for row in A)].append(x)
        pts=max(fibers.values(),key=len);x0=pts[0]
        dim=rank_q([[a-b for a,b in zip(x,x0)] for x in pts[1:]])
        assert dim>=d
        records.append({'box_points':(B+1)**C,'image_count':len(fibers),'fiber_size':len(pts),'affine_dimension':dim})
    # Independent formal polynomials can share an entire legal curve.
    n,j=400,199;X=j*(n-j)
    f0=4*X-n*n+4;f1=(n+1)*f0
    assert f0==f1==0 and comb(n,9)%11==0 and comb(n,j)%11==0
    # Domain monotonicity underlying the target cap.
    monotone=0
    for n in range(20,201):
        js=range(10,n//2+1)
        values=[j*(n-j) for j in js]
        assert len(values)==len(set(values)) and values==sorted(values)
        monotone+=len(values)
    return {'status':'PASS_NEW_BOUNDED_DIAGNOSTICS','taylor_coefficient_comparisons':count,
            'pigeonhole_cases':records,'monotonicity_pairs':monotone,
            'zero_curve_boundary':{'n':400,'j':199,'actual_common_prime':11,'is_counterexample':False},
            'full_large_kernel_tested':False}

if __name__=='__main__':
    import json
    print(json.dumps(run(),indent=2))
