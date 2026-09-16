import json,sys,hashlib
from pathlib import Path
from kernel import trace,verify_stored
root=Path(__file__).resolve().parents[1];out=Path(sys.argv[1]);out.mkdir(parents=True,exist_ok=True)
rows=json.loads((root/'outputs/selected_first_window.json').read_text())
assert len(rows)==96 and all(verify_stored(r) for r in rows)
counts={'W1-rejected':0,'W2-rejected':0}
for T in range(3,16,2):
 for A in range(1,T):
  for B in range(1,16):
   for off in (0,1,7):
    X=3*A*B*B+off
    for u in range(A+1):
     for w in range(B+1):
      if (u,w) in ((0,0),(A,B)):continue
      counts[trace(T,A,B,X,u,w)['mode']]+=1
family=[]
for t in (0,1,2,4,17,100,10000):
 B=8*t+4;X=(825*B*B-31*B-4)//8
 v=trace(11,8,B,X,3,B)
 assert v['q']==1 and v['L']==1340*B-32 and v['n']%4==0 and 4<=v['j']<v['n']//2
 family.append({'t':t,'B':B,'n':v['n'],'j':v['j'],'X':X,'L':v['L']})
res={'finite_regression_not_universal_proof':True,'small_box':{'T_odd':'3..15','B':'1..15','X':'3*A*B^2+{0,1,7}'},'counts':counts,'nonempty_W1_records':len(rows),'tail_at_least_T':sum(r['B']>=r['T'] for r in rows),'family':family}
(out/'kernel.json').write_text(json.dumps(res,sort_keys=True,indent=2)+'\n')
print('PASS kernel',sum(counts.values()),'regressions;',len(rows),'nonempty W1 records')
