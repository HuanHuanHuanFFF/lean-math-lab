"""Independent arithmetic path: no import of common.py or algebra.py."""
from math import gcd,isqrt,comb
from fractions import Fraction as F
from pathlib import Path
from itertools import product
import hashlib,json,sys

def carries(n,j,p):
    a,b=j,n-j;carry=0;count=0
    while a or b or carry:
        carry=(a%p+b%p+carry)//p
        count+=carry;a//=p;b//=p
    return count

def sieve(N):
    a=bytearray(b'\x01')*(N+1);a[:2]=b'\x00\x00'
    for p in range(2,isqrt(N)+1):
        if a[p]:a[p*p:N+1:p]=b'\x00'*(((N-p*p)//p)+1)
    return [i for i in range(2,N+1) if a[i]]

def divides_digits(a,b,p):
    while a or b:
        if a%p>b%p:return False
        a//=p;b//=p
    return True

def run(expected_dir):
    expected=json.loads((expected_dir/'consumers.json').read_text())
    prim=sieve(isqrt(max(r['n'] for r in expected['rows'])))
    verified=[];all_entries=0
    for row in expected['rows']:
        p,f,A,B,e=row['params'];T=p**f;X=p**e;n=T*(A*X+B)
        assert (T*X*X-A*B**2*(T*B+2))>=0 and X>=A*B
        factors=set()
        for m in [n,n-1,n-2]:
            v=m
            for q in prim:
                if q*q>v:break
                if v%q==0:
                    factors.add(q)
                    while v%q==0:v//=q
            if v>1:factors.add(v)
        ps=sorted(q for q in factors if q%2 and carries(n,3,q)>0)
        assert ps==row['source_primes']
        entries=[]
        for u in range(A+1):
            if not divides_digits(u,A,p):continue
            for w in range(B+1):
                if not divides_digits(w,B,p):continue
                j=T*(u*X+w)
                if not 4<=j<=n//2:continue
                assert carries(n,j,p)==0
                found=next((q,carries(n,3,q),carries(n,j,q)) for q in ps if carries(n,j,q))
                entries.append([j,*found])
        entries.sort()
        dig=hashlib.sha256(json.dumps(entries,separators=(',',':')).encode()).hexdigest()
        assert len(entries)==row['allocations'] and dig==row['digest']
        all_entries+=len(entries);verified.append([row['params'],len(entries),dig])
    # All degrees <=3 individually: 4^4 exact grid is a complete polynomial identity check.
    grid=0
    for A,u,n,z in product(range(4),range(4),range(2,6),range(4)):
        y=A*z-u*(n-1);r=u*(A-u);qn=3*y*(y-A)
        RN=6*r*(2*A-u-3*y)*(n-1)+2*qn*(y+3*u-2*A)
        raw=n*(n-1)*(n-2)*u**3-3*z*(n-1)*(n-2)*u*u*A+3*z*(z-1)*(n-2)*u*A*A-z*(z-1)*(z-2)*A**3
        assert RN==-6*raw;grid+=1
    discr=0
    for j,k in product(range(1,8),repeat=2):
        d=k*(k-1)*(k-2);c=3*j*k*(k-1);b=3*j*(j-1)*k;a=j*(j-1)*(j-2)
        ds=b*b*c*c-4*a*c**3-4*b**3*d-27*a*a*d*d+18*a*b*c*d
        assert ds==108*j*j*k*k*(j-1)*(k-1)*(j+k-2)**2*(j+k-1)
        discr+=1
    trans=0
    for n in range(8,121,4):
        for j in range(4,n//2+1):
            fc=[comb(j,r)*comb(n-j,3-r) for r in range(4)]
            H=gcd(gcd(fc[0],fc[1]),gcd(fc[2],fc[3]))
            # Build t^(3-r)(t-1)^r by the binomial theorem, not supplied Phi formula.
            ph=[0]*4
            for r in range(4):
                for a in range(r+1):ph[3-r+a]+=fc[r]*comb(r,a)*((-1)**(r-a))
            assert all(c%H==0 for c in ph)
            assert ph==[-comb(j,3),comb(j,2)*(n-2),-j*comb(n-1,2),comb(n,3)]
            trans+=1
    return {'status':'PASS','independent_rows':verified,'digit_allocations':all_entries,
            'complete_content_identity_grid':grid,'complete_discriminant_grid':discr,
            'coefficient_transform_cases':trans,'methods':['integer sieve factorization','reverse digit range filtering','base-p carry addition','binomial coefficient transform']}
if __name__=='__main__':
    out=run(Path(sys.argv[1]));Path(sys.argv[2]).write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print('PASS independent',out['digit_allocations'],'allocations;',out['complete_content_identity_grid'],'identity points')
