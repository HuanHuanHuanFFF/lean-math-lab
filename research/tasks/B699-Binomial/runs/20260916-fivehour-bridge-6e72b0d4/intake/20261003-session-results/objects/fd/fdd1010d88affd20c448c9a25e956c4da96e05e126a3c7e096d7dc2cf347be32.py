#!/usr/bin/env python3
"""New R9 structural/terminal audit. Does not import the historical generator.
This program checks finite data and exact inequalities. Publication inputs and
universal mathematical proofs are recorded separately, not inferred from PASS.
"""
from __future__ import annotations
import copy
import hashlib
import importlib
import json
import math
import sys
from collections import defaultdict
from fractions import Fraction
from pathlib import Path
from typing import Callable

ROOT = Path(__file__).resolve().parents[1]
TARGETS = [17, 23, 26, 27, 30, 32, 33]
CERT_HASH = 'd8fae3dbddf1c265bf17564352446326d64a3b9c08c94b71edcda3ba372c9cb9'


def require(test: bool, message: str) -> None:
    if not test:
        raise ValueError(message)


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def git_blob(data: bytes) -> str:
    return hashlib.sha1(b'blob ' + str(len(data)).encode() + b'\0' + data).hexdigest()


def load(path: Path):
    return json.loads(path.read_text(encoding='utf-8'))


def canonical_bytes(value) -> bytes:
    return (json.dumps(value, sort_keys=True, ensure_ascii=False, indent=2) + '\n').encode()


