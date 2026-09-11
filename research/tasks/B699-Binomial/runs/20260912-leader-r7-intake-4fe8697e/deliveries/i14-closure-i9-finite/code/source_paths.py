"""Locate verified, byte-frozen input archives. Extraction is a disposable cache."""
from pathlib import Path, PurePosixPath
import hashlib, json, zipfile
R=Path(__file__).resolve().parents[1]
SPECS={
 'A':('B699-ProA-i14-effective-height-evidence-20260911.zip','B699-ProA-i14-contentG-resume-20260911'),
 'C':('B699-ProC-R2-resumed-results-20260911(1).zip','b699-proc-r2-resumed-20260911'),
}
def digest(path):
 h=hashlib.sha256()
 with Path(path).open('rb') as f:
  for b in iter(lambda:f.read(1<<20),b''):h.update(b)
 return h.hexdigest()
def frozen(which):
 name,top=SPECS[which];archive=R/'adopted/archives'/name
 expected=json.loads((R/'input/SOURCES.json').read_text())[name]
 if digest(archive)!=expected:raise ValueError('Frozen input archive SHA256 mismatch: '+name)
 cache=R/'cache'/('frozen_'+which);target=cache/top;mark=cache/'EXTRACTED_ARCHIVE_SHA256'
 if target.is_dir() and mark.exists() and mark.read_text().strip()==expected:return target
 cache.mkdir(parents=True,exist_ok=True)
 with zipfile.ZipFile(archive) as z:
  if sum(x.file_size for x in z.infolist())>200_000_000:raise ValueError('Unexpected archive expansion')
  for info in z.infolist():
   p=PurePosixPath(info.filename)
   if p.is_absolute() or '..' in p.parts or not p.parts or p.parts[0]!=top:
    raise ValueError('Unsafe or unexpected archive path')
   if ((info.external_attr>>16)&0o170000)==0o120000:raise ValueError('Archive symlinks are unsupported')
  z.extractall(cache)
 mark.write_text(expected+'\n');return target
if __name__=='__main__':
 for key in SPECS:print(key,frozen(key))
