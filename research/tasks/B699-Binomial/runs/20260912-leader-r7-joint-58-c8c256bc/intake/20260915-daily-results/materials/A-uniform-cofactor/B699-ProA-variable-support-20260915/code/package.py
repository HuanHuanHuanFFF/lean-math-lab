"""Package exactly this run, retaining the adopted input once; never execute it."""
from pathlib import Path
import hashlib, json, zipfile, argparse
ROOT=Path(__file__).resolve().parents[1]

def sha(path:Path)->str:
 h=hashlib.sha256()
 with path.open('rb') as f:
  for block in iter(lambda:f.read(1<<20),b''):h.update(block)
 return h.hexdigest()

def main():
 ap=argparse.ArgumentParser();ap.add_argument('output',type=Path);args=ap.parse_args()
 allowed_dirs={'code','evidence','logs','notes','sources','inputs','discovery'}
 files=[]
 for p in ROOT.rglob('*'):
  rel=p.relative_to(ROOT)
  if not p.is_file() or '__pycache__' in rel.parts or p.suffix=='.pyc':continue
  if len(rel.parts)>1 and rel.parts[0] not in allowed_dirs:continue
  if rel.as_posix()=='MANIFEST.json':continue
  if len(rel.parts)==1 and p.suffix not in {'.md','.json'}:continue
  files.append(p)
 files.sort(key=lambda p:p.relative_to(ROOT).as_posix())
 manifest={'schema':'sha256-data-members-v1','root':ROOT.name,
           'note':'Manifest does not hash itself. Logs are original-run records; a clean replay may rewrite its own copied logs.',
           'files':[{'path':p.relative_to(ROOT).as_posix(),'bytes':p.stat().st_size,'sha256':sha(p)} for p in files]}
 mp=ROOT/'MANIFEST.json';mp.write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n')
 with zipfile.ZipFile(args.output,'w',allowZip64=True) as z:
  for p in files+[mp]:
   compression=zipfile.ZIP_STORED if p.suffix=='.zip' else zipfile.ZIP_DEFLATED
   z.write(p,arcname=ROOT.name+'/'+p.relative_to(ROOT).as_posix(),compress_type=compression,compresslevel=None if compression==zipfile.ZIP_STORED else 6)
 with zipfile.ZipFile(args.output) as z:
  bad=z.testzip()
  if bad:raise RuntimeError('CRC failure: '+bad)
 print(json.dumps({'archive':str(args.output),'bytes':args.output.stat().st_size,'members':len(files)+1,
                   'manifest_data_members':len(files),'sha256':sha(args.output)}))
if __name__=='__main__':main()
