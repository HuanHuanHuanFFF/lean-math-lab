"""Separate exact receiver. Does not import the generator or execute parent research."""
from __future__ import annotations
import argparse,hashlib,json,math,sys,zipfile
from collections import defaultdict
from functools import lru_cache
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
PARENT_SHA='d5b1ca55c27b10b21bf3032821a822b2ee9d561c86f901438a5cb70ac9522cf1'
def must(x,msg):
 if not x:raise ValueError(msg)
def serial(x):return (json.dumps(x,sort_keys=True,ensure_ascii=False,indent=2)+'\n').encode()
def digest(b):return hashlib.sha256(b).hexdigest()
def ringmul(x,y,m):return ((x[0]*y[0]+3*x[1]*y[1])%m,(x[0]*y[1]+x[1]*y[0])%m)
def ringpower(n,m):
 a=(2,1);v=(1,0)
 while n:
  if n%2:v=ringmul(v,a,m)
  a=ringmul(a,a,m);n//=2
 return v
@lru_cache(None)
def state(q,m):
 u,x=ringpower(8*q+1,2*m)
 return ((3*x-1)//2%m,u//2%m)
def cycle(m):
 # Walk the quadratic-integer source, not the generator's affine recurrence.
 u,x=2,1;gamma=ringpower(8,2*m);rows=[]
 while True:
  rows.append([(3*x-1)//2%m,u//2%m]);u,x=ringmul((u,x),gamma,2*m)
  if ((3*x-1)//2%m,u//2%m)==(1,1):return rows
  must(len(rows)<2000000,'receiver period cap')
@lru_cache(None)
def solutions(m,a,q):
 d,y=state(q,m);v=a*y%m;Q=(d+v)%m;ans=[]
 for H in range(m):
  hs=[(4*H+Q)*pow(d,-1,m)%m] if math.gcd(d,m)==1 else range(m)
  for h in hs:
   if (h*d-4*H-Q)%m:continue
   P=(Q+h*v)%m
   if (4*v*H*H-P*Q*Q+1)%m==0:ans.append([H,h,P,Q,(2*P*Q*H+2)%m])
 return sorted(ans)
def Svalue(A,d,y,B,m):
 v=A*y
 # Horner ordering differs from generation.
 return (((((v+5*d)*v+10*d*d)*v+10*d**3)*v+5*d**4)+d*d*B*y)%m

def load_inputs():
 p=ROOT/'inputs/parent_evidence.zip';must(digest(p.read_bytes())==PARENT_SHA,'parent raw ZIP digest')
 with zipfile.ZipFile(p) as z:
  def get(s):
   names=[n for n in z.namelist() if n.endswith('/'+s)];must(len(names)==1,'frozen member unique')
   return z.read(names[0])
  must(z.testzip() is None,'parent CRC')
  manifest_name=next(n for n in z.namelist() if n.endswith('/SHA256SUMS.txt'))
  prefix=manifest_name.rsplit('/',1)[0]+'/'
  for line in z.read(manifest_name).decode().splitlines():
   if not line.strip():continue
   hh,fn=line.split(None,1);fn=fn.strip().removeprefix('./')
   must(digest(z.read(prefix+fn))==hh,'frozen parent member hash '+fn)
  must((ROOT/'inputs/HANDOFF.md').read_bytes()==get('HANDOFF.md'),'parent HANDOFF exact copy')
  must((ROOT/'inputs/PROOFS.md').read_bytes()==get('PROOFS.md'),'parent PROOFS exact copy')
  must((ROOT/'inputs/OVERVIEW-2026-10-02.md.txt').read_bytes()==get('inputs/OVERVIEW-2026-10-02.md.txt'),'same user Overview')
  snap=get('inputs/parent_snapshot.json');de=get('certificates/03_projection_delta.json')
  return json.loads(snap),json.loads(de),dict(parent_sha256=PARENT_SHA,snapshot_sha256=digest(snap),parent_delta_sha256=digest(de),overview_sha256=digest((ROOT/'inputs/OVERVIEW-2026-10-02.md.txt').read_bytes()),historical_math_replayed=False)

def polynomial_identities():
 # Exact sparse polynomial operations in d,v,H,h,B,y over Z.
 nv=6
 def const(a):return {(0,)*nv:a} if a else {}
 def var(i):
  e=[0]*nv;e[i]=1;return {tuple(e):1}
 def add(*ps):
  out={}
  for p in ps:
   for e,c in p.items():out[e]=out.get(e,0)+c
  return {e:c for e,c in out.items() if c}
 def scale(p,k):return {e:c*k for e,c in p.items() if c*k}
 def mul(*ps):
  out=const(1)
  for p in ps:
   new={}
   for a,c in out.items():
    for b,d in p.items():
     e=tuple(x+y for x,y in zip(a,b));new[e]=new.get(e,0)+c*d
   out={e:c for e,c in new.items() if c}
  return out
 def pw(p,n):return mul(*([p]*n))
 d,v,H,h,B,y=[var(i) for i in range(nv)];Q=add(d,v);P=add(Q,mul(h,v))
 L=add(mul(h,d),scale(H,-4),scale(Q,-1))
 E=add(scale(mul(v,pw(H,2)),4),scale(mul(P,pw(Q,2)),-1),const(1))
 F=add(scale(mul(d,v,pw(H,2)),4),scale(mul(v,pw(Q,2),H),-4),scale(pw(Q,4),-1),d)
 N=add(scale(mul(v,pw(H,3)),4),H,Q);n=add(scale(mul(P,Q,H),2),const(2));Z=add(scale(mul(d,H),2),scale(pw(Q,2),-1))
 SS=add(pw(v,4),scale(mul(d,pw(v,3)),5),scale(mul(pw(d,2),pw(v,2)),10),scale(mul(pw(d,3),v),10),scale(pw(d,4),5),mul(pw(d,2),B,y))
 identities=[add(F,scale(mul(d,E),-1),scale(mul(v,pw(Q,2),L),-1)),add(scale(N,2),scale(mul(n,Q),-1),scale(mul(H,E),-2)),add(mul(v,pw(Z,2)),scale(pw(Q,5),-1),pw(d,2),scale(mul(d,F),-1)),add(mul(v,SS),scale(pw(Q,5),-1),pw(d,2),scale(mul(pw(d,2),add(mul(v,B,y),scale(pw(d,3),-1),const(1))),-1))]
 must(all(not f for f in identities),'original four polynomial identities')

def check_quotient(c):
 A=4090;m=102250;o=cycle(m);must(len(o)==1275==c['source_period'],'full source first return')
 must(digest(serial(o))==c['source_period_sha256'],'source cycle hash');must(c['source_modulus']==m and c['joint_period']==5100,'joint coverage')
 must(len(c['rows'])==5,'all five r classes')
 kept=[]
 for r,row in enumerate(c['rows']):
  q=765+1020*r;D,Y=o[q%len(o)];must((D-1)%A==0,'exact integer quotient')
  B=3*((D-1)//A)%25;d,y=D%25,Y%25;sv=Svalue(A,d,y,B,25)
  for key,val in dict(r_mod5=r,q_mod5100=q%5100,D=D,Y=Y,d_mod25=d,y_mod25=y,B_mod25=B,S_mod25=sv).items():must(row[key]==val,'quotient '+key)
  zz=[z for z in range(25) if z*z%25==sv];must(row['square_roots_mod25']==zz,'zero and other square roots')
  if zz:kept.append(q%5100)
  out=[]
  for H,h,P,Q,n in solutions(25,A%25,q):
   z=(2*d*H-Q*Q)%25
   out.append(dict(H=H,h=h,P=P,Q=Q,n=n,Z=z,S_agrees=z*z%25==sv,compatible_s_mod60=[s for s in range(60) if s%30==24 and pow(2,s,25)==n]))
  must(row['original_E_roots']==out,'complete original E roots including nonunits')
  must(all(not r['compatible_s_mod60'] for r in out),'all original n roots rejected')
 must(kept==c['square_only_surviving_q_mod5100']==[2805],'square-only boundary')
 must(c['whole_branch_closed'] is True and c['allowed_n_mod25']==[9,16],'closure statement')

def check_universal(c):
 o=cycle(25);must(c['source_mod25']==o and len(o)==15,'source25 full period')
 for j,(d,y) in enumerate(o):
  if j%3==0:must((d,y)==((1+20*j)%25,(1+10*j)%25),'universal divided residue')
 u,x=1,0
 for _ in range(24):u,x=2*u+3*x,u+2*x
 must(c['gamma24']==[u,x] and c['gamma24_mod25']==[1,20],'exact binomial leading coefficient')
 table=[]
 for cc in (1,3):
  for e in range(4):
   n=cc*pow(2,e,5)%5;H=next(H for H in range(5) if (2*H+2)%5==n);b=(2*H-1)**2%5
   table.append(dict(c=cc,s_mod4=e,n_mod5=n,H_mod5=H,B_mod5=b,B_valuation_if_frozen_SPLIT5=1 if b==0 else 0))
 must(c['shared_table']==table,'shared c/s/B table')
 diag=[]
 for r in range(6):
  for w in (1,2,3,4,6,7):
   q=3*5**r*w;m=5**(r+2);d,y=state(q,m);must((d-1)%5**(r+1)==0,'diagnostic valuation')
   lead=((d-1)//5**(r+1))%5;must(lead==4*(q//5**r)%5,'diagnostic unit')
   diag.append([q,r+1,lead,d,m])
 must(c['all_exponent_normalization_diagnostics_only']==diag,'finite diagnostic exact list')

def check_local(c):
 for p in (11,19):
  must(c['source_states'][str(p)]==[list(state(j,p)) for j in range(5)],'local source states')
  must(cycle(p)==[list(state(j,p)) for j in range(5)],'period5 complete')
  exp=[[a,j,solutions(p,a,j)] for a in range(p) for j in range(5)]
  must(c['rows'][str(p)]==exp,'complete original local roots')
 must(c['full_same_exponent_period']==180,'same exponent coverage')

@lru_cache(None)
def accepted(a11,b19,u,c,s0):
 for e in range(180):
  if e%30!=s0:continue
  js=range(5) if u<0 else [(3*u*(c*pow(2,e,5)-3)**2)%5]
  for j in js:
   n1=c*pow(2,e,11)%11;n2=c*pow(2,e,19)%19
   if any(r[-1]==n1 for r in solutions(11,a11,j)) and any(r[-1]==n2 for r in solutions(19,b19,j)):return True
 return False

class Audit:
 def __init__(self,p,delta):
  self.p=p;self.delta=delta;self.labels={int(k):v for k,v in p['labels'].items()};self.R=set(p['R']);self.bad=set(p['bad725']);self.cm={r['k']:r for r in p['base11_projection']['rows']};self.xm={r['k']:r['masks41_to11'] for r in p['parent_projection']['source743_masks']};self.rows={(r[0],r[1],r[2]):r for r in p['ancestor_fibers']}
 @lru_cache(None)
 def mask(self,k,b,u,old):
  return sum(1<<a for a in range(11) if any((not old or cc!=1 or s%6==0) and accepted(a,b,u,cc,s) for cc,s in self.labels[k]))
 @lru_cache(None)
 def fg(self,k,mask):
  row=self.cm[k]
  if row['not_divisible7']:
   f=7*sum(1 for a in range(11) for a41 in range(41) if row['mask11']>>a&1 and mask>>a&1)
   g=7*sum(1 for a in range(11) for a41 in range(41) if self.xm[k][a41]>>a&1 and mask>>a&1)
  else:
   f=sum(1 for u in range(7) for b in range(41) for a in range(11) if row['masks_by_u_a41'][u][b]>>a&1 and mask>>a&1)
   g=sum(1 for b in range(41) for a in range(11) if row['masks_by_u_a41'][0][b]>>a&1 and mask>>a&1)
  return f,g
 def prior(self,A,old=True):
  if A%3031056 not in self.R or A%725 in self.bad:return False
  if A%5==4 and ((A+1)%336 not in {5,25,125,289,101,169,173,193,293,121,269,1} or A%27 in (9,18)):return False
  r=self.rows.get((A%10416,A%27,A%5));k=A%10416
  if not r or not(r[-1 if A%191==0 else -2]>>(A%19)&1):return False
  x=self.cm.get(k)
  if x is None:return False
  m=x['mask11'] if x['not_divisible7'] else x['masks_by_u_a41'][A//7%7][A%41]
  if not(m>>(A%11)&1):return False
  if A%743==0:
   if A%7==0 and A//7%7:return False
   if A%7 and not(self.xm[k][A%41]>>(A%11)&1):return False
  if A%769==0 and A%16 not in(0,14):return False
  if A%17==0 and A%3==0 and A%81:return False
  if A%103==0 and A%10609:return False
  return bool(self.mask(k,A%19,-1,old)>>(A%11)&1)
 def member(self,A,old=True):return self.prior(A,old) and (A%5!=0 or bool(self.mask(A%10416,A%19,A//5%5,old)>>(A%11)&1))
 def check(self,c):
  # Reconstruct weights from actual allowed residues mod725, not hardcoded splitting.
  mult=[sum(r%25==5*u and r not in self.bad for r in range(725)) for u in range(5)]
  must(mult==[13,29,29,29,29]==c['fiber_multiplicities'],'exact mod725 subfibers')
  agg=defaultdict(lambda:[0,0])
  for rr in self.p['ancestor_fibers']:
   k,z,r5,w=rr[:4]
   f769=769-int(k%16 not in(0,14));f17=51 if k%3 else 49 if z==0 else 48
   for b in range(19):
    mult19=(190 if rr[-2]>>b&1 else 0)+(1 if rr[-1]>>b&1 else 0)
    if mult19==0:continue
    if r5==0:
     must(w%sum(mult)==0,'integer disintegration');agg[k,b][0]+=w//sum(mult)*f769*f17*mult19
    else:agg[k,b][1]+=w*f769*f17*mult19
  must(c['rows_per_ledger']==len(agg) and c['period']==self.delta['M_with_103_squared'] and c['period_changed'] is False,'same period baseline')
  must(c['full103_factor']==10507,'frozen full103 retained')
  for old,led in zip((False,True),c['ledgers']):
   must(led['adopt_old_R27']==old,'separate old dependency ledger');must(len(led['rows'])==len(agg),'full projection row coverage')
   total_old=total_new=0;ds=[0]*5
   for rec,((k,b),(w0,wo)) in zip(led['rows'],sorted(agg.items())):
    pm=self.mask(k,b,-1,old);f0,g0=self.fg(k,pm);f=742*f0+g0
    must(rec[:7]==[k,b,w0,wo,pm,f0,g0],'projection independent parent fiber')
    total_old+=(sum(mult)*w0+wo)*f;total_new+=wo*f
    must(len(rec[7])==5,'all25 residue cases')
    for u,cnt in enumerate(mult):
     mask=self.mask(k,b,u,old);must(mask&~pm==0,'necessary subset');f1,g1=self.fg(k,mask)
     must(rec[7][u]==[mask,f1,g1],'new shared source mask')
     total_new+=w0*cnt*(742*f1+g1);ds[u]+=w0*cnt*(f-742*f1-g1)
   baseline=self.delta['overview_R27_adoption']['after_same_q_with_old_phase'] if old else self.delta['new_only']['after_same_q']
   must(total_old==baseline==led['parent_before_103'],'exact direct parent count')
   vals=dict(new_before_103=total_new,parent_count=total_old*10507,new_count=total_new*10507,net_deleted=(total_old-total_new)*10507,deleted_by_A_div5_mod5=[t*10507 for t in ds])
   for k,v in vals.items():must(led[k]==v,'projection '+k)
   mi=led['minimum'];must(mi<=20000 and self.member(mi,old),'minimum is retained')
   must(not any(self.member(a,old) for a in range(2,mi,2)),'complete finite minimum check')
   must(led['parent_below_new_minimum']==[a for a in range(2,mi,2) if self.prior(a,old)],'fixed A difference')

def check_fixed(c,audit):
 must([r['A'] for r in c['branches']]==[4090,4510,5940,9790],'new fixed branches')
 for branch in c['branches']:
  A=branch['A'];out=[]
  for cc,s0 in audit.labels[A%10416]:
   if cc==1 and s0%6:continue
   for e in range(s0,180,30):
    js=[]
    for j in range(5):
     rr11=[r for r in solutions(11,A%11,j) if r[-1]==cc*pow(2,e,11)%11]
     rr19=[r for r in solutions(19,A%19,j) if r[-1]==cc*pow(2,e,19)%19]
     if rr11 and rr19:js.append(dict(q_mod5=j,FN11=rr11,FN19=rr19))
    if js:
     b=(cc*pow(2,e,5)-3)**2%5;target=3*(A//5)*b%5
     must(all(r['q_mod5']!=target for r in js),'every exponent phase rejected')
     out.append(dict(c=cc,s_mod180=e,required_B_mod5=b,required_q_mod5=target,old_same_q=js))
  must(branch['records']==out and branch['whole_adopted_core_branch_closed'],'fixed proof complete')
  must(audit.prior(A) and not audit.member(A),'parent-fixed exact difference')

def check_boundary(c):
 A=c['A'];q=c['q_offset'];m=c['modulus'];D,Y=state(q,A*m)
 must((A,q,c['q_step'],m)==(4090,2805,5100,5225),'boundary family coverage');must(state(c['q_step'],A*m)==(1,1),'exact family return')
 must((D-1)%A==0,'boundary true integer division');B=3*((D-1)//A)%m
 d,y=D%m,Y%m;H=c['H'];h=c['h'];v=A*y%m;Q=(d+v)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m;N=(4*v*H**3+H+Q)%m;Z=(2*d*H-Q*Q)%m;S=Svalue(A,d,y,B,m)
 for k,val in dict(D=D,Y=Y,d=d,y=y,B=B,v=v,Q=Q,P=P,n=n,N=N,Z=Z,S=S).items():must(c[k]==val,'boundary '+k)
 must((h*d-4*H-Q)%m==0 and (4*v*H*H-P*Q*Q+1)%m==0,'boundary original E/linear')
 must((2*N-n*Q)%m==0 and (Z*Z-S)%m==0,'boundary N and actual S')
 must(H%25==3 and H%209==111 and h%25==3 and h%209==146,'same H CRT')
 must(c['s_mod90']==84 and c['c']==1 and n%209==pow(2,84,209),'retained old phase at209')
 must(n%5==3 and pow(2,84,5)!=3 and c['power84_modM']==pow(2,84,m),'the missing power recovery')

def check_next(c,audit):
 A=10152;must(c['A']==A and audit.member(A),'next is necessary projection')
 must(A==2**3*3**3*47 and c['factors']==[[2,3],[3,3],[47,1]],'factorization')
 # Parent FULL3 and TRI4 plus actual integer quotient; complete 4140-class terminal.
 qs=[]
 for q in range(4140):
  if q%4!=2 or q%5!=4 or q%3 or q%9==0:continue
  if (3*(state(q,A)[0]-1))%A==0:qs.append(q)
 must(qs==c['q_classes_mod4140']==[1794,3174],'next source classes')
 eligible=[]
 for cc,s0 in audit.labels[A%10416]:
  for s in range(s0,90,30):
   for j in range(5):
    if any(r[-1]==cc*pow(2,s,11)%11 for r in solutions(11,A%11,j)) and any(r[-1]==cc*pow(2,s,19)%19 for r in solutions(19,A%19,j)):eligible.append([cc,s,j])
 must(eligible==[[3,15,4]],'same next c/s/source')
 must(c['c']==3 and c['s_mod90']==15 and c['source_modulus_for_true_B_mod47']==3384*47,'next exact interface')
 must([r for r in solutions(11,A%11,4) if r[-1]==3*pow(2,15,11)%11][0][0]==c['H_mod11']==6,'next H11')
 must([r for r in solutions(19,A%19,4) if r[-1]==3*pow(2,15,19)%19][0][0]==c['H_mod19']==1,'next H19')

def run(certdir,only=None):
 p,delta,ad=load_inputs();audit=Audit(p,delta)
 tests={'01_true25_A4090.json':check_quotient,'02_universal_TRUE5.json':check_universal,'03_local_same_phase.json':check_local,'04_projection_delta.json':audit.check,'05_fixed_branches.json':lambda c:check_fixed(c,audit),'06_failure_family.json':check_boundary,'07_next_entry.json':lambda c:check_next(c,audit),'08_source_adoption.json':lambda c:must(c==ad,'frozen source adoption')}
 polynomial_identities()
 for name,fn in tests.items():
  if only and name!=only:continue
  fn(json.loads((certdir/name).read_bytes()));print('PASS',name,flush=True)
 print('VERIFY PASS: exact receiver; four original polynomial identities; no generator import',flush=True)

def main():
 p=argparse.ArgumentParser();p.add_argument('--certificates',type=Path,default=ROOT/'certificates');p.add_argument('--only');a=p.parse_args();run(a.certificates,a.only)
if __name__=='__main__':main()
