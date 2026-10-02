# Adopted unchanged from prior seven-index certificate package (except this provenance line).
#!/usr/bin/env python3
"""Symbolic CRT intersections: exact maximum, never enumerate large cofactors.
For every prime-power pair Q,R and difference d, all cofactor solutions are
one arithmetic progression in an explicitly bounded integer parameter.
"""
from __future__ import annotations
import argparse,json,math,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def vp(n,p):
    a=0
    while n%p==0:n//=p;a+=1
    return a

def primes(i):
    return [p for p in range(2,i) if all(p%d for d in range(2,math.isqrt(p)+1))]

def params(row):
    i=row['i'];r=row['r'];s=row['s'];L=i-r-1;lam=2*s-r
    E=s*(s+1)+L*(L+1)//2;t=len(primes(i));delta=E-lam*(i-t)
    B=lambda u:math.prod(math.factorial(j) for j in range(1,u+1))
    K=2**(s*(s+1))*B(s)**2*B(L)
    return dict(i=i,r=r,s=s,lam=lam,E=E,t=t,delta=delta,K=K)

def get_M(par,H):
    i=par['i'];ex=par['lam']*(par['t']-1)
    rhs=(2*math.factorial(i))**par['lam']*H**par['delta']
    low,high=0,1
    while par['K']*high**ex<rhs:high*=2
    while high-low>1:
        m=(low+high)//2
        if par['K']*m**ex>=rhs:high=m
        else:low=m
    return high

def symbolic_bound(row,H):
    par=params(row);i=par['i'];M=get_M(par,H);start=max(i*(i-1),M+1)
    if start>=H:
        return dict(i=i,H=str(H),M=str(M),start=str(start),next_H=str(H),reason='no strict contraction')
    power_families=[]
    for p in primes(i):
        v=vp(i,p);cap=M//p**v;h=v+1;Q=p**h
        while Q<H:
            amin=max(1,(start-i+1+Q-1)//Q)
            amax=min(cap,(H-1)//Q)
            if amin<=amax:power_families.append((p,h,Q,amin,amax))
            h+=1;Q*=p
    pairs=0;nonempty=0;progression_terms=0;max_end=start-1;attainer=None
    # Q*a - R*b = d.  a=a0+R*t, b=b0+Q*t.
    for index,(p,h,Q,amin,amax) in enumerate(power_families):
        for q,k,R,bmin,bmax in power_families[index+1:]:
            if p==q:continue
            pairs+=1;inv=pow(Q,-1,R);period=Q*R
            for d in range(-(i-1),i):
                a0=(d*inv)%R
                b0=(Q*a0-d)//R
                base=Q*a0
                lower=base+max(0,-d)
                upper=base+i-1-max(d,0)
                tlo=max(-((a0-amin)//R),-((b0-bmin)//Q),-((upper-start)//period))
                thi=min((amax-a0)//R,(bmax-b0)//Q,(H-1-lower)//period)
                if tlo<=thi:
                    nonempty+=1;progression_terms+=thi-tlo+1
                    end=min(H-1,upper+period*thi)
                    if end>max_end:
                        max_end=end
                        attainer={'p':p,'h':h,'q':q,'k':k,'difference':d,
                            'A':str(a0+R*thi),'B':str(b0+Q*thi),'n':str(end),
                            'interval_start':str(max(start,lower+period*thi))}
    return dict(i=i,H=str(H),M=str(M),start=str(start),
        next_H=str(max_end+1),prime_power_families=len(power_families),
        prime_power_pairs=pairs,nonempty_CRT_families=nonempty,
        progression_terms_with_multiplicity=str(progression_terms),max_attainer=attainer)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--indices',nargs='+',type=int,default=[17]);ap.add_argument('--steps',type=int,default=8)
    ap.add_argument('--output',type=Path,default=ROOT/'outputs/crt_bound_probe.json');args=ap.parse_args()
    source=json.loads((ROOT/'inputs/all_adopted_heights.json').read_text());result=[]
    for i in args.indices:
        row=next(r for r in source if r['i']==i);H=1<<row['height_power_of_two']
        for step in range(args.steps):
            ts=time.monotonic();answer=symbolic_bound(row,H);answer['wall_seconds']=time.monotonic()-ts
            result.append(answer);args.output.write_text(json.dumps(result,indent=2)+'\n')
            print(json.dumps(answer),flush=True)
            Hnew=int(answer['next_H'])
            if Hnew>=H:break
            H=Hnew
if __name__=='__main__':main()
