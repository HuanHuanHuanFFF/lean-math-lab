#!/usr/bin/env python3
"""Standard-library receiver for the NEW three fat-point consumers.
No generator/discovery import. Exact Taylor coefficients, positivity, costs,
reversed CRT enumeration, and full carry covers are independently rebuilt.
Author-internal second implementation; not Lean or external acceptance.
"""
from pathlib import Path
from math import comb,gcd,prod,isqrt
from fractions import Fraction
from itertools import combinations,permutations
from functools import lru_cache
import json,hashlib,time,argparse
ROOT=Path(__file__).resolve().parents[1]
EXPECTED={(0,2,4):(32,{1:16,3:8,5:5,6:4},236),
          (0,2,5):(22,{1:11,3:5,4:4,6:3},163),
          (0,2,6):(16,{1:8,3:4,4:3,5:2},108)}
def need(b,msg='invalid evidence'):
    if not b:raise ValueError(msg)
def vp(n,p):
    need(n!=0,'valuation of zero');n=abs(n);a=0
    while n%p==0:n//=p;a+=1
    return a

def readpoly(terms):
    need(isinstance(terms,list) and terms,'empty polynomial')
    ans={}
    for t in terms:
        need(isinstance(t,list) and len(t)==3,'malformed monomial')
        a,b,c=t;need(type(a)is int and type(b)is int and type(c)is int and a>=0 and b>=0 and c!=0,'nonintegral monomial')
        need((a,b) not in ans,'duplicate monomial');ans[a,b]=c
    return ans

def translate(poly,A,B):
    z={}
    for (a,b),c in poly.items():
        for u in range(a+1):
            for v in range(b+1):
                z[u,v]=z.get((u,v),0)+c*comb(a,u)*comb(b,v)*A**(a-u)*B**(b-v)
    return {p:c for p,c in z.items() if c}

def check_polynomial(cert):
    H=tuple(cert['H']);need(H in EXPECTED,'changed position set');D,w,E=EXPECTED[H]
    need(cert['degree']==D and {int(r):v for r,v in cert['weights'].items()}==w,'changed weights/degree')
    F=readpoly(cert['poly']);need(max(a+b for a,b in F)==D and gcd(*F.values())==1,'wrong degree/content')
    need(sum(w.values())==D+1,'no strict descent')
    # Integer Taylor coefficients. These are divided derivatives, with no
    # division by a factorial and no loss of a prime-power layer.
    equations=0;grid=0;actual_orders=[]
    for r,t in w.items():
        for b in range(r+1):
            c=r-b;grid+=1
            for u in range(t):
                for v in range(t-u):
                    value=sum(cc*comb(a,u)*comb(d,v)*b**(a-u)*c**(d-v)
                              for (a,d),cc in F.items() if a>=u and d>=v)
                    need(value==0,f'nonzero Taylor coefficient at {(r,b,u,v)}');equations+=1
            # Actual first nonzero homogeneous Taylor layer, finite diagnostic.
            order=t
            while order<=D:
                if any(sum(cc*comb(a,u)*comb(d,order-u)*b**(a-u)*c**(d-order+u)
                           for (a,d),cc in F.items() if a>=u and d>=order-u)
                       for u in range(order+1)):break
                order+=1
            need(order<=D,'nonzero polynomial cannot have infinite order');actual_orders.append([r,b,order])
    shifted=translate(F,8,8)
    if H==(0,2,4):
        need(cert['shift_coordinates']=='j=8+x,k=8+x+y','wrong triangular positivity region')
        z={}
        for (a,b),cc in shifted.items():
            for t in range(b+1):z[a+t,b-t]=z.get((a+t,b-t),0)+cc*comb(b,t)
        shifted={p:c for p,c in z.items() if c}
    else:need(cert['shift_coordinates']=='j=8+x,k=8+y','wrong positivity region')
    need(shifted==readpoly(cert['shift']),'positive expansion is not the actual polynomial')
    need(shifted.get((0,0),0)>0 and all(v>0 for v in shifted.values()),'not strictly positive throughout the legal region')
    ee={p:max(sum(t*vp(r-h,p) for r,t in w.items()) for h in H) for p in (2,3,5)}
    ee[7]=max(w.values())
    need({str(p):e for p,e in ee.items()}==cert['cost_exponents'],'unjustified small-part/endpoint cost')
    C=prod(p**e for p,e in ee.items());A=sum(abs(v) for v in F.values());bound=2**sum(w.values())*C*A
    need(A==cert['norm'] and bound==cert['height_bound'],'height arithmetic changed')
    need(bound.bit_length()==E==cert['height_exponent'] and bound<2**E,'wrong absolute height')
    return {'H':list(H),'degree':D,'weight_sum':sum(w.values()),'grid_points':grid,'vanishing_equations':equations,
            'actual_orders':actual_orders,'positive_coefficients':len(shifted),'coefficient_norm':A,
            'small_cost_exponents':ee,'height_exponent':E,'height_bound':bound,'polynomial_terms':len(F)}

