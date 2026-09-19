import json,math,argparse
from fractions import Fraction as F
from pathlib import Path
from discover_nf import Model
from discover_front import assemble,enc
R=Path(__file__).resolve().parents[1]
ap=argparse.ArgumentParser();ap.add_argument('--q',nargs='+',type=int,default=[7,8]);args=ap.parse_args();output=[]
for q in args.q:
 cert=json.loads((R/f'evidence/nf{6*q-1}_front_certificate.json').read_text());m=Model(q)
 for idx,c in enumerate(cert):
  if 'base' not in c or c.get('line_factors') or c['directions']:continue
  _,_,p0=m.matrix(c);p=assemble(m,p0,[F(*x) for x in c['base']]);den=math.lcm(*(F(x).denominator for x in p.values()));pp={k:int(x*den) for k,x in p.items()};gg=math.gcd(*pp.values());pp={k:x//gg for k,x in pp.items()}
  lead=[F(pp.get((2*q-2*b,b),0),4**b) for b in range(q+1)]
  bern=[sum(lead[i]*F(math.comb(j,i),math.comb(q,i)) for i in range(j+1)) for j in range(q+1)]
  allpos=all(x>0 for x in bern);allneg=all(x<0 for x in bern)
  norm=sum(abs(c) for c in pp.values());sig=1 if allpos else -1 if allneg else 0
  item={'q':q,'index':idx,'terms':[[a,b,c] for (a,b),c in sorted(pp.items())],'l1':norm,'bernstein':enc(bern),'sign':sig}
  if sig:
   low=min(sig*x for x in bern);B=0
   while 2**B*low<=norm:B+=1
   item.update(leading_abs_lower=[low.numerator,low.denominator],n_threshold_exponent=B)
  print('EXCEPTION',q,idx,'l1bits',norm.bit_length(),'sign',sig,'bern',bern,'threshold',item.get('n_threshold_exponent'),flush=True)
  output.append(item)
(R/'evidence/isolated_exception_analysis.json').write_text(json.dumps(output,separators=(',',':'))+'\n')
