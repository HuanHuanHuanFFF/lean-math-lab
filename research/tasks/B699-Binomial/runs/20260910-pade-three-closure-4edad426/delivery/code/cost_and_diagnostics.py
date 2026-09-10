#!/usr/bin/env python3
"""Exact operation counts, not estimates of wall time; no quadratic large-grid expansion."""
from pathlib import Path
from itertools import combinations
from math import factorial
import json,sys
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'vendor'))
from crt_bound_probe import params,primes,vp
from block_targets import ilog,TARGETS

def main():
 out=[]
 for row in TARGETS:
  i=row['i'];H=1<<row['height_bits'];par=params(row);e=par['lam']*(par['t']-1)
  rhs=(2*factorial(i))**par['lam']*H**par['delta']
  b=max(0,(rhs.bit_length()-par['K'].bit_length()+e-1)//e)
  while par['K']*(1<<(b*e))<rhs:b+=1
  while b>0 and par['K']*(1<<((b-1)*e))>=rhs:b-=1
  M=1<<b;start=max(i*(i-1),M+1);need=start-(i-1)
  # All allowed powers occur in this certified dyadic-M naive interface.
  assert H-1>=2*need
  cs=[]
  for p in primes(i):
   v=vp(i,p);Q0=p**(v+1);cap=M//p**v
   assert cap>=(need+Q0-1)//Q0
   h=ilog(H-1,p);assert p**h<H<=p**(h+1)
   cs.append((p,h-v))
  pairs=sum(a*b for (p,a),(q,b) in combinations(cs,2));work=(2*i-1)*pairs
  stages=json.loads((ROOT/'results'/f'crt_stages_{i}.json').read_text());bs=json.loads((ROOT/'results'/f'block_summary_{i}.json').read_text())
  # Report exact *dyadic-M* interface, not a timing claim about an unexecuted huge sweep.
  d=dict(i=i,source_height_bits=row['height_bits'],dyadic_M_exponent=b,
   power_counts_by_prime=cs,naive_prime_power_families=sum(c for p,c in cs),
   naive_prime_power_pairs=pairs,naive_signed_shift_items=work,
   block_residue_checks=bs['residue_checks'],blocks=bs['blocks'],
   after_block_first_CRT_pairs=stages[0]['prime_power_pairs'],
   actual_all_CRT_pairs=sum(s['prime_power_pairs'] for s in stages),
   actual_all_CRT_signed_shift_items=(2*i-1)*sum(s['prime_power_pairs'] for s in stages),
   block_generation_seconds=sum(json.loads(p.read_text())['elapsed_seconds'] for p in (ROOT/'results').glob(f'block_{i}_*_*.json')),
   block_certificate_bytes=sum(p.stat().st_size for p in (ROOT/'results').glob(f'block_{i}_*_*.json')))
  out.append(d)
 # Exact failure of the large-divisor-only endpoint mechanism; not an original counterexample.
 i=11;n=330;par=params(TARGETS[0]);V=__import__('math').comb(n,i)
 for p in primes(i):
  while V%p==0:V//=p
 lhs=par['K']*V**par['lam'];rhs=n**par['E'];assert lhs<=rhs
 special=dict(n=n,i=i,V=str(V),large_divisor_criterion_fails=True,lhs_hex=hex(lhs),rhs_hex=hex(rhs),
   resolution='p=163 for j=12..162, p=109 for j=163..165; all checked directly')
 future=[]
 for i in [18,20]:
  t=len(primes(i));opts=[]
  for r in range(i):
   for s in range(1,i):
    if 2*s<=r:continue
    par=params(dict(i=i,r=r,s=s));lam,E,K=par['lam'],par['E'],par['K']
    J=4*lam*i-lam*(3*t+1)-4*E
    if J<=0:continue
    h=max(4,(i*(i-1)-1).bit_length())
    while K**4*(1<<(h*J))<=(2*factorial(i))**(4*lam):h+=1
    opts.append((h,r,s,J))
  future.append(dict(i=i,cube_threshold_candidate=min(opts) if opts else None,
   scope='Only elementary cube-small interface; NO new absolute height and NO closure claimed.'))
 result=dict(status='PASS',profiles=out,diagnostic_330=special,next_interface=future,
  scope='Huge naive grids counted, NOT executed. Certificate and CRT operation counts executed separately. Different integer sizes prevent interpreting item ratios as speedup ratios.')
 (ROOT/'results'/'cost_and_diagnostics.json').write_text(json.dumps(result,indent=2))
 print(json.dumps(dict(profiles=out,next_interface=future),indent=2))
if __name__=='__main__':main()
