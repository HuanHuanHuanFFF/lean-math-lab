#!/usr/bin/env python3
"""Byte-preserving original archives and Git tree reconstruction, no network/writes to Git."""
from pathlib import Path
import hashlib,zipfile,json
ROOT=Path(__file__).resolve().parents[1]
REFS={
'asymmetric-pade':('022987af3318c2514708317dcfc673e150d27909f4ead98636defacb3a948c6e','7d12093ac24ee51efc45f8aa69629098e64ec550','B699-asymmetric-Pade/'),
'four-index-closure':('c1bf7a69223b04a4fe97e9c2ae0d0eeb23d43aab3016d7d1fa1b8eee5466dc2e','49a4d76bf1c3fa6affd7fbc3ff0d2dfb0604fddd',''),
'seven-index-closure':('77927828f3b1868acc0264f3da15ce6c804f66cfedc8e4f6ea64d399c85a6168','165ca8a23409ae1354b43a24d5255a84600e0e33','')}
def obj(typ,b):return hashlib.sha1(typ.encode()+b' '+str(len(b)).encode()+b'\0'+b).digest()
def tree(d):
 b=b''
 for n,v in sorted(d.items(),key=lambda kv:kv[0]+('/' if isinstance(kv[1],dict) else '')):
  mode='40000' if isinstance(v,dict) else '100644';sha=tree(v) if isinstance(v,dict) else obj('blob',v)
  b+=mode.encode()+b' '+n.encode()+b'\0'+sha
 return obj('tree',b)
def main():
 out=[]
 for name,(sha,tr,strip) in REFS.items():
  p=ROOT/'originals'/f'{name}.zip';raw=p.read_bytes();assert hashlib.sha256(raw).hexdigest()==sha
  d={};count=0
  with zipfile.ZipFile(p) as z:
   assert z.testzip() is None
   for x in z.infolist():
    if x.is_dir() or x.filename.lower().endswith('.zip'):continue
    parts=Path(x.filename.removeprefix(strip)).parts;c=d
    for a in parts[:-1]:c=c.setdefault(a,{})
    c[parts[-1]]=z.read(x);count+=1
  computed=tree(d).hex();assert computed==tr
  out.append(dict(name=name,bytes=len(raw),sha256=sha,non_zip_members=count,git_tree_sha=computed))
 for x in json.loads((ROOT/'results'/'vendor_source_map.json').read_text()):
  assert hashlib.sha256((ROOT/x['destination']).read_bytes()).hexdigest()==x['sha256']
  archive,member=x['source'].split('::')
  with zipfile.ZipFile(ROOT/'originals'/archive) as z:assert z.read(member)==(ROOT/x['destination']).read_bytes()
 result=dict(status='PASS',original_archives=out,total_non_zip_members=sum(x['non_zip_members'] for x in out),
  input_context_sha256='84d2b35b41ce151bde0d0dbdd44cb49104d026aacfa69f7138ea39d99f0826c5',
  PR=7,merged=True,merged_at='2026-09-10T07:29:45Z',
  startup_main='784ec1d26f33fbb303ab0b0c14ac35919f03d902',frozen_source='be57961409919d4675741bbaece9f462153a2a66',
  remote_observation='GitHub connector GET of PR, main branch and each of these three run directories at BOTH commits; delivery tree IDs identical. No Git write, push or PR.',
  tree_rule='Strip documented top directory only; omit nested ZIPs as in accepted Git delivery; files mode 100644. Original ZIP bytes retained separately.')
 (ROOT/'results'/'source_check.json').write_text(json.dumps(result,indent=2));print(json.dumps(dict(status='PASS',text_members=result['total_non_zip_members'],archives=len(out))))
if __name__=='__main__':main()
