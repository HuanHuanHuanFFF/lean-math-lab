"""Negative-x branch of the same cubic; direct polynomial verification included."""
from math import gcd,isqrt
from pathlib import Path
import hashlib,json,time
import numpy as np
from mirror_period_sieve import primes_and_spf,order2,x_values
from mirror_cover_certificate import no_cubic_root

ROOT=Path(__file__).resolve().parent


def main():
    start=time.monotonic();ps,spf=primes_and_spf(200000)
    attempts=[]
    for L in (55440,110880,221760,360360):
        ss=np.array([s for s in range(L) if s%6 in (2,4)],dtype=np.int64)
        assert ss[0]==2
        masks=[]
        for p in ps:
            if gcd(p,2*3*5*29)!=1:continue
            m=order2(p,spf)
            if L%m:continue
            good=x_values(p)
            allowed=np.array([good[-pow(2,r,p)%p] for r in range(m)],dtype=np.bool_)
            mask=int.from_bytes(np.packbits(~allowed[ss%m],bitorder='little').tobytes(),'little')
            masks.append((p,m,mask))
        remaining=(1<<len(ss))-2;covers=[]
        while remaining:
            p,m,mask=max(masks,key=lambda row:(row[2]&remaining).bit_count())
            new=mask&remaining
            if not new:break
            indices=[]
            while new:
                bit=new&-new;indices.append(bit.bit_length()-1);new-=bit
            covers.append({'p':p,'m':m,'bad_exponent_residues':sorted({int(ss[i]%m) for i in indices}),
                           'newly_excluded':len(indices)})
            remaining&=~mask
        attempts.append({'period':L,'additional_survivors':remaining.bit_count()})
        if remaining:continue
        live=set(map(int,ss));tests=0
        for row in covers:
            p,m=row['p'],row['m']
            assert p!=5 and all(p%d for d in range(2,isqrt(p)+1))
            assert L%m==0 and pow(2,m,p)==1
            bad=set(row['bad_exponent_residues'])
            for r in bad:
                assert no_cubic_root(-pow(2,r,p)%p,p),(p,r)
                tests+=1
            live={s for s in live if s%m not in bad}
        assert live=={2}
        output={'status':'PASS','scope':'F1(-2^s,a/25)=0, a integral, s=2 or 4 mod6 implies s=2 modulo L',
                'period':L,'verified_surviving_classes':[2],'prime_covers':covers,
                'direct_cubic_tests':tests,'attempts':attempts,'elapsed_seconds':time.monotonic()-start,
                'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
        (ROOT/'negative_two_cover_certificate.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
        print(json.dumps({k:output[k] for k in ('status','period','direct_cubic_tests','elapsed_seconds')}|
                         {'primes':len(covers),'survivors':[2]}))
        return
    (ROOT/'negative_two_cover_failed.json').write_text(json.dumps(attempts,indent=2)+'\n')
    raise AssertionError('Period cover not complete; no infinite conclusion')


if __name__=='__main__':main()
