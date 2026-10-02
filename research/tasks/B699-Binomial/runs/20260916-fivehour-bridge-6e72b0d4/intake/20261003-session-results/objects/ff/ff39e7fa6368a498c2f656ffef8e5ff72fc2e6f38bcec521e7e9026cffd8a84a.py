"""Exact index-set ledger. Claim-set algebra is never theorem acceptance."""
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
def calculate():
 routes=json.loads((ROOT/'sources/ROUTE_REGISTRY.json').read_text())
 rows=json.loads((ROOT/'PER_INDEX_SOURCE_MATRIX.json').read_text())
 T={10}|set(range(12,29))|set(range(30,35));R7=set(range(3,10))
 accepted={1,2,11,29}|set(range(35,4883))
 family={r['id']:set(r['indices']) for r in routes}
 reported=set().union(*family.values())
 assert set(r['i'] for r in rows)==T and len(rows)==23
 assert reported==T|{11}
 pairs={}
 for k,a in family.items():
  for l,b in family.items():
   if k<l:pairs[k+' & '+l]=sorted(a&b)
 assert all(not v for v in pairs.values())
 HP={11,16,19,21,22,24,25}
 assert HP==family['G4']|family['P3'] and not family['G4']&family['P3']
 low_complement=set(range(1,35))-{1,2,11,29}
 assert low_complement==T|R7 and len(low_complement)==30
 assert low_complement-reported==R7
 assert len(accepted)==4852
 return dict(fixed_accepted_full_count=len(accepted),fixed_accepted_finite_intervals=[[35,4882]],
  fixed_accepted_isolated=[1,2,11,29],author_high_tail=[4883,None],
  accepted_plus_adopted_E_intervals=[[35,None]],accepted_plus_adopted_E_isolated=[1,2,11,29],
  conservative_mixed_complement=sorted(low_complement),global_R7=sorted(R7),target_nonR7=sorted(T),
  source_local_claim_union=sorted(reported),source_claim_intersection_fixed_accepted=sorted(reported&accepted),
  all_nine_pairwise_intersections=pairs,
  asymmetric_height_only_set=sorted(HP),height_only_intersection_G4=sorted(HP&family['G4']),
  height_only_intersection_P3=sorted(HP&family['P3']),
  hypothetical_complement_if_every_paper_chain_adopted=sorted(R7),
  newly_verified_full_indices=[],newly_accepted_full_indices=[],certified_new_net_index_difference=0,
  historical_consumer_domain_difference='0 / 未认证；未审计全部历史消费者域并集',
  warning='[35,∞)的连续覆盖由35..4882与4883..∞相邻的形式区间并得到，不是抽样到某个上界。作者claim并集的代数不认证其定理。')
if __name__=='__main__':
 print(json.dumps(calculate(),ensure_ascii=False,indent=2))
