"""Input byte provenance only, not historical mathematical acceptance."""
from pathlib import Path
import zipfile,hashlib,json,io
R=Path(__file__).resolve().parents[1];p=R/'dependencies/FRONTIER2_INPUT.zip';h=hashlib.sha256(p.read_bytes()).hexdigest();assert h=='7593ae19cb7e6b8b5f97a11b348e2753cb0a39eef190c8f58f0f4653285558fc'
z=zipfile.ZipFile(p);prefix=z.namelist()[0].split('/')[0]+'/';lines=z.read(prefix+'SHA256SUMS').decode().splitlines()
for line in lines:
 want,f=line.split('  ',1);assert hashlib.sha256(z.read(prefix+f)).hexdigest()==want,f
rr={'input_file':'dependencies/FRONTIER2_INPUT.zip','sha256':h,'members':len(z.namelist()),'manifest_entries_checked':len(lines),'all_match':True,'mathematical_replay_of_input':False,'execution_location':'current conversation sandbox, not user device'}
(R/'sources/INPUT_BYTE_RECEIPT.json').write_text(json.dumps(rr,indent=2)+'\n')
inner=z.read(prefix+'dependencies/FRONTIER5_INPUT.zip');assert hashlib.sha256(inner).hexdigest()=='d47527ef623c7964cd5797808a37c9ea84188dea96e377d5131f364264b810e8'
z5=zipfile.ZipFile(io.BytesIO(inner));p5=z5.namelist()[0].split('/')[0]+'/'
checks=[]
for dest,src,zf,pr in [('code/module_kernel.cpp','code/module_kernel.cpp',z5,p5),('code/check_trace.cpp','code/check_trace.cpp',z5,p5),('code/ledger_receiver.cpp','code/ledger_receiver.cpp',z,prefix),('code/root_gates_fast2.cpp','code/root_gates_fast2.cpp',z,prefix),('code/six_jets_adopted.cpp','code/six_jets_adopted.cpp',z,prefix),('code/receive_geometry_r3.cpp','code/receive_geometry_r3.cpp',z,prefix),('code/enumerate_types.py','code/enumerate_types.py',z,prefix),('sources/global649.txt','sources/global649.txt',z,prefix),('sources/catalog112.json','certificates/ledger/catalog112.json',z,prefix),('sources/catalog112.tsv','certificates/ledger/catalog112.tsv',z,prefix),('sources/factor_source_bounds_adopted.json','sources/factor_source_bounds.json',z,prefix),('sources/frontier2.tsv','certificates/frontier2.tsv',z,prefix)]:
 b=(R/dest).read_bytes();assert b==zf.read(pr+src),dest;checks.append({'current':dest,'adopted_member':src,'input_generation':5 if zf is z5 else 6,'sha256':hashlib.sha256(b).hexdigest(),'exact_bytes_equal':True})
(R/'sources/BYTE_PROVENANCE_RECEIPT.json').write_text(json.dumps({'adopted_raw_objects':checks,'old_proof_acceptance_upgraded':False},indent=2)+'\n')
print('PASS input ZIP hash,',len(lines),'input members, and',len(checks),'source byte mappings')
