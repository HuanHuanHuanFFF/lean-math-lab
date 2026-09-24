#!/usr/bin/env python3
"""C17: exact algebra, finite CRT reconstruction, and original-prime endpoints.
Standard library only. BFT Theorem 2.1 is an external published input.
This is not a Lean proof or an external independent mathematical review.
"""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction
from itertools import product, permutations
from math import prod, isqrt
import argparse
import hashlib
import json
from exact_algebra import ONE, XX, YY, mul, sub, power, shift, order, check_qig_identities

ROOT = Path(__file__).resolve().parents[1]
CASES = {752: {'K':479,'r2':0,'r5':2},
          50: {'K':484,'r2':2,'r5':0}}
LAM = {(2,3):Fraction(57,200), (2,5):Fraction(129,500), (3,5):Fraction(27,125)}

def require(ok, text):
    if not ok: raise ValueError(text)

def load(p): return json.loads(p.read_text(encoding='utf-8'))
def dump(p,data): p.write_text(json.dumps(data,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()

def vp(n,p):
    require(n>0,'positive valuation argument')
    e=0
    while n%p==0: n//=p; e+=1
    return e

def smallpart(n):
    s=1
    for p in (2,3,5):
        while n%p==0: n//=p; s*=p
    return s

def qig(n):
    T=prod(smallpart(n-r) for r in range(4))
    left=T**6*(3*n*n-12*n+8)
    right=2**20*(n-1)**6*(n-3)**3
    return T,left,right

def payer_audit(primes,weights=(4,3,1),pair_indices=((0,1),(0,2),(1,2))):
    edges=[(i,j,LAM[tuple(sorted((primes[i],primes[j])))]) for i,j in pair_indices]
    records=[]
    for bits in product((0,1),repeat=len(edges)):
        e=[Fraction(0)]*3
        for bit,(i,j,l) in zip(bits,edges):
            who=(i,j)[bit]; e[who]=max(e[who],l)
        d=sum(w*t for w,t in zip(weights,e))
        records.append({'choices':list(bits),'exponents':[str(t) for t in e],
                        'weighted_sum':str(d)})
    minimum=min(Fraction(t['weighted_sum']) for t in records)
    return {'prime_order':list(primes),'minimum':str(minimum),'branches':records}

def check_inputs():
    k=load(ROOT/'sources/kernel16.json')
    H={(i,j):c for i,j,c in k['H8_terms']}
    F=mul(mul(power(mul(XX,YY),2),power(mul(sub(XX,ONE),sub(YY,ONE)),2)),H)
    expected={'0':[4],'1':[8,8],'2':[3,4,3],'3':[4,4,4,4],
              '4':[3,3,3,3,3],'5':[2,2,1,1,2,2]}
    got={str(r):[order(F,b,r-b) for b in range(r+1)] for r in range(6)}
    require(got==expected,'K16 source orders')
    require(F=={(i,j):c for i,j,c in k['F16_terms']},'K16 stored/full expansion')
    sh=shift(H,7,7)
    require(len(sh)==45 and min(sh.values())==34 and all(c>0 for c in sh.values()),'K16 positivity')
    L=sum(abs(c) for c in H.values())
    require(L==1388988,'K16 norm')
    exc=load(ROOT/'sources/bft_exception_pairs.json')
    require(len(exc)==40 and max(max(x) for x in exc)==1771561,'BFT fixed exception table')
    gaps={d:[x for x in exc if abs(x[0]-x[1])==d] for d in (2,3,5)}
    require(gaps[2]==[] and gaps[3]==[],'BFT gaps 2 and 3')
    require(sorted(gaps[5])==[[1029,1024],[1215,1210],[30618,30613]],'BFT gap 5')
    require(all(max(x)%1800 not in CASES for x in gaps[5]),'new classes avoid exceptions')
    a752=payer_audit((2,5,3),pair_indices=((0,1),(0,2)))
    a50=payer_audit((5,2,3))
    require(a752['minimum']=='1059/1000','752 two-edge exponent')
    require(a50['minimum']=='1059/1000','50 three-edge exponent')
    lost=payer_audit((5,2,3),pair_indices=((0,1),(0,2)))
    require(lost['minimum']=='99/100','two-edge failure certificate')
    height=[]
    for label,C,D,K in [('752',Fraction(L,2),216,479),
                         ('50,c=1',Fraction(L,16),135,416),
                         ('50,c=2',Fraction(L,16),2160,484)]:
        rhs=(C*D)**1000*2**1059
        require(rhs < Fraction(2)**(59*K),label+' exact height')
        require(rhs >= Fraction(2)**(59*(K-1)),label+' rounding boundary')
        height.append({'case':label,'C':str(C),'D':D,'K':K})
    require(3*6**6<2**19,'QIG product bound strict constant')
    require(1-Fraction(15,50)>Fraction(1,2),'Bernoulli valid from n=50')
    costs=[]
    # Exact local classes: mod8, mod9, mod25 suffice for all frozen low factors.
    for r,cfg in CASES.items():
        n=r+1800
        val=[]
        for i in range(6): val.append([vp(n-i,p) for p in (2,3,5)])
        require(prod(smallpart(n-i) for i in range(4))==
                6*2**vp(n-cfg['r2'],2)*5**vp(n-cfg['r5'],5),'T4 cost')
        costs.append({'residue':r,'example_valuations':val})
    other=[payer_audit(p) for p in permutations((2,3,5))]
    require([t['minimum'] for t in other]==['1113/1000','1059/1000','1071/1000',
                                         '933/1000','1059/1000','933/1000'], 'six-assignment audit')
    return {'K16_orders':got,'positive_coefficients':45,'norm_L':L,
            'QIG_identities':check_qig_identities(), 'BFT_gaps':{str(d):values for d,values in gaps.items()},
            'payer_752':a752,'payer_50':a50,'two_edge_50_failure':lost,
            'height_ledger':height,'six_assignment_audit':other,
            'local_cost_examples':costs, 'BFT_analytic_theorem_reproved':False}

def powers(p,K,start):
    vals=[];e=start;x=p**start
    while x<2**K: vals.append((e,x));e+=1;x*=p
    return vals

def first_recovery(res):
    c=CASES[res];K,r2,r5=c['K'],c['r2'],c['r5']
    twos=powers(2,K,3);fives=powers(5,K,2)
    hits=0;rows={};count=0
    for u,P in twos:
        for v,Q in fives:
            count+=1
            n=(r2+P*((r5-r2)*pow(P,-1,Q)%Q))%(P*Q)
            if not 14<=n<2**K or n%1800!=res: continue
            hits+=1
            if ((n-r2)//P)%2==0 or ((n-r5)//Q)%5==0:continue
            require(n<P*Q,'unique representative')
            T,left,right=qig(n)
            require(T==6*P*Q,'T4 real complete powers')
            rows[n]={'n':str(n),'u':u,'v':v,'T4':str(T),
                     'QIG_left':str(left),'QIG_right':str(right),
                     'QIG_excludes':left<right}
    records=[rows[n] for n in sorted(rows)]
    survivors=[int(x['n']) for x in records if not x['QIG_excludes']]
    expected=[18752,41418752] if res==752 else [50,781250,9781250]
    require(survivors==expected,'exact QIG residual rows')
    stats={'residue':res,'K':K,'u_range':[3,twos[-1][0]],'v_range':[2,fives[-1][0]],
           'exponent_pairs':count,'residue_hits':hits,'unique_rows':len(records),
           'QIG_excluded':len(records)-len(survivors),'QIG_survivors':survivors}
    return records,stats

def xgcd_inv(a,m):
    oldr,r=a,m; olds,s=1,0
    while r:
        q=oldr//r;oldr,r=r,oldr-q*r;olds,s=s,olds-q*s
    require(oldr==1,'coprime inverse')
    return olds%m

def second_recovery(res):
    K=CASES[res]['K'];r2=0 if res==752 else 2;r5=2 if res==752 else 0
    twos=[];v=1;u=0
    while v<2**K:
        if u>=3:twos.append((u,v))
        v*=2;u+=1
    fives=[];v=1;e=0
    while v<2**K:
        if e>=2:fives.append((e,v))
        v*=5;e+=1
    rows=set();residual=[];count=0
    for e,Q in reversed(fives):
        for u,P in reversed(twos):
            count+=1
            n=r5+Q*((r2-r5)*xgcd_inv(Q,P)%P)
            if not 14<=n<1<<K:continue
            if not(n%8==r2 and n%25==r5 and n%9==5):continue
            two=n-r2;u_real=(two & -two).bit_length()-1
            five=n-r5;e_real=0
            while five%5==0:five//=5;e_real+=1
            if (u_real,e_real)!=(u,e):continue
            require(n<P*Q,'second CRT range')
            rows.add(n)
            gap=1048576*(n-1)**6*(n-3)**3-(6*P*Q)**6*(3*(n-2)**2-4)
            if gap<=0:residual.append(n)
    return sorted(rows), {'residue':res,'exponent_pairs':count,'unique_rows':len(rows),
                         'QIG_survivors':sorted(residual)}

def trial_prime(p):
    require(p>=2,'prime positive')
    bad=[d for d in range(2,isqrt(p)+1) if p%d==0]
    require(not bad,f'composite in certificate: {p}')
    return {'prime':p,'tested_divisors_through':isqrt(p),
            'integer_divisors_tested':max(0,isqrt(p)-1)}

def terminal_receipts():
    out=[]
    for n,p,r in [(50,47,3),(18752,18749,3),(781250,781247,3),(9781250,9781249,1)]:
        pc=trial_prime(p)
        require(n-p==r and p>n//2 and 0<=r<6<7 and p>6,'one-prime full interval')
        out.append({'n':n,'type':'one_prime_carry_interval','p':p,'source_r':r,
                    'j_interval':[7,n//2],'covered_j':n//2-6,'primality':pc})
    n=41418752;p=3765341;q=4602083
    pp=trial_prime(p);qq=trial_prime(q)
    require((n-1)%p==0 and (n-5)%q==0 and p*p>n and q*q>n,'true complete source primes')
    require(p*q>n,'terminal CRT uniqueness')
    vals=[]
    for b in range(2):
        for c in range(6):
            z=(b+p*((c-b)*pow(p,-1,q)%q))%(p*q)
            require(z%p==b and z%q==c,'terminal CRT identity')
            require(not 7<=z<=n//2,'terminal CRT survivor')
            vals.append([b,c,z])
    # Opposite direction independently reconstructs all 12 residue classes.
    other=[]
    for c in range(6):
        for b in range(2):
            z=(c+q*((b-c)*xgcd_inv(q,p)%p))%(p*q)
            other.append([b,c,z])
    require(sorted(vals)==sorted(other),'terminal reverse CRT')
    out.append({'n':n,'type':'two_source_primes_CRT','p':p,'q':q,'product':p*q,
                'cofactors':[(n-1)//p,(n-5)//q],'primality':[pp,qq],
                'CRT_12_rows':vals,'legal_j_remaining':0})
    return sorted(out,key=lambda r:r['n'])

def rejection_tests(records,second,terminals):
    total=0
    def must_fail(f):
        nonlocal total
        try:f()
        except ValueError:total+=1
        else:raise ValueError('mutation was accepted')
    must_fail(lambda:require([int(x['n']) for x in records[:-1]]==second,'missing row'))
    must_fail(lambda:require([int(x['n']) for x in records]+[0]==second,'extra row'))
    k=load(ROOT/'sources/kernel16.json');H={(i,j):c for i,j,c in k['H8_terms']};H[(0,0)]+=1
    F=mul(mul(power(mul(XX,YY),2),power(mul(sub(XX,ONE),sub(YY,ONE)),2)),H)
    must_fail(lambda:require(order(F,0,1)==8,'damaged K16'))
    good=next(x for x in records if x['QIG_excludes'])
    l,r=int(good['QIG_left']),int(good['QIG_right'])
    must_fail(lambda:require(r<l,'reversed QIG'))
    must_fail(lambda:require(l<l,'QIG equality'))
    must_fail(lambda:trial_prime(77))
    must_fail(lambda:require(payer_audit((5,2,3),pair_indices=((0,1),(0,2)))['minimum']=='1059/1000','missing BFT edge'))
    n=41418752;p=3765341;q=4602083
    must_fail(lambda:require(n+p*q<p*q,'unproved CRT lift'))
    z=12996319208665
    must_fail(lambda:require((z+1)%p==0 and (z+1)%q==1,'corrupt terminal residue'))
    must_fail(lambda:require(Fraction(347247,4)*2160==Fraction(694494)*216,'wrong small-part constant'))
    return {'rejected_mutations':total}

def check_hashes():
    p=ROOT/'SHA256SUMS'
    require(p.exists(),'missing hash manifest')
    count=0
    for line in p.read_text().splitlines():
        h,rel=line.split('  ',1)
        require(sha(ROOT/rel)==h,'SHA256 mismatch: '+rel);count+=1
    return count

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--write',action='store_true');args=ap.parse_args()
    if not args.write:hashcount=check_hashes()
    else:hashcount=None
    alg=check_inputs();allrecords={};ledger=[]
    for res in (752,50):
        records,stats=first_recovery(res)
        rev,stats2=second_recovery(res)
        require([int(x['n']) for x in records]==rev,'independent full row equality')
        require(stats['QIG_survivors']==stats2['QIG_survivors'],'independent QIG survivor equality')
        require(stats['exponent_pairs']==stats2['exponent_pairs'],'independent pair count')
        if args.write:dump(ROOT/f'outputs/rows_{res}.json',records)
        else:require(load(ROOT/f'outputs/rows_{res}.json')==records,'stored row certificate')
        allrecords[res]=(records,rev);ledger.append({'first':stats,'second':stats2})
    terminals=terminal_receipts()
    require({t['n'] for t in terminals}==
            {n for t in ledger for n in t['first']['QIG_survivors']},'every residual row consumed')
    muts=rejection_tests(*allrecords[752],terminals)
    old108={n for n in range(1800) if n%8 in (0,2,6) and n%9 in (0,2,6,8)
            and n%25 in (0,2,7,10,12,15,17,20,22)}
    require(len(old108)==108 and not old108.intersection(CASES),'new-vs-old mask separation')
    require(not {1280,1530}.intersection(CASES),'new-vs-C16 separation')
    bridge=sorted(r+1800*k for r in CASES for k in range(7) if (r+1800*k)%7==6)
    require(bridge==[6152,9050],'threshold-preserving bridge classes')
    result={'status':'PASS_C17_HIGH3_POSITION5_TWO_NEW_CLASSES_CLOSED',
            'closed_residues_mod_1800':[50,752], 'algebra_and_height':alg,
            'recovery_ledger':ledger,'terminal_certificates':terminals,
            'unique_rows':sum(t['first']['unique_rows'] for t in ledger),
            'pairs_per_implementation':sum(t['first']['exponent_pairs'] for t in ledger),
            'QIG_excluded':sum(t['first']['QIG_excluded'] for t in ledger),
            'QIG_terminal_rows':len(terminals),'unresolved_terminal_rows':0,
            'mutations':muts, 'BFT_theorem_reproved':False,
            'relative_scope_audit':{'old108_disjoint':True,'C16_disjoint':True,
                                    'all_history_novelty_audit':False},
            'i7_i8_i9_safe_bridge_mod12600':bridge,
            'repository_writes':False,'Lean_verification':False,
            'remaining_complete_indices':[3,4,5,6,7,8,9]}
    require(result['unique_rows']==4332 and result['QIG_excluded']==4327,'ledger totals')
    if args.write:
        dump(ROOT/'outputs/certificate.json',result)
        dump(ROOT/'outputs/terminals.json',terminals)
    else:
        require(load(ROOT/'outputs/certificate.json')==result,'certificate exact replay')
        require(load(ROOT/'outputs/terminals.json')==terminals,'terminal exact replay')
    print(json.dumps({'status':result['status'],'rows':result['unique_rows'],
                      'pairs_each':result['pairs_per_implementation'],'QIG_excluded':4327,
                      'terminal_rows_closed':5,'remaining':0,'hashes_checked':hashcount,
                      'mutation_rejections':muts['rejected_mutations']},ensure_ascii=False))
if __name__=='__main__':main()
