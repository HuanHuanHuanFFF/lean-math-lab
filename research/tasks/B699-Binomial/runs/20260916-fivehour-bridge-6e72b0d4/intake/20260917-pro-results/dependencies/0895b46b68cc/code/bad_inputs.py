"""Reject corrupted finite evidence; negative mathematical variants are separate."""
import argparse,json,copy
from pathlib import Path
from fractions import Fraction
from math import gcd
from check import check_bottom, independently_compute

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--inputs',required=True);ap.add_argument('--out',required=True);a=ap.parse_args();p=Path(a.inputs)
 base=json.loads((p/'bottom.json').read_text());tests=[]
 def expect(name,fn):
  o=copy.deepcopy(base);fn(o)
  try:check_bottom(o)
  except (ValueError,AssertionError,KeyError):tests.append(name);return
  raise AssertionError('corrupted evidence accepted: '+name)
 expect('missing_final_full_power_state',lambda o:o['states'].pop())
 expect('duplicated_state',lambda o:o['states'].append(copy.deepcopy(o['states'][0])))
 expect('erase_illegal_but_real_root',lambda o:o['states'][1].update(integer_j=[]))
 expect('replace_25_by_its_radical',lambda o:o['states'][2].update(M=5,n=12))
 expect('wrong_odd_divisor_bound',lambda o:o['states'][0].update(odd_bound=5))
 expect('false_legal_point',lambda o:o['states'][0].update(legal_j=[4]))
 expect('wrong_completed_square',lambda o:o['states'][0].update(completed_square=0))
 expect('alter_point_list',lambda o:o['all_integer_points'].pop())
 expect('swap_canonical_fraction',lambda o:o['states'][0].update(a=5,b=6))
 # Explicit counterexamples to tempting, but unjustified, strengthenings.
 z=independently_compute(40,13)
 assert all(6%d for n,d in z['critical_roots'])  # 1/4, 2/5: need the odd V.
 y=independently_compute(56,11)
 assert 3*11*10%55==0 and 6*11*10*9%54==0 and y['V']==21
 # An irreducible rational cubic can have rational critical points.
 assert 1**3-3*1-1 !=0 and (-1)**3-3*(-1)-1 !=0
 # General actual E is not automatically divisible by g.
 n,j=20,8
 from math import comb
 H=gcd(gcd(comb(n-j,3),j*comb(n-j,2)),gcd((n-j)*comb(j,2),comb(j,3)))
 phi=[-comb(j,3)//H, comb(j,2)*(n-2)//H,-j*comb(n-1,2)//H,comb(n,3)//H]
 E=sum(phi[k]*2**(3-k) for k in range(4))
 assert E==-7 and E%gcd(n,j)!=0
 out=dict(status='PASS',corrupted_certificates_rejected=tests,
          negative_variants=[
           {'claim':'all rational critical denominators divide 6 without odd content',
            'n':40,'j':13,'roots':z['critical_roots'],'L':z['L']},
           {'claim':'two projections imply NC3','n':56,'j':11,'odd_content_quotient':21},
           {'claim':'irreducible cubic implies irreducible derivative','polynomial':'X^3-3X-1','critical_points':[-1,1]},
           {'claim':'actual normalized evaluation always contains g','n':20,'j':8,'g':4,'evaluation_at_1_over_2_times_8':E}])
 Path(a.out).write_text(json.dumps(out,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
 print(json.dumps(dict(status='PASS',corruptions=len(tests),negative_variants=4)))
if __name__=='__main__':main()