def normal(x):
    a=prod(p**vp(x,p) for p in (2,3,5))
    if vp(x,7)==1:a*=7
    return a

def gap(n):
    ss=[normal(n-r) for r in range(6)];t=prod(ss[:4])
    if t**6*(3*n*n-12*n+8)<1048576*(n-1)**6*(n-3)**3:return 'QIG'
    t=prod(ss)
    if t**4*(3*n*n-20*n+24)<7077888*(n-1)**4*(n-3)**3*(n-5)**2:return 'SIXG'
    return None

def rowhash(ns):return hashlib.sha256(''.join(str(n)+'\n' for n in ns).encode()).hexdigest()

def qualifies(n,H):
    for p in (2,3,5):
        v=[vp(n-r,p) for r in range(7)]
        if max(v)!=max(v[h] for h in H):return False
    return True

def residue_mask(H):
    result=[]
    for a in range(1800):
        valid=True
        for p,e in ((2,3),(3,2),(5,2)):
            vals=[]
            for r in range(7):
                b=(a-r)%(p**e);vals.append(e if b==0 else vp(b,p))
            valid &= max(vals)==max(vals[h] for h in H)
        result.append(int(valid))
    return bytes(result)

def reverse_crt(E,H,mask):
    N=2**E;ps=(2,3,5);arrays={}
    for p in ps:
        e=1;a=[]
        while p**e<N:a.append((e,p**e));e+=1
        arrays[p]=a[::-1]
    seen=set();found=set();pairs=templates=0
    for p,q in reversed(list(combinations(ps,2))):
        for e,P in arrays[p]:
            for f,Q in arrays[q]:
                pairs+=1
                if P*Q<=2**18:continue
                inverse=pow(Q,-1,P)
                for r,s in reversed(list(permutations(H,2))):
                    templates+=1;n=s+Q*((r-s)*inverse%P)
                    if not(2**18<=n<N and n<P*Q) or n in seen or not mask[n%1800]:continue
                    if vp(n-r,p)!=e or vp(n-s,q)!=f:continue
                    maxima=[max(vp(n-h,t) for h in range(7)) for t in ps]
                    if maxima[ps.index(p)]!=e or maxima[ps.index(q)]!=f:continue
                    seen.add(n)
                    if prod(t**a for t,a in zip(ps,maxima))**2>n**3:found.add(n)
    return sorted(found),{'power_pairs':pairs,'position_templates':templates,'distinct_exact_rows':len(seen)}

@lru_cache(None)
def prime(p):
    return type(p)is int and p>=2 and (p==2 or p%2!=0 and all(p%d for d in range(3,isqrt(p)+1,2)))

def choose_v(n,j,p):
    q=p;v=0
    while q<=n:v+=int(j%q>n%q);q*=p
    return v

