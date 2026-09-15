#!/usr/bin/env python3
"""Finite regressions and deliberate semantic corruption tests, not infinite proofs."""
from pathlib import Path
from math import comb,gcd,prod
from itertools import combinations
import json,copy,argparse,time
import verify as V
ROOT=Path(__file__).resolve().parents[1]

def accepted(m,n):
    qs,loc=V.low_profile(n,m)
    if m==5:
        return min(qs)<=4 or any(all(L&(1<<h) for L in loc) for h in range(5)) or all(L&((1<<0)|(1<<4)) for L in loc)
    if m==7:
        if min(qs)<=6:return True
        Hs=list(combinations(range(7),2))+[(0,3,5),(0,3,6),(0,4,5),(0,4,6),(0,5,6)]
        return any(all(L&sum(1<<h for h in H) for L in loc) for H in Hs)
    return all(L&sum(1<<h for h in (0,3,5,7)) for L in loc)

def rough(x,m):
    for p in V.primes_for(m):
        while x%p==0:x//=p
    return x

def primes_fac(x):
    f={};p=2
    while p*p<=x:
        while x%p==0:f[p]=f.get(p,0)+1;x//=p
        p+=1
    if x>1:f[x]=1
    return f

def crt(eqs):
    n=0;M=1
    for residue,mod in eqs:
        n+=M*((residue-n)*pow(M,-1,mod)%mod);M*=mod;n%=M
    return n,M

