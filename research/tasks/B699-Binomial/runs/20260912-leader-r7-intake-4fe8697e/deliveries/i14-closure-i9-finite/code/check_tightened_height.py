"""Re-evaluate adopted cuts at a smaller x0; no Pade/content search or writes to inputs."""
from pathlib import Path
from fractions import Fraction as F
import json, sys, importlib.util, time
R=Path(__file__).resolve().parents[1]
from source_paths import frozen
A=frozen('A')
def load(name,path):
 s=importlib.util.spec_from_file_location(name,path);m=importlib.util.module_from_spec(s);s.loader.exec_module(m);return m
start=time.monotonic()
a=load('adopted_cuts_primary',A/'code/verify_cuts.py')
b=load('adopted_cuts_alternate',A/'code/check_cuts_grid.py')
cuts=json.loads((A/'input/cuts.json').read_text())
H=14000000;X=9500000;L2=F(69314718055,10**11)
assert L2<a.logq(F(2)).lo and H*L2>X
primary=[];alternate=[]
for ix,row in enumerate(cuts['cuts'],1):
 # Legacy obligation routines use H_argument/2, so 2X supplies exactly x0=X.
 v=a.obligations(row,2*X,13);assert v['passed'];primary.append(v)
 alternate.append(b.check(row,2*X,13))
profiles=json.loads((A/'evidence/graph_height_check.json').read_text())
assert profiles['profiles'][0]['lower']==220833
assert min(x['lower'] for x in profiles['profiles'][1:])==91248
assert (H+1)*833>8490833 and (H+1)*1248>8541248 and (H+1)*5>827
out={'status':'PASS_TWO_EXACT_CUT_NUMERICAL_PATHS_SMALLER_HEIGHT','x0':X,'log2_lower':str(L2),'height_Y_bits':H,'height_n_bits':H+1,'cuts':45,'new_content_families':0,'C_six_thresholds_used':False,'inherited_graph_and_content_not_replayed':True,'seconds':round(time.monotonic()-start,3),'primary':primary,'alternate':alternate}
(R/'evidence/tightened_height.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k not in ['primary','alternate']}),flush=True)
