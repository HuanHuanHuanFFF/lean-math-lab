#!/usr/bin/env python3
"""Bounded coordinate search for a finite harmonic-inequality counterexample.
Pairwise distinct prime moduli: exact periodic density is residue-independent.
Search uses floats; retained arithmetic is enclosed by exact fixed-point bounds.
"""
import argparse,json,math,time
from pathlib import Path
import numpy as np


def primes_upto(M):
    return [n for n in range(2,M+1) if all(n%d for d in range(2,math.isqrt(n)+1))]


def certify(N, primes, residues):
    counts=np.zeros(N+1,dtype=np.int16)
    for p,a in zip(primes,residues):counts[p+a::p]+=1
    W=1<<56
    x=np.arange(1,N+1,dtype=np.int64)
    w=W//x
    all_lo=int(w.sum(dtype=np.int64))
    mask=counts[1:]>0
    Dlo=int(w[mask].sum(dtype=np.int64)); Dcount=int(mask.sum())
    den=math.prod(primes);surv_num=math.prod(p-1 for p in primes)
    num=den-surv_num
    lower_num=Dlo*den-num*(all_lo+N)
    upper_num=(Dlo+Dcount)*den-num*all_lo
    return {'rows':[[p,int(a)] for p,a in zip(primes,residues)],
      'delta_numerator':num,'delta_denominator':den,'fixed_point_scale':W,
      'H_N_lower_numerator':all_lo,'H_N_upper_numerator':all_lo+N,
      'H_deleted_lower_numerator':Dlo,'H_deleted_upper_numerator':Dlo+Dcount,
      'discrepancy_lower_numerator_over_W_times_den':lower_num,
      'discrepancy_upper_numerator_over_W_times_den':upper_num,
      'certified_positive':lower_num>0,'certified_negative':upper_num<0,
      'discrepancy_interval_float':[lower_num/(W*den),upper_num/(W*den)],
      'ratio_float':(Dlo/ W)/((num/den)*(all_lo/W))}


def run(N,P,minp,seed,starts=4,sweeps=8):
    start=time.monotonic();rng=np.random.default_rng(seed)
    primes=[p for p in primes_upto(P) if p>=minp]
    x=np.arange(N+1,dtype=np.int64)
    weight=np.zeros(N+1);weight[1:]=1/x[1:]
    best_H=-1;best_rows=None;updates=0;full_sweeps=0
    for s in range(starts):
        residues=np.zeros(len(primes),dtype=np.int64) if s==0 else np.array([rng.integers(p) for p in primes])
        counts=np.zeros(N+1,dtype=np.int16)
        for p,a in zip(primes,residues):counts[p+a::p]+=1
        for sweep in range(sweeps):
            changed=0
            for idx in rng.permutation(len(primes)):
                p=primes[idx];old=int(residues[idx]);counts[p+old::p]-=1
                # Eligible local points are x>=p. Each chooses exactly its x mod p bin.
                eligible=np.flatnonzero(counts[p:]==0)+p
                gain=np.bincount(eligible%p,weights=weight[eligible],minlength=p)
                new=int(np.argmax(gain));residues[idx]=new;counts[p+new::p]+=1
                updates+=1;changed+=new!=old
            full_sweeps+=1
            H=float(weight[counts>0].sum())
            if H>best_H:best_H=H;best_rows=residues.copy()
            if changed==0:break
    c=certify(N,primes,best_rows)
    return {'N':N,'maximum_prime':P,'minimum_prime':minp,'prime_count':len(primes),
      'seed':seed,'starts':starts,'maximum_sweeps_per_start':sweeps,
      'actual_coordinate_updates':updates,'actual_sweeps':full_sweeps,
      'seconds':time.monotonic()-start,'certificate':c}


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',default='data/coprime_search.json');a=p.parse_args()
    configs=[(1000,31,2),(30000,31,7),(500000,31,7),(500000,31,13),
      (10000,97,2),(100000,97,11),(500000,97,31),(500000,251,17),
      (500000,251,53),(500000,251,127)]
    result=[]
    for idx,(N,P,minp) in enumerate(configs):
        r=run(N,P,minp,20261005+idx);result.append(r)
        print(json.dumps({k:r[k] for k in ['N','maximum_prime','minimum_prime','prime_count','actual_coordinate_updates','seconds']}|{
          'ratio':r['certificate']['ratio_float'],'certified_positive':r['certificate']['certified_positive']}),flush=True)
    Path(a.out).write_text(json.dumps(result,indent=2))
