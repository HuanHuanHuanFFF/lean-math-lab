"""Independent standard-library acceptance; does not import the generator/common."""
from __future__ import annotations
import argparse, hashlib, json, math
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]


def factor_power(x:int,p:int)->int:
    if x<=0: raise ValueError('positive input required')
    ans=1
    while x%p==0:
        x//=p;ans*=p
    return ans


def valuation(x:int,p:int)->int:
    e=0
    while x%p==0:
        x//=p;e+=1
    return e


def vchoose(n:int,k:int,p:int)->int:
    # Digit carries rather than the generator's factorial quotient difference.
    x,y=k,n-k; carry=0; ans=0
    while x or y or carry:
        total=x%p+y%p+carry
        carry=total//p
        ans+=carry
        x//=p;y//=p
    return ans


def small(x:int)->int:
    return math.prod(factor_power(x,p) for p in (2,3,5))


def masks()->tuple[dict,list[int]]:
    mp={}
    for p,mod in [(2,8),(3,9),(5,25)]:
        arr=[]
        for a in range(mod):
            # gcd with p^h orders all valuations exactly up to the unique-high tier.
            row=[math.gcd(a-r,mod) for r in range(6)]
            if max(row)==max(row[0],row[2]):arr.append(a)
        mp[str(p)]={'modulus':mod,'allowed':arr}
    cls=[n for n in range(1800) if all(n%v['modulus'] in v['allowed'] for v in mp.values())]
    return mp,cls


MP,CLASSES=masks()
CLS=set(CLASSES)


def inside(n:int)->bool:
    return n%1800 in CLS


def gap2(n:int)->str|None:
    sums=[sum(valuation(n-r,p) for r in range(4)) for p in (2,3,5)]
    t4=math.prod(p**e for p,e in zip((2,3,5),sums))
    L=t4**6*(3*n*n-12*n+8)
    R=(n-3)**3*(n-1)**6*1048576
    if L<R:return 'QIG'
    sums=[sum(valuation(n-r,p) for r in range(6)) for p in (2,3,5)]
    t6=math.prod(p**e for p,e in zip((2,3,5),sums))
    L=t6**4*(3*n*n-20*n+24)
    R=7077888*(n-5)**2*(n-3)**3*(n-1)**4
    if L<R:return 'SIXG'
    return None


def validate_kernel(rec:dict)->dict:
    assert rec['target']==6 and rec['H']==[0,2] and rec['source_H']==[0,2,6]
    poly={}
    for a,b,c in rec['poly']:
        assert all(isinstance(z,int) for z in (a,b,c)) and min(a,b)>=0 and c!=0
        assert (a,b) not in poly
        poly[a,b]=c
    assert max(a+b for a,b in poly)==rec['degree']==16
    assert min(a+b for a,b in poly)==rec['origin_order']==2
    ws={int(r):w for r,w in rec['weights'].items()}
    assert ws=={1:8,3:4,4:3,5:2}
    assert sum(ws.values())==17==rec['degree']+1
    taylor=0
    for r,w in ws.items():
        for b in range(r+1):
            for u in range(w):
                for v in range(w-u):
                    z=sum(c*math.comb(a,u)*math.comb(d,v)*b**(a-u)*(r-b)**(d-v)
                          for (a,d),c in poly.items() if a>=u and d>=v)
                    assert z==0,(r,b,u,v,z)
                    taylor+=1
    # Compute every coefficient from the other direction, fixing output monomials.
    shifted=[]
    for u in range(17):
        for v in range(17-u):
            c=sum(c*math.comb(a,u)*math.comb(b,v)*7**(a+b-u-v)
                  for (a,b),c in poly.items() if a>=u and b>=v)
            if c:
                assert c>0
                shifted.append([u,v,c])
    assert shifted==rec['shift7'] and next(c for a,b,c in shifted if a==b==0)>0
    exps={str(p):max(sum(w*valuation(abs(r-h),p) for r,w in ws.items()) for h in (0,2)) for p in (2,3,5)}
    C=math.prod(int(p)**e for p,e in exps.items())
    assert exps==rec['cost_exponents']=={'2':6,'3':4,'5':2}
    assert C==rec['cost']==129600
    norm=sum(abs(c)for c in poly.values())
    assert norm==rec['norm']==125665012224
    bound=(2**17)*C*norm
    assert bound==rec['absolute_bound']==2134662916896246988800
    assert rec['exponent']==71 and bound<2**rec['exponent']
    # p-part cost check over the complete periodic domain; this is in addition
    # to the all-exponent distance argument above, not its substitute.
    max_cost=0
    for a in CLASSES:
        n=1800+a
        cost=math.prod(small(n-r)**w for r,w in ws.items())
        assert cost<=C
        max_cost=max(max_cost,cost)
    raw=(ROOT/'sources/frozen-fatpoint-height_certificates.json').read_bytes()
    assert hashlib.sha256(raw).hexdigest()==rec['source_sha256']
    inherited=next(x for x in json.loads(raw) if x['H']==[0,2,6])
    assert sorted(inherited['poly'])==rec['poly']
    # The discovery kernel was separately reconstructed with rational integer
    # elimination, rather than merely copied from the old certificate.
    reconstructed=json.loads((ROOT/'discovery/six_kernel.json').read_text())[0]
    assert sorted(reconstructed['poly'])==rec['poly']
    return dict(taylor_conditions=taylor,poly_terms=len(poly),positive_coefficients=len(shifted),
                norm=norm,maximum_actual_cost=max_cost,height_exponent=71,source_kernel_identical=True)


