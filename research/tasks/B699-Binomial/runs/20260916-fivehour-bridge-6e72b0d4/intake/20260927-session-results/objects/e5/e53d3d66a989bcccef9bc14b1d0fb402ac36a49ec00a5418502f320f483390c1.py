"""Frozen-byte intake and serialization only. No historical mathematical replay."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import hashlib,json,zipfile,io
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PARENT_SHA='3dc28a7e36c358de923834fff204fa7809093b9ce32af55cedc5a849bbc0e4fe'
C5={5,25,125,289,101,169,173,193,293,121,269,1}
def need(ok,msg='exact assertion failed'):
 if not ok:raise ValueError(msg)
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(x):return hashlib.sha256(x).hexdigest()
def parent():
 blob=(ROOT/'inputs/parent_A292_evidence.zip').read_bytes();need(sha(blob)==PARENT_SHA,'direct parent digest')
 px='B699-D-i3-20260926-A292-TRUE73-SAMEC/'
 with zipfile.ZipFile(io.BytesIO(blob)) as z:
  need(z.testzip() is None,'parent CRC');count=0
  for line in z.read(px+'SHA256SUMS.txt').decode().splitlines():
   h,n=line.split(maxsplit=1);need(sha(z.read(px+n.removeprefix('./')))==h,'parent member digest');count+=1
  for name in ['HANDOFF.md','PROOFS.md']:need((ROOT/'inputs'/name).read_bytes()==z.read(px+name),'exact parent excerpt')
  gate=json.loads(z.read(px+'certificates/05_shared_c_gate.json'))
  ledger=json.loads(z.read(px+'certificates/06_projection_delta.json'))
  nested=z.read(px+'inputs/parent_A208_evidence.zip')
 need(sha(nested)=='0088921f959fa172931a88800b82cb4f3840b7494227ccb6de313905aafc6e78','frozen nested byte digest')
 px='B699-D-i3-20260926-A208-TRUE13-FN31/'
 with zipfile.ZipFile(io.BytesIO(nested)) as z:
  p0=json.loads(z.read(px+'inputs/parent_frontier_M0.json'));p1=json.loads(z.read(px+'inputs/parent_frontier_M1.json'))
  f=json.loads(z.read(px+'certificates/03_same_input_FN31.json'));qc=json.loads(z.read(px+'certificates/05_original_Q31_consumer.json'))
 frows={r['A_mod496']:r for r in f['rows']};labels={r['a']:r['c_s_mod30'] for r in gate['labelled_s_rows']}
 R=[a for a in p0['surviving_A_residues'] if frows[a%496]['allowed_H'] and (a%496 not in qc['condition_A_mod496'] or (a+1)%336 in qc['positive_power_cycle_mod336']) and a%10416 in labels]
 need(len(R)==45660 and sha(canon(R))==ledger['stages'][-1]['M0_list_sha256'],'frozen parent projection reconstruction')
 return dict(R=R,labels=labels,M0=3031056,M2=6592546800,bad725=set(p1['bad_new_residues']),manifest_members=count,ledger=ledger)