def primes_upto(n: int) -> list[int]:
    a = bytearray(b'\1') * (n + 1)
    a[0:2] = b'\0\0'
    for p in range(2, math.isqrt(n) + 1):
        if a[p]:
            a[p*p:n+1:p] = b'\0' * ((n-p*p)//p+1)
    return [p for p in range(2,n+1) if a[p]]


def prime_trial(p: int, divisors: list[int]) -> bool:
    if p < 2:
        return False
    for q in divisors:
        if q*q > p:
            return True
        if p % q == 0:
            return False
    require(not divisors or divisors[-1] >= math.isqrt(p)-100,
            'insufficient trial-divisor supply')
    # Complete remaining tiny tail rather than assuming a prime-gap bound.
    lo = (divisors[-1]+1) if divisors else 2
    return all(p % q for q in range(lo, math.isqrt(p)+1))


def vp(n: int, p: int) -> int:
    require(n > 0 and p > 1, 'valuation domain')
    e=0
    while n%p == 0:
        e+=1; n//=p
    return e


def fact_v(n: int, p: int) -> int:
    s=0
    while n:
        n//=p; s+=n
    return s


def choose_v(n: int, k: int, p: int) -> int:
    return fact_v(n,p)-fact_v(k,p)-fact_v(n-k,p)


def params(i: int,r: int,s: int) -> dict:
    ell=i-r-1; lam=2*s-r
    require(0<=r<i and 1<=s<i and lam>0,'parameters')
    sf=lambda m: math.prod(math.factorial(h) for h in range(1,m+1))
    E=s*(s+1)+ell*(ell+1)//2
    K=2**(s*(s+1))*sf(s)**2*sf(ell)
    t=len([p for p in primes_upto(i) if p<i])
    return dict(i=i,r=r,s=s,ell=ell,lam=lam,E=E,K=K,t=t,delta=E-lam*(i-t))


def events_union(intervals: list[list[int]]) -> tuple[list[list[int]],int]:
    """Coverage by integer endpoint events; reject multiplicity > 1."""
    events=defaultdict(int)
    for left,right in intervals:
        require(isinstance(left,int) and isinstance(right,int) and left<=right,'reversed interval')
        events[left]+=1; events[right+1]-=1
    output=[]; active=0; previous=None; maximum=0
    for x in sorted(events):
        if previous is not None and active>0 and previous<x:
            if output and output[-1][1]+1==previous:
                output[-1][1]=x-1
            else:
                output.append([previous,x-1])
        active+=events[x]
        require(active>=0,'negative endpoint balance')
        maximum=max(maximum,active); previous=x
    require(active==0,'unclosed endpoint balance')
    return output,maximum


def terminal_audit(row: dict, known_primes: set[int]) -> dict:
    par=params(row['i'],row['r'],row['s']); i=row['i']
    provided=[]; top_rows=0
    for left,right,p in row['top_prime_intervals']:
        require(p in known_primes,'terminal composite/unverified prime')
        require(2*i+2<=left<=right and p<=left and right<p+i,'top endpoint')
        provided.append([left,right]); top_rows+=right-left+1
    large=row['large_divisor_rows']
    require(len({n for n,d in large})==len(large),'duplicate large row')
    for n,dstring in large:
        d=int(dstring)
        require(n>=2*i+2 and d>0,'large row domain')
        falling=math.prod(range(n-i+1,n+1))
        require(falling%(math.factorial(i)*d)==0,'large divisor not actual')
        require(math.gcd(d,math.factorial(i-1))==1,'forbidden small factor')
        require(par['K']*d**par['lam']>n**par['E'],'large divisor insufficient')
        provided.append([n,n])
    actual,multiplicity=events_union(provided)
    require(multiplicity==1,'overlapping terminal witnesses')
    require(actual==row['candidate_intervals'],'terminal candidate mismatch')
    count=sum(b-a+1 for a,b in actual)
    require(count==top_rows+len(large),'terminal count mismatch')
    return dict(i=i,rows=count,top_rows=top_rows,large_rows=len(large),
                candidate_intervals=len(actual),max_n=actual[-1][1],
                terminal_union_sha256=sha(canonical_bytes(actual)))


def rejected(name: str, fn: Callable[[], object]) -> dict:
    try:
        fn()
    except (ValueError,AssertionError) as exc:
        return {'test':name,'rejected':True,'reason':str(exc)}
    raise ValueError('negative test not rejected: '+name)


def audit() -> dict:
    pins=load(ROOT/'sources/G7_MEMBER_PINS.json')
    manifest=load(ROOT/'sources/G7_MANIFEST.json')
    manifest_data=(ROOT/'sources/G7_MANIFEST.json').read_bytes()
    require(git_blob(manifest_data)==pins['manifest_git_blob_sha1'],'original manifest blob')
    require(sha(manifest_data)==pins['manifest_sha256'],'original manifest SHA')
    require(len(manifest['sha256'])==91,'original manifest length')
    member_results=[]
    base=ROOT/'sources/G7_fixed'
    for r in pins['recovered_mathematical_members']:
        data=(base/r['relative_path']).read_bytes()
        require(len(data)==r['size'],'member size')
        require(sha(data)==r['sha256']==manifest['sha256'][r['relative_path']], 'member manifest hash')
        require(git_blob(data)==r['git_blob_sha1'],'member fixed Git blob')
        member_results.append(r['relative_path'])
    require(len(member_results)==8,'eight recovered mathematical members')
    cert=load(base/'outputs/seven_index_certificate.json')
    require(sha((base/'outputs/seven_index_certificate.json').read_bytes())==CERT_HASH,'certificate SHA')
    require(cert['target_indices']==TARGETS and [r['i'] for r in cert['profiles']]==TARGETS,'targets')
    input_rows=load(base/'inputs/all_adopted_heights.json')
    external=load(ROOT/'sources/BFT21_ADOPTED_INPUT.json')
    require(len(external['exceptions_both_orders'])==40,'exception list length')
    exceptional_max=max(max(pair) for pair in external['exceptions_both_orders'])
    require(exceptional_max==1771561,'exception maximum')
    pairs=external['adopted_pairs']
    require(sum(Fraction(x['sigma_num'],x['sigma_den']) for x in pairs)==Fraction(751,1000),'BFT exponent sum')
    six=[v for x in pairs for v in [x['p'],x['q']]]
    require(len(set(six))==6 and max(six)<min(TARGETS),'disjoint small pairs')
    require((1<<22)-32>exceptional_max and 32<=100,'BFT threshold/difference')
    dividends=primes_upto(math.isqrt(max(cert['prime_witnesses']))+1)
    require(all(prime_trial(p,dividends) for p in cert['prime_witnesses']),'terminal primality')
    known=set(cert['prime_witnesses'])
    profiles=[]; stages=[]; strict=0; fixed=0; pair_checks=0
    for row,inp in zip(cert['profiles'],input_rows):
        require((row['i'],row['r'],row['s'],row['height_bits']) ==
                (inp['i'],inp['r'],inp['s'],inp['height_power_of_two']),'original height input binding')
        par=params(row['i'],row['r'],row['s'])
        require(par['delta']>=0,'height-to-M sign')
        H=1<<row['height_bits']
        for k,stage in enumerate(row['bound_stages']):
            M=int(stage['M']); Hnext=int(stage['next_H'])
            require(int(stage['H'])==H,'height chain continuity')
            start=max(par['i']*(par['i']-1),M+1)
            require(start==int(stage['start'])<H,'low branch domain')
            exponent=par['lam']*(par['t']-1)
            rhs=(2*math.factorial(par['i']))**par['lam']*H**par['delta']
            require(par['K']*M**exponent>=rhs,'M lower inequality')
            require(par['K']*(M-1)**exponent<rhs,'minimal M')
            if k+1==len(row['bound_stages']):
                require(Hnext==H,'final fixed point'); fixed+=1
            else:
                require(Hnext<H,'strict descent'); strict+=1
            require(Hnext>=start,'retained entire low branch')
            pair_checks+=stage['prime_power_pairs']
            stages.append(dict(i=row['i'],ordinal=k+1,H=str(H),M=str(M),start=str(start),
                next_H=str(Hnext),prime_power_pairs=stage['prime_power_pairs'],
                nonempty_CRT_families=stage['nonempty_CRT_families'],
                progression_terms_with_multiplicity=stage['progression_terms_with_multiplicity']))
            H=Hnext
        result=terminal_audit(row,known)
        result.update(initial_height_bits=row['height_bits'],stage_count=len(row['bound_stages']),
                      final_H=str(H),M=int(row['bound_stages'][-1]['M']),
                      pairs=sum(s['prime_power_pairs'] for s in row['bound_stages']))
        profiles.append(result)
    require(strict==26 and fixed==7 and len(stages)==33,'stage accounting')
    require(pair_checks==4035350,'pair count')
    require(sum(r['rows'] for r in profiles)==47113,'all terminal count')
    require(sum(r['large_rows'] for r in profiles)==823,'large terminal count')
    require(sum(r['top_rows'] for r in profiles)==46290,'top terminal count')
    # The restored checker is used only for targeted destructive-test rejection,
    # not as a substitute for the separately written endpoint terminal audit.
    sys.path.insert(0,str(base/'code'))
    ck=importlib.import_module('check_all_certificate')
    primitive=importlib.import_module('check_certificate')
    seed=copy.deepcopy(next(r for r in cert['profiles'] if r['i']==27))
    parold=primitive.make_parameters(seed['i'],seed['r'],seed['s'])
    s0=seed['bound_stages'][-1]
    negative=[]
    for key,change,label in [
        ('M',lambda v:str(int(v)-1),'M_decrement'),
        ('start',lambda v:str(int(v)-1),'low_branch_start_decrement'),
        ('next_H',lambda v:str(int(v)-1),'next_height_decrement'),
        ('prime_power_pairs',lambda v:v-1,'omit_claimed_power_pair')]:
        bad=copy.deepcopy(s0);bad[key]=change(bad[key])
        negative.append(rejected(label,lambda b=bad:ck.check_symbolic_stage(parold,b)))
    bad=copy.deepcopy(seed['terminal_cover']);bad['families']=bad['families'][1:]
    negative.append(rejected('missing_final_power_family',lambda:primitive.reconstruct_stage(parold,bad)))
    bad2=copy.deepcopy(seed);bad2['top_prime_intervals']=bad2['top_prime_intervals'][1:]
    negative.append(rejected('missing_terminal_segment',lambda:terminal_audit(bad2,known)))
    bad3=copy.deepcopy(seed);bad3['top_prime_intervals'].append(bad3['top_prime_intervals'][0])
    negative.append(rejected('duplicate_terminal_segment',lambda:terminal_audit(bad3,known)))
    bad4=copy.deepcopy(seed);bad4['top_prime_intervals'][0][1]=bad4['top_prime_intervals'][0][2]+seed['i']
    negative.append(rejected('closed_wrong_top_endpoint',lambda:terminal_audit(bad4,known)))
    bad5=copy.deepcopy(seed);bad5['large_divisor_rows'][0][1]='1'
    negative.append(rejected('insufficient_large_divisor',lambda:terminal_audit(bad5,known)))
    bad6=copy.deepcopy(seed);bad6['candidate_intervals']=bad6['candidate_intervals'][1:]
    negative.append(rejected('omit_low_candidate_interval',lambda:terminal_audit(bad6,known)))
    negative.append(rejected('composite_terminal_prime',lambda:require(prime_trial(57,dividends),'composite 57')))
    # Actual p=i and full exponent e=2; no NC assertion is made for these rows.
    compensation=[]
    for p,r,s in [(17,5,11),(23,7,15)]:
        n=2*p**3; j=p**3; ell=p-r-1; lam=2*s-r
        e=choose_v(n,p,p); vj=choose_v(n,j,p)
        wval=sum(choose_v(j,h,p)+choose_v(n-j,h,p) for h in range(1,s+1))
        wval+=sum(choose_v(n-p+h,h,p) for h in range(1,ell+1))
        require(e==2 and vj==0 and vp(n,p)==3 and wval>=e*lam,'prime-index full-power compensation')
        compensation.append(dict(n=n,i=p,j=j,p=p,e=e,original_work_exponent=e+1,
                                 original_source_valuation=3,window_valuation=wval,
                                 required=e*lam,not_claimed_NC=True))
    require(32*9==9*32==288,'zero displacement witness')
    zero_displacement=dict(i=17,Q=32,R=9,A=9,C=32,displacement=0,intersection=[288,304],
                          conclusion='one genuine pair-of-colours representation; not an NC claim')
    A=set([1,2,11,29])|set(range(35,4883))
    G=set(TARGETS); old_gap=set(range(3,35))-{11,29}
    gap=sorted(old_gap-G); R7=set(range(3,10))
    require(len(gap)==23 and len(set(gap)-R7)==16,'graded difference')
    return dict(status='PASS',mathematical_grade='paper audit under adopted BFT 2.1 plus exact finite arithmetic',
        byte_binding=dict(core_members=member_results,core_count=8,original_manifest_entries=91,
                          outer_original_zip_verified=False,certificate_original_sha256=CERT_HASH),
        BFT_scope=dict(pairs=pairs,exception_count=40,max_exception=exceptional_max,
                       threshold_minimum=(1<<22)-32,manuscript_theorem_reproved=False),
        stages=stages,profiles=profiles,total_stages=33,strict_descent_stages=26,fixed_point_stages=7,
        power_pairs=pair_checks,terminal_rows=47113,top_rows=46290,large_rows=823,
        unique_terminal_primes=len(known),max_terminal_prime=max(known),
        negative_tests=negative,full_power_examples=compensation,zero_displacement_example=zero_displacement,
        ledger=dict(new_project_accepted_indices=[],new_Lean_indices=[],
                    newly_paper_audited_historical_indices=TARGETS,
                    previous_conservative_gap=sorted(old_gap),mixed_paper_gap=gap,
                    remaining_non_R7=sorted(set(gap)-R7),global_R7=sorted(R7),
                    historical_new_mathematical_indices=0),lean_run=False,repository_write=False)


if __name__=='__main__':
    output=audit()
    if len(sys.argv)>1:
        Path(sys.argv[1]).write_bytes(canonical_bytes(output))
    else:
        print(canonical_bytes(output).decode(),end='')
