"""Restore frozen source members without modifying the source map or originals."""
from pathlib import Path
import json,zipfile,hashlib,sys
ROOT=Path(__file__).resolve().parents[1]
def sha(path):
 with path.open('rb') as f:return hashlib.file_digest(f,'sha256').hexdigest()
def main():
 if len(sys.argv)!=2:raise SystemExit('Usage: python3 code/prepare_sources.py ORIGINAL_ARCHIVE_DIRECTORY')
 source_dir=Path(sys.argv[1]); mapping=json.loads((ROOT/'SOURCE_MAP.json').read_text()); count=0
 for item in mapping['archives']:
  archive=source_dir/item['filename']
  if archive.stat().st_size!=item['bytes'] or sha(archive)!=item['sha256']:
   raise ValueError(f'Original archive does not match the frozen hash: {archive.name}')
  with zipfile.ZipFile(archive) as z:
   for rec in item['members']:
    data=z.read(rec['archive_member'])
    if len(data)!=rec['bytes'] or hashlib.sha256(data).hexdigest()!=rec['sha256']:
     raise ValueError('Frozen source member mismatch')
    dest=ROOT/rec['local_path']
    if not dest.resolve().is_relative_to(ROOT.resolve()):raise ValueError('Unsafe path')
    if dest.exists() and dest.read_bytes()!=data:raise ValueError('Refusing to overwrite a changed source')
    dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(data);count+=1
 print(json.dumps({'status':'passed','original_archives':len(mapping['archives']),'members_restored':count}))
if __name__=='__main__':main()
