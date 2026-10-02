from pathlib import Path
import json,sympy as sp
from rational_recover import recover
from candidate_forms import N,X,lam,P0,FORMS
R=Path(__file__).resolve().parents[1];G=R/'certificates/geometry'
expected={(5,48):'reducible',(5,63):'P4',(5,69):'reducible',(5,83):'U4',(21,28):'reducible',(39,1):'Fstar',(39,7):'S5',(39,8):'reducible'}
actual={}
for prof in json.loads((G/'profiles.json').read_text()):
 i=prof['index']
 for line in (G/f'g{i:02}.p32749.exceptions').read_text().splitlines():
  gate,rank,k=map(int,line.split());actual[(i,gate)]=(rank,k)
assert set(actual)==set(expected)
results=[]
for key,tag in expected.items():
 i,gate=key;rec,H=recover(G/f'g{i:02}.txt',gate)
 assert (rec['rank_Q'],rec['matrix_columns'])==actual[key]
 if tag=='reducible':assert rec['uniform_nonconstant_factors']
 else:
  a0=sp.Symbol('a0');norm=H.subs(a0,14400*lam) if rec['parameter_count'] else H
  assert sp.expand(norm-FORMS[tag])==0
  if tag=='S5':assert sp.expand(norm.subs(lam,0)-P0)==0
 rec['profile']=i;rec['classification']=tag;rec['all_rational_parameters_retained']=True
 (G/f'rational_g{i:02}_{gate}.json').write_text(json.dumps(rec,indent=2)+'\n');results.append(rec)
 if key==(39,1):(R/'certificates/Fstar_recovery_1.json').write_text(json.dumps(rec,indent=2)+'\n')
 print(i,gate,tag,'rank',rec['rank_Q'],'nullity',rec['nullity_Q'],flush=True)
(G/'rational_receipt.json').write_text(json.dumps({'complete_exception_list':True,'exception_count':len(results),'classifications':[{'profile':d['profile'],'gate':d['gate_line'],'type':d['classification']} for d in results]},indent=2)+'\n')
