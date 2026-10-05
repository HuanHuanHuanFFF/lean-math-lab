"""Exact current-round set difference; not reacceptance of historical deletions."""
from pathlib import Path
import csv,json,hashlib
R=Path(__file__).resolve().parents[1]
src=R/'sources/frontier26.tsv';rows=list(csv.DictReader(src.open(),delimiter='\t'))
ids=[int(x['idx']) for x in rows]
assert len(rows)==26 and len(ids)==len(set(ids))
rec=json.loads((R/'certificates/ledger_verification.json').read_text())
delids=rec['removed'];assert len(delids)==9 and len(set(delids))==9 and set(delids)<=set(ids)
for x in rec['records']:
 r=next(r for r in rows if int(r['idx'])==x['state'])
 assert int(r['h'])==x['h'] and x['M8_after']>x['h']
 assert x['v']==list(map(int,r['v3,v4,v5,v6,v7,v8'].split(',')))
remaining=[r for r in rows if int(r['idx']) not in delids]
assert len(remaining)==17 and {int(r['idx']) for r in remaining}.isdisjoint(delids)
for r in rows:
 h=int(r['h']);v=list(map(int,r['v3,v4,v5,v6,v7,v8'].split(',')))
 assert len(v)==6 and min(v)>=0 and 2*h+sum(v)==305
out=R/'certificates/frontier17.tsv'
with out.open('w') as f:
 w=csv.DictWriter(f,fieldnames=list(rows[0]),delimiter='\t',lineterminator='\n');w.writeheader();w.writerows(remaining)
minh=min(int(r['h']) for r in remaining)
summary={'input_count':26,'input_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),
 'removed':sorted(delids),'strict_current_round_net':9,'output_count':17,
 'output_sha256':hashlib.sha256(out.read_bytes()).hexdigest(),
 'minimum_h':minh,'maximum_V':max(sum(map(int,r['v3,v4,v5,v6,v7,v8'].split(','))) for r in remaining),
 'minimum_states':[int(r['idx']) for r in remaining if int(r['h'])==minh],
 'remaining_ids':[int(r['idx']) for r in remaining],
 'all_E0_D305':True,'historical_seven_deletions_reproved':False,
 'round1_state1825_reproved':False,'necessary_projection_only':True,
 'actual_NC_points_removed_not_claimed':True,'COVER':8,'R7':[3,4,5,6,7,8,9]}
assert minh==137 and summary['maximum_V']==31 and summary['minimum_states']==[1907,1908,1910]
(R/'certificates/frontier_audit.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps(summary,indent=2))
