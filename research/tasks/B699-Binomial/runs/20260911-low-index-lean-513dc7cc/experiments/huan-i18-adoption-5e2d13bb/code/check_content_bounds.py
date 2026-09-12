"""Second checker for the new content certificates.
Rebuilds primes with an odd-only sieve; enumerates cells by t, not (w,j).
Checks every retained integer m block and every fixed infinite-tail term.
Uses the published BFT (5.14),(5.15), Lemma 5.4 as mathematical inputs.
"""
from pathlib import Path
from fractions import Fraction as F
from array import array
from bisect import bisect_right
import math,json,time,sys,hashlib
from resource_compat import peak_rss_kib
if not __debug__:raise RuntimeError('Do not use -O/-OO.')
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'code/vendor'))
from rational_intervals import logq
EXPECTED={(3,2):('8103/5000',12018,30000000,128),(15,8):('4541/2500',4211,6000000,64),(15,11):('361/250',1373,3000000,64)}
ETA=F(213,1000000) # BFT Lemma 5.4, printed page 19: 0.000213

def need(ok,msg):
 if not ok:raise ValueError(msg)

def primes_weights(limit):
 length=(limit+1)//2;odd=bytearray(b'\1')*length;odd[0]=0
 for p in range(3,math.isqrt(limit)+1,2):
  if odd[p//2]:
   start=p*p//2;odd[start::p]=b'\0'*((length-1-start)//p+1)
 primes=array('I',[2]);prefix=array('Q',[0,32]);total=32
 for k in range(1,length):
  if odd[k]:
   p=2*k+1;n=p**32;w=n.bit_length()-1
   need(1<<w<=n<1<<(w+1),'log weight')
   primes.append(p);total+=w;prefix.append(total)
 return primes,prefix

def reverse_cells(c,d,W):
 N=c+d;out=[]
 for t in range(1,N*(W+1)):
  j=d*t%N
  if 2*j<=N:continue
  r=t%N;w=t//N;g=d if j>=c else c-d;den=g*w+1+(g*r)//N
  if j==c:
   need(F(g,den)==F(1,w+1),'equality j=c handling')
  out.append((t,g,den))
 return out

def verify_finite(data,primes,prefix):
 c,d=data['c'],data['d'];Ls,m0,M,Wtail=EXPECTED[c,d]
 need(data['L']==Ls and data['m0']==m0 and data['start_m']==m0+1,'finite starting threshold')
 need(data['tail_M']==M and data['weight_power']==32,'finite constants')
 U=F(data['log2L_upper']);need(U>=logq(F(Ls)).hi/logq(F(2)).lo,'log upper')
 next_a=m0+1;cells_cache={};checks=0;minmargin=None
 for block in data['blocks']:
  a,b,W=(int(block[k]) for k in ['a','b','W'])
  need(a==next_a and a<=b<M,'block missing/overlap/endpoint')
  need(W>=0 and 2*(c+d)*(W+1)<=a,'cell validity m>=2t')
  cc=cells_cache.setdefault(W,reverse_cells(c,d,W));z=0
  for t,g,den in cc:
   X=((c+d)*a-2)//t;Y=g*b//den
   need(X<=75000000,'sieve truncation')
   if X>Y:z+=prefix[bisect_right(primes,X)]-prefix[bisect_right(primes,Y)]
   checks+=1
  need(z==block['weight_lower'],'prime sum mismatch')
  margin=F(z,32)-d*b*U;need(margin>0,'finite G bound too weak')
  minmargin=margin if minmargin is None else min(minmargin,margin)
  next_a=b+1
 need(next_a==M and len(data['blocks'])==data['block_count'],'tail join / count')
 return dict(c=c,d=d,m0=m0,blocks=len(data['blocks']),cell_checks=checks,min_margin_log2=str(minmargin))

def verify_tail(data):
 c,d=data['c'],data['d'];Ls,m0,M,W=EXPECTED[c,d]
 need(data['L']==Ls and data['tail_M']==M and data['tail_W']==W,'tail constants')
 T=10**9;eps=F(1,100000);kappa2=F(259,125)**2
 need(M<=T and M>=2*(c+d)*(W+1),'bridge and BFT t range')
 need(4*ETA*eps>=kappa2/T,'uniform squared-error identity')
 allcells=set(reverse_cells(c,d,W));seen=set();bridge=F(0);tail=F(0);legacy=F(0)
 for row in data['rows']:
  t,g,den=(row[k] for k in ['t','g','den']);key=(t,g,den)
  need(key in allcells and key not in seen,'tail cell invalid or duplicated');seen.add(key)
  a,b,y=F(c+d,t),F(2,t),F(g,den);e0=F(row['error_coefficient'])
  # The old rational e0 is used ONLY with the valid square-root estimate.
  need(e0>=0 and e0*e0>=kappa2*a/M,'bridge square-root bound')
  need(a*M-b>=1 and a*T-b<=10**11 and y*T<=10**11,'bridge theta domains')
  br=a-y-e0-b/M
  need(br>0 and br>=F(row['rate_lower']),'bridge lower rate')
  # Correct relative constant, and a uniform rational error after T.
  e=ETA*a+eps
  need(e>=ETA*a and e*e>=kappa2*a/T,'global theta errors')
  tr=a-(1+ETA)*y-e-b/T
  need(tr>0,'corrected infinite-tail rate')
  bridge+=br;tail+=tr;legacy+=F(row['rate_lower'])
 need(legacy==F(data['logG_over_m_lower']),'stored aggregate')
 # Old per-term rates are bridge witnesses; their sum is also below BOTH
 # corrected totals, so the existing aggregate certificate remains valid.
 need(bridge>=legacy and tail>=legacy,'aggregate preservation')
 target=d*logq(F(Ls)).hi
 need(bridge>target and tail>target,'corrected all-m exponential bound')
 return dict(c=c,d=d,terms=len(seen),eta=str(ETA),transition=T,
             bridge_margin=str(bridge-target),tail_margin=str(tail-target))

def main():
 start=time.monotonic();tails=json.loads((ROOT/'outputs/content_tail_certificates.json').read_text())['rows']
 need({(r['c'],r['d']) for r in tails}==set(EXPECTED) and len(tails)==3,'all tails')
 tr=[verify_tail(r) for r in tails]
 primes,prefix=primes_weights(75000000)
 need(len(primes)==4394304 and primes[-1]==74999959,'prime reconstruction count')
 fr=[]
 for c,d in EXPECTED:
  data=json.loads((ROOT/'outputs'/f'content_finite_{c}_{d}.json').read_text())
  v=verify_finite(data,primes,prefix);fr.append(v);print('CHECKED',v,flush=True)
 out=dict(status='PASS_REBUILT_PRIMES_AND_ALL_CONTENT_CERTIFICATES',finite=fr,tails=tr,
          prime_count=len(primes),prime_limit=75000000,prime_weight_sum=int(prefix[-1]),
          prime_array_sha256=hashlib.sha256(primes.tobytes()).hexdigest(),weight_array_sha256=hashlib.sha256(prefix.tobytes()).hexdigest(),
          seconds=time.monotonic()-start,peak_rss_kib=peak_rss_kib())
 (ROOT/'outputs/content_independent_check.json').write_text(json.dumps(out,indent=2)+'\n')
 print('PASS',len(fr),'bounds','seconds',out['seconds'],'peakKiB',out['peak_rss_kib'])
if __name__=='__main__':main()
