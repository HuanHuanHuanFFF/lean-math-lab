from pathlib import Path
import json,hashlib,zipfile,sys
root=Path(__file__).resolve().parents[1];out=Path(sys.argv[1]);zpath=root/'sources/previous.zip'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
expected='1d8e25b51d4c399f37a67c4a09ffc2828cf501619a69b7a33a382dbd979f06a1'
assert sha(zpath)==expected
items=[]
with zipfile.ZipFile(zpath) as z:
 assert z.testzip() is None
 for name in ['REPORT.md','HANDOFF.md','notes/PROOFS.md']:
  raw=z.read(name);p=root/'sources/previous-text'/name
  assert p.read_bytes()==raw
  items.append({'archive_member':name,'copy':'sources/previous-text/'+name,'sha256':sha(p),'bytes':len(raw)})
res={'status':'PASS','previous_archive_sha256':expected,'bytes':zpath.stat().st_size,'adopted_members':items,
     'historical_mathematical_chain_rerun':False}
(out/'sources.json').write_text(json.dumps(res,sort_keys=True,indent=2)+'\n');print(json.dumps({'source_members':len(items),'archive_hash':'matched'}))
