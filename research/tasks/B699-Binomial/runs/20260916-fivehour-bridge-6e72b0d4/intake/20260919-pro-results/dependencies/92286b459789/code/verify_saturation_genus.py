#!/usr/bin/env python3
"""SAT84/SAT90 exact finite acceptance after geometric genus inequality.
Independent gate: squared-root moments replace elementary E2, and sums are
advanced by Newton differences. No discovery code or CAS dependency.
"""
from __future__ import annotations
import json,math,time,argparse
from pathlib import Path
from itertools import combinations_with_replacement,product
from collections import defaultdict,Counter
from verify_geometry import Model,need,write,det_mod,bareiss,prime
ROOT=Path(__file__).resolve().parents[1];RR=tuple(range(3,9));FD=(-1,5,-10,10,-5,1)

def gate(q):
 ls={};buckets={};lookup={};stats=Counter();hist=Counter();out=set()
 for r in RR:
  vals=tuple(s*(r-s) for s in range(r//2+1));ll=[];bb=defaultdict(list);lu=defaultdict(list)
  for roots in combinations_with_replacement(vals,q):
   mult=Counter(roots);S=sum(roots);M=sum(v*v for v in roots);d=sum(v*(v-1)//2 for v in mult.values())
   a=(roots,S,M,len(mult),tuple(mult[t*(r-t)] for t in range(5)),d);ll.append(a);bb[S].append(a);lu[S,M].append(a)
  ls[r]=ll;buckets[r]=bb;lookup[r]=lu
 for aa in product(ls[3],ls[4],ls[5]):
  sums=[x[1] for x in aa]
  for i in range(3):sums.append(3*sums[-1]-3*sums[-2]+sums[-3])
  if any(sums[r-3] not in buckets[r] for r in (6,7,8)):continue
  # Finish at row7, NOT row8 as in discovery. E2 cancellation is replaced by
  # the exact degree-four relation on squared-root moments.
  for d,f in product(buckets[6][sums[3]],buckets[8][sums[5]]):
   num=aa[0][2]-5*aa[1][2]+10*aa[2][2]-10*d[2]-f[2];M7,rem=divmod(num,-5)
   if rem:continue
   for e in lookup[7].get((sums[4],M7),()):
    rr=aa+(d,e,f);stats['complete_gates']+=1
    if sum(x[3] for x in rr)<14:continue
    stats['z14_gates']+=1
    if any(sum(x[4][t] for x in rr)>2*q for t in range(5)):stats['line_forced']+=1;continue
    stats['line_residual']+=1;delta=sum(x[5] for x in rr);hist[delta]+=1
    if delta>(q-1)**2:stats['genus_excluded']+=1;continue
    rt=tuple(x[0] for x in rr);need(rt not in out,'saturated gate duplicate');out.add(rt);stats['jet_residual']+=1
 return out,dict(stats),dict(hist)

def verify(q,out):
 begin=time.monotonic();need(q in (14,15),'unadopted saturation degree')
 # This inequality proves all z<=13 source records impossible for an
 # absolutely irreducible curve. The absolute-irreducibility reduction and
 # geometric genus theorem are supplied in PROOFS, not asserted by code.
 need(5*q*q-13*q-13>0,'small-z genus inequality')
 roots,stats,hist=gate(q);cs=json.loads((ROOT/f'evidence/sat{6*q}_genus_jet_certificate.json').read_text())
 keys=[tuple(tuple(r) for r in c['roots']) for c in cs];need(len(keys)==len(set(keys)) and set(keys)==roots,'saturation coverage gap')
 M=Model(q);witnesses=[];exact=[];maxrows=0
 for idx,c in enumerate(cs):
  rt=tuple(tuple(r) for r in c['roots']);H0=M.H0(rt);A=[]
  for r,row in zip(RR,rt):
   for v,e in sorted(Counter(row).items()):
    for i in range(1,e):
     for j in range(e-i):
      lab=(r,v,i,j)
      if lab not in M.cache:M.cache[lab]=[M.jet(p,lab) for p in M.basis]
      A.append(M.cache[lab]+[-M.jet(H0,lab)])
  maxrows=max(maxrows,len(A));rr=c['pivot_rows'];cc=c['pivot_columns'];n=M.nc+1
  need(cc==list(range(n)) and len(rr)==n and len(set(rr))==n,'non-full saturation augmented minor')
  need(all(0<=i<len(A) for i in rr),'saturation row index');minor=[[A[i][j] for j in cc] for i in rr]
  p=1000033;need(prime(p),'bad prime');det=det_mod(minor,p)
  if not det:p=1000003;need(prime(p),'fallback composite');det=det_mod(minor,p)
  need(det!=0,'zero saturation minor');witnesses.append([idx,n,p,det])
  if idx==0:
   z=bareiss(minor);need(z!=0 and z%p==det,'large exact integer crosscheck');exact.append({'index':idx,'order':n,'determinant':str(z)})
 products_all=0;products14=0
 for ts in combinations_with_replacement(range(4),q):
  z=0
  for r in RR:
   rt=[t*(r-t) for t in ts];V=[s*(r-s) for s in range(r//2+1)];need(all(v in V for v in rt),'product not saturated');z+=len(set(rt))
  need((z>=14)==(len(set(ts))>=3),'product source support count');products_all+=1;products14+=int(z>=14)
 need(products_all==math.comb(q+3,3),'all products count');need(products14==4*math.comb(q-1,2)+math.comb(q-1,3),'z14 products count')
 res={'status':f'PASS_NEW_SAT{6*q}_GENUS_AND_JETS','q':q,'genus_bound':(q-1)**2,'full_gate_counts':stats,'delta_histogram':hist,'parameters':M.nc,'largest_matrix':[maxrows,M.nc+1],'nonzero_augmented_minors':witnesses,'integer_crosschecks':exact,'all_monic_products':products_all,'z14_monic_products':products14}
 write(out/f'sat{6*q}_accepted.json',res);print('ACCEPT_SAT',q,stats,'products',products_all,products14,'seconds',round(time.monotonic()-begin,3),flush=True);return res

if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True)
 for q in (14,15):verify(q,a.out)
