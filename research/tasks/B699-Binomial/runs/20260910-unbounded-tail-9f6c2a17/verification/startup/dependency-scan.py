import pathlib,re,json,subprocess,datetime
repo=pathlib.Path.cwd(); pkg=pathlib.Path(r'D:\CodingProject\Math\.lake\packages')
pins=json.loads((repo/'lake-manifest.json').read_text())['packages']
roots=[pkg/p['name'] for p in pins]; seen={}; missing=[]
def visit(mod):
 if mod in seen: return
 rel=pathlib.Path(*mod.split('.'))
 for root in roots:
  src=root/(str(rel)+'.lean')
  if src.exists(): break
 else:
  seen[mod]={'builtin_or_unresolved':True};return
 out=root/'.lake/build/lib/lean'/rel.with_suffix('.olean')
 seen[mod]={'source':str(src),'olean_exists':out.exists()}
 if not out.exists():missing.append(mod)
 text=src.read_text(encoding='utf-8-sig')
 text=re.sub(r'/\-.*?\-/','',text,flags=re.S)
 for line in text.splitlines():
  m=re.match(r'^\s*(?:(?:public|private)\s+)?import\s+(.+)',line)
  if m:
   for name in m[1].split('--')[0].split(): visit(name)
visit('Mathlib.NumberTheory.Chebyshev')
data={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'modules_scanned':len(seen),'missing_olean_count':len(missing),'missing':missing,'modules':seen,'scope':'static import scan; not Lean acceptance'}
(repo/'research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17/verification/startup/chebyshev-dependency-scan.json').write_text(json.dumps(data,indent=2),encoding='utf8')
print(json.dumps({k:v for k,v in data.items() if k not in ['modules','missing']}))
print('Missing sample:',missing[:12])
