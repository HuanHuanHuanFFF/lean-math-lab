from pathlib import Path
import hashlib,json,sys,argparse,zipfile
ROOT=Path(__file__).resolve().parents[1]
def main():
 ap=argparse.ArgumentParser();ap.add_argument('output');ap.add_argument('--original-dir');a=ap.parse_args()
 data=json.loads((ROOT/'SOURCE_MAP.json').read_text());count=0
 for archive in data['archives']:
  for m in archive['members']:
   p=ROOT/m['local_path'];b=p.read_bytes()
   if len(b)!=m['bytes'] or hashlib.sha256(b).hexdigest()!=m['sha256']:raise ValueError(m['local_path'])
   count+=1
  if a.original_dir:
   p=Path(a.original_dir)/archive['filename']
   with p.open('rb') as f:h=hashlib.file_digest(f,'sha256').hexdigest()
   if p.stat().st_size!=archive['bytes'] or h!=archive['sha256']:raise ValueError(p.name)
   with zipfile.ZipFile(p) as z:
    for m in archive['members']:
     if z.read(m['archive_member'])!=(ROOT/m['local_path']).read_bytes():raise ValueError('original member mismatch')
 out={'status':'passed','frozen_archives_registered':len(data['archives']),'copied_source_members_checked':count,
      'original_archives_checked':len(data['archives']) if a.original_dir else 0}
 p=Path(a.output);p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
