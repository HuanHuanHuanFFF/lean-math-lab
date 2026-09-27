"""Exact multivariate polynomial identities, with integer dictionary arithmetic."""
def add(*polys):
    out={}
    for poly in polys:
        for m,c in poly.items():
            out[m]=out.get(m,0)+c
    return {m:c for m,c in out.items() if c}

def scale(poly,c):
    return {m:c*v for m,v in poly.items() if c*v}

def mul(a,b):
    out={}
    for i,x in a.items():
        for j,y in b.items():
            m=tuple(u+v for u,v in zip(i,j))
            out[m]=out.get(m,0)+x*y
    return {m:c for m,c in out.items() if c}

def power(a,n,dim):
    out={(0,)*dim:1}
    for _ in range(n):out=mul(out,a)
    return out

def variables(dim):
    return [{tuple(int(i==j) for i in range(dim)):1} for j in range(dim)]

def check_identities():
    # P^2 r - f - (AP-e)((ed-A)P-e) = 0, for e = +/- 1.
    P,k,d,A=variables(4);one={(0,0,0,0):1}
    f=add(mul(k,mul(P,P)),mul(d,P),scale(one,-1))
    for eps in (-1,1):
        r=add(k,scale(mul(d,A),eps),scale(mul(A,A),-1))
        g=add(mul(A,P),scale(one,-eps))
        other=add(mul(add(scale(d,eps),scale(A,-1)),P),scale(one,-eps))
        assert not add(mul(mul(P,P),r),scale(f,-1),scale(mul(g,other),-1))
    # Residuals after the ACTUAL full q-power recovery: k=du and z=u.
    d,u=variables(2)
    k=mul(d,u)
    u2=mul(u,u);d2=mul(d,d)
    r1=add(k,scale(u2,-1),scale(mul(d,u),-1))
    r2=add(k,scale(u2,-1),mul(d,u))
    r3=add(k,scale(u2,-1),scale(mul(d,u),3),scale(d2,-2))
    assert not add(r1,u2)
    assert not add(r2,scale(mul(u,add(scale(d,2),scale(u,-1))),-1))
    assert not add(r3,add(scale(d2,2),scale(mul(d,u),-4),u2))
    R=mul(mul(r1,r2),r3)
    positive=mul(power(u,3,2),mul(add(scale(d,2),scale(u,-1)),
                 add(scale(d2,2),scale(mul(d,u),-4),u2)))
    assert not add(R,scale(positive,-1))
    gap=add(scale(power(k,3,2),4),scale(R,-1))
    gap_fact=mul(power(u,4,2),add(scale(d2,10),scale(mul(d,u),-6),u2))
    assert not add(gap,scale(gap_fact,-1))
    return dict(status='PASS',ring='Z[variables]',resultant_identity_signs=2,
                recovered_residual_identities=3,product_identity=1,gap_identity=1,
                floating_point_used=False)

if __name__ == '__main__':
    import json
    print(json.dumps(check_identities(),indent=2,sort_keys=True))
