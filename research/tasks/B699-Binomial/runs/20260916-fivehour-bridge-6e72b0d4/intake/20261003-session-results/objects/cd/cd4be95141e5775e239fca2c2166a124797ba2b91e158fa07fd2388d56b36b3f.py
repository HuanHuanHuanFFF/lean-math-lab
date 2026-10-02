from common import *
input_ids=set(STATES)
final_ids={int(a['idx']) for a in csv.DictReader((ROOT/'certificates/frontier2.tsv').open(),delimiter='\t')}
summary=json.loads((ROOT/'certificates/ledger/SUMMARY.json').read_text())
removed=set(summary['removed']);assert input_ids=={1972,1974,1975,2000,2029} and removed=={1972,1974,1975} and final_ids=={2000,2029}
assert input_ids-final_ids==removed and not removed&final_ids
previous=json.loads((ROOT/'sources/ROUND5_LEDGER_SUMMARY.json').read_text());assert set(previous['removed'])=={1964,1977} and not removed&set(previous['removed']) and set(previous['remaining'])==input_ids
r={'input_count':5,'output_count':2,'current_removed':sorted(removed),'remaining':sorted(final_ids),'exact_current_set_difference':True,'previous_round_removed_checked_as_report':[1964,1977],'previous_removed_disjoint':True,'all_historical_mathematics_reverified':False,'old_missing_FRONTIER27_bytes_resolved':False,'COVER8_unchanged':True,'R7_unchanged':[3,4,5,6,7,8,9]}
(ROOT/'certificates/DIFFERENCE_RECEIPT.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r))
