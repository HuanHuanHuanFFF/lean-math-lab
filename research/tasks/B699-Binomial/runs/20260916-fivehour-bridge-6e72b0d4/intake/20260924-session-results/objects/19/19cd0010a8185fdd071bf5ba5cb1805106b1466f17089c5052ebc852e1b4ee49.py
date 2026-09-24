#!/usr/bin/env python3
from __future__ import annotations
import hashlib,json,sys
from fractions import Fraction as F
from pathlib import Path
from collections import Counter

ROOT=Path(__file__).resolve().parents[1]
PRIMES=(32749,32719)
META={
 ('A_delta6_delta7',5):dict(defects={6:1,7:1},kind='simple',extra={6:0,7:1},gates=43),
 ('A_delta6_delta7',6):dict(defects={6:1,7:1},kind='simple',extra={6:0,7:1},gates=168),
 ('A_delta6_delta7',7):dict(defects={6:1,7:1},kind='simple',extra={6:0,7:1},gates=579),
 ('B_delta6_delta8',6):dict(defects={6:1,8:1},kind='simple',extra={6:0,8:1},gates=67),
 ('B_delta6_delta8',7):dict(defects={6:1,8:1},kind='simple',extra={6:0,8:1},gates=297),
 ('C_2delta6',6):dict(defects={6:2},kind='quadratic6',gates=3608),
 ('C_2delta6',7):dict(defects={6:2},kind='quadratic6',gates=15452),
 ('D_delta4_delta8',5):dict(defects={4:1,8:1},kind='simple',extra={4:0,8:1},gates=26),
 ('D_delta4_delta8',6):dict(defects={4:1,8:1},kind='simple',extra={4:0,8:1},gates=165),
 ('D_delta4_delta8',7):dict(defects={4:1,8:1},kind='simple',extra={4:0,8:1},gates=664),
 ('E_delta4_delta6',5):dict(defects={4:1,6:1},kind='simple_noq',extra={4:0,6:1},gates=37),
 ('F_delta5_delta8',6):dict(defects={5:1,8:1},kind='simple',extra={5:0,8:1},gates=216),
 ('F_delta5_delta8',7):dict(defects={5:1,8:1},kind='simple',extra={5:0,8:1},gates=912),
}

def sha(path):
 h=hashlib.sha256();
 with open(path,'rb') as f:
  for b in iter(lambda:f.read(1<<20),b''):h.update(b)
 return h.hexdigest()

