#!/usr/bin/env python3
"""Read public, pinned source files only. Does not install or build anything."""
import concurrent.futures, hashlib, json, time, urllib.request
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
M='0df444a360eaa60ab8c11dca51a86af692955474'
L='819816b2e0a3bf405af45ae5c7af2491d8f5bee6'
SPECS=[
('mathlib4',M,'Mathlib/Data/Nat/Prime/Defs.lean','5a4bb9cd22784d65a0ade53b88c3641f38c19f85'),
('mathlib4',M,'Mathlib/Data/Nat/Prime/Basic.lean','e059d0ae408fdf5dcf90e34afbcc397a2f880a9b'),
('mathlib4',M,'Mathlib/Algebra/Prime/Defs.lean','dd31ae97589115fccd379917b209e2132836ed06'),
('mathlib4',M,'Mathlib/Algebra/Group/Irreducible/Defs.lean','000241400ae3f3d294a071708f7026cc7f7da2f8'),
('mathlib4',M,'Mathlib/Algebra/Group/Nat/Units.lean','85297dcecd5c0e8bd7d1b302b3bc64c0b91e0043'),
('mathlib4',M,'Mathlib/Algebra/Group/Units/Defs.lean',None),
('mathlib4',M,'Mathlib/Algebra/Ring/Parity.lean',None),
('mathlib4',M,'Mathlib/Algebra/GroupWithZero/Associated.lean',None),
('mathlib4',M,'lean-toolchain',None),
('mathlib4',M,'LICENSE',None),
('lean4',L,'src/Init/Data/Nat/Basic.lean','88cfc9ace257e1d79efaf89815fd7df94f63e03b'),
('lean4',L,'src/Lean/Meta/WHNF.lean','f31a765ed75b6fbe3ae881a93afdf3152f18a53f'),
('lean4',L,'src/kernel/type_checker.cpp','0fae62c2c1a52390cabaa047a3671c77f713bd50'),
('lean4',L,'src/Lean/Elab/App.lean',None),
('lean4',L,'src/Init/Prelude.lean',None),
('lean4',L,'LICENSE',None),
]
def fetch(spec):
 repo,rev,path,expected=spec
 owner='leanprover-community' if repo=='mathlib4' else 'leanprover'
 url=f'https://raw.githubusercontent.com/{owner}/{repo}/{rev}/{path}'
 out=ROOT/'sources/upstream'/repo/path
 r={'repository':f'{owner}/{repo}','ref':rev,'path':path,'url':url,'local_file':str(out.relative_to(ROOT)),'expected_git_blob_sha1_from_connector':expected}
 try:
  req=urllib.request.Request(url,headers={'User-Agent':'B699-read-only-source-audit'})
  with urllib.request.urlopen(req,timeout=18) as response:
   data=response.read(); r.update(http_status=response.status,final_url=response.url)
  data.decode('utf-8')
  blob=hashlib.sha1(b'blob '+str(len(data)).encode()+b'\0'+data).hexdigest()
  r.update(bytes=len(data),sha256=hashlib.sha256(data).hexdigest(),git_blob_sha1=blob,status='fetched')
  r['connector_blob_matches']=None if expected is None else blob==expected
  if expected and blob!=expected: raise ValueError('fetched bytes do not match connector blob SHA')
  out.parent.mkdir(parents=True,exist_ok=True); out.write_bytes(data)
 except Exception as exc:
  r.update(status='failed',error=f'{type(exc).__name__}: {exc}')
 return r
if __name__=='__main__':
 with concurrent.futures.ThreadPoolExecutor(max_workers=6) as pool:
  records=list(pool.map(fetch,SPECS))
 (ROOT/'sources/SOURCE-LOCK.json').write_text(json.dumps(records,ensure_ascii=False,indent=2)+'\n')
 for r in records: print(r['status'],r['path'],r.get('error',''),r.get('bytes'))
