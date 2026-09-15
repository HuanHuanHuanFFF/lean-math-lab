from pathlib import Path
from math import gcd
import json,time
from consumer import power_leq, new_consumer
from common import rough7
ROOT=Path(__file__).resolve().parents[1]
def main():
 t=time.perf_counter();cnt=0
 for b in range(1,20):
  for e in range(21):
   for limit in (0,1,2,3,10,100,1000,123456):
    assert power_leq(b,e,limit)==(b**e<=limit);cnt+=1
 assert rough7(2**5*3**2*37**4*41**2)==37**4*41**2
 assert not new_consumer(989,430)['covered']
 assert new_consumer(23,10,True)['covered']
 assert not new_consumer(23,10,False)['covered']
 # A huge exponent is handled symbolically/with capped powers, never expanded.
 assert not power_leq(439,1<<72,10**1000)
 out={'status':'PASS_CONSERVATIVE_CONSUMER_TESTS','capped_power_comparisons':cnt,'seconds':time.perf_counter()-t}
 (ROOT/'logs/consumer_tests.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
