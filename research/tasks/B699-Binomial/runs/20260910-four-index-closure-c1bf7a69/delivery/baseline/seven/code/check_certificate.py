#!/usr/bin/env python3
"""Independent exact certificate checker; imports NO generator code.
Reconstruction: cofactor-first / colour unions / pairwise two-pointer joins.
Height arithmetic: Legendre valuations instead of factorial products.
Terminal certificates: divisibility + coprimality, not binomial factorization.
External BFT and the symbolic covering theorem are paper dependencies.
"""
from __future__ import annotations
import argparse, itertools, json, math, time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
TARGETS=(27,30,33)


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def trial_prime(p: int) -> bool:
    return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))


def small_primes(n: int) -> list[int]:
    alive=[True]*(n+1)
    alive[0]=alive[1]=False
    for a in range(2,n+1):
        if alive[a]:
            for b in range(a*a,n+1,a):
                alive[b]=False
    return [a for a in range(2,n+1) if alive[a]]


def fact_v(n: int,p: int) -> int:
    ans=0
    while n:
        n//=p;ans+=n
    return ans


def v_number(n: int,p: int) -> int:
    e=0
    while n%p==0:
        n//=p;e+=1
    return e


def make_parameters(i: int,r: int,s: int) -> dict:
    require(14<=i<=33 and 0<=r<i and 1<=s<i and 2*s>r,'illegal three-window parameters')
    L=i-r-1;lam=2*s-r
    E=sum(range(1,s+1))*2+sum(range(1,L+1))
    ps=small_primes(i)
    t=sum(p<i for p in ps)
    exps={p:(s*(s+1) if p==2 else 0)+2*sum(fact_v(h,p) for h in range(1,s+1))
           +sum(fact_v(h,p) for h in range(1,L+1)) for p in ps}
    K=math.prod(p**e for p,e in exps.items())
    return dict(i=i,r=r,s=s,L=L,lam=lam,E=E,ps=ps,t=t,K=K,K_exps=exps,
                d=E-lam*(i-t))


def signed_product_ge_one(e: dict[int,int]) -> bool:
    positive=math.prod(p**a for p,a in e.items() if a>0)
    negative=math.prod(p**(-a) for p,a in e.items() if a<0)
    return positive>=negative


def check_height(par: dict,h: int) -> int:
    i,lam,E,t=par['i'],par['lam'],par['E'],par['t']
    require(h>=22 and (1<<22)>=i*(i-1),'height or Bernoulli threshold')
    require((1<<22)-(i-1)>1771561 and i-1<=100,'BFT exception cutoff')
    sigma=751
    Delta=1000*(lam*(i-t)-E)+sigma*lam
    require(Delta>0,'height has nonpositive net exponent')
    powers={p:1000*par['K_exps'][p]-1000*lam*fact_v(i,p) for p in par['ps']}
    powers[2]+=h*Delta-(1000+sigma)*lam
    require(signed_product_ge_one(powers),'BFT height integer inequality')
    return Delta


def union(intervals: list[list[int]]) -> list[list[int]]:
    result=[]
    for left,right in sorted(intervals):
        require(left<=right,'reversed interval')
        if result and left<=result[-1][1]+1:
            if right>result[-1][1]:result[-1][1]=right
        else:result.append([left,right])
    return result


def meet(a: list[list[int]],b: list[list[int]]) -> list[list[int]]:
    i=j=0;result=[]
    while i<len(a) and j<len(b):
        low=max(a[i][0],b[j][0]);high=min(a[i][1],b[j][1])
        if low<=high:result.append([low,high])
        if a[i][1]<b[j][1]:i+=1
        else:j+=1
    return result


def two_colour_union(colours: dict[int,list[list[int]]]) -> list[list[int]]:
    items=[union(v) for v in colours.values()]
    joined=[]
    for a,b in itertools.combinations(items,2):
        joined.extend(meet(a,b))
    return union(joined)


def reconstruct_stage(par: dict,stage: dict) -> tuple[list[list[int]],int]:
    i=par['i'];H=int(stage['H']);M=stage['M'];low=i*(i-1)
    require(stage['i']==i and stage['ell']==2,'stage identity/colour count')
    require(H>low and M>=1 and par['t']>=2 and par['d']>=0,'stage domain')
    power=par['lam']*(par['t']-1)
    rhs=(2*math.factorial(i))**par['lam']*H**par['d']
    require(par['K']*M**power>=rhs,'M certificate')
    require(M==1 or par['K']*(M-1)**power<rhs,'claimed minimal M')
    start=max(low,M+1)
    require(stage['start']==start,'exponent-zero exceptional branch omitted')
    raw=0;families={};colours={}
    for p in par['ps']:
        if p>=i:continue
        v=v_number(i,p);cap=M//p**v
        intervals=[]
        # This order is deliberately unlike the generator's prime-power-first order.
        for A in range(1,cap+1):
            h=v+1;Q=p**h
            while A*Q<H:
                left=A*Q;right=left+i-1
                if right>=start:
                    intervals.append([max(left,start),min(right,H-1)])
                    raw+=1
                    key=(p,h)
                    if key not in families:families[key]=[A,A]
                    else:families[key][1]=A
                Q*=p;h+=1
        colours[p]=intervals
    fam=[[p,h,a,b] for (p,h),(a,b) in sorted(families.items())]
    require(fam==stage['families'],'prime-power family list incomplete')
    require(raw==stage['raw_intervals'],'raw interval count')
    reconstructed=two_colour_union(colours)
    require(reconstructed==stage['segments'],'complete coloured union mismatch')
    nr=sum(b-a+1 for a,b in reconstructed)
    require(nr==stage['rows'],'coloured row count')
    next_H=max(start,reconstructed[-1][1]+1 if reconstructed else start)
    require(next_H==stage['next_H'],'contracted strict height')
    return reconstructed,next_H


