#!/usr/bin/env python3
"""Four-index certificate: symbolic CRT height descent + explicit final union.
This generator does not import any checker. Publication inputs stay explicit.
"""
from __future__ import annotations
import functools,json,math,time
from pathlib import Path
from crt_bound_probe import params,primes
from crt_fast import bound
from extra_terminal_probe import explicit_cover
ROOT=Path(__file__).resolve().parents[1]
TARGETS=(19,22,24,25)


def merge(intervals):
    ans=[]
    for a,b in sorted(intervals):
        if a>b:continue
        if ans and a<=ans[-1][1]+1:ans[-1][1]=max(ans[-1][1],b)
        else:ans.append([a,b])
    return ans


@functools.lru_cache(maxsize=None)
def prime(p):
    if p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,math.isqrt(p)+1,2))


def main():
    sources=json.loads((ROOT/'input/compressed_heights.json').read_text())
    assert sorted(r['i'] for r in sources)==list(TARGETS)
    profiles=[];used_primes=set();stage_log=[]
    for row in sources:
        i=row['i'];H=1<<row['height_power_of_two'];par=params(row);stages=[]
        for step in range(24):
            ts=time.monotonic();s=bound(row,H)
            stage_log.append({'i':i,'H':str(H),'seconds':time.monotonic()-ts})
            stages.append(s)
            print(json.dumps({'i':i,'stage':step,'H':str(H),'M':s['M'],
                'next_H':s['next_H'],'seconds':stage_log[-1]['seconds']}),flush=True)
            nextH=int(s['next_H'])
            if nextH==H:break
            assert nextH<H
            H=nextH
        else:raise RuntimeError('Contraction budget exceeded')
        terminal=explicit_cover(row,H)
        terminal['ell']=2
        terminal['rows']=sum(b-a+1 for a,b in terminal['segments'])
        terminal['next_H']=max(terminal['start'],terminal['segments'][-1][1]+1 if terminal['segments'] else terminal['start'])
        assert terminal['next_H']==H
        candidate=merge([[2*i+2,terminal['start']-1]]+terminal['segments'])
        top=[];large=[];unresolved=[]
        for a,b in candidate:
            n=a
            while n<=b:
                p=next((p for p in range(n,n-i,-1) if prime(p)),None)
                if p is not None:
                    end=min(b,p+i-1);top.append([n,end,p]);used_primes.add(p);n=end+1
                else:
                    D=math.comb(n,i)
                    for q in primes(i):
                        while D%q==0:D//=q
                    if par['K']*D**par['lam']>n**par['E']:large.append([n,str(D)])
                    else:unresolved.append(n)
                    n+=1
        if unresolved:
            (ROOT/f'outputs/unresolved_{i}.json').write_text(json.dumps(unresolved))
            raise RuntimeError(f'Index {i} has unresolved candidates')
        summary={'total_rows':sum(b-a+1 for a,b in candidate),'candidate_intervals':len(candidate),
            'max_candidate_n':candidate[-1][1],'top_prime_intervals':len(top),
            'top_prime_rows':sum(b-a+1 for a,b,_ in top),'large_divisor_rows':len(large),'unresolved':0}
        profiles.append({'i':i,'height_bits':row['height_power_of_two'],'r':row['r'],'s':row['s'],
            'bound_stages':stages,'terminal_cover':terminal,'candidate_intervals':candidate,
            'top_prime_intervals':top,'large_divisor_rows':large,'summary':summary})
        print(json.dumps({'completed_i':i,**summary}),flush=True)
    certificate={'schema':'b699-symbolic-crt-contraction-v1','target_indices':list(TARGETS),
        'external_height_input':'New source-graph-position heights + checked modular exponent blocks',
        'profiles':profiles,'prime_witnesses':sorted(used_primes)}
    (ROOT/'outputs/four_index_certificate.json').write_text(json.dumps(certificate,indent=2)+'\n')
    (ROOT/'outputs/generator_stage_times.json').write_text(json.dumps(stage_log,indent=2)+'\n')
    print(json.dumps({'status':'COMPLETE_DATA','unique_prime_witnesses':len(used_primes),
                     'max_prime_witness':max(used_primes)}))
if __name__=='__main__':main()
