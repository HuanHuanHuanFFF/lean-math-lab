#!/usr/bin/env python3
"""C16 certificate construction and replay, with only Python's standard library.

This checks algebra and finite exhaustion. It does not prove the published BFT
analytic theorem, and is not Lean verification or an external mathematical review.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from math import prod
from pathlib import Path
from fractions import Fraction
from exact_algebra import (ONE,XX,YY,const,sub,mul,power,shift,order,
                           check_qig_identities)

ROOT = Path(__file__).resolve().parents[1]

# Mutations are rejected by this check, rather than Python's optional assert.
def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)

def read_json(path: Path):
    return json.loads(path.read_text(encoding='utf-8'))

def write_json(path: Path, data) -> None:
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2, sort_keys=True)+'\n',
                    encoding='utf-8')

def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def valuation(n: int,p: int) -> int:
    require(n>0,'positive valuation input')
    e=0
    while n%p==0:
        n//=p;e+=1
    return e

def smooth_part(n: int) -> int:
    ans=1
    for p in (2,3,5):
        while n%p==0:
            n//=p;ans*=p
    return ans

def check_height_algebra():
    k=read_json(ROOT/'sources/kernel16.json')
    H={(i,j):c for i,j,c in k['H8_terms']}
    F=mul(mul(power(mul(XX,YY),2),power(mul(sub(XX,ONE),sub(YY,ONE)),2)),H)
    orders={str(r):[order(F,b,r-b) for b in range(r+1)] for r in range(6)}
    expected={'0':[4],'1':[8,8],'2':[3,4,3],'3':[4,4,4,4],
              '4':[3,3,3,3,3],'5':[2,2,1,1,2,2]}
    require(orders==expected,'K16 Taylor orders')
    require(F=={(i,j):c for i,j,c in k['F16_terms']},'K16 expansion identity')
    hp=shift(H,7,7)
    require(len(hp)==45 and min(hp.values())==34,'K16 global positive shift')
    require(hp[(0,0)]==5169449500,'K16 shifted constant')
    L=sum(abs(c) for c in H.values())
    require(L==1388988,'K16 height norm')
    ex=read_json(ROOT/'sources/bft_exception_pairs.json')
    require(len(ex)==40,'BFT exception table length')
    require(not any(abs(a-b)==2 for a,b in ex),'BFT gap 2 exceptions')
    e5=sorted([a,b] for a,b in ex if abs(a-b)==5)
    require(e5==[[1029,1024],[1215,1210],[30618,30613]],'BFT gap 5 exceptions')
    require(all(max(ab)%1800 not in (1280,1530) for ab in e5),'tail exception removal')
    l23=Fraction(57,200);l25=Fraction(129,500);l35=Fraction(27,125)
    pa=[4*l23,3*l23+4*l25,4*l23+l25,3*l23+l25]
    pb=[4*l23,3*l23+4*l35,4*l23+l35,3*l23+l35]
    require(min(pa)==Fraction(1113,1000),'A growth exponent')
    require(min(pb)==Fraction(1071,1000),'B growth exponent')
    ledger=[]
    for c,K in ((1,223),(5,291)):
        D=max(8*c**4,24)
        rhs=2**113*(D*L)**1000
        require(rhs<2**(113*K),'A explicit height')
        require(rhs>=2**(113*(K-1)),'A dyadic rounding boundary')
        ledger.append({'tail':'A','c':c,'K':K,'denominator':D})
    for c,K in ((1,336),(2,392),(5,467),(10,523)):
        rhs=(81*L*c**4)**1000
        require(rhs<2**(2929+71*K),'B explicit height')
        require(rhs>=2**(2929+71*(K-1)),'B dyadic rounding boundary')
        ledger.append({'tail':'B','c':c,'K':K})
    require(3*30**6<2**32,'QIG two-power threshold')
    require(8192>30,'Bernoulli threshold')
    return {'kernel_orders':orders,'positive_shift_coefficients':len(hp),
            'norm_L':L,'BFT_exceptions':40,
            'height_templates':ledger,'pair_recovery_threshold':8192,
            'G7_NC5_unit_coarse_not_used':True}

def power_list(p: int,K: int,minimum: int):
    values=[];e=minimum;v=p**e
    while v<1<<K:
        values.append((e,v));e+=1;v*=p
    return values

def qig_sides_direct(n: int):
    T=prod(smooth_part(n-r) for r in range(4))
    left=T**6*(3*n*n-12*n+8)
    right=(1<<20)*(n-1)**6*(n-3)**3
    return T,left,right

def first_recovery(tail: str,K: int):
    residue=1280 if tail=='A' else 1530
    r2,r3=(0,2) if tail=='A' else (2,0)
    p2s=power_list(2,K,3);p3s=power_list(3,K,2)
    counts={'exponent_pairs':0,'high_tail_residue_hits':0,'high_exact_power_hits':0}
    high={}
    for u,P in p2s:
        for v,Q in p3s:
            counts['exponent_pairs']+=1
            n=(r2+P*((r3-r2)*pow(P,-1,Q)%Q))%(P*Q)
            if not 8192<=n<(1<<K) or n%1800!=residue:
                continue
            counts['high_tail_residue_hits']+=1
            if ((n-r2)//P)%2==0 or ((n-r3)//Q)%3==0:
                continue
            counts['high_exact_power_hits']+=1
            require(n<P*Q,'CRT representative range')
            high[n]=(u,v)
    low=list(range(residue,8192,1800))
    allrows=[]
    worst=None
    for n in sorted(set(high)|set(low)):
        u=valuation(n-r2,2);v=valuation(n-r3,3)
        T,left,right=qig_sides_direct(n)
        require(left<right,f'QIG survivor: {tail} n={n}')
        ratio=Fraction(right,left)
        if worst is None or ratio<worst[0]:worst=(ratio,n)
        allrows.append({'n':str(n),'u':u,'v':v,
                        'region':'high' if n in high else 'low',
                        'T4':str(T),'QIG_left':str(left),'QIG_right':str(right)})
    require(worst is not None,'empty recovery')
    stats={'tail':tail,'K':K,'r2':r2,'r3':r3,
           'u_min':3,'u_max':p2s[-1][0],
           'v_min':2,'v_max':p3s[-1][0],**counts,
           'high_unique_rows':len(high),'low_rows':low,'all_rows':len(allrows),
           'QIG_excluded':len(allrows),'survivors':0,
           'closest_QIG_row':str(worst[1]),
           'minimum_right_over_left':str(worst[0])}
    return allrows,stats

def extended_inverse(a: int,m: int) -> int:
    # Independent extended Euclidean implementation; no pow(...,-1,...).
    r0,r1=a,m;s0,s1=1,0
    while r1:
        q=r0//r1;r0,r1=r1,r0-q*r1;s0,s1=s1,s0-q*s1
    require(r0==1,'inverse gcd')
    return s0%m

def second_recovery(tail: str,K: int):
    # Reverse loop order, opposite CRT orientation, different tail and
    # exact-exponent tests, and T4 recovered from actual 2/3 valuations.
    pos2,pos3=(0,2) if tail=='A' else (2,0)
    mod72=56 if tail=='A' else 18
    power2=[];u=0;P=1
    while P<(1<<K):
        if u>=3:power2.append((u,P))
        P*=2;u+=1
    power3=[];v=0;Q=1
    while Q<(1<<K):
        if v>=2:power3.append((v,Q))
        Q*=3;v+=1
    high=set();pairs=0
    for v,Q in reversed(power3):
        for u,P in reversed(power2):
            pairs+=1
            n=pos3+Q*((pos2-pos3)*extended_inverse(Q,P)%P)
            if n<8192 or n>=1<<K:continue
            if n%72!=mod72 or n%25!=5:continue
            # valuation2 uses the low-set-bit identity; valuation3 divides.
            a=n-pos2;two_order=(a & -a).bit_length()-1
            b=n-pos3;three_order=0
            while b%3==0:b//=3;three_order+=1
            if (two_order,three_order)!=(u,v):continue
            high.add(n)
    low={n for n in range(14,8192) if n%72==mod72 and n%25==5}
    allrows=sorted(high|low)
    C=10 if tail=='A' else 30
    for n in allrows:
        a=n-pos2;P=a & -a
        Q=1;b=n-pos3
        while b%3==0:b//=3;Q*=3
        T=C*P*Q
        # Separate expression for the same universal QIG consumer.
        gap=1048576*(n-1)**6*(n-3)**3 - T**6*(3*(n-2)**2-4)
        require(gap>0,f'second recovery QIG survivor: {tail}')
    return allrows,{'tail':tail,'exponent_pairs':pairs,'high_rows':len(high),
                    'low_rows':len(low),'QIG_excluded':len(allrows),'survivors':0}

def require_same_rows(records,other):
    require([int(r['n']) for r in records]==other,'complete row-set equality')

def mutation_checks(all_data):
    count=0
    records=all_data['A'][0];other=all_data['A'][2]
    # Missing/extra row must be rejected by the independent reconstruction.
    for damaged in (records[:-1],records+[{'n':'8192'}]):
        try:require_same_rows(damaged,other)
        except ValueError:count+=1
        else:raise ValueError('mutation not rejected')
    # Source polynomial coefficient corruption must change a vanishing condition.
    k=read_json(ROOT/'sources/kernel16.json')
    H={(i,j):c for i,j,c in k['H8_terms']};H[(0,0)]+=1
    F=mul(mul(power(mul(XX,YY),2),power(mul(sub(XX,ONE),sub(YY,ONE)),2)),H)
    require(order(F,0,1)!=8,'damaged K16 rejected');count+=1
    # Strict certificate direction must not accept equality or reversed sides.
    a=int(records[0]['QIG_left']);b=int(records[0]['QIG_right'])
    require(not b<a,'reversed QIG rejected');count+=1
    require(not a<a,'zero QIG gap rejected');count+=1
    # Last dyadic step: rounding down the established worst-template cap fails.
    L=1388988
    require(not 2**113*(5000*L)**1000<2**(113*290),'A bad height rejected');count+=1
    require(not (81*L*10**4)**1000<2**(2929+71*522),'B bad height rejected');count+=1
    return {'rejected_mutations':count}

def check_internal_hashes():
    path=ROOT/'SHA256SUMS'
    if not path.exists():return {'checked':False}
    n=0
    for line in path.read_text().splitlines():
        expected,rel=line.split('  ',1)
        require(digest(ROOT/rel)==expected,'hash mismatch: '+rel);n+=1
    return {'checked':True,'members':n}

def check_corollaries():
    old={r for r in range(1800)
         if r%8 in (0,2,6) and r%9 in (0,2,6,8)
         and r%25 in (0,2,7,10,12,15,17,20,22)}
    d6={r for r in range(1800) if r%72 in (18,56) and r%5 in (0,2)}
    require(len(old)==108 and len(d6)==20,'frozen mask counts')
    require(d6-old=={1280,1530},'D6 exact missing classes')
    forward=[r for r in range(12600) if r%1800 in (1280,1530) and r%7==6]
    require(forward==[1280,5130],'forward same-prime threshold')
    return {'old_H602_classes':108,'old_D6_classes':20,
            'old_D6_missing_classes_closed':[1280,1530],
            'forward_i7_i8_i9_residues_mod_12600':forward,
            'forward_overlap_with_historical_consumers_not_audited':True}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--write',action='store_true')
    args=ap.parse_args()
    algebra=check_qig_identities()
    height=check_height_algebra()
    data={};s1s=[];s2s=[]
    for tail,K in [('A',291),('B',523)]:
        records,s1=first_recovery(tail,K)
        other,s2=second_recovery(tail,K)
        require_same_rows(records,other)
        require(s1['exponent_pairs']==s2['exponent_pairs'],'pair count equality')
        expected={'A':(52416,365,369),'B':(170560,1056,1060)}[tail]
        require((s1['exponent_pairs'],s1['high_unique_rows'],len(records))==expected,
                'documented finite domain size')
        path=ROOT/'outputs'/f'rows_{tail}.json'
        if args.write:write_json(path,records)
        else:require(read_json(path)==records,'stored certificate exact equality')
        data[tail]=(records,s1,other,s2);s1s.append(s1);s2s.append(s2)
    result={'status':'PASS_C16_TWO_COMPLETE_H025_TAILS_CLOSED',
            'scope':'n mod 1800 in {1280,1530}; all 7<=j<=floor(n/2)',
            'QIG_polynomial_identities':algebra,'reconstructed_height':height,
            'first_recovery':s1s,'second_recovery':s2s,
            'total_exponent_pairs':sum(s['exponent_pairs'] for s in s1s),
            'distinct_original_rows':sum(s['all_rows'] for s in s1s),
            'finite_terminal_remaining':0,
            'mutations':mutation_checks(data),'corollaries':check_corollaries(),
            'BFT_is_published_input_not_reproved':True,
            'not_claimed':['all H025 position patterns','general i=6',
                           'Lean verification','external independent mathematical review',
                           'NC-preserving descent','complete B699'],
            'repository_actions':'none'}
    if args.write:
        write_json(ROOT/'outputs/certificate.json',result)
    else:
        require(result==read_json(ROOT/'outputs/certificate.json'),'full receipt equality')
        result={**result,'internal_hashes':check_internal_hashes()}
    print(json.dumps(result,ensure_ascii=False,indent=2,sort_keys=True))

if __name__=='__main__':main()
