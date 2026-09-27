from pathlib import Path
import sys,json,subprocess,math
from fractions import Fraction
from collections import Counter
import numpy as np
from scipy.optimize import linprog
R=Path(__file__).resolve().parents[1];sys.path.insert(0,str(R/'code'));sys.dont_write_bytecode=True
from resource_core import load_sigs,parse_cpp,multisets
from frozen_capacity import all_states
B=R/'discovery/initial';O=R/'discovery/next1670';st=all_states();raw=load_sigs(O/'signatures619.txt')
summary=json.loads((O/'final_summary.json').read_text());ids=summary['removed'];prices=[];failed=[]
A=np.array([[-y for y in x[1:]]+[1]for x in raw],dtype=float);b=np.array([x[0]for x in raw],dtype=float)
for sid in ids:
 C=st[sid]['cap'];h=st[sid]['h'];p=linprog(np.array(C+[-8.],dtype=float),A_ub=A,b_ub=b,bounds=[(0,None)]*6+[(None,None)],method='highs');assert p.success,p.message
 ok=False
 for limit in (16,64,256,1000,1000000):
  fs=[Fraction(float(v)).limit_denominator(limit)for v in p.x[:6]]
  D=math.lcm(*(v.denominator for v in fs));W=[int(v*D)for v in fs];rhs=min(D*x[0]+sum(a*b for a,b in zip(W,x[1:]))for x in raw)
  N=8*rhs-sum(a*b for a,b in zip(W,C))
  if min(W)>=0 and N>D*h:
   ok=True;prices.append({'state':sid,'degree_multiplier':D,'weights':W,'rhs':rhs,'eight_factor_numerator':N,'ceil_lower_bound':(N+D-1)//D,'available_h':h});break
 if not ok:failed.append({'state':sid,'continuous_bound_approx':-p.fun,'integer_min':next(int(l.split()[2])for l in(O/'fees104.txt').read_text().splitlines()if int(l.split()[0])==sid),'h':h})
print('PRICES',len(prices),'FAILED',failed,flush=True)
(R/'inputs/discovered_price_coefficients.json').write_text(json.dumps(prices,indent=2))
(O/'price_discovery_failures.json').write_text(json.dumps(failed,indent=2))
(O/'query1679.txt').write_text(' '.join(map(str,[1679,115,*st[1679]['cap']]))+'\n')
p=subprocess.run(list(map(str,[B/'bin/enum',O/'signatures619.txt',O/'query1679.txt',O/'next1679.txt',O/'next1679_stats.txt'])),capture_output=True,text=True);print(p.stdout,p.stderr,flush=True);assert p.returncode==0
seqs=multisets(raw,st[1679]['cap'],115);assert seqs==parse_cpp(O/'next1679.txt')[1679]
sat=sum(tuple(sum(x[j+1]for x in s)for j in range(6))==tuple(st[1679]['cap'])for s in seqs)
print('NEXT1679',len(seqs),'sat',sat,'degdist',dict(Counter(sum(x[0]for x in s)for s in seqs)),flush=True)
q4=sum(any(x[0]==4 for x in s)for s in seqs);print('HAVE_Q4_PROXY',q4,flush=True)
(O/'next1679_summary.json').write_text(json.dumps({'state':1679,'full_count':len(seqs),'saturated_count':sat,'not_saturated_count':len(seqs)-sat,'minimum_degree':min(sum(x[0]for x in s)for s in seqs),'with_q4_proxy':q4,'without_q4_proxy':len(seqs)-q4,'degrees':dict(Counter(sum(x[0]for x in s)for s in seqs))},indent=2))
