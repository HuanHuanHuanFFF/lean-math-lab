"""Byte-only binding to the supplied R1 ZIP; no old mathematics is rerun."""
from pathlib import Path
import zipfile,json,hashlib
R=Path(__file__).resolve().parents[1];name='B699-ProA-S5Q-LOW16-STATE1825-H133-FRONTIER26-20261002-evidence.zip';p=R/'dependencies'/name
sha=lambda b:hashlib.sha256(b).hexdigest()
assert sha(p.read_bytes())=='ba33aed53c955f64b7494d2ad7889813cfa35553ff268e45b6ae462444a861e9'
prefix=name[:-4]+'/'
with zipfile.ZipFile(p) as z:
 assert z.testzip() is None and len(z.namelist())==284 and len(z.namelist())==len(set(z.namelist()))
 lines=z.read(prefix+'PAYLOAD_SHA256SUMS').decode().splitlines();n=0
 for line in lines:
  if not line.strip():continue
  digest,rel=line.split('  ',1);assert sha(z.read(prefix+rel))==digest;n+=1
 assert n==252
 mapping={'sources/global649.txt':'sources/global649.txt','sources/frontier26.tsv':'certificates/frontier26.tsv','sources/ADOPTED_CONTRACTS.md':'sources/ADOPTED_CONTRACTS.md','sources/ROUND1_PROOFS.md':'PROOFS.md','sources/ROUND1_HANDOFF.md':'HANDOFF.md','sources/ROUND1_SOURCE_ADOPTION.md':'SOURCE_ADOPTION.md','sources/ROUND1_SESSION_STATE.json':'SESSION_STATE.json'}
 bindings=[]
 for current,old in mapping.items():
  data=(R/current).read_bytes();assert data==z.read(prefix+old)
  bindings.append({'current_path':current,'input_zip_member':prefix+old,'sha256':sha(data)})
rec={'input_zip_sha256':sha(p.read_bytes()),'input_zip_bytes':p.stat().st_size,'input_zip_members':284,'input_payload_hashes_checked':n,'bindings':bindings,'old_mathematical_programs_executed':False,'historical_acceptance_increased':False}
(R/'certificates/SOURCE_BINDING.json').write_text(json.dumps(rec,indent=2)+'\n');print('SOURCE BYTE BINDING PASS',n,'old payload files; no old mathematics executed')
