"""Byte checks only. Does NOT execute frozen mathematical certificates."""
from pathlib import Path
from zipfile import ZipFile
import hashlib,json,time
R=Path(__file__).resolve().parents[1]
def digest(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for block in iter(lambda:f.read(1024*1024),b''):h.update(block)
 return h.hexdigest()
def main():
 t=time.perf_counter();m=json.loads((R/'sources/INPUT.json').read_text());p=R/m['path']
 assert p.stat().st_size==m['bytes'] and digest(p)==m['sha256']
 with ZipFile(p) as z:
  old='B699-ProA-i9-coupled-edge-blocks-20260915/'
  for f in ('REPORT.md','HANDOFF.md','SESSION_STATE.json','SOURCE_ADOPTION.md','FAILURE_BOUNDARIES.md','notes/PROOFS.md'):
   assert z.read(old+f)==(R/'sources'/('parent_'+f.replace('/','_'))).read_bytes()
 a=json.loads((R/'sources/A9_FINITE_REFERENCE.json').read_text())
 assert digest(R/a['local'])==a['sha256']
 for v in a['frozen_evidence_members']:
  assert (R/v['local']).stat().st_size==v['bytes'] and digest(R/v['local'])==v['sha256']
 out={'status':'PASS_SOURCE_BYTES_ONLY','parent_archives':1,'parent_text_members':6,'frozen_finite_proof':1,
      'frozen_finite_evidence_files':len(a['frozen_evidence_members']),'historical_receivers_run':0,'seconds':time.perf_counter()-t}
 (R/'logs/source_verification.json').write_text(json.dumps(out,indent=2));print(json.dumps(out))
if __name__=='__main__':main()
