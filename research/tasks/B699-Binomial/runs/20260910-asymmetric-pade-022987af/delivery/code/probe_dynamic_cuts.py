"""Floating design of height-dependent asymmetric cuts; all adopted rows are
later required to pass exact rational validation. This is not itself a proof."""
import json,math,numpy as np
from pathlib import Path
from probe_asymmetric_graph import ROWS
from probe_bft_asym_cuts import GRIDS,S,LL,AL
from disjunctive_graph import solve
ROOT=Path(__file__).resolve().parents[1];PS=[2,3,5,7,11,13,17,19,23]

def build_candidates():
 seeds={(r[0],r[1],r[2],r[3],r[4],r[5]) for r in ROWS}
 for r in json.loads((ROOT/'results/pareto_asym_probe.json').read_text())['rows']:
  seeds.add(tuple(r[k] for k in ['p','q','k0','l0','a','b']))
 out=[]
 for p,q,k,l,a,b in sorted(seeds):
  P,Q=p**k,q**l;D=a*P-b*Q;z=D/(a*P)
  root=np.sqrt(S*S*z*z+4-4*z)
  u1=(S*(2-z)-root)/(2*(1-z)*(S+1));u2=(S*z+2-root)/(2*z*(S+1))
  lq=AL+(S-1)*np.log(u1)+np.log1p(-u1)+np.log1p(-(1-z)*u1)
  le=AL+np.log(u2)+np.log1p(-u2)+(S-1)*np.log1p(-z*u2)
  o3=(S-1)*math.log(P)+LL-math.log(a)-S*math.log(b)-lq
  o4=S*math.log(min(P,Q))+LL-(S-1)*math.log(a*P)-2*math.log(D)-le
  for j,(c,d,L,m0) in enumerate(GRIDS):
   if o3[j]<=0 or o4[j]<=0 or S[j]>=1/z:continue
   out.append(dict(p=p,q=q,k0=k,l0=l,a=a,b=b,D0=D,c=c,d=d,L1=L,m0=m0,
     lnP=math.log(P),lnQ=math.log(Q),ell3=d*float(o3[j]),T=c*math.log(max(P,Q))+d*float(o4[j])))
 return out

def rows_at_height(cand,H,den=1000):
 groups={}
 for r in cand:
  X=H*math.log(2);T=r['T'];beta=max((r['m0']+1)/X,(math.log(48)/r['ell3']+1)/X,(1+(T+math.log(4))/X)/T)
  ap=1-r['c']*r['lnP']*beta;aq=1-r['c']*r['lnQ']*beta
  wp,wq=math.floor(ap*den)-1,math.floor(aq*den)-1
  if min(wp,wq)<=0:continue
  p,q=r['p'],r['q'];pp=tuple(sorted([p,q]));w=(wp,wq) if p<q else(wq,wp)
  rr=dict(r,wp=wp,wq=wq)
  group=groups.get(pp,[])
  if any(v[0]>=w[0] and v[1]>=w[1] for v,_ in group):continue
  group=[(v,x) for v,x in group if not(w[0]>=v[0] and w[1]>=v[1])];group.append((w,rr));groups[pp]=group
 return [r for group in groups.values() for _,r in group]

def main():
 cand=build_candidates();results=[]
 for H in [1024,2048,4096,8192,16384,32768,65536]:
  rows=rows_at_height(cand,H);e=[(r['p'],r['q'],r['wp'],r['wq']) for r in rows]
  graph={m:solve(PS[:m],e)['minimum_numerator'] for m in [3,4,5,6,7,8,9]}
  print(H,graph,'cuts',len(rows),flush=True);results.append({'H':H,'graphs':graph,'rows':rows})
 (ROOT/'results/dynamic_cut_probe.json').write_text(json.dumps(results,indent=2)+'\n')
if __name__=='__main__':main()
