#!/usr/bin/env python3
"""Discover exact fixed large-point nonvanishing certificates, never sample signs."""
import json,sys,math
from pathlib import Path
from fractions import Fraction as F
from accept_core import loadpoly,primitive,packpoly,enc,affine_space
from check_families import combine,line_restriction

def certificate(P,q):
 P=primitive(P);f=[F(P.get((2*q-2*i,i),0),4**i) for i in range(q+1)]
 b=[sum(f[i]*F(math.comb(k,i),math.comb(q,i)) for i in range(k+1)) for k in range(q+1)]
 T=sum(abs(x) for x in P.values());out={'primitive_polynomial':packpoly(P),'bernstein':[enc(x) for x in b],'l1':T,'source_lines':[t for t in range(9) if not line_restriction(P,t)]}
 if not(all(x>0 for x in b) or all(x<0 for x in b)):
  out['status']='BERNSTEIN_STRICT_SIGN_FAILED';return out
 c=min(abs(x) for x in b);bits=0
 while c*(1<<bits)<=T:bits+=1
 out.update(status='EXACT_BERNSTEIN_NONVANISHING',minimum=enc(c),bits=bits,strict_margin=enc(c*(1<<bits)-T));return out

def main(src,sigs,out):
 fs=json.loads(src.read_text())['solutions'];sgs=json.loads(sigs.read_text())['families'] if sigs else []
 sgmap={x['index']:x for x in sgs};ans=[]
 for fam in fs:
  Ps=list(map(loadpoly,fam['polynomials']));q=fam['record']['q'];sg=sgmap.get(fam['index'])
  cases=[]
  if len(Ps)==1:cases.append(('fixed',[],None))
  if sg:
   for z in sg['strata']:
    if z['kappa'][0]>=1 and z['kappa'][1]>=1:continue
    if z['affine_dimension']!=0:continue
    pars=[F(*x) for x in z['rational_witness']]
    cases.append(('bad_S3_fixed',pars,z['weighted_orders']))
  for kind,pars,ws in cases:
   rec={'family_index':fam['index'],'q':q,'case':kind,'parameters':[enc(x) for x in pars],'stratum_ws':ws,**certificate(combine(Ps,pars),q)}
   ans.append(rec);print('NV_PROBE',q,fam['index'],kind,ws,rec['status'],'lines',rec['source_lines'],'bits',rec.get('bits'),flush=True)
 out.write_text(json.dumps({'records':ans},separators=(',',':'),sort_keys=True)+'\n')
if __name__=='__main__':main(Path(sys.argv[1]),None if sys.argv[2]=='-' else Path(sys.argv[2]),Path(sys.argv[3]))
