"""Frozen bytes/data only. No historical mathematical program is executed."""
from __future__ import annotations
import hashlib,io,json,zipfile,sys
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
PARENT_SHA='9d19060dcb6899fb99897a908aaf8cfaf7ddb82ee23a9447fc3d07264847db3a'
def need(x,msg='exact check failed'):
 if not x:raise ValueError(msg)
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(b):return hashlib.sha256(b).hexdigest()
def read(b,end):
 with zipfile.ZipFile(io.BytesIO(b)) as z:
  ns=[n for n in z.namelist() if n.endswith('/'+end)];need(len(ns)==1,'unique '+end);return z.read(ns[0])
def doc(b,end):return json.loads(read(b,end))
def load():
 b=(ROOT/'inputs/parent_A1090_evidence.zip').read_bytes();need(sha(b)==PARENT_SHA,'direct parent digest')
 with zipfile.ZipFile(io.BytesIO(b)) as z:
  need(z.testzip() is None,'parent CRC');pref=z.namelist()[0].split('/')[0]+'/'
  manifest=z.read(pref+'SHA256SUMS.txt').decode().splitlines()
  for ln in manifest:
   h,f=ln.split(maxsplit=1);need(sha(z.read(pref+f.removeprefix('./')))==h,'parent member '+f)
  for f in ('HANDOFF.md','PROOFS.md'):need(z.read(pref+f)==(ROOT/'inputs'/f).read_bytes(),'parent excerpt')
 current=doc(b,'certificates/05_projection_delta.json');fn11=doc(b,'certificates/04_original_FN11.json')
 b=read(b,'inputs/parent_A882_evidence.zip');need(sha(b)=='afedfff42156dd2cc317dc680f20ace8689909d97753c6e5e20e2fa0640b6c38','A882 bytes')
 old=doc(b,'certificates/06_projection_delta.json');t41=doc(b,'certificates/05_original_FN41.json')
 b=read(b,'inputs/parent_A532_evidence.zip');need(sha(b)=='809890b8d6ab67eab456bb9586baf01a1ad3d433a213222e12695391df34d2d0','A532 bytes');ledger=doc(b,'certificates/06_projection_delta.json')
 b=read(b,'inputs/parent_A382_evidence.zip');need(sha(b)=='4bd3cf8616760802622f79e1412dcfde35cf90e26c8274175a27d81f23356264','A382 bytes')
 b=read(b,'inputs/parent_A292_evidence.zip');need(sha(b)=='3dc28a7e36c358de923834fff204fa7809093b9ce32af55cedc5a849bbc0e4fe','A292 bytes')
 ld=doc(b,'certificates/05_shared_c_gate.json');labels={r['a']:r['c_s_mod30'] for r in ld['labelled_s_rows']};rd=doc(b,'certificates/06_projection_delta.json')
 b=read(b,'inputs/parent_A208_evidence.zip');need(sha(b)=='0088921f959fa172931a88800b82cb4f3840b7494227ccb6de313905aafc6e78','A208 bytes')
 p0=doc(b,'inputs/parent_frontier_M0.json');p1=doc(b,'inputs/parent_frontier_M1.json')
 f=doc(b,'certificates/03_same_input_FN31.json');qc=doc(b,'certificates/05_original_Q31_consumer.json');fs={r['A_mod496']:r for r in f['rows']}
 R=[a for a in p0['surviving_A_residues'] if fs[a%496]['allowed_H'] and (a%496 not in qc['condition_A_mod496'] or (a+1)%336 in qc['positive_power_cycle_mod336']) and a%10416 in labels]
 need(len(R)==45660 and sha(canon(R))==rd['stages'][-1]['M0_list_sha256'],'frozen R')
 need(current['after_shared_FN11_FN41']==255027122709198 and current['M6']==75529180328540400,'current baseline')
 return dict(current=current,currmap={r['k']:r for r in current['rows']},fn11=fn11,rows=ledger['rows'],rowmap={(r[0],r[1],r[2]):r for r in ledger['rows']},R=set(R),bad725=set(p1['bad_new_residues']),labels=labels,roots41={(r['a'],r['q_mod7']):r['roots'] for r in t41['rows']},manifest_members=len(manifest),R_sha=sha(canon(R)))
C5={5,25,125,289,101,169,173,193,293,121,269,1}
def parent_member(A,p):
 if A%3031056 not in p['R'] or A%725 in p['bad725']:return False
 if A%5==4 and ((A+1)%336 not in C5 or A%27 in (9,18)):return False
 r=p['rowmap'].get((A%10416,A%27,A%5))
 if not r or not ((r[-1] if A%191==0 else r[-2])>>(A%19)&1):return False
 row=p['currmap'].get(A%10416)
 if not row:return False
 mask=row['mask11'] if row['not_divisible7'] else row['masks_by_u_a41'][(A//7)%7][A%41]
 return bool(mask>>(A%11)&1)
