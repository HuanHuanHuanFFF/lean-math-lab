#!/usr/bin/env python3
from __future__ import annotations
import argparse,json,math,time,bisect
from pathlib import Path
from crt_bound_probe import params,get_M,primes,vp
ROOT=Path(__file__).resolve().parents[1]

def explicit_cover(row,H):
    par=params(row);i=row['i'];M=get_M(par,H);start=max(i*(i-1),M+1)
    events=[];raw=0;families=[]
    for p in primes(i):
        v=vp(i,p);cap=M//p**v;h=v+1;Q=p**h
        while Q<H:
            lo=max(1,(start-i+1+Q-1)//Q);hi=min(cap,(H-1)//Q)
            if lo<=hi:
                families.append([p,h,lo,hi])
                for A in range(lo,hi+1):
                    a=max(start,A*Q);b=min(H-1,A*Q+i-1)
                    events.extend([(a,p,1),(b+1,p,-1)]);raw+=1
            Q*=p;h+=1
    events.sort();good=[];counts={};active=0;previous=None;at=0
    while at<len(events):
        x=events[at][0]
        if previous is not None and active>=2 and previous<x:
            if good and good[-1][1]+1==previous:good[-1][1]=x-1
            else:good.append([previous,x-1])
        while at<len(events) and events[at][0]==x:
            _,p,e=events[at];old=counts.get(p,0);new=old+e;counts[p]=new
            if not old and new:active+=1
            elif old and not new:active-=1
            assert new>=0
            at+=1
        previous=x
    assert active==0
    return {'i':i,'H':str(H),'M':M,'start':start,'raw_intervals':raw,'families':families,'segments':good}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--bounds',type=Path,default=ROOT/'outputs/crt_bound_probe.json');args=ap.parse_args()
    src=json.loads((ROOT/'inputs/all_adopted_heights.json').read_text());bounds=json.loads(args.bounds.read_text())
    for i in sorted({d['i'] for d in bounds}):
        b=[d for d in bounds if d['i']==i][-1];H=int(b['next_H']);row=next(r for r in src if r['i']==i)
        c=explicit_cover(row,H);par=params(row);segments=[[2*i+2,c['start']-1]]+c['segments']
        success=0;hard=[];top=[];unresolved=[]
        for a,b in segments:
            for n in range(a,b+1):
                V=math.comb(n,i)
                for p in primes(i):
                    while V%p==0:V//=p
                if par['K']*V**par['lam']>n**par['E']:success+=1
                else:
                    hard.append(n)
                    if any(p>1 and all(p%d for d in range(2,math.isqrt(p)+1)) for p in range(n-i+1,n+1)):
                        top.append(n)
                    else:unresolved.append(n)
        result={'i':i,'M':c['M'],'H':str(H),'raw_intervals':c['raw_intervals'],
            'complete_candidate_rows':sum(b-a+1 for a,b in segments),
            'candidate_segments':len(segments),'max_candidate':max(b for a,b in segments),
            'largepart_success':success,'topprime_after_largepart':len(top),'unresolved':unresolved}
        (ROOT/f'outputs/terminal_probe_{i}.json').write_text(json.dumps({'summary':result,'cover':c},indent=2))
        print(json.dumps(result),flush=True)
if __name__=='__main__':main()
