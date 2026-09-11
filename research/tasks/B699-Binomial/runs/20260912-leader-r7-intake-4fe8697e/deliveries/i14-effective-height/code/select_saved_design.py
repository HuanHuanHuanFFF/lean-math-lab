"""Prune only the frozen 51 cuts. This is NOT a new Padé/seed search.
All objectives are exact integer monotone functions; cuts remain conditional
until the content and rational analytic checks have independently passed.
"""
from pathlib import Path
from itertools import combinations
import json, sys, time
R=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(R/'code/vendor'))
from probe_weighted_asymmetric import solve,nondominated
PS=[2,3,5,7,11,13]
def profiles(rows):
 es=nondominated(rows)
 out=[dict(kind='distinct',target=220000,**solve(PS,es,lambda z:sum(w*v for w,v in zip([18,17,16,15,14,13],sorted(z)))))]
 for a,b in combinations(range(6),2):
  def obj(z):
   groups=[max(0,z[a]+z[b]-10000)]+[z[k] for k in range(6) if k not in [a,b]]
   return sum(w*v for w,v in zip([18,17,16,15,14],sorted(groups)))
  out.append(dict(kind='one_pair',pair=[PS[a],PS[b]],target=90000,**solve(PS,es,obj)))
 return out

def family(row):
 return tuple(sorted(row[k] for k in ['e','d','f'])) if row['content_source']=='NEW_UNPROVED_G' else None

def main():
 st=time.monotonic();original=json.loads((R/'input/cut_design.json').read_text())['cuts'];rows=original[:]
 first=profiles(rows);print('INITIAL',[(p.get('pair','distinct'),p['min']-p['target']) for p in first],flush=True)
 assert min(p['min']-p['target'] for p in first)>0
 trace=[];specs=json.loads((R/'input/content_specs.json').read_text())['families']
 costs={tuple(s[k] for k in ['e','d','f']):s['M']*sum(s[k] for k in ['e','d','f']) for s in specs}
 # Largest evidence cost first; keep >=500 units of exact graph margin.
 for key in sorted({family(r) for r in rows if family(r)},key=lambda k:costs[k],reverse=True):
  candidate=[r for r in rows if family(r)!=key];p=profiles(candidate)
  if all(x['min']>=x['target']+500 for x in p):
   rows=candidate;trace.append(dict(removed_family=list(key),cuts_remaining=len(rows)))
 for k in range(len(rows)-1,-1,-1):
  candidate=rows[:k]+rows[k+1:];p=profiles(candidate)
  if all(x['min']>=x['target']+500 for x in p):rows=candidate;trace.append(dict(removed_cut_index=k,cuts_remaining=len(rows)))
 final=profiles(rows);needed={family(r) for r in rows if family(r)}
 (R/'input/selected_cut_design.json').write_text(json.dumps(dict(status='CONDITIONAL_SAVED_CUTS_PRUNED_ONLY',cuts=rows),indent=2)+'\n')
 (R/'input/selected_content_specs.json').write_text(json.dumps(dict(families=[s for s in specs if tuple(s[k] for k in ['e','d','f']) in needed]),indent=2)+'\n')
 report=dict(status='EXACT_GRAPH_CONDITIONAL_ON_CONTENT_AND_CUTS',original_cuts=len(original),selected_cuts=len(rows),selected_families=len(needed),original_profiles=first,profiles=final,pruning_trace=trace,seconds=time.monotonic()-st)
 (R/'evidence/saved_design_pruning.json').write_text(json.dumps(report,indent=2)+'\n')
 print('FINAL',len(rows),'cuts',len(needed),'families',[(p.get('pair','distinct'),p['min']-p['target']) for p in final],flush=True)
if __name__=='__main__':main()
