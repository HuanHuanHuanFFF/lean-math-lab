"""Verify all frozen non-replay files, detecting both omissions and additions."""
from pathlib import Path
import hashlib,json,sys
ROOT=Path(__file__).resolve().parents[1]
def static_files():
 return sorted(p for p in ROOT.rglob('*') if p.is_file() and p.name!='MANIFEST.json'
               and '__pycache__' not in p.parts and p.relative_to(ROOT).parts[0]!='replay')
def snapshot():
 return {str(p.relative_to(ROOT)):{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in static_files()}
def main():
 if len(sys.argv)>1 and sys.argv[1]=='--write':
  data={'schema':'b699-r8-content-evidence-1','excluded':['MANIFEST.json','replay/**','**/__pycache__/**'],
        'files':snapshot()}
  (ROOT/'MANIFEST.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
 else:
  expected=json.loads((ROOT/'MANIFEST.json').read_text())['files'];actual=snapshot()
  if actual!=expected:
   changes=sorted(set(actual)^set(expected))+[k for k in set(actual)&set(expected) if actual[k]!=expected[k]]
   raise SystemExit('Frozen manifest mismatch: '+', '.join(changes[:12]))
 print(json.dumps({'status':'passed','frozen_files':len(snapshot())}))
if __name__=='__main__':main()
