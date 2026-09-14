from pathlib import Path, PurePosixPath
import argparse, json, zipfile, hashlib, stat

root=Path(__file__).resolve().parent
p=argparse.ArgumentParser(description='Verify and restore selected original ZIP outer members only; never run research code.')
p.add_argument('role',choices=['A','B','D','all'])
p.add_argument('--dest',type=Path,default=root/'inputs')
a=p.parse_args()
selection={'A':{'A'},'B':{'B','D-as-B'},'D':{'D-quartic','D-as-B'},'all':{'A','B','D-as-B','D-quartic'}}[a.role]
records=json.loads((root/'sources/ARCHIVES.json').read_text())['archives']
for item in records:
 if item['id'] not in selection:continue
 archive=root/item['path']
 with archive.open('rb') as f:digest=hashlib.file_digest(f,'sha256').hexdigest()
 if archive.stat().st_size!=item['bytes'] or digest!=item['sha256']:raise ValueError('Archive bytes differ: '+item['id'])
 target=(a.dest/item['id']).resolve();count=0
 with zipfile.ZipFile(archive) as z:
  seen=set()
  for info in z.infolist():
   if info.is_dir():continue
   if not info.filename.startswith(item['prefix']):raise ValueError('Unexpected prefix')
   name=info.filename[len(item['prefix']):];rel=PurePosixPath(name)
   if rel.is_absolute() or '..' in rel.parts or name in seen or stat.S_ISLNK(info.external_attr>>16):raise ValueError('Unsafe or duplicate member')
   seen.add(name);out=target.joinpath(*rel.parts)
   if not out.resolve().is_relative_to(target):raise ValueError('Path escapes destination')
   if out.exists():
    if out.stat().st_size!=info.file_size:raise ValueError('Existing file differs: '+str(out))
    with out.open('rb') as f:old=hashlib.file_digest(f,'sha256').hexdigest()
    with z.open(info) as f:new=hashlib.file_digest(f,'sha256').hexdigest()
    if old!=new:raise ValueError('Existing file differs: '+str(out))
   else:
    out.parent.mkdir(parents=True,exist_ok=True)
    with z.open(info) as src,out.open('xb') as dst:
     for chunk in iter(lambda:src.read(1024*1024),b''):dst.write(chunk)
   count+=1
 print(item['id']+': restored '+str(count)+' outer members; nested ZIPs remain opaque')
print('PASS_BYTES_ONLY; no author program executed')
