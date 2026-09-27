"""Read only frozen inputs. No historical research code is executed."""
from __future__ import annotations
import hashlib,io,json,zipfile,sys
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
PARENT_SHA='afedfff42156dd2cc317dc680f20ace8689909d97753c6e5e20e2fa0640b6c38'
def need(ok,msg='exact check failed'):
 if not ok:raise ValueError(msg)
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(x):return hashlib.sha256(x).hexdigest()
def read(blob,end):
 with zipfile.ZipFile(io.BytesIO(blob)) as z:
  ns=[n for n in z.namelist() if n.endswith('/'+end)];need(len(ns)==1,'unique member '+end)
  return z.read(ns[0])
def doc(blob,end):return json.loads(read(blob,end))
def load():
 b=(ROOT/'inputs/parent_A882_evidence.zip').read_bytes();need(sha(b)==PARENT_SHA,'parent zip hash')
 with zipfile.ZipFile(io.BytesIO(b)) as z:
  need(z.testzip() is None,'parent CRC');pref='B699-D-i3-20260926-A882-TRUE7-FN41/'
  manifest=z.read(pref+'SHA256SUMS.txt').decode().splitlines()
  for line in manifest:
   h,f=line.split(maxsplit=1);need(sha(z.read(pref+f.removeprefix('./')))==h,'parent digest '+f)
  for f in ['HANDOFF.md','PROOFS.md']:
   need(z.read(pref+f)==(ROOT/'inputs'/f).read_bytes(),'exact parent excerpt')
 old=doc(b,'certificates/06_projection_delta.json');t41=doc(b,'certificates/05_original_FN41.json')
 b=read(b,'inputs/parent_A532_evidence.zip');need(sha(b)=='809890b8d6ab67eab456bb9586baf01a1ad3d433a213222e12695391df34d2d0','A532 bytes')
 ledger=doc(b,'certificates/06_projection_delta.json')
 b=read(b,'inputs/parent_A382_evidence.zip');need(sha(b)=='4bd3cf8616760802622f79e1412dcfde35cf90e26c8274175a27d81f23356264','A382 bytes')
 b=read(b,'inputs/parent_A292_evidence.zip');need(sha(b)=='3dc28a7e36c358de923834fff204fa7809093b9ce32af55cedc5a849bbc0e4fe','A292 bytes')
 ld=doc(b,'certificates/05_shared_c_gate.json');labels={r['a']:r['c_s_mod30'] for r in ld['labelled_s_rows']}
 rd=doc(b,'certificates/06_projection_delta.json')
 b=read(b,'inputs/parent_A208_evidence.zip');need(sha(b)=='0088921f959fa172931a88800b82cb4f3840b7494227ccb6de313905aafc6e78','A208 bytes')
 p0=doc(b,'inputs/parent_frontier_M0.json');p1=doc(b,'inputs/parent_frontier_M1.json')
 f=doc(b,'certificates/03_same_input_FN31.json');qc=doc(b,'certificates/05_original_Q31_consumer.json')
 fs={r['A_mod496']:r for r in f['rows']}
 R=[a for a in p0['surviving_A_residues'] if fs[a%496]['allowed_H'] and (a%496 not in qc['condition_A_mod496'] or (a+1)%336 in qc['positive_power_cycle_mod336']) and a%10416 in labels]
 need(len(R)==45660 and sha(canon(R))==rd['stages'][-1]['M0_list_sha256'],'adopted M0 membership')
 need(old['final_count']==33982738911438 and old['new_period']==6866289120776400,'direct parent frontier')
 return dict(old=old,rows=ledger['rows'],rowmap={(r[0],r[1],r[2]):r for r in ledger['rows']},R=set(R),bad725=set(p1['bad_new_residues']),labels=labels,
 masks41={r['k']:r['allowed_A41_masks_by_Aover7_mod7'] for r in old['mask_rows']},
 roots41={(r['a'],r['q_mod7']):r['roots'] for r in t41['rows']},manifest_members=len(manifest),R_sha=sha(canon(R)))
C5={5,25,125,289,101,169,173,193,293,121,269,1}
def member(A,p):
 if A%3031056 not in p['R'] or A%725 in p['bad725']:return False
 if A%5==4 and ((A+1)%336 not in C5 or A%27 in (9,18)):return False
 r=p['rowmap'].get((A%10416,A%27,A%5))
 if not r or not ((r[-1] if A%191==0 else r[-2])>>(A%19)&1):return False
 return A%7!=0 or bool(p['masks41'][A%10416][(A//7)%7]>>(A%41)&1)
