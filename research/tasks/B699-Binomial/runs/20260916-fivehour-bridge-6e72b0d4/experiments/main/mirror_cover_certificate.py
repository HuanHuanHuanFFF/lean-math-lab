"""Compact exponent cover plus independent direct-cubic verification.

Discovery uses the parent's elliptic-model sieve. Acceptance uses only primality,
2^m=1, and gcd(F1(x,U), U^p-U)=1 in F_p[U], without elliptic coordinates.
"""
from math import gcd,isqrt
from pathlib import Path
import hashlib,json,time
import numpy as np
from mirror_period_sieve import primes_and_spf,order2,x_values

ROOT=Path(__file__).resolve().parent


def trim(a):
    while a and a[-1]==0:a.pop()
    return a


def rem(a,b,p):
    a=a[:]
    inv=pow(b[-1],-1,p)
    while len(a)>=len(b):
        d=len(a)-len(b);q=a[-1]*inv%p
        for i,v in enumerate(b):a[i+d]=(a[i+d]-q*v)%p
        trim(a)
    return a


def times(a,b,f,p):
    z=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):z[i+j]=(z[i+j]+x*y)%p
    return rem(trim(z),f,p)


def no_cubic_root(x,p):
    f=[(-x**3+x*x+2*x-2)%p,(81*x*x-144*x+54)%p,(900-900*x)%p,2500%p]
    assert f[-1]
    out,base=[1],[0,1]
    e=p
    while e:
        if e&1:out=times(out,base,f,p)
        base=times(base,base,f,p);e//=2
    while len(out)<2:out.append(0)
    out[1]=(out[1]-1)%p
    a,b=f,trim(out)
    while b:a,b=b,rem(a,b,p)
    return len(a)==1


def verify(cert):
    L=cert['period']
    live={s for s in range(L) if s%6 in (0,2)}
    tests=0
    for row in cert['prime_covers']:
        p,m=row['p'],row['m']
        assert p>=2 and all(p%d for d in range(2,isqrt(p)+1))
        assert L%m==0 and pow(2,m,p)==1
        bad=set(row['bad_exponent_residues'])
        assert all(0<=r<m for r in bad)
        for r in bad:
            assert no_cubic_root(5*pow(2,r,p)%p,p),(p,r)
            tests+=1
        live={s for s in live if s%m not in bad}
    assert live=={0},sorted(live)
    return tests


def main():
    start=time.monotonic()
    ps,spf=primes_and_spf(200000)
    tries=[]
    for L in (55440,110880,221760,360360):
        ss=np.array([s for s in range(L) if s%6 in (0,2)],dtype=np.int64)
        candidates=[]
        for p in ps:
            if gcd(p,2*3*5*29)!=1:continue
            m=order2(p,spf)
            if L%m:continue
            good=x_values(p)
            allowed=np.array([good[5*pow(2,r,p)%p] for r in range(m)],dtype=np.bool_)
            bad=~allowed[ss%m]
            mask=int.from_bytes(np.packbits(bad,bitorder='little').tobytes(),'little')
            candidates.append((p,m,mask))
        remaining=(1<<len(ss))-2 # all represented exponent classes except zero
        covers=[]
        while remaining:
            p,m,mask=max(candidates,key=lambda r:(r[2]&remaining).bit_count())
            new=mask&remaining
            if not new:break
            indices=[]
            while new:
                bit=new&-new
                indices.append(bit.bit_length()-1)
                new-=bit
            badclasses=sorted({int(ss[i]%m) for i in indices})
            covers.append({'p':p,'m':m,'bad_exponent_residues':badclasses,'newly_excluded':len(indices)})
            remaining&=~mask
        tries.append({'period':L,'available_primes':len(candidates),'remaining_nonzero_classes':remaining.bit_count()})
        if not remaining:
            cert={'scope':'F1(5*2^s,u)=0 and s=0 or 2 mod6 imply s divisible by the period',
                  'period':L,'prime_covers':covers,'attempts':tries}
            tests=verify(cert)
            cert['independent_direct_cubic_tests']=tests
            cert['verified_surviving_classes']=[0]
            cert['elapsed_seconds']=time.monotonic()-start
            cert['script_sha256']=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
            out=ROOT/'mirror_cover_certificate.json'
            out.write_text(json.dumps(cert,indent=2)+'\n',encoding='utf-8')
            print(json.dumps({'result':'PASS','period':L,'primes_in_compact_cover':len(covers),
                              'independent_cubic_tests':tests,'elapsed_seconds':cert['elapsed_seconds']}))
            return
    raise AssertionError('No complete cover beyond the universal zero residue; no theorem emitted')


if __name__=='__main__':main()