def check_top_interval(i: int,a: int,b: int,p: int,known_primes: set[int]) -> None:
    require(a>=2*i+2 and a<=b, 'top-prime interval domain')
    require(p in known_primes and p<=a and b<p+i, 'top-prime strict endpoint')


def check_large_row(par: dict,n: int,D: int) -> None:
    i=par['i']
    require(n>=2*i+2 and D>0,'large divisor domain')
    falling=math.prod(range(n-i+1,n+1))
    require(falling%(math.factorial(i)*D)==0,'witness does not divide choose')
    require(math.gcd(D,math.factorial(i-1))==1,'witness has a forbidden small prime')
    require(par['K']*D**par['lam']>n**par['E'],'witness too small')


def check(certificate: dict) -> dict:
    require(certificate['schema']=='b699-two-colour-contraction-v1','schema')
    require(certificate['target_indices']==list(TARGETS),'target index list')
    require(sorted(p['i'] for p in certificate['profiles'])==list(TARGETS),'missing/duplicate index')
    claimed_primes=certificate['prime_witnesses']
    require(claimed_primes==sorted(set(claimed_primes)),'prime list noncanonical')
    for q in claimed_primes:
        require(trial_prime(q),'composite prime witness')
    used=set();summaries=[];total_stages=0
    for profile in certificate['profiles']:
        i=profile['i'];par=make_parameters(i,profile['r'],profile['s'])
        delta=check_height(par,profile['height_bits'])
        H=1<<profile['height_bits']
        require(profile['stages'],'no stages')
        final=None
        for index,stage in enumerate(profile['stages']):
            require(int(stage['H'])==H,'stage does not consume preceding height')
            final,Hnew=reconstruct_stage(par,stage);total_stages+=1
            if index+1<len(profile['stages']):require(Hnew<H,'unjustified extra stage')
            else:require(Hnew==H,'claimed terminal fixed point is not fixed')
            H=Hnew
        start=profile['stages'][-1]['start']
        candidate=union([[2*i+2,start-1]]+final)
        require(candidate==profile['candidate_intervals'],'small-n branch or final candidate mismatch')
        supplied=[];n_top=0
        for a,b,q in profile['top_prime_intervals']:
            check_top_interval(i,a,b,q,set(claimed_primes))
            # These also imply q>n-i>n/2>=j for every legal j at that n.
            used.add(q);supplied.append([a,b]);n_top+=b-a+1
        drows=profile['large_divisor_rows']
        require(len({r[0] for r in drows})==len(drows),'duplicate divisor row')
        for n,D in drows:
            check_large_row(par,n,int(D));supplied.append([n,n])
        require(union(supplied)==candidate,'terminal witnesses do not exactly cover all candidates')
        expected={'total_rows':sum(b-a+1 for a,b in candidate),
            'candidate_intervals':len(candidate),'max_candidate_n':candidate[-1][1],
            'top_prime_intervals':len(profile['top_prime_intervals']),
            'top_prime_rows':n_top,'large_divisor_rows':len(drows),'unresolved':0}
        require(expected==profile['summary'],'summary mismatch')
        require(n_top+len(drows)==expected['total_rows'],'overlapping terminal witnesses')
        summaries.append({'i':i,'height_integer_Delta':delta,**expected})
    require(used==set(claimed_primes),'unused or missing prime evidence')
    return {'status':'PASS','scope':'Exact finite arithmetic and complete cover checks; paper dependencies not Lean-checked',
        'independence':'No imports from generator; cofactor-first colour unions; Legendre height; primitive divisor witnesses',
        'profiles':summaries,'stages_checked':total_stages,'unique_prime_witnesses':len(used),
        'max_prime_witness':max(used),'lean_run':False}


def main() -> None:
    ap=argparse.ArgumentParser();ap.add_argument('certificate',nargs='?',type=Path,
        default=ROOT/'outputs/three_index_certificate.json')
    ap.add_argument('--output',type=Path,default=ROOT/'outputs/independent_check.json')
    args=ap.parse_args();start=time.monotonic()
    result=check(json.loads(args.certificate.read_text()));result['wall_seconds']=time.monotonic()-start
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
if __name__=='__main__':main()
