"""Receiver: no import of generate.py. Ring source, original E/n, explicit power branches."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import argparse,json,math
from pathlib import Path
from collections import defaultdict,Counter
from functools import lru_cache
from intake import ROOT,C5,PARENT_SHA,need,canon,sha,load_parent

def mul(a,b,m=None):
 x,y=a;u,v=b;z=(x*u+3*y*v,x*v+y*u)
 return z if m is None else (z[0]%m,z[1]%m)
def rpow(k,m=None):
 r=(1,0);a=(2,1)
 while k:
  if k&1:r=mul(r,a,m)
  a=mul(a,a,m);k//=2
 return r
@lru_cache(None)
def source(m):
 U,X=2,1;g=rpow(8,2*m);out=[]
 while True:
  out.append((((3*X-1)//2)%m,(U//2)%m))
  U,X=mul((U,X),g,2*m)
  nxt=(((3*X-1)//2)%m,(U//2)%m)
  if nxt==(1,1):return out
  need(len(out)<1000000,'source cap')
def original(d,y,A,H,m):
 v=A*y%m;Q=(d+v)%m;h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
 E=(4*v*H*H-P*Q*Q+1)%m;n=(2*P*Q*H+2)%m
 N=(n*Q*pow(2,-1,m)+H*E)%m
 return dict(H=H,v=v,Q=Q,h=h,P=P,F=d*E%m,N=N,n=n,z=(2*d*H-Q*Q)%m)
@lru_cache(None)
def solutions(m,A,q):
 d,y=source(m)[q%len(source(m))]
 rr=[original(d,y,A,H,m) for H in range(m)]
 return [r for r in rr if r['F']==0]
def sval(d,y,A,B,m=None):
 # Horner form distinct from generator's expanded square target.
 v=A*y;s=(((v+5*d)*v+10*d*d)*v+10*d**3)*v+5*d**4+d*d*B*y
 return s if m is None else s%m

def validate_sources(sc):
 need(sc['affine']==[18817,32592,9408,10864,18817,5432]);need(18817**2-10864*32592==1)
 need(sc['determinant']==1)
 for sm,arr in sc['states'].items():
  m=int(sm);need(arr==[list(t) for t in source(m)],'complete quadratic-ring source');need(sc['periods'][sm]==len(arr))
 for key,arr in sc['power_cycles'].items():
  aa,mm=key.split('_mod');a=int(aa);m=int(mm)
  need(arr==[pow(a,e,m) for e in range(len(arr))] and pow(a,len(arr),m)==1,'full power cycle')
  need(all(pow(a,e,m)!=1 for e in range(1,len(arr))),'power first return')

def validate_quotient(c):
 A=532;m=19;os=source(10108);T=math.lcm(len(os),60)
 need((c['A'],c['modulus'],c['source_period'],c['joint_period'])==(A,m,len(os),T))
 Qs=[q for q in range(T) if q%60 in (25,45)];need([r['q'] for r in c['rows']]==Qs)
 ct=Counter();zeros=[];kept=[]
 for rr,q in zip(c['rows'],Qs):
  D,Y=os[q%len(os)];need((rr['D'],rr['Y'])==(D,Y));need((3*(D-1))%A==0,'quotient integrality')
  b=(3*(D-1)//A)%m;ss=sval(D,Y,A,b,m);need(rr['B']==b and rr['S']==ss,'true quotient/square')
  ct['entry_rows']+=1;zr=[z for z in range(m) if z*z%m==ss]
  ct['zero_square' if ss==0 else ('unit_square' if zr else 'nonsquare')]+=1
  if ss==0:zeros.append(q)
  expected=[]
  # Enumerate original H, not roots of S, then sort by the recovered actual signed root.
  for H in range(m):
   r=original(D%m,Y%m,A,H,m)
   if r['F'] or r['z']**2%m!=ss:continue
   need(r['P']==pow(31,6,m))
   es=[s for s in range(90) if s%10==1 and pow(2,s,m)==r['n']]
   r['compatible_s_mod90']=es;r['kept']=bool(es);expected.append(r)
  expected.sort(key=lambda r:r['z']);need(rr['roots']==expected,'same H/P/c/s quotient receiver')
  if any(r['kept'] for r in expected):ct['kept_rows']+=1;kept.append(q)
  ct['kept_roots']+=sum(r['kept'] for r in expected)
 need(c['counts']==dict(ct) and c['zero_q']==zeros and c['kept_q']==kept)

class Receiver:
 def __init__(self,p):self.p=p
 @lru_cache(None)
 def p3p7(self,k,c,s):
  return tuple(frozenset(r['P'] for r in solutions(m,k%m,0) if r['n']==c*pow(2,s,m)%m) for m in (3,7))
 @lru_cache(None)
 def p31(self,k,c,s5):
  tq=(-k*(k+2)//8)%4
  return frozenset(r['P'] for r in solutions(31,k%31,tq) if r['n']==c*pow(2,s5,31)%31)
 @lru_cache(None)
 def p5(self,a5,c,parity,q3):
  ns={c*pow(2,t,5)%5 for t in range(parity,4,2)}
  return frozenset(r['P'] for q in (range(3) if q3<0 else [q3]) for r in solutions(5,a5,q) if r['n'] in ns)
 @lru_cache(None)
 def p19(self,a19,c,s6,q0):
  ns={c*pow(2,t,19)%19 for t in range(s6,18,6)}
  return frozenset(r['P'] for q in ([0] if q0 else range(5)) for r in solutions(19,a19,q) if r['n'] in ns)
 @lru_cache(None)
 def possibleP19(self,k,a5,c,s,q3,stage):
  R31=self.p31(k,c,s%5)
  need(R31,'adopted old label must have an original31 root')
  if stage==0:return None
  R5=self.p5(a5,c,s%2,q3)
  if q3>=0 and not R5:return frozenset()
  if any(R31) and (stage<3 or any(R5)):return None
  R3,R7=self.p3p7(k,c,s%6)
  out=set()
  if 0 in R31 and 1 in R5:
   # Positive powers: a=6, b=18 implement zero exponent classes correctly.
   for a in range(1,7):
    if pow(31,a,3) in R3 and pow(31,a,7) in R7:out.add(pow(31,a,19))
  if stage>=3 and 0 in R5:
   for b in range(1,19):
    if pow(5,b,31) in R31 and pow(5,b,3) in R3 and pow(5,b,7) in R7:out.add(pow(5,b,19))
  return frozenset(out)
 def accept(self,k,a5,a19,q0,stage,z27):
  return self._accept(k,-1 if stage==0 else a5,a19,q0,stage,z27 if stage>=2 and z27 in (9,18) else -1)
 @lru_cache(None)
 def _accept(self,k,a5,a19,q0,stage,z27):
  for c,s in self.p['labels'][k]:
   q3=((z27//9)*(2 if c==1 else 1))%3 if z27 in (9,18) else -1
   ps=self.p19(a19,c,s%6,q0)
   if not ps:continue
   allowed=self.possibleP19(k,a5,c,s,q3,stage)
   if allowed is None or allowed&ps:return True
  return False
 def amember(self,A,stage):
  p=self.p
  if A%p['M0'] not in self.Rset or A%725 in p['bad725'] or (A%5==4 and ((A+1)%336 not in C5 or A%27 in (9,18))):return False
  return self.accept(A%10416,A%5,A%19,A%191==0,stage,A%27)

def validate_local(c):
 exp=[]
 for m in (3,5,7,19,31):
  for a in range(m):
   for q,(d,y) in enumerate(source(m)):
    exp.append(dict(m=m,a=a,q=q,d=d,y=y,roots=solutions(m,a,q)))
 need(c['rows']==exp,'all local original E/n roots')
 need((c['P31_power_exponent_period'],c['P5_power_exponent_period'],c['same_n_exponent_period'])==(6,18,180))
 # Coverage of every complete exponent, not a bounded exponent scan.
 for base,L,mods in ((31,6,(3,5,7,19)),(5,18,(3,7,19,31))):
  need(all(pow(base,L,m)==1 for m in mods),'power exponent coverage')

def validate_closure(c,t):
 need(c['allowed_n_mod5']==[2,3] and c['original_s_parity']==1 and c['closed'])
 for q,rr in enumerate(c['rows']):
  d,y=source(5)[q];allr=[original(d,y,532,H,5) for H in range(5)]
  need(rr['all_H']==allr and rr['P1_H']==[r['H'] for r in allr if r['P']==1])
  rs=[r for r in allr if r['P']==1 and r['F']==0];need(rr['P1_and_F_roots']==rs)
  need(all(r['n'] not in (2,3) for r in rs),'A532 contradiction')
 need(t['source_mod9']==[list(x) for x in source(9)])
 for q,(d,y) in enumerate(source(9)):need((d-1)//3%3==q%3,'exact quotient modulo3')
 for H in range(3):
  r=original(1,1,0,H,3)
  B=(r['z']**2-2)%3
  c0=3 if r['n']==0 else 1
  need(t['B_by_c'][str(c0)]==B,'same-c true B3')
 a=t['A558'];need(a['forced_q_mod3']==1 and a['A_mod27']==18)
 for H in range(5):
  rr=original(2,3,558,H,5);need(rr['F']==(2*H*H+4*H+1)%5 and rr['F']!=0,'A558 all H')
 need(a['F_mod5_coefficients']==[1,4,2] and a['required_square']==3 and a['closed'])
 os=source(558);need(a['source_mod558_period']==len(os) and a['source_q4']==list(os[4]) and a['source_q8']==list(os[8]))
 for q,v in ((4,a['B_mod3_q4']),(8,a['B_mod3_q8'])):need((os[q][0]-1)%186==0 and (os[q][0]-1)//186%3==v)
 a=t['A576'];need(a['c']==1 and a['s_mod15']==0 and a['forced_q_mod3']==2)
 rr5=solutions(5,576%5,2);rr31=[r for r in solutions(31,576%31,0) if r['n']==1]
 need(a['original_roots_mod5']==rr5 and a['original_roots_mod31']==rr31)
 need(rr5 and all(r['P']==0 for r in rr5));need(rr31 and all(r['P']==24 for r in rr31))
 need(a['positive_P5_cycle_mod31']==[5,25,1] and 24 not in [pow(5,e,31) for e in range(1,4)] and a['closed'])

def validate_projection(c,p,rx):
 need(c['M4']==p['M4'] and c['joint_period_changed'] is False and c['joint_period_enumerated'] is False)
 # Count actual allowed 725 residues first, not the generator's 129/145 constants.
 bins={r:[b for b in range(725) if b%5==r and b not in p['bad725']] for r in range(5)}
 G=defaultdict(int)
 for a in p['R']:
  for z in range(27):
   if z%math.gcd(p['M0'],27)!=a%math.gcd(p['M0'],27):continue
   for b5 in range(5):
    if b5==4 and ((a+1)%336 not in C5 or z in (9,18)):continue
    G[a%10416,z,b5]+=len(bins[b5])
 need(len(c['rows'])==len(G),'fiber group coverage')
 counts=[0]*4;seen=set()
 for row in c['rows']:
  k,z,b5,w,*masks=row;need((k,z,b5) not in seen);seen.add((k,z,b5));need(w==G[k,z,b5],'exact CRT fiber weight')
  for stage in range(4):
   general=sum(1<<a for a in range(19) if rx.accept(k,b5,a,False,stage,z))
   special=sum(1<<a for a in range(19) if rx.accept(k,b5,a,True,stage,z))
   need([general,special]==masks[2*stage:2*stage+2],'root-carrying same P gate mask')
   need(special&~general==0)
   if stage:need(general&~masks[2*stage-2]==0 and special&~masks[2*stage-1]==0,'nested stage')
   counts[stage]+=w*(190*general.bit_count()+special.bit_count())
 need(counts==c['counts'] and counts[0]==p['parent_count'],'same M4 ledger')
 need(c['deltas']==[counts[i-1]-counts[i] for i in range(1,4)] and c['net_deleted']==counts[0]-counts[3])
 mi=next(a for a in range(2,20000,2) if rx.amember(a,3));need(c['minimum_positive_projection']==mi)
 need(c['parent_below_minimum']==[a for a in range(2,mi,2) if rx.amember(a,0)])
 need(c['remaining_examples']==[a for a in range(mi,8000,2) if rx.amember(a,3)][:20])
 return counts

def validate_boundary(c):
 A=c['A'];q=c['q_offset'];M=c['M'];need((A,q,M,c['same_c'],c['s_mod90'])==(532,285,12369,1,51))
 U,X=rpow(8*q+1);need(U%2==0 and (3*X-1)%2==0);d=(3*X-1)//2;y=U//2
 need(3*(d-1)%A==0);B=3*(d-1)//A;loc=c['local'];H=loc['H']
 rr=original(d,y,A,H,M);need(loc==dict(d=d%M,y=y%M,B=B%M,S=sval(d,y,A,B,M),**rr))
 need(rr['F']==0 and rr['z']**2%M==loc['S'] and rr['P']==pow(31,6,M) and rr['n']==pow(2,51,M))
 for sm,h in c['H_residues'].items():need(H%int(sm)==h)
 per=len(source(A*M));need(per==c['source_period_mod_A_times_M'] and c['q_step']%per==0 and c['q_step']%60==0)
 sm=c['sample_hex'];need(int(sm['d'],16)==d and int(sm['y'],16)==y and int(sm['B'],16)==B)
 S=sval(d,y,A,B);lo=int(sm['floor_sqrt'],16)
 need(int(sm['S'],16)==S and lo*lo<S<(lo+1)**2)
 need(int(sm['gap_above'],16)==S-lo*lo and int(sm['gap_below'],16)==(lo+1)**2-S)

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--certdir',type=Path,default=ROOT/'certificates');ap.add_argument('--skip-projection',action='store_true',help='for local negative tests only');args=ap.parse_args()
 p=load_parent();rx=Receiver(p);rx.Rset=set(p['R'])
 need(all(c==1 for c,s in p['labels'][558%10416]),'A558 adopted c label')
 need(all(c==1 and s%15==0 for c,s in p['labels'][576%10416]),'A576 adopted c/s labels')
 def rd(n):return json.loads((args.certdir/n).read_text())
 validate_sources(rd('01_source_cycles.json'));validate_quotient(rd('02_true19_quotient.json'))
 validate_closure(rd('03_A532_closure.json'),rd('05_TRUE3_A558_A576.json'));validate_local(rd('04_original_local_tables.json'))
 if not args.skip_projection:
  counts=validate_projection(rd('06_projection_delta.json'),p,rx);print('PROJECTION',counts)
 validate_boundary(rd('07_finite_boundary.json'))
 nx=rd('08_next_A882.json');need(nx['A']==882 and rx.amember(882,3));need(nx['parent_labels_c_s_mod30']==p['labels'][882%10416]);need(nx['source_modulus_for_actual_B_mod7']==2058 and nx['unreduced_safe_modulus']==6174)
 need(nx['same_c']==1 and nx['s_mod5']==0 and nx['q_mod12']==7 and nx['q_mod84']==7);need(nx['source49']==[list(x) for x in source(49)] and nx['source49_d1']==[0]);need(all(c==1 and s%5==0 for c,s in nx['parent_labels_c_s_mod30']))
 prov=rd('09_source_adoption.json');need(prov['parent_sha256']==PARENT_SHA and prov['parent_R_sha256']==p['R_sha256'] and prov['parent_M4_count']==p['parent_count'])
 need(prov['overview_sha256']==sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()))
 print('VERIFY PASS: exact local roots, original-power branches, true quotients, full source periods, finite boundary; '+('projection skipped for negative-test mode' if args.skip_projection else 'complete compressed projection independently received'))
if __name__=='__main__':main()