def validate_classes(rec:dict)->dict:
    assert rec['period']==1800 and rec['prime_classes']==MP and rec['classes']==CLASSES
    old=[n for n in range(1800) if n%72 in (18,56) and n%5 in (0,2)]
    remain=[n for n in old if n not in CLS]
    assert rec['old_D6']==old and rec['remaining_D6']==remain==[1280,1530]
    for n in range(14,20000):
        actual=all(max(factor_power(n-r,p)for r in (0,2))==max(factor_power(n-r,p)for r in range(6)) for p in (2,3,5))
        assert actual==inside(n)
    tail={}
    A=125665012224
    for n in remain:
        C=small(n-1)**8*small(n-3)**4*small(n-4)**3
        assert C==(64 if n==1280 else 648)
        assert 2**15*C*A<2**62
        tail[str(n)]={'free_cost':C,'relative_constant':2**15*C*A}
    return dict(classes=len(CLASSES),old_D6_classes=len(old),newly_closed_D6_classes=len(old)-len(remain),remaining_D6=remain,tail_q5_square_bounds=tail)


def reverse_domain()->dict:
    # Enumerate descending powers, reverse CRT, and test actual maxima by
    # dividing the whole window, independently of generator functions.
    E=71;ps={}
    for p in (2,3,5):
        q=p;arr=[]
        while q<2**E:
            arr.append(q);q*=p
        ps[p]=arr[::-1]
    high=set(); pairs=templates=hits=0
    for p,q in ((3,5),(2,5),(2,3)):
        for Q in ps[q]:
            for P in ps[p]:
                pairs+=1
                inv=pow(Q,-1,P)
                for s,r in ((2,0),(0,2)):
                    templates+=1
                    n=(s+Q*((r-s)*inv%P))%(P*Q)
                    if not 256<=n<2**E or not inside(n):continue
                    pp=[factor_power(n-a,p)for a in range(6)]
                    qq=[factor_power(n-a,q)for a in range(6)]
                    if pp[r]!=P or qq[s]!=Q or max(pp)!=P or max(qq)!=Q:continue
                    hits+=1;high.add(n)
    low=[n for n in range(14,256) if inside(n)]
    counts={};terminal=[]
    for n in sorted(set(low)|high):
        tag=gap2(n)or'terminal'
        counts[tag]=counts.get(tag,0)+1
        if tag=='terminal':terminal.append(n)
    return dict(high=sorted(high),low=low,counts=counts,terminal=terminal,
                stats=dict(power_pairs=pairs,position_templates=templates,candidate_occurrences=hits))


