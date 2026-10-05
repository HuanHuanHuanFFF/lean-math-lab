#!/usr/bin/env python3
"""Separated standard-library receiver. Does not import discover.py.
Divisor recovery uses a prime sieve plus a product factorization;
source checking uses repeated gcd removal, not polynomial residues.
"""
from __future__ import annotations
import argparse, copy, hashlib, json, math, re
from pathlib import Path

EXPECTED_BOUND=4096

def require(v:bool,msg:str)->None:
    if not v:raise AssertionError(msg)

def load(p:Path):return json.loads(p.read_text(encoding='utf-8'))

def without_small(x:int)->int:
    x=abs(x);require(x>0,'zero in rough support')
    for p in [5,3,2]:
        while x%p==0:x//=p
    return x

def nu(x:int,p:int)->int:
    require(x>0 and p>=2,'bad valuation input');k=0
    while x%p==0:x//=p;k+=1
    return k

def prime(p:int)->bool:
    if p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,math.isqrt(p)+1,2))

def carry_value(n:int,j:int,p:int)->int:
    x=j;y=n-j;carry=0;ans=0
    while x or y or carry:
        s=x%p+y%p+carry;carry=int(s>=p);ans+=carry;x//=p;y//=p
    return ans

def source_frontier(root:Path)->list[int]:
    txt=(root/'sources/OVERVIEW-2026-10-02.md.txt').read_text(encoding='utf-8')
    tail=txt.split('当前必要剩余 `n mod1800` 为：',1)[1]
    arr=re.search(r'`([0-9,\s]+)`',tail).group(1)
    return [int(s) for s in arr.replace('\n','').split(',')]

def check_claims(c:dict)->None:
    require(c['round']=='C-R11' and c['date']=='2026-10-02','round identity')
    require(c['R7']==[3,4,5,6,7,8,9],'R7 changed')
    require(c['historical_net_removed']==0 and c['new_complete_indices']==[],'unaudited net-domain claim')
    for key in ['global_i6_closed','all42_residues_closed','full_B699_closed','global_finite_reduction','strict_NC_descent','external_independent_review','Lean_run','repository_modified']:
        require(c[key] is False,f'forbidden scope claim: {key}')
    require(c['original_index']==6 and c['witness_prime_lower_bound']==7,'index/witness threshold')
    require(c['stripe']==dict(gap_min=0,gap_max=4096,all_legal_n=True),'stripe scope')

