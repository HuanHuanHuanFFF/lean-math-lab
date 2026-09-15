"""Parent's full shifted-family finite reduction and interval verification.

Only parent scalar helpers are reused; no arithmetic-worker module is imported.
"""
from functools import lru_cache
from math import isqrt, prod
from pathlib import Path
import hashlib
import json
from review_fixed_cofactor import qig, val, binval

ROOT=Path(__file__).resolve().parent
ARITH=ROOT.parent/'arithmetic'
DS=(5,7,11,13,17,19,23,25,29,31)
HORIZONTAL=((1,2),(-1,1,2),(-2,-1,1),(-2,-1))
VERTICAL_ODD=((1,3),(-1,1),(-1,1),(-1,-3))
VERTICAL_EVEN=((2,),(2,),(-2,),(-2,))


def horizontal(d,r):
    k=d.bit_length()
    cap=5360*k*(k.bit_length()+11)**2
    period=2
    a=next(e for e in (0,1) if (d*2**e-r)%3==0)
    b=1
    found=set()
    while a<cap:
        for aa in range(3,min(10*b,cap)):
            if (aa-a)%period==0 and val(d*2**aa-r,3)==b:
                found.add(aa)
        modulus=3**(b+1)
        candidates=[a+e*period for e in range(3) if (d*pow(2,a+e*period,modulus)-r)%modulus==0]
        assert len(candidates)==1
        a=candidates[0]
        period*=3
        b+=1
        assert b<1000
    return found,{"d":d,"r":r,"cap":cap,"stop_level":b,"least_root":a}


def vertical(e,delta,r,epsilon):
    c=e*3**epsilon//2**delta
    r0=r//2**delta
    if (c-r0)%8:
        return set(),{"e":e,"r":r,"epsilon":epsilon,"incompatible_mod8":True}
    k=(3*e).bit_length()
    cap=3240*k*(k.bit_length()+11)**2
    t=3
    a=0
    period=1
    found=set()
    while a<cap:
        for b in range(12,4*(t+delta)):
            if b%2!=epsilon:
                continue
            u=(b-epsilon)//2
            if u<cap and (u-a)%period==0 and val(e*3**b-r,2)==t+delta:
                found.add(b)
        modulus=2**(t+1)
        candidates=[a+s*period for s in (0,1) if (c*pow(9,a+s*period,modulus)-r0)%modulus==0]
        assert len(candidates)==1
        a=candidates[0]
        period*=2
        t+=1
        assert t<1000
    return found,{"e":e,"r":r,"epsilon":epsilon,"cap":cap,"stop_level":t,"least_root":a}


@lru_cache(maxsize=None)
def prime(p):
    if p<2:
        return False
    if p==2:
        return True
    return p%2!=0 and all(p%d for d in range(3,isqrt(p)+1,2))


def main():
    candidates=set()
    receipts=[]
    for d in DS:
        for h in range(4):
            for a in (0,1):
                for b in range(12):
                    candidates.add((d,a,b,h))
            for b in (0,1):
                candidates.add((d,2,b,h))
            for r in HORIZONTAL[h]:
                aa,receipt=horizontal(d,r)
                receipts.append(receipt|{"h":h,"B":0})
                candidates.update((d,a,0,h) for a in aa)
            if h in (0,3):
                aa,receipt=horizontal(d,1 if h==0 else -1)
                receipts.append(receipt|{"h":h,"B":1})
                candidates.update((d,a,1,h) for a in aa)
            for a in (0,1):
                e=d*2**a
                offsets=VERTICAL_ODD[h] if a==0 else VERTICAL_EVEN[h]
                for r in offsets:
                    for epsilon in (0,1):
                        bb,receipt=vertical(e,a,r,epsilon)
                        receipts.append(receipt|{"h":h,"A":a})
                        candidates.update((d,a,b,h) for b in bb)
    nonqig={d*2**a*3**b+h for d,a,b,h in candidates if not qig(d*2**a*3**b+h)}
    # Below n=10 both original i4/i5 domains are empty.
    targets={(n,i) for n in nonqig if n>=10 for i in (4,5)}
    certificate_path=ARITH/'shifted_mixed_certificate.json'
    cert=json.loads(certificate_path.read_text())
    assert {(r['n'],r['i']) for r in cert['rows']}==targets
    assert len(cert['rows'])==len(targets)==258
    intervals=pairs=0
    used=set()
    for row in cert['rows']:
        n,i=row['n'],row['i']
        assert n==row['d']*2**row['A']*3**row['B']+row['h']
        pair_count=max(0,n//2-i)
        assert row['pairs']==pair_count
        pairs+=pair_count
        for r,fac in enumerate(row.get('window_factorizations',[])):
            assert prod(int(p)**e for p,e in fac.items())==n-r
            assert all(prime(int(p)) for p in fac)
        cursor=i+1
        for seg in sorted(row['intervals'],key=lambda x:(x['first'],x['last'])):
            lo,hi,p,q=seg['first'],seg['last'],seg['p'],seg['q']
            assert prime(p) and p>=i
            assert seg['power']>=1 and q==p**seg['power']
            assert binval(n,i,p)>0
            assert i+1<=lo<=hi<=n//2
            assert lo//q==hi//q and lo%q>n%q
            assert lo<=cursor
            cursor=max(cursor,hi+1)
            intervals+=1
            used.add((p,seg['power']))
        assert cursor>n//2
    assert intervals==877 and pairs==392031014969==cert['pairs']
    output={"result":"PASS","scope":"Complete cap-certified reduction and all exact original carry intervals; no enumeration of the huge j domains",
            "candidate_representations":len(candidates),"target_integers":len(targets)//2,"index_rows":len(targets),
            "intervals":intervals,"covered_pairs":pairs,"largest_n":max(n for n,i in targets),
            "complete_power_witnesses":sorted([p,e] for p,e in used),"lifting_receipts":receipts,
            "certificate_sha256":hashlib.sha256(certificate_path.read_bytes()).hexdigest(),
            "script_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    (ROOT/'review_shifted_families.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:output[k] for k in ('result','candidate_representations','target_integers','index_rows','intervals','covered_pairs','largest_n')}))


if __name__=='__main__':
    main()
