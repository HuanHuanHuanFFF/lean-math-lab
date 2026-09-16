"""Independent reconstruction. Does not import generator or core utilities."""
import argparse,json
from pathlib import Path
from fractions import Fraction as Q
from math import gcd,isqrt,comb

def op(n):
    if n<=0:raise ValueError('positive n')
    while n%2==0:n//=2
    return n

def check_bottom(obj):
    expected=[]
    for h in range(1,6):
        d=gcd(h,6);a=h//d;b=6//d
        cap=op(a*a*(b-a)*(b-a))
        # Independent: full divisor test within the proven maximum; then
        # direct derivative equation at every integer j in [0,n].
        for M in range(1,cap+1,2):
            if cap%M:continue
            n=2*M+2
            js=[j for j in range(n+1)
                if h*h*n*(n-1)-12*h*j*(n-1)+36*j*(j-1)==0]
            expected.append(dict(h=h,a=a,b=b,odd_bound=cap,M=M,n=n,
                                 completed_square=h*(6-h)*(n-1)+9,
                                 integer_j=js,legal_j=[j for j in js if 4<=j<=n//2]))
    if obj['states']!=expected:raise ValueError('bottom coverage or data mismatch')
    pts=[[z['h'],z['n'],j] for z in expected for j in z['integer_j']]
    if obj['all_integer_points']!=pts:raise ValueError('point mismatch')
    if any(z['legal_j'] for z in expected):raise ValueError('legal point remained')
    return len(expected),pts

def vp_choose_digits(n,j,p):
    # Count carries via base-p addition of j and n-j, not Legendre factorial sums.
    k=n-j;carry=0;out=0
    while j or k or carry:
        t=(j%p)+(k%p)+carry
        carry=t//p;out+=carry
        j//=p;k//=p
    return out

def independently_compute(n,j):
    k=n-j
    fs=[comb(j,r)*comb(k,3-r) for r in range(4)]
    H=0
    for c in fs:H=gcd(H,c)
    L=sum(fs)//H;V=op(L)
    # Construct the transformed polynomial by integer binomial expansion,
    # rather than the closed coefficients used by the generator.
    ps=[0,0,0,0]
    for r,c in enumerate(fs):
        for u in range(r+1):ps[3-u]+=c*comb(r,u)*((-1)**u)
    assert all(c%H==0 for c in ps)
    ps=[c//H for c in ps]
    B=-ps[2];C=ps[1];D=-ps[0]
    I=B*B-3*L*C;rt=isqrt(I)
    assert rt*rt==I
    roots=sorted({Q(B-rt,3*L),Q(B+rt,3*L)})
    cap=3*V if j%2 else 6*V
    selected=[r for r in roots if cap%r.denominator==0]
    assert selected
    a,b=selected[0].numerator,selected[0].denominator
    M=(n-2)//2;G=gcd(M,j*(j-1)*(j-2));Z=M//G
    assert V%Z==0 and (a*(b-a))**2%G==0
    assert V*a*a*(b-a)*(b-a)%M==0
    # Both critical values, evaluated from the independently reconstructed
    # integer polynomial, have exactly the classical discriminant product.
    values=[sum(Q(ps[t])*r**t for t in range(4)) for r in roots]
    disc=B*B*C*C-4*L*C**3-4*B**3*D-27*L*L*D*D+18*L*B*C*D
    assert values[0]*values[1]==Q(-disc,27*L*L)
    V0=gcd(V,n);V1=gcd(V,n-1);V2=gcd(V,M)
    assert V0*V1*V2==V and V2%Z==0 and gcd(b,M)==1
    assert b*b<=36*V0*V0*V1
    weighted=V0**4*V1**2*V2
    assert 162*weighted>=n-2 and 162*V**4>=n-2 and V>1
    if V0==1:assert 162*V**2>=n-2
    if j%2:assert 81*weighted>=8*(n-2) and b*b<=9*V0*V0*V1
    S=j*k*(n-1);rr=isqrt(S);assert rr*rr==S
    return dict(n=n,j=j,k=k,H=H,L=L,V=V,V0=V0,V1=V1,V2=V2,B=B,C=C,D=D,
                moment_discriminant=I,square_product=S,square_root=rr,
                critical_roots=[[r.numerator,r.denominator] for r in roots],
                selected=[a,b],M=M,G=G,Z=Z)

def check_regression(obj):
    got=[];count=0
    for j in range(4,1001):
        for n in range(max(8,4*((2*j+3)//4)),2001,4):
            count+=1;k=n-j
            S=j*k*(n-1)
            if isqrt(S)**2==S:got.append(independently_compute(n,j))
    got.sort(key=lambda z:(z['n'],z['j']))
    assert count==obj['legal_pairs']==249001
    assert got==obj['rows'] and len(got)==obj['square_cases']
    for z in got:
        # Direct second binomial is fine here: n<=2000 only.
        assert gcd(comb(z['n'],3),comb(z['n'],z['j']))%z['V']==0
    for z in obj['large_examples']:
        e=independently_compute(z['n'],z['j']);n,j=z['n'],z['j']
        e.update(W1=3*j*(j-1)%(n-1)==0,W2=6*j*(j-1)*(j-2)%(n-2)==0,
                 g=gcd(n,j),alpha=n//gcd(n,j))
        assert z==e
    for z in obj['actual_witnesses']:
        assert z['v_first']==vp_choose_digits(z['n'],3,z['p'])>0
        assert z['v_second']==vp_choose_digits(z['n'],z['j'],z['p'])>0
    return dict(legal_pairs=count,square_cases=len(got),large_cases=len(obj['large_examples']))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);a=ap.parse_args();p=Path(a.out)
    n,pts=check_bottom(json.loads((p/'bottom.json').read_text()))
    r=check_regression(json.loads((p/'regression.json').read_text()))
    print(json.dumps(dict(status='PASS',bottom_states=n,integer_points=pts,**r)))
if __name__=='__main__':main()
