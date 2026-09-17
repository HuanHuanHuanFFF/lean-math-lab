"""Complete finite classification, not a scan of n,j or coefficients."""
from itertools import combinations,product
from exact_poly import *
ROWS=tuple(range(3,9))
VALUES={r:tuple(s*(r-s) for s in range(r//2+1)) for r in ROWS}

def classify(interpolate=lagrange):
    sums={r:tuple(sorted({-sum(t) for t in combinations(VALUES[r],2)})) for r in ROWS}
    bset=set();triples=0
    for rr in combinations(ROWS,3):
        for yy in product(*(sums[r] for r in rr)):
            triples+=1;b=interpolate(rr,yy)
            if sum(val(b,r) in sums[r] for r in ROWS)>=4:bset.add(b)
    found=set();options_checked=0;last_pass=0
    for b in sorted(bset):
        opts={r:tuple(sorted({-Q(v*v)-val(b,r)*v for v in VALUES[r]})) for r in ROWS}
        for yy in product(*(opts[r] for r in ROWS[:5])):
            options_checked+=1;c=interpolate(ROWS[:5],yy)
            if val(c,8) not in opts[8]:continue
            last_pass+=1
            hits=tuple(tuple(v for v in VALUES[r] if v*v+val(b,r)*v+val(c,r)==0) for r in ROWS)
            if sum(len(h)==2 for h in hits)>=4:found.add((b,c,hits))
    return sorted(bset),sorted(found),{'triple_interpolations':triples,'b_candidates':len(bset),'c_interpolations':options_checked,'sixth_row_pass_before_hit_count':last_pass,'quadratics':len(found)}

def graph_table(interpolate=lagrange):
    out=[]
    for yy in product(*(VALUES[r] for r in ROWS[:3])):
        p=interpolate(ROWS[:3],yy)
        if all(val(p,r) in VALUES[r] for r in ROWS):out.append(p)
    return sorted(set(out))
