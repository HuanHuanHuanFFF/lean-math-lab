from pathlib import Path
import json,csv
R=Path(__file__).resolve().parents[1]
OFF=[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]];DIAG=[0,56,0,41,0,52]
D=json.loads((R/'certificates/factor_source_bounds.json').read_text())
# Other states receive their own source rows; no migrated degree permission.
IDS=[1874,1899,1946,1982,2001,2020,2025,2030,2032]
rows=list(csv.DictReader((R/'sources/frontier26.tsv').open(),delimiter='\t'))
rec=[]
for row in rows:
 idx=int(row['idx'])
 if idx not in IDS:continue
 h=int(row['h']);v=list(map(int,row['v3,v4,v5,v6,v7,v8'].split(',')))
 labels=['S5','Fstar','P4','U4'] if idx==1874 else ['S5','Fstar'] if idx==2025 else ['S5']
 for label in labels:
  pts=[]
  for pt in D[label]['points']:
   r,s=pt['r'],pt['s'];wt=pt['weight_t'];low=max(0,(DIAG[r-3] if wt==2 else OFF[r-3][s])-v[r-3]-pt['upper_order']);pts.append([r,s,wt,low])
  for p in [257,263]:
   for mode in [0,1]:
    nm=f's{idx}_{label}quot_p{p}_m{mode}';(R/'certificates'/f'{nm}.input').write_text(f'{h-4} {2*(h-4)} {p} {mode} 21\n'+''.join(' '.join(map(str,x))+'\n' for x in pts))
  rec.append({'state':idx,'h':h,'v':v,'factor_label':label,'e_Q':h-4,'D_Q':2*(h-4),'source_rows':pts})
(R/'certificates/state_quotient_sources.json').write_text(json.dumps(rec,indent=2)+'\n')
