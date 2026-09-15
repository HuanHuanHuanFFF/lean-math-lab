"""Final scoped freeze and preservation audit for the additional i8 task."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
here=Path(__file__).resolve().parent;run=here.parents[1]
def info(p):
    data=p.read_bytes();return {'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()}
old=run/'notes/cubic/FINAL_FROZEN.json';previous=json.loads(old.read_text())
for entry in previous['files']:
    actual=info(run/entry['path']);assert actual=={'bytes':entry['bytes'],'sha256':entry['sha256']},entry['path']
data_manifest=run/'reviews/cubic/i8-threehigh-data-manifest.json';data=json.loads(data_manifest.read_text())
for entry in data['files']:
    actual=info(run/entry['path']);assert actual=={'bytes':entry['bytes'],'sha256':entry['sha256']},entry['path']
audit=run/'reviews/cubic/i8-threehigh-byte-audit.json';assert not audit.exists()
audit.write_text(json.dumps({'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),
    'old_cubic_files_unchanged':len(previous['files']),'i8_data_files_unchanged':len(data['files']),
    'old_manifest_sha256':info(old)['sha256'],'i8_data_manifest_sha256':info(data_manifest)['sha256']},indent=2)+'\n',encoding='utf-8')
dest=run/'reviews/cubic/i8-threehigh-final-manifest.json';assert not dest.exists()
paths=sorted(here.glob('i8_threehigh_*'))+sorted((run/'reviews/cubic').glob('i8-threehigh-*'))
files=[{'path':str(p.relative_to(run)).replace('\\','/'),**info(p)} for p in paths if p.is_file() and p!=dest]
deps=['reviews/geometry/i8-unit-route-manifest.json','reviews/geometry/i8-unit-route-tower-manifest.json']
out={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/nc3','files':files,
     'file_count':len(files),'total_bytes':sum(f['bytes'] for f in files),
     'independent_acceptance':[{'path':p,**info(run/p)} for p in deps],
     'scope':'Complete original i8/i9 least-three-high families, both threshold/shift groups; original q7 family included. No Lean; earlier cubic freeze preserved.'}
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(dest),'file_count':len(files),'total_bytes':out['total_bytes'],
                  'old_cubic_files_unchanged':len(previous['files']),**info(dest)}))
