#!/usr/bin/env python3
"""Acceptance checker. Does not import the new block/CRT/terminal generators.
Checks block inverse witnesses, every signed residue, Legendre constants,
reverse-CRT maxima, cofactor-first interval joins, and primitive divisibility.
"""
from pathlib import Path
from itertools import combinations
from math import factorial,prod,comb,isqrt
import sys,json,time,resource
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'vendor'))
from check_certificate import (require,small_primes,fact_v,union,reconstruct_stage,
 check_large_row,check_top_interval,trial_prime)
from check_four_certificate import check_symbolic_stage
FIXED={11:(3,7,4096,98),16:(5,11,65536,73),21:(6,14,32768,64)}

def parameters(i,r,s):
 require(i in FIXED and (r,s)==FIXED[i][:2], 'target parameters')
 require(4<=i<=33 and 0<=r<i and 1<=s<i and 2*s>r, 'three-window domain')
 ell=i-r-1;lam=2*s-r;E=2*sum(range(1,s+1))+sum(range(1,ell+1));ps=small_primes(i)
 t=sum(p<i for p in ps)
 exps={p:(s*(s+1) if p==2 else 0)+2*sum(fact_v(h,p) for h in range(1,s+1))+
             sum(fact_v(h,p) for h in range(1,ell+1)) for p in ps}
 return dict(i=i,r=r,s=s,L=ell,lam=lam,E=E,ps=ps,t=t,K=prod(p**e for p,e in exps.items()),
  K_exps=exps,d=E-lam*(i-t))

def block_row(data,i,p,q,H):
 D=i-1;first=data['first_exponent'];last=data['max_exponent'];h=data['small_exponent_height_bits']
 require((data['i'],data['p'],data['q'],data['D'],data['source_height_bits'])==(i,p,q,D,H),'block identity')
 require(p**last < (1<<H) <= p**(last+1),'full exponent upper endpoint')
 require(1<=first<=last and data['blocks'],'empty or reversed prefix')
 require((1<<h)>D and ((1<<h)-D)**2>p**(3*(first-1)),'small branch numerical height')
 nxt=first;cnt=0
 for b in data['blocks']:
  K,L,B=b['K'],b['L'],b['B'];require(K==nxt and L>=0 and B>=1,'block gap or invalid endpoint')
  P=p**K;Q=q**B;v=int(b['inverse_hex'],16)
  require(P>D and Q**3 <= (P-D)**2,'modulus not forced')
  require(0<v<Q and (P*v)%Q==1,'invalid inverse')
  bound=p**(K+3*L)
  for shift in range(-D,D+1):
   residue=(shift*v)%Q
   if residue==0:residue=Q
   require(residue*residue>bound,'residue exclusion fails')
  nxt=K+L+1;cnt+=1
 require(nxt==last+1,'uncovered exponent tail')
 return h,cnt,cnt*(2*D+1)

def check_block_chain(i):
 r,s,H,cube=FIXED[i];par=parameters(i,r,s);lam,E,K,t=par['lam'],par['E'],par['K'],par['t']
 J=4*lam*i-lam*(3*t+1)-4*E
 require(J>0,'nonpositive cube-small exponent')
 require(K**4*(1<<(cube*J))>(2*factorial(i))**(4*lam),'cube-small comparison')
 require((1<<cube)>=max(16,i*(i-1)),'small branch domain')
 blocks=0;residues=0;heights=[cube];pairs=list(combinations([p for p in par['ps'] if p<i],2))
 expected_names={f'block_{i}_{p}_{q}.json' for p,q in pairs}
 actual_names={p.name for p in (ROOT/'results').glob(f'block_{i}_*_*.json')}
 require(expected_names==actual_names,'missing/extra prime pair')
 for p,q in pairs:
  data=json.loads((ROOT/'results'/f'block_{i}_{p}_{q}.json').read_text());h,c,k=block_row(data,i,p,q,H)
  heights.append(h);blocks+=c;residues+=k
 dest=max(heights)
 declared=json.loads((ROOT/'results'/f'block_summary_{i}.json').read_text())
 require(declared['destination_height_bits']==dest,'wrong compressed height')
 require(declared['blocks']==blocks and declared['residue_checks']==residues,'block summary')
 return dict(i=i,source_height_bits=H,height_bits=dest,pairs=len(pairs),blocks=blocks,
  residue_inequalities=residues,cube_bits=cube,J=J)

