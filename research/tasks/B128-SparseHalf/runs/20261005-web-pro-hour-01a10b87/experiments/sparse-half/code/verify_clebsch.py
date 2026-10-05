#!/usr/bin/env python3
"""Exact integer Gram certificate, all Clebsch halves, and method barriers.
Uses only the Python standard library. No SDP/eigenvalue calculation.
"""
from itertools import combinations,permutations
from collections import Counter
from pathlib import Path
import json,argparse,time

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args();t0=time.perf_counter()
 labels=[u for u in range(32) if u.bit_count()%2==0];n=16
 A=[[int((labels[u]^labels[v]).bit_count()==4) for v in range(n)] for u in range(n)]
 es=[(u,v) for u in range(n) for v in range(u+1,n) if A[u][v]]
 N=[{v for v in range(n) if A[u][v]} for u in range(n)]
 assert len(es)==40 and all(len(N[u])==5 for u in range(n))
 assert all(len(N[u]&N[v])==(0 if A[u][v] else 2) for u in range(n) for v in range(u+1,n))
 M=[[2*A[u][v]+6*(u==v)-1 for v in range(n)] for u in range(n)]
 M2=[[sum(M[u][k]*M[k][v] for k in range(n)) for v in range(n)] for u in range(n)]
 assert all(M2[u][v]==8*M[u][v] for u in range(n) for v in range(n))
 hist=Counter();minimum_halves=[];best=99
 def e(S):return sum(u in S and v in S for u,v in es)
 for T in combinations(range(n),8):
  S=set(T);q=e(S);hist[q]+=1
  # Independently check the Gram identity on every eligible minimal half.
  x=[int(i in S) for i in range(n)]
  normsq=sum(sum(M[u][v]*x[v] for v in range(n))**2 for u in range(n))
  assert normsq==8*(4*q-16)
  if q<best:best=q;minimum_halves=[T]
  elif q==best:minimum_halves.append(T)
 assert best==4 and sum(hist.values())==12870 and len(minimum_halves)==10
 coordinate_halves={tuple(i for i,v in enumerate(labels) if ((v>>j)&1)==bit) for j in range(5) for bit in [0,1]}
 assert set(minimum_halves)==coordinate_halves
 nbmins=[]
 for v in range(n):
  assert all(len(N[w]&N[v])>=2 for w in set(range(n))-N[v])
  nbmins.append(min(e(N[v]|set(T)) for T in combinations(set(range(n))-N[v],3)))
 assert nbmins==[6]*16
 # The generated 1920 maps really are distinct adjacency automorphisms.
 lookup={x:i for i,x in enumerate(labels)};autos=set()
 for perm in permutations(range(5)):
  im=[sum(((v>>j)&1)<<perm[j] for j in range(5)) for v in labels]
  for tr in labels:
   auto=tuple(lookup[v^tr] for v in im)
   assert all(A[auto[u]][auto[v]] for u,v in es);autos.add(auto)
 assert len(autos)==1920
 R={0,1,6,7};U={v for v in range(16) if len(N[v]&R)<=1}
 assert U==set(range(8)) and e(U)==4
 # Build a twelve-vertex induced example invalidating a naive universal U-rule.
 groups=[(0,2),(0,3),(1,2),(1,3)];fe=[(0,1),(2,3)]
 for g,(a,b) in enumerate(groups):
  for v in [4+2*g,5+2*g]:fe.extend([(a,v),(b,v)])
 for g,h in [(0,3),(1,2)]:fe.extend((a,b) for a in [4+2*g,5+2*g] for b in [4+2*h,5+2*h])
 fe=sorted({tuple(sorted(x)) for x in fe});fn=[set() for _ in range(12)]
 for u,v in fe:fn[u].add(v);fn[v].add(u)
 assert all(not(fn[u]&fn[v]) for u,v in fe)
 fR={0,1,2,3};fU=[v for v in range(12) if len(fn[v]&fR)<=1]
 assert fU==[0,1,2,3] and max(map(len,fn))==5
 def feinside(T):S=set(T);return sum(u in S and v in S for u,v in fe)
 fmin=min(feinside(T) for T in combinations(range(12),6));assert fmin==2
 alpha=max(len(T) for k in range(13) for T in combinations(range(12),k) if feinside(T)==0)
 data={'vertices_even_masks':labels,'edges':es,'parameters':[16,5,0,2],'M':M,'Gram_identity':'M^T M = 8 M, M=2 A+6 I-J','half_histogram':dict(sorted(hist.items())),'minimum':best,'minimum_halves':minimum_halves,'coordinate_half_count':len(coordinate_halves),'neighborhood_containing_half_minima':nbmins,'automorphisms_checked':len(autos),'root_2K2':sorted(R),'two_edge_rule_half':sorted(U),'uniform_blowup_claim':{'for_all_positive_integers_t':True,'n':'16t','exact_minimum_half_edges':'4t^2','full_neighborhood_half_lower_bound':'6t^2','proof':'proofs/CLEBSCH_CERTIFICATE.md'},'naive_U_rule_size_failure':{'n':12,'edges':fe,'roots':[0,1,2,3],'U':fU,'max_degree':5,'independence_number':alpha,'half_size':6,'exact_minimum_half_edges':2,'half_sets_checked':924,'is_original_counterexample':False},'seconds':time.perf_counter()-t0}
 args.out.write_text(json.dumps(data,indent=2)+'\n')
 print('PASS',json.dumps({k:data[k] for k in ['parameters','minimum','coordinate_half_count','automorphisms_checked','seconds']}));print('HALF_HISTOGRAM',dict(sorted(hist.items())));print('FULL_NEIGHBORHOOD_MINIMA',nbmins);print('NAIVE_U_FAILURE',json.dumps(data['naive_U_rule_size_failure']))
if __name__=='__main__':main()
