from pathlib import Path
import hashlib,json,time
ROOT=Path(__file__).resolve().parents[1]
def file_sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  while b:=f.read(1<<20):h.update(b)
 return h.hexdigest()
def main():
 st=time.perf_counter();m=json.loads((ROOT/'sources/PROVENANCE.json').read_text())
 p=ROOT/m['copied_as'];assert p.stat().st_size==m['bytes'] and file_sha(p)==m['sha256']
 for x in m['selected_members']:
  p=ROOT/x['local'];assert p.stat().st_size==x['bytes'] and file_sha(p)==x['sha256']
 assert m['historical_math_receivers_run']==0
 out={'status':'PASS_FROZEN_INPUT_BYTES_NOT_MATHEMATICAL_REACCEPTANCE','selected_source_members':len(m['selected_members']),'original_input_bytes':m['bytes'],'nested_chain_checks_recorded_at_adoption':len(m['nested_chain_byte_checks']),'nested_chain_reexecuted_now':False,'seconds':time.perf_counter()-st}
 (ROOT/'logs/source_bytes.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