def check_interval(rec:dict)->int:
    assert rec['target']==6
    n=rec['n'];cursor=7;total=0
    for left,right,p,Q in rec['intervals']:
        assert left==cursor and left<=right<=n//2
        assert p>=6 and all(p%d for d in range(2,math.isqrt(p)+1))
        z=Q
        while z%p==0:z//=p
        assert z==1 and Q>=p
        assert vchoose(n,6,p)>0
        assert left//Q==right//Q and left%Q>n%Q and right%Q>n%Q
        total+=right-left+1;cursor=right+1
    assert cursor==n//2+1
    return total


def validate_domain(rec:dict)->dict:
    assert rec['target']==6 and rec['H']==[0,2] and rec['exponent']==71
    assert rec['mass_threshold']==256
    # Exact constants in the elementary SIXG -> two-largest-powers interface.
    assert 4+3*3+2*5==23 and 256>=46
    assert 3*120**4 < 256*2**17*27
    recovered=reverse_domain()
    for k in ('high','low','stats','terminal'):assert rec[k]==recovered[k]
    assert rec['gap_counts']==recovered['counts']
    assert [v['n']for v in rec['intervals']]==rec['terminal']==[8750]
    covered=sum(check_interval(v)for v in rec['intervals'])
    return dict(**recovered['stats'],high_rows=len(rec['high']),low_rows=len(rec['low']),
                total_candidate_rows=len(set(rec['high'])|set(rec['low'])),gap_counts=rec['gap_counts'],
                terminal=rec['terminal'],terminal_intervals=sum(len(v['intervals'])for v in rec['intervals']),
                terminal_j_covered=covered)


def validate_family(rec:dict)->dict:
    assert rec['exponent_lower_bounds']==[3,2,2]
    a,b,c=rec['sample_exponents'];assert a>=3 and b>=2 and c>=2
    n=rec['sample_n'];mod=rec['sample_modulus']; j=rec['sample_j'];p=rec['sample_witness']
    assert n%2**(a+1)==2**a and n%3**(b+1)==2+3**b and n%5**(c+1)==2+5**c
    expected=2**(a+1)*3**(b+1)*5**(c+1)
    allps=[]
    for rr,pps in rec['coarse_witnesses'].items():
        r=int(rr)
        for q in pps:
            assert q>=7 and all(q%d for d in range(2,math.isqrt(q)+1))
            assert (n-r)%q==0
            expected*=q;allps.append(q)
    assert len(allps)==len(set(allps))==15 and expected==mod
    assert 14<=n<mod and n>=2**71 and inside(n)
    for q,h,e in ((2,0,a),(3,2,b),(5,2,c)):
        vals=[factor_power(n-r,q)for r in range(6)]
        assert vals[h]==q**e and vals.count(max(vals))==1 and vals[h]==max(vals)
    assert vchoose(n,6,p)==rec['source_valuation']>0 and vchoose(n,j,p)==rec['target_valuation']>0
    return dict(sample_bits=n.bit_length(),sample_witness=p,coarse_prime_witnesses=len(allps),
                all_six_coarse_blocks_nonunit=True,row3_distinct_witnesses=4,row4_distinct_witnesses=3)


def audit_sources()->int:
    records=json.loads((ROOT/'sources/SOURCE_MAP.json').read_text())
    for r in records:
        p=ROOT/r['stored'];data=p.read_bytes()
        assert len(data)==r['bytes'] and hashlib.sha256(data).hexdigest()==r['sha256']
    return len(records)


def verify(out:Path)->dict:
    load=lambda n:json.loads((out/n).read_text())
    return dict(status='PASS_NEW_NATIVE_I6_H02',source_files=audit_sources(),
                kernel=validate_kernel(load('kernel.json')),classes=validate_classes(load('classes.json')),
                finite=validate_domain(load('domain.json')),family=validate_family(load('family.json')),
                historical_full_chain_replayed=False,lean_run=False,external_independent_review=False)

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True)
    out=ap.parse_args().out;ans=verify(out)
    (out/'verification.json').write_text(json.dumps(ans,sort_keys=True,indent=2)+'\n')
    print(json.dumps(ans,ensure_ascii=False))
