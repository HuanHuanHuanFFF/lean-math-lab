"""Independent Cartesian-threshold verification, without recursive cover solver.
For each real nonnegative vector, round each coordinate down to its preceding
listed threshold. All OR constraints are preserved; both objectives are monotone.
"""
from pathlib import Path
from itertools import combinations,product
import json,math
R=Path(__file__).resolve().parents[1]
def main():
 inp=json.loads((R/'input/cuts.json').read_text());targ=json.loads((R/'input/i10_target.json').read_text())
 ps=[2,3,5,7];cuts=inp['cuts'];idx={p:k for k,p in enumerate(ps)};values=[{0} for _ in ps];rows=[]
 for c in cuts:
  a,b=idx[c['p']],idx[c['q']];u,v=c['wp'],c['wq'];values[a].add(u);values[b].add(v);rows.append((a,b,u,v))
 sets=[sorted(x) for x in values];pairs=list(combinations(range(4),2));best=10**100;cols=[10**100]*6;feasible=0
 for z in product(*sets):
  if not all(z[a]>=u or z[b]>=v for a,b,u,v in rows):continue
  feasible+=1;value=sum(v*w for v,w in zip(sorted(z),[12,11,10,9]));best=min(best,value)
  for k,(a,b) in enumerate(pairs):cols[k]=min(cols[k],sum(z)+max(0,10000-z[a]-z[b]))
 assert best==targ['weighted_min']==91100 and min(cols)==targ['collision_min']==11035
 for (a,b),minimum in zip(pairs,cols):
  row=next(x for x in targ['collision_cases'] if x['pair']==[ps[a],ps[b]])
  assert row['minimum']==minimum
 i=10;H=inp['height_Y_bits']+1;assert H==targ['height_bits'] and inp['D']==9
 assert targ['position_s']==6 and targ['distinct_gamma']==best-90000==1100
 r,s=targ['r'],targ['s'];lam=2*s-r;ell=9-r;E=s*(s+1)+ell*(ell+1)//2
 K=2**(s*(s+1))
 for h in range(1,s+1):K*=math.factorial(h)**2
 for h in range(1,ell+1):K*=math.factorial(h)
 assert int(targ['K'])==K and targ['lambda_']==lam and targ['E']==E
 delta=10000*(6*lam-E)+lam*min(cols);assert delta==targ['collision_delta']>0
 # Independently use a safe explicit factorial bound, 10! < 2^22.
 assert math.factorial(10)<2**22
 assert H*(best-90000)>12*10000*22+750000+best
 assert H*delta>lam*10000*22+lam*(10000+min(cols))
 c=targ['cube_bridge'];assert c['r']==2 and c['s']==6 and c['lambda_']==10 and c['E']==70 and c['start_n']==90
 CK=2**42
 for h in range(1,7):CK*=math.factorial(h)**2
 for h in range(1,8):CK*=math.factorial(h)
 assert int(c['K'])==CK and c['large_prime_power_constant']==11 and c['cube_factor']==2662
 assert CK*11**30>(2*math.factorial(10))**10
 for a in range(10):
  for b in range(a+1):
   cc=a-b
   assert max(a-r,0)+max(s-b,0)+max(s-cc,0)>=lam
   assert max(a-2,0)+max(6-b,0)+max(6-cc,0)>=10
   assert max(6-b,0)+max(6-cc,0)>=12-a
 out=dict(status='PASS_CARTESIAN_REAL_COVER_AND_HEIGHT',grid_sizes=[len(x) for x in sets],total_grid_points=math.prod(map(len,sets)),feasible_points=feasible,weighted_min=best,collision_minima=cols,height_bits=H,gamma=best-90000,collision_delta=delta,cube_factor=2662)
 (R/'evidence/height_grid_check.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out),flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()
