"""Finite cross-checks, explicitly not the infinite proof or a replay of old certificates."""
from pathlib import Path
from math import gcd,comb
from collections import Counter
import json,time
from core import valuation,smooth,order5,repunit,degree_case,initial_factor,predicted_v2_v5,binomial_valuation,prime_factors,is_prime,source_conditions
ROOT=Path(__file__).resolve().parents[1]

def main():
 st=time.perf_counter();hist=Counter();bases=[];vchecks=0;bounds=0
 for b in range(11,602):
  if gcd(b,210)!=1:continue
  bases.append(b)
  for k in range(1,13):
   for t in range(2,41):
    R=repunit(b,k,t)
    a2,a5=valuation(R,2),valuation(R,5)
    assert (a2,a5)==predicted_v2_v5(b,k,t)
    vchecks+=2
    d=degree_case(k,t);hist[d]+=1
    exact=(2**a2)*(5**a5)
    assert exact<=initial_factor(b,d)*smooth(k*t,(2,5))
    assert exact<2*(b**d)*k*t
    bounds+=2
 # All rough and arbitrary coefficients in a bounded small grid, conditional solely
 # on the stated complete3/7 cap; no claim that those rows satisfy NC9.
 condition_tests=0
 for b in bases:
  for c in sorted({1,2,b-1,min(400,b-1)}):
   for k in range(1,5):
    for t in range(2,10):
     n=c*b*repunit(b,k,t)
     if valuation(n,3)<=1 and valuation(n,7)<=1:
      assert smooth(n)<42*c*b**degree_case(k,t)*k*t
      condition_tests+=1
 # Small complete rows, witnesses checked independently by exact integer binomials
 # for the source and factorial-floor valuations for the target.
 row_params=[(31,25,1,1,2),(47,25,1,1,2),(59,20,1,1,2),(79,5,1,1,2),(79,10,1,1,2),(79,15,1,1,2)]
 rows=[];total_j=0
 for b,c,e,k,t in row_params:
  assert source_conditions(b,c,e,k,t)
  n=c*b**e*repunit(b,k,t)
  ps=sorted({p for r in range(9) for p in prime_factors(n-r) if p>=11})
  src=comb(n,9)
  assert all(src%p==0 for p in ps)
  witnesses=Counter()
  for j in range(10,n//2+1):
   witness=next((p for p in ps if binomial_valuation(n,j,p)>0),None)
   assert witness is not None,(n,j)
   witnesses[witness]+=1;total_j+=1
  rows.append({'parameters':[b,c,e,k,t],'n':n,'all_legal_j_count':n//2-9,'witness_counts':dict(witnesses)})
 # Large representation only; no huge-j scan and no independent whole-row witness
 # certificate is claimed. The paper theorem is what covers all its j.
 b,c,e,k,t=1517,400,23,7,1000
 n=c*b**e*repunit(b,k,t)
 assert source_conditions(b,c,e,k,t) and n%400==0 and prime_factors(b)==[37,41]
 large={'B':b,'C':c,'e':e,'k':k,'t':t,'D':e+k*(t-1),'n_bit_length':n.bit_length(),'B_prime_factors':[37,41],'no_j_scan':True}
 # Exact failed extrapolation to a non-repeating tail.
 N=10**20;b=11;tmp=N;digits=[]
 while tmp:digits.append(tmp%b);tmp//=b
 dcount=len(digits)
 assert len(set(digits))>1
 assert smooth(N,(2,5))>2*b**3*dcount
 n=11*N;j=11*(N//2-1)
 ws=[]
 for p in (11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97):
  if binomial_valuation(n,9,p)>0 and binomial_valuation(n,j,p)>0:ws.append(p)
 assert ws
 boundary={'B':11,'tail':str(N),'base11_digits_little_endian':digits,'total_digits':dcount,'actual_S25':str(smooth(N,(2,5))),'invalid_generalized_bound':2*b**3*dcount,'n':str(n),'j':str(j),'common_prime_witnesses_checked':ws,'is_counterexample':False}
 out={'status':'PASS_NEW_FINITE_DIAGNOSTICS_NOT_AN_INFINITE_PROOF','bases':len(bases),'prime_bases':sum(is_prime(b) for b in bases),'composite_bases':sum(not is_prime(b) for b in bases),'geometric_sums':vchecks//2,'exact_valuation_checks':vchecks,'bound_checks':bounds,'type_counts':dict(hist),'conditional_S7_source_checks':condition_tests,'complete_small_rows':len(rows),'all_legal_j_checks_in_small_rows':total_j,'large_example':large,'seconds':time.perf_counter()-st}
 (ROOT/'evidence/small_rows.json').write_text(json.dumps(rows,indent=2)+'\n')
 (ROOT/'evidence/large_source.json').write_text(json.dumps(large,indent=2)+'\n')
 (ROOT/'evidence/boundary.json').write_text(json.dumps(boundary,indent=2)+'\n')
 (ROOT/'logs/diagnostics.json').write_text(json.dumps(out,indent=2)+'\n')
 print(json.dumps(out))
if __name__=='__main__':main()
