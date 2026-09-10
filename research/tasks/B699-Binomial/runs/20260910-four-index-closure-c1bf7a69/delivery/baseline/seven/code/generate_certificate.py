#!/usr/bin/env python3
"""Construct the three-index complete cover and elementary terminal witnesses.
The analytic input is the adopted BFT-based paper height, NOT proved by this file.
"""
from __future__ import annotations
import bisect, json, math, time
from pathlib import Path
from cover_probe import cover, parameters, primes_below
ROOT = Path(__file__).resolve().parents[1]
TARGETS = (27, 30, 33)


def prime_sieve(n: int) -> list[int]:
    if not 2 <= n <= 10_000_000:
        raise ValueError('Terminal sieve exceeds explicit exploratory budget')
    a = bytearray(b'\x01') * (n + 1)
    a[:2] = b'\x00\x00'
    for p in range(2, math.isqrt(n) + 1):
        if a[p]:
            a[p*p::p] = b'\x00' * ((n-p*p)//p + 1)
    return [p for p in range(2, n+1) if a[p]]


def canonical_union(intervals: list[list[int]]) -> list[list[int]]:
    out: list[list[int]] = []
    for a,b in sorted(intervals):
        if a>b:
            continue
        if out and a<=out[-1][1]+1:
            out[-1][1]=max(out[-1][1],b)
        else:
            out.append([a,b])
    return out


def main() -> None:
    source=json.loads((ROOT/'inputs/adopted_heights.json').read_text())
    if sorted(r['i'] for r in source)!=list(TARGETS):
        raise ValueError('Unexpected input index set')
    profiles=[]
    for old in source:
        i=old['i']; H=1 << old['height_power_of_two']; stages=[]
        for step in range(16):
            d=cover(i,H,2)
            stages.append(d)
            if d['next_H']==H:
                break
            if not d['next_H']<H:
                raise ValueError('Non-contracting stage')
            H=d['next_H']
        else:
            raise ValueError('No terminal stage in the finite budget')
        terminal=stages[-1]
        candidate=canonical_union([[2*i+2, terminal['start']-1]]+terminal['segments'])
        profiles.append({'i':i,'height_bits':old['height_power_of_two'],
            'r':old['r'],'s':old['s'],'stages':stages,'candidate_intervals':candidate})
    sieve_end=max(p['candidate_intervals'][-1][1] for p in profiles)
    primes=prime_sieve(sieve_end)
    used_primes=set()
    for p in profiles:
        i=p['i'];par=parameters(i);K,lam,E=par['K'],par['lam'],par['E']
        top=[];large=[];unresolved=[]
        for a,b in p['candidate_intervals']:
            n=a
            while n<=b:
                q=primes[bisect.bisect_right(primes,n)-1]
                if q>n-i:
                    end=min(b,q+i-1)
                    top.append([n,end,q]);used_primes.add(q);n=end+1
                    continue
                D=math.comb(n,i)
                for small in primes_below(i):
                    while D%small==0:
                        D//=small
                if K*D**lam>n**E:
                    large.append([n,str(D)])
                else:
                    unresolved.append(n)
                n+=1
        if unresolved:
            (ROOT/'outputs/unresolved.json').write_text(json.dumps({'i':i,'n':unresolved},indent=2))
            raise RuntimeError('An unresolved row remains; no complete certificate')
        p['top_prime_intervals']=top
        p['large_divisor_rows']=large
        p['summary']={'total_rows':sum(b-a+1 for a,b in p['candidate_intervals']),
            'candidate_intervals':len(p['candidate_intervals']),
            'max_candidate_n':p['candidate_intervals'][-1][1],
            'top_prime_intervals':len(top),
            'top_prime_rows':sum(b-a+1 for a,b,_ in top),
            'large_divisor_rows':len(large),'unresolved':0}
        print(json.dumps({'i':i,**p['summary']}),flush=True)
    certificate={'schema':'b699-two-colour-contraction-v1','target_indices':list(TARGETS),
        'external_height_input':'BFT Theorem 2.1 + three-window; paper, not Lean',
        'profiles':profiles,'prime_witnesses':sorted(used_primes)}
    (ROOT/'outputs/three_index_certificate.json').write_text(json.dumps(certificate,indent=2)+'\n')
    print(json.dumps({'unique_prime_witnesses':len(used_primes),
        'max_prime_witness':max(used_primes),'generator_status':'COMPLETE_DATA'}))

if __name__=='__main__':
    main()
