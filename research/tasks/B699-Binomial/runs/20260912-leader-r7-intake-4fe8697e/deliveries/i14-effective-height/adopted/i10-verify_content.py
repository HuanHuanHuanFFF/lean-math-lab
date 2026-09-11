"""Rebuild all primes/weights and floor catalogs; verify all finite blocks and
all infinite-tail inequalities using integer/Fraction arithmetic. No floats.
The unbounded proof uses the stated BFT theta estimates, not this program alone.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import product,permutations
from array import array
from bisect import bisect_right
import json,math,time,hashlib
R=Path(__file__).resolve().parents[1];ETA=F(213,10**7)

def catalog(e,d,f):
 S=e+d+f;rows=[]
 for a,b,c in product(range(e),range(d),range(f)):
  J=a+b+c;l=max(F(a,e),F(b,d),F(c,f),F(J+2,S));u=min(F(a+1,e),F(b+1,d),F(c+1,f),F(J+3,S))
  if l<u:
   assert l==F(J+2,S);rows.append((l,u,J))
 rows.sort();assert len(rows)==len(set(rows)) and all(a[1]<=b[0] for a,b in zip(rows,rows[1:]));return rows

def primes_weights(limit):
 length=(limit+1)//2;b=bytearray(b'\x01')*length;b[0]=0
 for p in range(3,math.isqrt(limit)+1,2):
  if b[p//2]:
   k=p*p//2;b[k::p]=b'\x00'*((length-1-k)//p+1)
 ps=array('I',[2]);prefix=array('Q',[0,32]);weight=32
 for k in range(1,length):
  if not b[k]:continue
  p=2*k+1;x=p
  for _ in range(5):x=x*x
  weight+=x.bit_length()-1;ps.append(p);prefix.append(weight)
 return ps,prefix

def verify_one(t,ps,prefix,limit):
 e,d,f=[t[k] for k in ['e','d','f']];key=f'{e}_{d}_{f}';cells=catalog(e,d,f);permutation_checks=0
 for triple in set(permutations([e,d,f])):
  assert catalog(*triple)==cells;permutation_checks+=1
 N=e+d+f;M=t['M'];g=F(t['g']);data=json.loads((R/f'evidence/content_finite_{key}.json').read_text())
 assert [data[k] for k in ['e','d','f']]==[e,d,f] and F(data['g'])==g and data['M']==M and data['W']==t['W'] and data['all_permutations'] is True
 L2=F(data['log2_lower']);assert 0<L2<2*sum((F(1,3**(2*k+1)*(2*k+1)) for k in range(40)),F(0))
 cc=[]
 for w in range(data['W']+1):
  for l,u,J in cells:
   C=1/(w+u);cc.append((N*w+J+2,C.numerator,C.denominator))
 expected=data['m0']+1;assert data['first_m']==expected and expected>=1;minimum=None
 for row in data['blocks']:
  a,b=row['a'],row['b'];assert a==expected and a<=b<M;v=0
  for div,cn,cd in cc:
   hi=(N*a-2)//div;lo=cn*b//cd
   if hi>lo:
    assert hi<=limit;v+=prefix[bisect_right(ps,hi)]-prefix[bisect_right(ps,lo)]
  assert v==row['weight'];margin=F(v,32)*L2-g*b;assert margin>0;minimum=margin if minimum is None else min(minimum,margin);expected=b+1
 assert data['blocks'] and expected==M
 total=F(0);seen=set()
 for row in t['rows']:
  w=row['w'];l,u=F(row['l']),F(row['u']);J=row['J'];item=(w,l,u,J)
  assert w>=0 and (l,u,J) in cells and item not in seen;seen.add(item)
  A=1/(w+l);B=F(2,N)/(w+l);C=1/(w+u);err=F(row['error'])
  assert (A,B,C)==tuple(F(row[k]) for k in ['A','B','C']) and A*M-B>=1 and err>=0 and err>=ETA*A
  if row['error_source']=='relative_from_1e8':assert A*M-B>=10**8
  else:assert row['error_source']=='uniform_max' and err*err>=F(259,125)**2*A/M
  rate=A-(1+ETA)*C-err-B/M;assert rate==F(row['rate']) and rate>0;total+=rate
 assert total==F(t['lower']) and total-g==F(t['margin']) and total>g
 return dict(triple=[e,d,f],permutations=permutation_checks,g=str(g),m0=data['m0'],M=M,blocks=len(data['blocks']),finite_margin=str(minimum),tail_terms=len(seen),tail_margin=str(total-g))

def main():
 st=time.monotonic();obj=json.loads((R/'evidence/content_tail.json').read_text());limit=obj['prime_cache_limit'];assert limit==25999990
 ps,pr=primes_weights(limit);summary=[]
 for t in obj['rows']:
  row=verify_one(t,ps,pr,limit);summary.append(row);print('PASS',row,flush=True)
 out=dict(status='PASS_EXACT_CONTENT_CHECK',prime_limit=limit,prime_count=len(ps),last_prime=ps[-1],total_weight=pr[-1],rows=summary,seconds=time.monotonic()-st)
 (R/'evidence/content_check.json').write_text(json.dumps(out,indent=2)+'\n')
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O or -OO')
 main()
