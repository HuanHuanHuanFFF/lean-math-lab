"""Frozen inputs only. Does not execute any historical mathematics program."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import hashlib,io,json,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PARENT_SHA='809890b8d6ab67eab456bb9586baf01a1ad3d433a213222e12695391df34d2d0'
C5={5,25,125,289,101,169,173,193,293,121,269,1}
def need(ok,msg='exact check failed'):
 if not ok: raise ValueError(msg)
def canon(obj):return (json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(b):return hashlib.sha256(b).hexdigest()
def getzip(blob):
 z=zipfile.ZipFile(io.BytesIO(blob));need(z.testzip() is None,'input CRC');return z
def load_parent():
 blob=(ROOT/'inputs/parent_A532_evidence.zip').read_bytes();need(sha(blob)==PARENT_SHA,'parent bytes')
 pref='B699-D-i3-20260926-A532-TRUE19-SAMEP/'
 with getzip(blob) as z:
  n=0
  for line in z.read(pref+'SHA256SUMS.txt').decode().splitlines():
   h,f=line.split(maxsplit=1);need(sha(z.read(pref+f.removeprefix('./')))==h,'parent member digest');n+=1
  for f in ['HANDOFF.md','PROOFS.md']:need(z.read(pref+f)==(ROOT/'inputs'/f).read_bytes(),'parent excerpt exactness')
  ledger=json.loads(z.read(pref+'certificates/06_projection_delta.json'))
  blob=z.read(pref+'inputs/parent_A382_evidence.zip')
 need(sha(blob)=='4bd3cf8616760802622f79e1412dcfde35cf90e26c8274175a27d81f23356264','A382 frozen bytes')
 with getzip(blob) as z:blob=z.read('B699-D-i3-20260926-A382-TRUE191-FN19/inputs/parent_A292_evidence.zip')
 need(sha(blob)=='3dc28a7e36c358de923834fff204fa7809093b9ce32af55cedc5a849bbc0e4fe','A292 frozen bytes')
 pref='B699-D-i3-20260926-A292-TRUE73-SAMEC/'
 with getzip(blob) as z:
  lab=json.loads(z.read(pref+'certificates/05_shared_c_gate.json'))
  rd=json.loads(z.read(pref+'certificates/06_projection_delta.json'))
  blob=z.read(pref+'inputs/parent_A208_evidence.zip')
 need(sha(blob)=='0088921f959fa172931a88800b82cb4f3840b7494227ccb6de313905aafc6e78','A208 frozen bytes')
 pref='B699-D-i3-20260926-A208-TRUE13-FN31/'
 with getzip(blob) as z:
  p0=json.loads(z.read(pref+'inputs/parent_frontier_M0.json'));p1=json.loads(z.read(pref+'inputs/parent_frontier_M1.json'))
  f=json.loads(z.read(pref+'certificates/03_same_input_FN31.json'));qc=json.loads(z.read(pref+'certificates/05_original_Q31_consumer.json'))
 fs={r['A_mod496']:r for r in f['rows']};labels={r['a']:r['c_s_mod30'] for r in lab['labelled_s_rows']}
 R=[a for a in p0['surviving_A_residues'] if fs[a%496]['allowed_H'] and (a%496 not in qc['condition_A_mod496'] or (a+1)%336 in qc['positive_power_cycle_mod336']) and a%10416 in labels]
 need(len(R)==45660 and sha(canon(R))==rd['stages'][-1]['M0_list_sha256'],'frozen M0 membership list')
 need(ledger['counts'][-1]==156343334874 and ledger['M4']==23924352337200,'direct parent frontier')
 rows=ledger['rows'];bykey={(r[0],r[1],r[2]):r for r in rows}
 return dict(ledger=ledger,rows=rows,bykey=bykey,R=set(R),labels=labels,bad725=set(p1['bad_new_residues']),M0=3031056,M4=23924352337200,count=156343334874,manifest_members=n,R_sha256=sha(canon(R)))
def parent_member(A,p):
 if A%p['M0'] not in p['R'] or A%725 in p['bad725']:return False
 if A%5==4 and ((A+1)%336 not in C5 or A%27 in (9,18)):return False
 r=p['bykey'].get((A%10416,A%27,A%5))
 return bool(r and ((r[-1] if A%191==0 else r[-2])>>(A%19))&1)
