"""Construct exact infinite-tail certificates from BFT Lemma 5.4.
No use of asymptotic estimates in acceptance. All coefficients are rational.
"""
from pathlib import Path
from fractions import Fraction as F
import json,sys,math
R=Path(__file__).resolve().parents[1];S=R
sys.path[:0]=[str(S/'code/vendor'),str(S/'code/vendor')]
from general_content import cell_catalog,ceil_sqrt,ETA

def tail(sp,M,W=128):
 e,d,f=[sp[k] for k in ['e','d','f']];total=F(0);rows=[]
 for A,B,C,w,l,u,J in cell_catalog(e,d,f,W):
  if A*M-B<1:continue
  if A*M-B>=10**8:err=ETA*A;kind='relative_from_1e8'
  else:err=max(ceil_sqrt(F(259,125)**2*A/M),ETA*A);kind='uniform_max'
  rate=A-(1+ETA)*C-err-B/M
  if rate<=0:continue
  total+=rate;rows.append(dict(w=w,l=str(l),u=str(u),J=J,A=str(A),B=str(B),C=str(C),error=str(err),error_source=kind,rate=str(rate)))
 return dict(**sp,M=M,W=W,lower=str(total),margin=str(total-F(sp['g'])),rows=rows,passed=total>F(sp['g']))

def main():
 specs=json.loads((R/'input/content_specs.json').read_text())['families']
 results=[];limit=0
 for item in specs:
  sp={k:item[k] for k in ['e','d','f','g']};M=item['M'];z=tail(sp,M,item['W'])
  assert z['passed'];results.append(z)
  cat=cell_catalog(sp['e'],sp['d'],sp['f'],z['W']);mx=max(int(A*(M-1)-B) for A,B,C,*_ in cat);limit=max(limit,mx)
  key='_'.join(str(sp[x]) for x in ['e','d','f']);N=sum(sp[x] for x in ['e','d','f'])
  with (R/f'input/content_catalog_{key}.txt').open('w') as out:
   out.write(f'{len(cat)} {N} {M} {F(sp["g"]).numerator} {F(sp["g"]).denominator}\n')
   for A,B,C,w,l,u,J in cat:out.write(f'{N*w+J+2} {C.numerator} {C.denominator}\n')
  print('TAIL',sp,'M',M,'cells',len(cat),'accepted',len(z['rows']),'margin',float(F(z['margin'])),'prime_max',mx,flush=True)
 (R/'evidence/content_tail.json').write_text(json.dumps(dict(status='PASS_RATIONAL_INFINITE_TAILS_CONDITIONAL_ON_BFT_THETA',rows=results,prime_cache_limit=limit),indent=2)+'\n');print('CACHE_LIMIT',limit)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()