def run(out):
    start=time.monotonic();out=Path(out);out.mkdir(exist_ok=True,parents=True)
    dat=json.loads((ROOT/'evidence/height_certificates.json').read_text())
    residual=json.loads((ROOT/'evidence/residual_families.json').read_text());rows=json.loads((ROOT/'evidence/rows.json').read_text())
    counts={'legal_configurations':0,'new_consumer_direct_gcd':0,'same_full_rough_divisor_to_i9':0,'gap_consumer_direct_gcd':0,'actual_avoiding_blocks':0,'grid_polynomial_divisibilities':0}
    for n in range(12,401):
        for m in (5,7,8):
            if n<2*(m+1):continue
            ok=accepted(m,n);gap=V.known_gap(n,m);source=comb(n,m)
            for j in range(m+1,n//2+1):
                counts['legal_configurations']+=1
                actual=gcd(source,comb(n,j));w=rough(actual,m)
                if ok:
                    V.need(w>1,'new consumer regression counterexample');counts['new_consumer_direct_gcd']+=1
                    if m==8 and j>=10:
                        V.need(comb(n,9)%w==0,'same-divisor threshold transfer failed');counts['same_full_rough_divisor_to_i9']+=1
                if gap:
                    V.need(w>1,'adopted gap regression failed');counts['gap_consumer_direct_gcd']+=1
    # The avoiding-part grid has many true instances even though full NC is absent.
    selected={m:[] for m in (5,7,8)}
    for c in dat['cases']:
        selected[c['target']]+=c['polynomials']
    for m in selected:
        seen={}
        for f in selected[m]:seen[(f['degree'],tuple(f['coeffs']))]=f
        selected[m]=list(seen.values())
    for n in range(18,101):
        for m in (5,7,8):
            C=comb(n,m)
            for j in range(m+1,n//2+1):
                B=comb(n,j)
                for r in range(m):
                    for p,e in primes_fac(n-r).items():
                        if p<m or C%p or B%p==0:continue
                        Q=p**e;b=j%Q
                        V.need(b<=r,'full-layer residue failed');counts['actual_avoiding_blocks']+=1
                        for f in selected[m]:
                            if V.polynomial(f,b,r-b)==0:
                                V.need(V.polynomial(f,j,n-j)%Q==0,'grid divisibility failed');counts['grid_polynomial_divisibilities']+=1
    # Actual odd terminal endpoint powers, with factorial cancellation retained.
    endpoints=[]
    for m,n,j,r,p,Q,lower in [(5,129,25,4,5,125,25),(7,349,49,6,7,343,49)]:
        s=V.normalize(n-r,m);qr=(n-r)//s
        sv=V.legendre(n,p)-V.legendre(m,p)-V.legendre(n-m,p)
        tv=V.legendre(n,p)-V.legendre(j,p)-V.legendre(n-j,p)
        V.need(qr==Q and sv>0 and tv>0 and j%Q>n%Q and not(j%lower>n%lower))
        endpoints.append({'m':m,'n':n,'j':j,'r':r,'p':p,'complete_Q':Q,'wrong_reduced_Q':lower,'source_valuation':sv,'target_valuation':tv})
    # Infinite-family constructions: these points only check implementation.
    examples=[]
    for a,b,c in [(4,2,2),(8,5,4),(16,9,8)]:
        n,L=crt([(2**a,2**(a+1)),(1+3**b,3**(b+1)),(1+5**c,5**(c+1))])
        n+=L*2;j=n//(2**a);V.need(accepted(7,n) and gcd(n,j)==j and n//j==2**a)
        examples.append({'family':'seven_two_positions_01','n':str(n),'j':str(j),'alpha':2**a,'full_max_positions':[list(i for i in range(7) if loc&(1<<i)) for loc in V.low_profile(n,7)[1]]})
    for b,c in [(3,2),(7,5),(12,10)]:
        n,L=crt([(7,8),(3**b,3**(b+1)),(1+5**c,5**(c+1))]);n+=L*2
        V.need(accepted(7,n) and V.low_profile(n,7)[0][0]==4)
        V.need([loc for loc in V.low_profile(n,7)[1]]==[1<<3,1<<0,1<<1])
        examples.append({'family':'seven_bounded_two_part_H013','n':str(n),'j':str(n//3**b),'alpha':3**b})
    for a,b,c,d in [(4,2,2,2),(7,5,4,3),(12,8,6,5)]:
        n,L=crt([(2**a,2**(a+1)),(3+3**b,3**(b+1)),(5+5**c,5**(c+1)),(7+7**d,7**(d+1))]);n+=2*L
        V.need(accepted(8,n));V.need(V.low_profile(n,8)[1]==(1,8,32,128))
        examples.append({'family':'eight_H0357','n':str(n),'j':str(n//2**a),'alpha':2**a})
    # Deliberately bad certificates must be rejected, not silently repaired.
    mutations=[]
    def reject(label,fn):
        try:fn()
        except (ValueError,KeyError,TypeError,AssertionError,ZeroDivisionError):mutations.append(label);return
        raise AssertionError('accepted corrupt evidence: '+label)
    def alter_data(label,mutator):
        x=copy.deepcopy(dat);mutator(x);reject(label,lambda:V.validate_dat(x))
    alter_data('missing_target_case',lambda x:x['cases'].pop())
    alter_data('duplicate_target_case',lambda x:x['cases'].__setitem__(-1,x['cases'][0]))
    alter_data('relative_K_too_small',lambda x:x['relative']['7'].__setitem__('Kmax',209))
    alter_data('relative_W_exponent_too_small',lambda x:x['relative']['7'].__setitem__('Lmax',46))
    alter_data('missing_relative_prime_role',lambda x:x['relative']['7']['cases'].pop())
    alter_data('bounded_prime_cost_changed',lambda x:x['relative']['5']['cases'][0].__setitem__('K',0))
    for idx,label,mutator in [
        (0,'wrong_full_source_length',lambda c:c.__setitem__('d',4)),
        (0,'wrong_target_threshold',lambda c:c.__setitem__('target',4)),
        (0,'height_truncated',lambda c:c.__setitem__('N',str(int(c['N'])//2))),
        (0,'mass_entry_lowered',lambda c:c.__setitem__('T',11124)),
        (0,'negative_row_weight',lambda c:c['row_weights'].__setitem__('1',-1)),
        (0,'weight_on_uncontrolled_position',lambda c:c['row_weights'].__setitem__('0',1)),
        (0,'isolated_5_cost_removed',lambda c:c['small_exponents'].__setitem__('5',0)),
        (6,'isolated_7_cost_removed',lambda c:c['small_exponents'].__setitem__('7',0)),
        (6,'polynomial_weight_removed',lambda c:c['polynomials'][0].__setitem__('weight',0)),
        (6,'noninteger_coefficient',lambda c:c['polynomials'][0]['coeffs'].__setitem__(0,0.5)),
        (6,'wrong_descent_gap',lambda c:c.__setitem__('gap',c['gap']+1))]:
        c=copy.deepcopy(dat['cases'][idx]);mutator(c);reject(label,lambda c=c:V.height_check(c))
    central=next(c for c in dat['cases'] if any(f['nonzero']=='central' for f in c['polynomials']))
    c=copy.deepcopy(central);f=next(f for f in c['polynomials'] if f['nonzero']=='central');f['coeffs'][-1]=1
    reject('false_central_zero_locus',lambda:V.height_check(c))
    c=copy.deepcopy(central);f=next(f for f in c['polynomials'] if f['nonzero']=='central');f['nonzero']='sign'
    reject('central_line_not_strictly_positive',lambda:V.height_check(c))
    prime=V.sieve(max(n for m,n,iv in rows));sample=copy.deepcopy(rows[0])
    for label,mutator in [('interval_start_gap',lambda r:r[2][0].__setitem__(0,r[2][0][0]+1)),('interval_tail_removed',lambda r:r[2].pop()),('composite_witness',lambda r:r[2][0].__setitem__(2,9)),('threshold_lowered',lambda r:r[2][0].__setitem__(2,2)),('nonpower_layer',lambda r:r[2][0].__setitem__(3,6)),('layer_one',lambda r:r[2][0].__setitem__(3,1)),('source_row_changed',lambda r:r.__setitem__(1,r[1]+1))]:
        r=copy.deepcopy(sample);mutator(r);reject(label,lambda r=r:V.row_check(r,prime))
    rr=copy.deepcopy(residual);rr['7']['families']['2'].remove(35);reject('residual_family_dropped',lambda:V.residual_check(rr))
    rr=copy.deepcopy(residual);rr['7']['roles'][0]['coefficient_cap']=1;reject('residual_endpoint_cost_dropped',lambda:V.residual_check(rr))
    rr=copy.deepcopy(residual);rr['5']['remaining_H'].append([0,4]);reject('closed_position_reintroduced',lambda:V.residual_check(rr))
    rr=copy.deepcopy(residual);rr['7']['roles'].pop();reject('missing_prime_position_permutation',lambda:V.residual_check(rr))
    c={'d':7,'target':7,'H':list(range(7)),'kind':'bounded_min','B':8};reject('truncated_minimum_not_exact',lambda:V.make_mask(c))
    # Small exact identities underpinning the fixed-alpha closing interface.
    V.need(30*3**4+3<2**12 and 420*5**6+5<2**23)
    stats={'counts':counts,'endpoint_controls':endpoints,'infinite_family_display_points':examples,'semantic_mutations_rejected':mutations,'mutation_count':len(mutations),'verification_scope':'finite regression only; infinite claims are proved in notes/PROOFS.md'}
    (out/'regression.json').write_text(json.dumps(stats,sort_keys=True,separators=(',',':'))+'\n')
    print(json.dumps(counts),'rejected',len(mutations),'seconds',time.monotonic()-start,flush=True)
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'evidence'));a=ap.parse_args();run(a.out)
