"""Select useful finite-height cuts, then ACCEPT THEM ONLY BY EXACT CHECKS.
Floating arithmetic proposes data. The complete profile is independently
verified by verify_refined_profiles.py, which performs no floating arithmetic.
"""
import json,math,time
from fractions import Fraction as F
from pathlib import Path
from probe_dynamic_cuts import build_candidates,rows_at_height
from disjunctive_graph import solve
from verify_pair_intervals import certify
ROOT=Path(__file__).resolve().parents[1]
TARGETS={11:4096,16:65536,19:4096,21:32768,22:4096,24:4096,25:4096}
KEYS=['p','q','k0','l0','a','b','D0','c','d','L1','m0','wp','wq']
def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def edges(rows):return [(r['p'],r['q'],r['wp'],r['wq']) for r in rows]

def main():
 start=time.monotonic();cand=build_candidates();profiles=[];cache={}
 for i,B in TARGETS.items():
  ps=[p for p in range(2,i) if prime(p)];t=len(ps)
  ratio,r,s=min((F(s*(s+1)+(i-r-1)*(i-r)//2,2*s-r),r,s) for r in range(i) for s in range(1,i) if 2*s>r)
  lam=2*s-r;E=s*(s+1)+(i-r-1)*(i-r)//2;fb=math.factorial(i).bit_length()
  C=1000*(lam*(i-t)-E)
  required=(1000*lam*(fb+1)-B*C)//(lam*(B-1))+1
  rows=[{k:x[k] for k in KEYS} for x in rows_at_height(cand,B-1) if x['p']<i and x['q']<i]
  good=[]
  for x in rows:
   key=(B,tuple(str(x[k]) for k in KEYS))
   try:
    if key not in cache:cache[key]=certify(x,B-1)
    good.append(x)
   except AssertionError:
    print('ANALYTICALLY_REJECTED',i,x,flush=True)
  rows=good
  original=solve(ps,edges(rows))['minimum_numerator']
  if original<required:raise RuntimeError(f'No exact feasible height for i={i}')
  for x in rows[:]:
   trial=[z for z in rows if z is not x]
   if solve(ps,edges(trial))['minimum_numerator']>=required:rows=trial
  graph=solve(ps,edges(rows));S=graph['minimum_numerator'];delta=C+lam*S
  assert B*delta>1000*lam*fb+lam*(1000+S)
  profile={'i':i,'height_bits':B,'cut_height_bits':B-1,'primes':ps,'r':r,'s':s,
   'lambda':lam,'E':E,'t':t,'minimum_S_required':required,'S':S,'Delta':delta,
   'cuts':rows,'graph':graph,'factorial_bit_upper':fb,
   'integer_height_margin':B*delta-1000*lam*fb-lam*(1000+S)}
  profiles.append(profile)
  print('PROFILE',i,'n<2^'+str(B),'S',S,'min_required',required,'cuts',len(rows),'height_margin',profile['integer_height_margin'],flush=True)
 (ROOT/'results/refined_profiles.json').write_text(json.dumps({'profiles':profiles,'seconds':time.monotonic()-start},indent=2)+'\n')
if __name__=='__main__':main()
