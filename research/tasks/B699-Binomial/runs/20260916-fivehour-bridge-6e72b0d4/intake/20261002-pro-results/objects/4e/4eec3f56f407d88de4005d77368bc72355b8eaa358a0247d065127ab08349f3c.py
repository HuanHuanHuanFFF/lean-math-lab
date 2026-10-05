import zipfile,io,json,hashlib
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
import sys
sys.dont_write_bytecode=True
b=(ROOT/'inputs/parent_A1486_evidence.zip').read_bytes()
trace=[]
def read(b,path):
 with zipfile.ZipFile(io.BytesIO(b)) as z:
  found=[n for n in z.namelist() if n.endswith('/'+path)]
  assert len(found)==1,(path,found)
  bb=z.read(found[0])
 trace.append({'container_sha256':hashlib.sha256(b).hexdigest(),'member':found[0],'member_sha256':hashlib.sha256(bb).hexdigest()})
 return bb

def doc(b,p):return json.loads(read(b,p))
P=doc(b,'certificates/06_projection_delta.json')
b=read(b,'inputs/parent_A1090_evidence.zip');C=doc(b,'certificates/05_projection_delta.json')
b=read(b,'inputs/parent_A882_evidence.zip')
b=read(b,'inputs/parent_A532_evidence.zip');F=doc(b,'certificates/06_projection_delta.json')
b=read(b,'inputs/parent_A382_evidence.zip')
b=read(b,'inputs/parent_A292_evidence.zip');L=doc(b,'certificates/05_shared_c_gate.json');Rfinal=doc(b,'certificates/06_projection_delta.json')
b=read(b,'inputs/parent_A208_evidence.zip')
R0=doc(b,'inputs/parent_frontier_M0.json');R1=doc(b,'inputs/parent_frontier_M1.json')
FN31=doc(b,'certificates/03_same_input_FN31.json');Q31=doc(b,'certificates/05_original_Q31_consumer.json')
labels={r['a']:r['c_s_mod30'] for r in L['labelled_s_rows']}
fs={r['A_mod496']:r for r in FN31['rows']}
R=[a for a in R0['surviving_A_residues'] if fs[a%496]['allowed_H'] and (a%496 not in Q31['condition_A_mod496'] or (a+1)%336 in Q31['positive_power_cycle_mod336']) and a%10416 in labels]
def canon(v):return (json.dumps(v,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
assert len(R)==45660
assert hashlib.sha256(canon(R)).hexdigest()==Rfinal['stages'][-1]['M0_list_sha256']
out=dict(direct_parent_sha256='dfca31e8b810aa9014aead5232cecf06b74e8e299d746fdf69e59d2daa1fd09f',parent_projection=P,base11_projection=C,ancestor_fibers=F['rows'],R=R,bad725=R1['bad_new_residues'],labels=labels,extraction_trace=trace)
target=Path(sys.argv[1]) if len(sys.argv)>1 else ROOT/'inputs/parent_snapshot.json'
target.write_bytes(canon(out))
print('bytes',len(canon(out)),'parent_rows',len(P['rows']),'ancestor_rows',len(F['rows']),'currrows',len(C['rows']),'labels',len(labels))
