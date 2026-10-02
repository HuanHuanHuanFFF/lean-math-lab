"""Exact adjacent set differences; never an independent review of historical proofs."""
from common import *
previous=json.loads((ROOT/'sources/ROUND4_LEDGER_SUMMARY.json').read_text())
p_in={x['state'] for x in previous['states']}
p_del=set(previous['removed'])
p_out={x['state'] for x in previous['states'] if not x['eliminated']}
assert p_del=={1937,1981,2014} and p_out==set(STATES) and p_in-p_del==p_out
now=json.loads((ROOT/'certificates/ledger/SUMMARY.json').read_text())
a=set(STATES);b=set(now['remaining']);d=set(now['removed'])
assert a-b==d=={1964,1977} and not(b-a) and not(d&p_del)
assert b=={1972,1974,1975,2000,2029}
r={'input_frontier7':sorted(a),'new_removed':sorted(d),'output_frontier5':sorted(b),'current_strict_difference_verified':True,'adjacent_round4_reported_10_to_7_difference_verified':True,'round4_reported_deleted':sorted(p_del),'historical_mathematics_rechecked':False,'earlier_missing_frontier27_zip_restored':False,'new_original_NC_points_certified_removed':0,'necessary_resource_states_removed':2,'COVER8_unchanged':True,'R7_unchanged':[3,4,5,6,7,8,9]}
(ROOT/'certificates/DIFFERENCE_RECEIPT.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
