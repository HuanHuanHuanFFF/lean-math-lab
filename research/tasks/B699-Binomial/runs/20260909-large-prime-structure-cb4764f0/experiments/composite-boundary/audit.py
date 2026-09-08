"""Exact NEW domain boundary for the composite-window theorem, not a generic scan."""
import hashlib,json,math,platform
from pathlib import Path

def prime(p): return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
ps=[p for p in range(2,148) if prime(p)]
records=[]; total=0; top_rows=set(); composite_rows=set()
for n in range(4,148):
    for i in range(3,49):
        x=n-i+1
        if not (1<=x<=100):continue
        for j in range(i+1,n//2+1):
            d=n-2*j
            if not(i<=d and 50*d<=171*i+50):continue
            total+=1
            top=next((p for p in ps if x<=p<=n),None)
            if top is not None:
                assert top>j>i and n%top<i<j<top
                top_rows.add((n,i));continue
            composite_rows.add((n,i))
            A,B=math.comb(n,i),math.comb(n,j)
            g=math.gcd(A,B)
            p=next((p for p in ps if p>=i and g%p==0),None)
            assert p is not None,(n,i,j,A,B,g)
            es=[]
            for k in (i,j):
                exponent=1;P=p
                while not (n%P<k%P):
                    exponent+=1;P*=p
                    assert P<=n,(n,i,j,p,k)
                es.append(exponent)
            records.append(dict(n=n,i=i,j=j,d=d,x=x,p=p,e_i=es[0],e_j=es[1],A=A,B=B,gcd=g))
# Only the nontrivial newly quoted theorem exception.
special=[]
for j in (171,172,173,174):
    n,i,p=352,3,13
    A,B=math.comb(n,i),math.comb(n,j)
    assert A%p==0 and B%p==0
    assert n%p<i and n%p<j%p
    special.append(dict(n=n,i=i,j=j,p=p,gcd=math.gcd(A,B)))
out=dict(status="PASS",scope="x=n-i+1<=100 boundary derived from new composite-window consumer",
         ranges=dict(i_min=3,i_max=48,n_max=147,defect="i<=n-2j and 50(n-2j)<=171i+50"),
         total_new_domain_triples=total,top_prime_rows=len(top_rows),
         composite_rows=[list(r) for r in sorted(composite_rows)],
         residue_certificates=records,nontrivial_source_exception=special,
         python=platform.python_version(),script_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest())
print(json.dumps(out,indent=2))

