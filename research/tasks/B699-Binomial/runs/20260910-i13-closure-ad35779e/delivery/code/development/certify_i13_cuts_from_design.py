"""Validate the proposed i=13 cuts with the frozen rational certifier.
No old input file is changed and no historical full replay is invoked.
"""
from pathlib import Path
import sys,json,time,itertools
ROOT=Path(__file__).resolve().parents[1]
SRC=ROOT/'input/unpacked/asymmetric-pade/B699-asymmetric-Pade/code'
sys.path.insert(0,str(SRC))
from verify_pair_intervals import certify
sys.path.insert(0,str(ROOT/'code'))
from probe_weighted_asymmetric import nondominated,solve
PS=[2,3,5,7,11];KEYS=['p','q','k0','l0','a','b','D0','c','d','L1','m0','wp','wq']
def main():
 start=time.monotonic();data=json.loads((ROOT/'outputs/i13_design_profiles.json').read_text());row=next(x for x in data if x['bits']==8192)
 accepted=[];proofs=[];failed=[]
 for proposal in row['cuts']:
  x={k:proposal[k] for k in KEYS}
  try:
   proof=certify(x,8191);accepted.append(x);proofs.append(proof)
   print(x['p'],x['q'],x['wp'],x['wq'],'PASS',flush=True)
  except (AssertionError,ValueError,ZeroDivisionError) as e:
   failed.append({'row':x,'error':repr(e)});print('FAILED',x['p'],x['q'],repr(e),flush=True)
 es=nondominated(accepted)
 weighted=solve(PS,es,lambda z:sum(a*b for a,b in zip([16,15,14,13,12],sorted(z))))
 scalar=solve(PS,es,sum)
 collisions=[]
 for a,b in itertools.combinations(range(5),2):
  obj=lambda z,a=a,b=b:sum(z)+max(0,1000-z[a]-z[b])
  collisions.append({'pair':[PS[a],PS[b]],**solve(PS,es,obj)})
 result={'i':13,'height_n_bits':8192,'height_Y_bits':8191,'cuts':accepted,'cut_certificates':proofs,'failed_proposals':failed,
         'weighted':weighted,'gain':weighted['min']-12000,'scalar':scalar,'collisions':collisions,
         'collision_min':min(c['min'] for c in collisions),'seconds':time.monotonic()-start}
 (ROOT/'outputs/i13_cuts_certified.json').write_text(json.dumps(result,indent=2)+'\n')
 (ROOT/'input/i13_cuts.json').write_text(json.dumps({'i':13,'height_n_bits':8192,'height_Y_bits':8191,'cuts':accepted},indent=2)+'\n')
 print('SUMMARY',len(accepted),'gain',result['gain'],'collision',result['collision_min'],'seconds',result['seconds'])
if __name__=='__main__':main()
