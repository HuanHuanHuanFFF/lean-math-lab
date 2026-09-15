import sys,json,random,math,hashlib,itertools
from pathlib import Path
from fractions import Fraction
from common import *
OUT=Path(sys.argv[1]);OUT.mkdir(parents=True,exist_ok=True)
def save(name,obj):(OUT/name).write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n')
# Entire exceptional base domain, derived in PROOFS, not an arbitrary cutoff.
rows=[]
for x in range(8,512,8):
    n,j=rank3(8,x)
    R=3*x**4+x**3-x*x+x;D=8*(x**4-1)
    f=6*R*(R-D)*(R-2*D)
    assert f%(n-2)!=0
    assert j*(j-1)%(n-1)==0 and 4<=j<n//2
    rows.append(dict(x=x,remainder=f%(n-2),j=j))
assert len(rows)==63
save('rank3_bottom.json',dict(k=8,step=8,exclusive_stop=512,rows=rows))
# Exact polynomial reductions and bounds for the infinite branches.
R=[0,1,-1,1,3];D=[-8,0,0,0,8]
f=scale(mul(mul(R,add(R,scale(D,-1))),add(R,scale(D,-2))),6)
rem=reduced(f,8,1,2,2) # degree 12, floor reduction; power redundant for A=1
expected=[-7200,1272,-936,618,5058,-924,684,-456]
assert rem==expected
low=sum(Fraction(abs(rem[i]),16**(7-i)) for i in range(7))
assert low<48
# R(R-4) divisible X^4-1, needed for the full first-window identity.
f_id=mul(R,subconst(R,4));r_id=reduced(f_id,4,1,1,2);assert r_id==[0]
save('algebra.json',dict(remainder=rem,lower_terms_at_16=[low.numerator,low.denominator],
                         first_identity_remainder=r_id,
                         k16_margin=16**4-48*16**2-1))
# Compression witnesses; very large exponents remain symbolic, not huge integers.
rng=random.Random(69920260915); formal=[]
for w in range(1,7):
    v=32*64**w+17
    exps=sorted(rng.sample(range(v-1),w))
    rec=compression(exps,v)
    assert rec['t']>=24*rec['k']+12*w+24
    assert 6*rec['shift']+6*rec['k']+3*w+4<=rec['t']-2
    formal.append(rec)
# Structured four-bit case and signed-template case can actually be evaluated.
small=[]
for v,exps in [(4096,[1000,2024,3048,4072]),(3072,[512,1536,2560]),
               (2051,[256,768,1280,1792]),(1024,[0,64,128,192])]:
    rec=compression(exps,v);b=2;k=rec['k'];t=rec['t'];s=rec['s'];a=rec['shift']
    if t==0:continue
    p=[0]*(k+1)
    for m,e in zip(rec['degrees'],rec['coefficient_exponents']):p[m]+=2**e
    p=trim(p);d=2**a;A=2**s;xx=2**t;n=2**v;j=sum(2**e for e in exps)
    assert val(p,xx)==d*j
    f1,f2,r1,r2=windows(p,d,k,A)
    assert (A*A*val(f1,xx)-val(r1,xx))%(n-1)==0
    assert (A**3*val(f2,xx)-val(r2,xx))%(n-2)==0
    lim=12*max(A,2)**3*(norm(p)+d)**3
    win=[]
    for divisor,r in ((n-1,r1),(n-2,r2)):
        if r!=[0] and xx>=4*lim:
            assert 0<abs(val(r,xx))<divisor;win.append(divisor==n-1 and 1 or 2)
    rec.update(certificate_bound_holds=xx>=4*lim,excluded_windows=win,
               j_bits=j.bit_length(),coeff_norm_bits=norm(p).bit_length())
    small.append(rec)
save('compression.json',dict(symbolic=formal,evaluated=small))
# Systematic polynomial-classification checks, finite regression only.
count=zero=0
for k in range(1,5):
    for coeff in itertools.product(range(-2,3),repeat=k+1):
        p=trim(coeff)
        for d in (1,2,3):
            count+=1
            _,_,r1,r2=windows(p,d,k,1)
            if r1==[0] and r2==[0]:
                zero+=1
                allowed=[]
                for r in range(3):
                    for s in range(2):
                        a=[0]*(k+1);a[0]=d*(2*s-r);a[k]=d*(r-s);allowed.append(trim(a))
                assert p in allowed
save('classification.json',dict(polynomial_cases=count,simultaneous_zero_cases=zero,
                  stated_complete_family=['0','2-X^k','X^k-1','1','2X^k-2','X^k']))
# New family samples: first projection always holds, second always fails.
samples=[]
for k in (8,16,32,64,128):
    x=k*k
    n,j=rank3(k,x)
    assert j*(j-1)%(n-1)==0 and 6*j*(j-1)*(j-2)%(n-2)
    g=math.gcd(n,j); witness=None
    # Deterministic small witness probe; lack of hit is recorded, not a theorem failure.
    for p in (3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97):
        def vpchoose(N,J):
            out=0;q=p
            while q<=N:
                out+=N//q-J//q-(N-J)//q;q*=p
            return out
        u,vv=vpchoose(n,3),vpchoose(n,j)
        if u and vv:witness=dict(p=p,v_first=u,v_second=vv);break
    samples.append(dict(k=k,x=x,n_binary_length=n.bit_length(),j_nonzero_binary_digits=j.bit_count(),
                        g=g,old_digital_target=(j.bit_count()<=3 or (j%2 and j.bit_count()<=8)),
                        common_prime_probe=witness))
save('family_examples.json',dict(samples=samples,weak_not_NC3=dict(n=56,j=11,
                first_weak=True,second_weak=True,gcd_binom=math.gcd(math.comb(56,3),math.comb(56,11)))))
print(json.dumps({'status':'PASS','rank3_bottom':len(rows),'symbolic_compressions':len(formal),
                  'evaluated_compressions':len(small),'polynomial_cases':count,'zero_cases':zero,
                  'family_examples':len(samples)},ensure_ascii=False))
