"""Read frozen evidence bytes only; do not execute historical research programs."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import hashlib,io,json,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PARENT_SHA='4bd3cf8616760802622f79e1412dcfde35cf90e26c8274175a27d81f23356264'
C5={5,25,125,289,101,169,173,193,293,121,269,1}
def need(ok,msg='exact assertion failed'):
 if not ok:raise ValueError(msg)
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(x):return hashlib.sha256(x).hexdigest()
def readzip(blob):
 z=zipfile.ZipFile(io.BytesIO(blob));need(z.testzip() is None,'input CRC');return z
def load_parent():
 b=(ROOT/'inputs/parent_A382_evidence.zip').read_bytes();need(sha(b)==PARENT_SHA,'direct parent SHA256')
 px='B699-D-i3-20260926-A382-TRUE191-FN19/'
 with readzip(b) as z:
  count=0
  for line in z.read(px+'SHA256SUMS.txt').decode().splitlines():
   h,n=line.split(maxsplit=1);need(sha(z.read(px+n.removeprefix('./')))==h,'parent member digest');count+=1
  for f in ['HANDOFF.md','PROOFS.md']:need(z.read(px+f)==(ROOT/'inputs'/f).read_bytes(),'exact parent excerpt')
  final=json.loads(z.read(px+'certificates/05_projection_delta.json'))
  b=z.read(px+'inputs/parent_A292_evidence.zip')
 need(sha(b)=='3dc28a7e36c358de923834fff204fa7809093b9ce32af55cedc5a849bbc0e4fe','A292 frozen bytes')
 px='B699-D-i3-20260926-A292-TRUE73-SAMEC/'
 with readzip(b) as z:
  gate=json.loads(z.read(px+'certificates/05_shared_c_gate.json'))
  oldledger=json.loads(z.read(px+'certificates/06_projection_delta.json'))
  b=z.read(px+'inputs/parent_A208_evidence.zip')
 need(sha(b)=='0088921f959fa172931a88800b82cb4f3840b7494227ccb6de313905aafc6e78','A208 frozen bytes')
 px='B699-D-i3-20260926-A208-TRUE13-FN31/'
 with readzip(b) as z:
  p0=json.loads(z.read(px+'inputs/parent_frontier_M0.json'))
  p1=json.loads(z.read(px+'inputs/parent_frontier_M1.json'))
  f=json.loads(z.read(px+'certificates/03_same_input_FN31.json'))
  qc=json.loads(z.read(px+'certificates/05_original_Q31_consumer.json'))
 fr={r['A_mod496']:r for r in f['rows']}
 labels={r['a']:r['c_s_mod30'] for r in gate['labelled_s_rows']}
 R=[a for a in p0['surviving_A_residues'] if fr[a%496]['allowed_H'] and (a%496 not in qc['condition_A_mod496'] or (a+1)%336 in qc['positive_power_cycle_mod336']) and a%10416 in labels]
 need(len(R)==45660 and sha(canon(R))==oldledger['stages'][-1]['M0_list_sha256'],'frozen parent projection list')
 need(final['final_M4_count']==246457391625 and final['final_M4']==23924352337200,'current parent ledger')
 return dict(R=R,labels=labels,bad725=set(p1['bad_new_residues']),M0=3031056,M2=6592546800,M4=23924352337200,parent_count=246457391625,parent_manifest_members=count,R_sha256=sha(canon(R)))