def check_frontier(c:dict,root:Path)->None:
    rows=c['rows'];rr=source_frontier(root)
    require([z['residue'] for z in rows]==rr,'42-row source mismatch')
    for row in rows:
        a=row['residue'];high=[]
        for mod in [8,9,25]:
            valid=[r for r in range(6) if (a-r)%mod==0]
            require(len(valid)==1,'activity not uniquely specified');high.append(valid[0])
        cold=sorted(set(range(6))-set(high));require(high==row['high_slots_2_3_5'] and cold==row['cold_slots'],'incorrect hot/cold set')
        sr=[]
        for r in cold:
            # Since the site is cold, these finite residues determine the FULL small part.
            cost=1
            for p,lim in [(2,3),(3,2),(5,2)]:
                e=sum((a-r)%p**k==0 for k in range(1,lim))
                require((a-r)%p**lim!=0,'a high exponent was hidden in a constant')
                cost*=p**e
            sr.append(cost)
        require(sr==row['cold_small_parts'] and math.prod(sr)==row['kappa'],'small-part cost')
        roots=sorted(set(sum(([r-2*b for b in range(r+1)] for r in cold),[])))
        require(roots==row['roots'],'wrong source roots')
        degree=len(roots);eps=a%2
        require(degree==row['degree'] and eps==row['delta_parity'] and len(cold)==row['power_n'],'degree/parity')
        values=[math.prod((2*k+eps)-h for h in roots) for k in range(degree+1)]
        require(values==row['polynomial_values'],'wrong values')
        # Direct alternating-sum Newton coefficients, independent of generator's difference triangle.
        newton=[sum((-1)**(k-i)*math.comb(k,i)*values[i] for i in range(k+1)) for k in range(degree+1)]
        require(newton==row['newton_coefficients'],'Newton coefficient mismatch')
        fixed=0
        for v in newton:fixed=math.gcd(fixed,v)
        require(fixed==row['fixed_divisor_gcd'] and fixed>0,'fixed divisor')
        sfixed=fixed//without_small(fixed)
        require(sfixed==row['smooth_fixed_divisor'] and all(v%sfixed==0 for v in newton),'uniform divisibility content')
        require(sfixed==row['height_multiplier']*math.prod(sr),'height multiplier')
        # All n in the row have the fixed cost by the residue argument; these are extra exact regressions.
        for k in [1,2,7,29,81,125,1024,1000000001]:
            n=a+1800*k
            require([((n-r)//without_small(n-r)) for r in cold]==sr,'small parts drifted')
    groups=[]
    for m,d in sorted({(r['power_n'],r['degree']) for r in rows}):
        z=[r for r in rows if (r['power_n'],r['degree'])==(m,d)]
        groups.append(dict(power_n=m,power_gap=d,min_multiplier=min(r['height_multiplier'] for r in z),residues=[r['residue'] for r in z]))
    require(groups==c['groups'],'group summary')

def check_powers(c:dict)->None:
    require(c['scope']=='regressions only; not new coverage','power scope')
    expected=[(53,14,4,7),(56,14,0,7),(151,16,4,7)]
    require(len(c['rows'])==len(expected),'power row count')
    for row,ex in zip(c['rows'],expected):
        n,j,r,p=ex;require((row['n'],row['j'],row['r'],row['p'])==ex,'power input changed')
        require(prime(p) and p>=7,'bad prime');e=nu(n-r,p)
        require(row['e']==e and row['Q']==p**e,'not the original complete power')
        require(row['passes_mod_p']==(j%p<=r) and row['passes_complete_source']==(j%p**e<=r),'source precision changed')
        require(row['choose6_valuation']==carry_value(n,6,p)==e,'source choose valuation')
        v=carry_value(n,j,p);require(row['choosej_valuation']==v,'higher carry')
        v_direct=nu(math.comb(n,j),p)
        require(row['direct_choosej_valuation']==v_direct==v,'direct binomial check')

def check_family(c:dict)->None:
    require(c['quantifier']=='all integer m>=3; proof, not sample extrapolation','family scope')
    allowed=[252,704,850,954,1100,1552]
    require(len(c['rows'])==30,'family sample count')
    for row in c['rows']:
        a=row['residue'];m=row['m'];require(a in allowed and m>=3,'family input')
        n=a+1800*m*m;j=n//2-m;d=n-2*j
        require(n==row['n'] and j==row['j'] and d==row['gap'],'same original input')
        lam=15 if a in [252,704,954,1552] else 3
        F=math.prod(d-h for h in (-5,-3,-1,1,3,5));left=lam*(n-1)*(n-3)*(n-5)
        require(lam==row['multiplier'] and F==row['F'] and left==row['left'] and left>F,'consumer failed')
        w=row['witness'];p=w['p'];r=w['r'];require(prime(p) and p>=7 and 0<=r<=5,'witness prime')
        require(n%p==r and w['e']==nu(n-r,p),'full witness source power')
        require(carry_value(n,6,p)==w['choose6_valuation']==w['e'],'same p not in choose6')
        require(carry_value(n,j,p)==w['choosej_valuation']>0,'same p not in choosej')

def check_terminal_summary(c:dict)->None:
    require(c['gap_min']==0 and c['gap_max']==EXPECTED_BOUND,'terminal gap scope')
    rows=c['per_gap'];require(len(rows)==EXPECTED_BOUND+1,'incomplete gap table')
    require([r['gap'] for r in rows]==list(range(EXPECTED_BOUND+1)),'gap omitted')
    require(c['survivors']==[] and all(r['survivors']==[] for r in rows),'not an empty finite endpoint')
    require(sum(r['candidate_count'] for r in rows)==c['candidate_count'],'candidate total')
    hist=[sum(r['failure_counts'][i] for r in rows) for i in range(6)]
    require(hist==c['failure_counts'] and sum(hist)==c['candidate_count'],'failure accounting')
    require(c['max_n']==max(r['max_n'] for r in rows),'maximum n')
    require(all(sum(r['failure_counts'])==r['candidate_count'] for r in rows),'per-gap accounting')

def primes_through(n:int)->list[int]:
    sieve=bytearray(b'\1')*(n+1);sieve[0:2]=b'\0\0'
    for i in range(2,math.isqrt(n)+1):
        if sieve[i]:
            for k in range(i*i,n+1,i):sieve[k]=0
    return [i for i in range(7,n+1) if sieve[i]]

def recursive_divisors(f:list[tuple[int,int]],at:int=0,v:int=1):
    if at==len(f):yield v;return
    p,e=f[at]
    for _ in range(e+1):
        yield from recursive_divisors(f,at+1,v);v*=p

def independent_terminal(original:dict)->None:
    primes=primes_through(EXPECTED_BOUND+5);aggregate=hashlib.sha256();hist=[0]*6;total=0;maximum=0
    for d in range(EXPECTED_BOUND+1):
        # Products rather than lcm. Distinct opposite-parity factors differ by 2,4,...,10;
        # they cannot share a prime >=7. Thus this equals the rough lcm exactly.
        rr=[1,3,5] if d%2==0 else [0,2,4]
        factors_at_gap=[abs(d-h) for h in ([-5,-3,-1,1,3,5] if d%2==0 else [-4,-2,0,2,4])]
        product=without_small(math.prod(factors_at_gap));v=product;ff=[]
        for p in primes:
            if p>d+5:break
            e=0
            while v%p==0:v//=p;e+=1
            if e:ff.append((p,e))
        require(v==1,'factorization of bounded linear factors incomplete')
        ns=set()
        for divisor in recursive_divisors(ff):
            for r in rr:
                n=divisor+r
                if n-d>=14:ns.add(n)
        ns=sorted(ns);counts=[0]*6;hh=hashlib.sha256();survivors=[]
        for n in ns:
            require(n%2==d%2,'illegal recovered parity');j=(n-d)//2;bad=None
            for r in range(6):
                q=without_small(n-r);rem=q
                for b in range(r+1):rem//=math.gcd(rem,j-b)
                if rem>1:bad=(r,q,rem);break
            if bad is None:survivors.append([n,j]);line=f'{d}|{n}|PASS\n'
            else:
                r,q,missing=bad;counts[r]+=1;line=f'{d}|{n}|{r}|{q}|{missing}\n'
            data=line.encode('ascii');hh.update(data);aggregate.update(data)
        got=dict(gap=d,L=product,candidate_count=len(ns),max_n=max(ns,default=0),failure_counts=counts,survivors=survivors,stream_sha256=hh.hexdigest())
        require(got==original['per_gap'][d],f'independent terminal mismatch at gap {d}')
        total+=len(ns);maximum=max(maximum,max(ns,default=0));hist=[a+b for a,b in zip(hist,counts)]
        if d%512==0:print(f'receiver gap={d}: cumulative_candidates={total}',flush=True)
    require(total==original['candidate_count'] and maximum==original['max_n'] and hist==original['failure_counts'],'independent totals')
    require(aggregate.hexdigest()==original['stream_sha256'],'independent full stream digest')

def tamper_tests(data:dict,root:Path)->list[str]:
    tests=[]
    def reject(name,fn,obj):
        try:fn(obj)
        except (AssertionError,KeyError,ValueError):tests.append(name);return
        raise AssertionError('corruption accepted: '+name)
    a=copy.deepcopy(data['claims.json']);a['historical_net_removed']=1;reject('unaudited_net_domain',check_claims,a)
    a=copy.deepcopy(data['claims.json']);a['global_i6_closed']=True;reject('global_closure_relabel',check_claims,a)
    a=copy.deepcopy(data['frontier42.json']);a['rows'][0]['kappa']*=3;reject('hidden_third_power',lambda z:check_frontier(z,root),a)
    a=copy.deepcopy(data['frontier42.json']);a['rows'][6]['smooth_fixed_divisor']*=7;reject('false_uniform_content',lambda z:check_frontier(z,root),a)
    a=copy.deepcopy(data['terminal4096.json']);a['candidate_count']+=1;reject('terminal_count',check_terminal_summary,a)
    a=copy.deepcopy(data['terminal4096.json']);a['gap_max']=4097;reject('unproved_gap_extension',check_terminal_summary,a)
    a=copy.deepcopy(data['full_power_regressions.json']);a['rows'][0]['e']=1;a['rows'][0]['Q']=7;reject('prime_power_truncation',check_powers,a)
    a=copy.deepcopy(data['full_power_regressions.json']);a['rows'][1]['choosej_valuation']=0;reject('window_as_NC',check_powers,a)
    a=copy.deepcopy(data['infinite_family.json']);a['rows'][0]['witness']['p']=9;reject('composite_witness',check_family,a)
    return tests

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);ap.add_argument('--cert-dir',type=Path);ap.add_argument('--receipt',type=Path);args=ap.parse_args()
    root=args.root.resolve();cd=args.cert_dir or root/'certificates'
    names=['claims.json','frontier42.json','full_power_regressions.json','infinite_family.json','terminal4096.json']
    data={name:load(cd/name) for name in names}
    check_claims(data['claims.json']);check_frontier(data['frontier42.json'],root);check_powers(data['full_power_regressions.json']);check_family(data['infinite_family.json']);check_terminal_summary(data['terminal4096.json'])
    independent_terminal(data['terminal4096.json']);rejected=tamper_tests(data,root)
    rec=dict(status='PASS',receiver='separate implementation, same author',candidate_count=data['terminal4096.json']['candidate_count'],all_source_survivors=0,frontier_rows=42,family_regressions=30,full_power_regressions=3,tamper_tests_rejected=rejected,external_independent_review=False)
    if args.receipt:
        args.receipt.parent.mkdir(parents=True,exist_ok=True);args.receipt.write_text(json.dumps(rec,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
    print(json.dumps(rec,sort_keys=True),flush=True)
if __name__=='__main__':main()