def check_covers(rows,expected):
    need([n for m,n,spans in rows]==expected,'wrong/incomplete terminal row set');count=total=0;primes=set()
    for m,n,spans in rows:
        need(m==7 and n>=16,'wrong target/legal row');first=8
        for a,b,p,Q in spans:
            need(all(type(t)is int for t in (a,b,p,Q)) and a==first and a<=b<=n//2,'hole, overlap or illegal interval')
            need(prime(p) and p>=7,'invalid prime threshold')
            need(Q>=p and Q==p**vp(Q,p),'not a prime power')
            need(choose_v(n,7,p)>0,'prime not in source')
            need(a//Q==b//Q and a%Q>n%Q,'invalid complete carry interval')
            count+=1;total+=b-a+1;primes.add(p);first=b+1
        need(first==n//2+1,'row cover stops early')
    return {'terminal_rows':len(rows),'intervals':count,'covered_configurations':total,'prime_witnesses':sorted(primes)}

def check_domain(dom,rowset,E):
    H=tuple(dom['H']);need(H in EXPECTED and rowset['H']==list(H),'wrong domain binding')
    need((dom['m'],dom['height_exponent'],dom['mass_threshold'],dom['period'])==(7,E,262144,1800),'changed domain/height')
    mask=residue_mask(H)
    need(sum(mask)==dom['residue_count'] and hashlib.sha256(mask).hexdigest()==dom['mask_sha256'],'bad arbitrary-exponent residue mask')
    # Independent actual valuations, not using the generator mask as a selector.
    low=[n for n in range(16,2**18) if qualifies(n,H)]
    need(len(low)==dom['low_count'] and rowhash(low)==dom['low_sha256'],'incomplete low range')
    need(all(mask[n%1800] for n in low),'period and valuation criteria disagree')
    high,stats=reverse_crt(E,H,mask);need(high==dom['high'],'complete reversed CRT disagrees')
    need(stats['power_pairs']==dom['generation_stats']['power_pairs'] and stats['position_templates']==dom['generation_stats']['position_templates'],'truncated exponent/position domain')
    term=[];gc={'QIG':0,'SIXG':0}
    for n in low+high:
        rejected=gap(n)
        if rejected:gc[rejected]+=1
        else:term.append(n)
    need(term==dom['terminal_rows'] and gc==dom['gap_counts'],'incorrect gap filtering/terminal data')
    ans=check_covers(rowset['rows'],term)
    need(ans['intervals']==dom['interval_count'] and ans['covered_configurations']==dom['covered_configurations'],'bad covered cardinality')
    margin=2**18*27*(2**18-45)-3*840**4;need(margin>0,'two-power mass threshold not justified')
    return {'H':list(H),'low_rows':len(low),'high_rows':high,'reverse_stats':stats,'gap_counts':gc,'mass_margin':margin,**ans}

def harmonic_table():
    table=[]
    for m,H in [(5,(0,1)),(5,(0,2))]+[(7,(0,1,h)) for h in range(2,7)]+[(7,(0,2,h)) for h in range(3,7)]:
        R=[r for r in range(m) if r not in H];s=sum((Fraction(1,r+1) for r in R),Fraction())
        table.append({'m':m,'H':list(H),'free_rows':R,'kappa':[s.numerator,s.denominator],'obstruction':s<=1,'critical_rigidity':s<1})
    need(sum(t['obstruction'] for t in table)==7,'wrong harmonic case classification')
    return table

def check_families(dat):
    old=json.loads((ROOT/'sources/previous-families.json').read_text());need(dat['5']==old['5'],'i5 should not be changed')
    hs=[(0,1,2),(0,1,3),(0,1,4),(0,1,5),(0,1,6),(0,2,3)];expected=[];cs={p:set() for p in (2,3,5)}
    for H in hs:
        for t in permutations(H):
            pos=dict(zip((2,3,5),t));p0=next(p for p in pos if pos[p]==0)
            cap=7*prod(p**vp(pos[p],p) for p in pos if p!=p0);ds=[d for d in range(1,cap+1) if cap%d==0]
            expected.append((tuple(sorted((str(p),h) for p,h in pos.items())),p0,cap,tuple(ds)));cs[p0].update(ds)
    actual=[(tuple(sorted(r['positions'].items())),r['zero_prime'],r['coefficient_cap'],tuple(r['allowed_coefficients'])) for r in dat['7']['roles']]
    need(sorted(actual)==sorted(expected),'incorrect remaining roles')
    coeff={str(p):sorted(c) for p,c in cs.items()}
    need(dat['7']['remaining_H']==[list(H) for H in hs] and dat['7']['coefficients']==coeff and dat['7']['family_count']==24,'wrong family union')
    removed={p:sorted(set(old['7']['coefficients'][p])-set(coeff[p])) for p in coeff}
    need(removed=={'2':[],'3':[10,70],'5':[]},'incorrect removed coefficient families')
    for c in (10,70):
        for a in (0,1):need(420%(c*3**a)==0,'LCM low exponent not covered')
    return {'remaining_H':[list(H) for H in hs],'roles':len(expected),'coefficients':coeff,'family_count':24,'removed_coefficients':removed,'unchanged_i5_family_count':6}

def check_sources():
    data=json.loads((ROOT/'sources/INPUTS.json').read_text())
    for f in data['inputs']:
        p=ROOT/f['file'];need(p.is_file() and p.stat().st_size==f['bytes'] and hashlib.sha256(p.read_bytes()).hexdigest()==f['sha256'],'source bytes are not bound')
    return len(data['inputs'])

def main(output):
    start=time.perf_counter();p=ROOT/'evidence';certs=json.loads((p/'height_certificates.json').read_text());doms=json.loads((p/'domains.json').read_text());rowsets=json.loads((p/'rows.json').read_text())
    need([tuple(c['H']) for c in certs]==list(EXPECTED),'missing/reordered polynomial cases')
    need(len(doms)==len(rowsets)==3,'missing bounded domains')
    polys=[check_polynomial(c) for c in certs]
    ds=[check_domain(d,r,c['height_exponent']) for d,r,c in zip(doms,rowsets,certs)]
    families=check_families(json.loads((p/'families.json').read_text()))
    ans={'status':'PASS_NEW_FATPOINT_POSITION_CLOSURES','polynomials':polys,'domains':ds,'families':families,'harmonic_obstruction':harmonic_table(),'sources_checked':check_sources()}
    # Reproducible mathematical output intentionally excludes wall time.
    Path(output).write_text(json.dumps(ans,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':ans['status'],'new_cases':3,'taylor_conditions':sum(c['vanishing_equations'] for c in polys),'positive_coefficients':sum(c['positive_coefficients'] for c in polys),'covered_cardinality':sum(d['covered_configurations'] for d in ds),'seconds':time.perf_counter()-start}))
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'evidence/verification.json'));args=ap.parse_args();main(args.out)