def verify_profile(row,upstream):
 i=row['i'];par=parameters(i,row['r'],row['s']);H=1<<upstream['height_bits']
 require(row['height_bits']==upstream['height_bits'],'upstream compressed height')
 require(par['d']>=0 and row['bound_stages'],'CRT domain')
 pairs=0
 for idx,s in enumerate(row['bound_stages']):
  require(int(s['H'])==H,'CRT height induction broken')
  nextH=check_symbolic_stage(par,s);pairs+=s['prime_power_pairs']
  require(nextH<H if idx+1<len(row['bound_stages']) else nextH==H,'fixed-point endpoint')
  H=nextH
 terminal=row['terminal_cover'];require(int(terminal['H'])==H,'terminal input')
 intervals,nextH=reconstruct_stage(par,terminal);require(nextH==H,'explicit/symbolic discrepancy')
 candidate=union([[2*i+2,terminal['start']-1]]+intervals)
 require(candidate==row['candidate_intervals'],'incomplete candidate set')
 primes=row['prime_witnesses'];require(primes==sorted(set(primes)),'prime list canonicality')
 for p in primes:require(trial_prime(p),'composite prime witness')
 provided=[];used=set();toprows=0
 for a,b,p in row['top_prime_intervals']:
  check_top_interval(i,a,b,p,set(primes));provided.append([a,b]);used.add(p);toprows+=b-a+1
 require(used==set(primes),'unused top prime')
 for n,D in row['large_divisor_rows']:
  check_large_row(par,n,int(D));provided.append([n,n])
 # Explicit exceptional n with bounded j. Values checked directly, not merely via Lucas.
 special=row.get('special_binomial_rows',[]);special_count=0;direct=0;special_primes=set()
 for spec in special:
  n=spec['n'];require(n>=2*i+2,'exceptional n domain');jn=[]
  require(spec['intervals'],'missing j cover')
  for a,b,p in spec['intervals']:
   require(p>=i and trial_prime(p),'special common prime')
   require(i<a<=b<=n//2 and comb(n,i)%p==0,'first choose or range')
   for j in range(a,b+1):require(comb(n,j)%p==0,'second choose fails');direct+=1
   jn.append([a,b]);special_primes.add(p)
  require(union(jn)==[[i+1,n//2]],'exceptional j not exhaustive')
  require(sum(b-a+1 for a,b in jn)==n//2-i,'overlapping special j rows')
  provided.append([n,n]);special_count+=1
 require(union(provided)==candidate,'terminal certificate not exhaustive')
 total=sum(b-a+1 for a,b in candidate)
 require(toprows+len(row['large_divisor_rows'])+special_count==total,'overlap or omitted row')
 require(row.get('unresolved_rows')==[],'unresolved n remains')
 require(len({n for n,D in row['large_divisor_rows']})==len(row['large_divisor_rows']),'duplicate divisor row')
 require(len({s['n'] for s in special})==special_count,'duplicate special n')
 summary=dict(i=i,total_rows=total,candidate_intervals=len(candidate),max_candidate_n=candidate[-1][1],
  top_prime_intervals=len(row['top_prime_intervals']),top_prime_rows=toprows,
  large_divisor_rows=len(row['large_divisor_rows']),special_n_rows=special_count,special_j_checks=direct,unresolved=0)
 for k,v in summary.items():require(row['summary'][k]==v,'terminal summary '+k)
 return dict(**upstream,**{k:v for k,v in summary.items() if k!='i'},
  terminal_height=H,CRT_stages=len(row['bound_stages']),CRT_pairs_checked=pairs,
  unique_top_prime_witnesses=len(primes),special_primes=sorted(special_primes),
  raw_intervals=terminal['raw_intervals'])

def main():
 ts=time.monotonic();out=[];allprimes=set()
 for i in FIXED:
  t=time.monotonic();up=check_block_chain(i)
  row=json.loads((ROOT/'results'/f'terminal_certificate_{i}.json').read_text())
  result=verify_profile(row,up);result['check_seconds']=time.monotonic()-t;out.append(result)
  allprimes.update(row['prime_witnesses'])
  for s in row.get('special_binomial_rows',[]):allprimes.update(p for a,b,p in s['intervals'])
  print(json.dumps(result),flush=True)
 result=dict(status='PASS',profiles=out,total_candidates=sum(x['total_rows'] for x in out),
  total_blocks=sum(x['blocks'] for x in out),total_residue_inequalities=sum(x['residue_inequalities'] for x in out),
  total_CRT_pairs=sum(x['CRT_pairs_checked'] for x in out),unique_prime_witnesses=len(allprimes),max_prime_witness=max(allprimes),
  peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,seconds=time.monotonic()-ts,
  scope='Exact finite chain; input Padé theorem and symbolic algebra remain paper dependencies. No Lean, no human review.')
 (ROOT/'results'/'independent_check.json').write_text(json.dumps(result,indent=2));print(json.dumps({k:v for k,v in result.items() if k!='profiles'}),flush=True)
if __name__=='__main__':main()