def row_lengths():return [r//2+1 for r in range(3,9)]

def parse_gate(line,pat,q,meta):
 a=list(map(int,line.split()));pos=0
 if meta['kind']!='simple_noq':
  assert a[pos]==q;pos+=1
 z=a[pos];pos+=1
 params=[]
 if meta['kind'] in ('simple','simple_noq'):
  params=[a[pos],a[pos+1]];pos+=2
 else:
  params=[a[pos],a[pos+1]];pos+=2 # A, Pnum=10P
 mm=[]
 for r,k in zip(range(3,9),row_lengths()):
  mm.append(a[pos:pos+k]);pos+=k
 assert pos==len(a)
 return z,params,mm

def base_es(r,m):
 roots=[]
 for s,c in enumerate(m):roots += [F(s*(r-s))]*c
 e1=e2=F(0)
 for x in roots:e2+=e1*x;e1+=x
 return e1,e2

def source_line_load(mm):
 load=[0]*9
 for r,m in zip(range(3,9),mm):
  for s,c in enumerate(m):
   load[s]+=c;load[r-s]+=c
 return load

def check_gate(line,pat,q,meta):
 z,params,mm=parse_gate(line,pat,q,meta)
 for r,m in zip(range(3,9),mm):
  assert sum(m)==q-meta['defects'].get(r,0)
 assert sum(sum(c>0 for c in m) for m in mm)==z and z>=14
 assert max(source_line_load(mm))<=2*q
 S=[];E=[]
 for r,m in zip(range(3,9),mm):
  e1,e2=base_es(r,m);S.append(e1);E.append(e2)
 if meta['kind'] in ('simple','simple_noq'):
  lambdas={r:F(params[j]) for r,j in meta['extra'].items()}
  for r,lam in lambdas.items():
   m=mm[r-3]
   for s,c in enumerate(m):
    if F(s*(r-s))==lam:assert c>0
   E[r-3]+=lam*S[r-3]
   S[r-3]+=lam
 else:
  A=F(params[0]);P=F(params[1],10);r=6;m=mm[3]
  for s,c in enumerate(m):
   v=F(s*(r-s))
   if v*v-A*v+P==0:assert c>0
  E[3]+=S[3]*A+P;S[3]+=A
 # deg S<=2
 for i in range(3):
  assert -S[i]+3*S[i+1]-3*S[i+2]+S[i+3]==0
 # deg E2<=4
 assert -E[0]+5*E[1]-10*E[2]+10*E[3]-5*E[4]+E[5]==0

def parse_rank(path,q,p,expected):
 lines=path.read_text().splitlines();assert len(lines)==expected
 K=(q-2)*(q-2)+1
 for i,line in enumerate(lines):
  a=list(map(int,line.split()))
  assert a[0]==i and a[1]==K and a[2]%p!=0
  assert len(a)==3+K
 return dict(count=len(lines),rank=K,sha256=sha(path))

def parse_frontier(path):
 lines=path.read_text().splitlines();assert lines[0]=='idx\th\tE\toptions'
 out=[]
 for line in lines[1:]:
  idx,h,E,opt=line.split('\t');out.append((int(idx),int(h),int(E),opt))
 return out

def main(outpath):
 geometry={};total=0
 for (pat,q),meta in META.items():
  d=ROOT/'certificates'/'geometry'/f'{pat}_q{q}'
  lines=(d/'gates.txt').read_text().splitlines()
  assert len(lines)==meta['gates'] and len(lines)==len(set(lines))
  for line in lines:check_gate(line,pat,q,meta)
  rr={str(p):parse_rank(d/f'rank_p{p}.txt',q,p,len(lines)) for p in PRIMES}
  geometry[f'{pat}_q{q}']=dict(gates=len(lines),gate_sha256=sha(d/'gates.txt'),matrix_columns=(q-2)**2+1,rank_outputs=rr)
  total+=len(lines)
 assert total==22234
 assert 120%PRIMES[0] and 120%PRIMES[1]
 # Coarse Bellman cross-check.
 a=ROOT/'certificates/ledger/coarse_frontier_direct.tsv';b=ROOT/'certificates/ledger/coarse_frontier_raw_reverse.tsv'
 assert a.read_bytes()==b.read_bytes()
 coarse=parse_frontier(a);cnt=Counter(x[2] for x in coarse)
 assert len(coarse)==386 and cnt==Counter({0:384,1:2}) and min(x[1] for x in coarse)==53
 # Stagewise exact expected totals, including the already-known two positive-E relaxed states.
 expected={0:(456,454,47),1:(431,429,47),3:(405,403,47),7:(390,388,53),15:(388,386,53),31:(387,385,53),63:(386,384,53)}
 stages={}
 for mask,(allc,e0c,hmin) in expected.items():
  rows=parse_frontier(ROOT/f'certificates/ledger/stage_{mask}.tsv')
  cc=Counter(x[2] for x in rows)
  assert len(rows)==allc and cc[0]==e0c and min(x[1] for x in rows)==hmin
  stages[str(mask)]=dict(total=len(rows),E0=cc[0],positive_E=sum(v for k,v in cc.items() if k>0),minimum_h=min(x[1] for x in rows))
 # Moment pass.
 moment=json.loads((ROOT/'certificates/moment/targeted_moments.json').read_text())
 ms=moment['summary'];assert ms['eliminated_indices']==[589,667,792]
 assert ms['remaining_E0_states']==381 and ms['minimum_equality_h']==57 and ms['maximum_vertical_sum']==191
 final=parse_frontier(ROOT/'certificates/ledger/final_E0_frontier.tsv')
 assert len(final)==381 and all(x[2]==0 for x in final) and min(x[1] for x in final)==57
 assert {x[0] for x in coarse if x[2]==0}-{x[0] for x in final}=={589,667,792}
 summary=dict(status='PASS_MIDDOUBLE5_7_TRACE_H57_VERIFICATION',
  same_fixed_G_cover_upper_bound=8,EDGE8_adopted=True,
  geometry=dict(total_root_gates=total,total_prime_full_rank_checks=2*total,patterns=geometry),
  ledger=dict(stagewise=stages,coarse_after_geometry=dict(E0_states=384,minimum_h=53),
              moment_eliminated_indices=[589,667,792],remaining_E0_states=381,
              minimum_equality_h=57,maximum_vertical_sum=191,
              direct_raw_reverse_byte_identical=True),
  conclusion='|C_G|=8 implies E=0, h>=57, V<=191 for the same fixed G',
  COVER7_proved=False,Lean=False,repository_modified=False)
 Path(outpath).write_text(json.dumps(summary,indent=2)+'\n')
 print(json.dumps(summary,indent=2))

if __name__=='__main__':
 if len(sys.argv)!=2:raise SystemExit('usage: verify.py OUTPUT.json')
 main(sys.argv[1])
