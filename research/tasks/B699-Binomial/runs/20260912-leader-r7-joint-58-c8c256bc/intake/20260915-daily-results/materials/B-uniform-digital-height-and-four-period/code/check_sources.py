import json,hashlib,sys,zipfile
from pathlib import Path
root=Path(__file__).resolve().parents[1];out=Path(sys.argv[1])
x=json.loads((root/'sources/SOURCE_MAP.json').read_text());o=x['original'];p=root/o['path']
assert p.stat().st_size==o['bytes'] and hashlib.sha256(p.read_bytes()).hexdigest()==o['sha256']
z=zipfile.ZipFile(p)
for q in o['members']:
 b=z.read(q['member']);assert b==(root/q['path']).read_bytes()
 assert len(b)==q['bytes'] and hashlib.sha256(b).hexdigest()==q['sha256']
r=dict(status='PASS',archive_bytes=o['bytes'],archive_sha256=o['sha256'],members=len(o['members']),
       historical_proof_programs_run=False,outer_payload_rechecked_in_this_command=False,
       outer_input_check='See frozen SOURCE_MAP outer_input; outer distribution ZIP is not duplicated in this deliverable.')
(out/'source_check.json').write_text(json.dumps(r,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'status':'PASS','source_members':len(o['members'])}))
