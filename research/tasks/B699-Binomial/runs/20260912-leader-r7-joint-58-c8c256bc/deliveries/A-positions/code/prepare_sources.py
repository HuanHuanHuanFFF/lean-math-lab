"""Restore byte-frozen dependencies. Extraction/hash checking is NOT replay."""
from pathlib import Path,PurePosixPath
import hashlib,importlib.util,json,shutil,sys,zipfile
ROOT=Path(__file__).resolve().parents[1]
def sha256(path):
 h=hashlib.sha256()
 with Path(path).open('rb') as f:
  for block in iter(lambda:f.read(1<<20),b''):h.update(block)
 return h.hexdigest()
def load_module(name,path):
 spec=importlib.util.spec_from_file_location(name,path)
 mod=importlib.util.module_from_spec(spec);sys.modules[name]=mod;spec.loader.exec_module(mod);return mod

def restore():
 meta=json.loads((ROOT/'SOURCE_INPUT.json').read_text());archive=ROOT/'adopted/BASELINE_58_FAMILIES.zip'
 if archive.stat().st_size!=meta['baseline_size'] or sha256(archive)!=meta['baseline_sha256']:
  raise ValueError('confirmed58 baseline byte identity mismatch')
 base=ROOT/'baseline';mark=base/'RESTORED_BASELINE_SHA256'
 if not mark.exists() or mark.read_text().strip()!=meta['baseline_sha256']:
  base.mkdir(exist_ok=True)
  with zipfile.ZipFile(archive) as z:
   if sum(i.file_size for i in z.infolist())>60_000_000:raise ValueError('baseline extraction budget exceeded')
   for i in z.infolist():
    p=PurePosixPath(i.filename)
    if p.is_absolute() or '..' in p.parts or ((i.external_attr>>16)&0o170000)==0o120000:raise ValueError('unsafe ZIP member')
    rel=Path(*p.parts[1:]);dest=base/rel
    if i.is_dir():dest.mkdir(parents=True,exist_ok=True);continue
    dest.parent.mkdir(parents=True,exist_ok=True)
    with z.open(i) as f,dest.open('wb') as g:shutil.copyfileobj(f,g,1<<20)
  mark.write_text(meta['baseline_sha256']+'\n')
 # Old resolver enforces hashes and bounded selective extraction of its own inputs.
 frozen=load_module('A58_frozen_resolver',base/'code/source_paths.py')
 return base,frozen.restore()
if __name__=='__main__':
 b,s=restore();print('RESTORED_FROZEN_BYTES_NO_MATHEMATICS_REPLAY',b)
