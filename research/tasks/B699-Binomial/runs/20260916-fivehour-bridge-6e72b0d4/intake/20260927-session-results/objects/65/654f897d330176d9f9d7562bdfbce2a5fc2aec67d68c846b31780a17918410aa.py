"""Independent-formula receiver; does not import the new generator."""
from __future__ import annotations
import sys,json,math,hashlib,struct,argparse
from functools import lru_cache
from collections import Counter
from pathlib import Path
sys.dont_write_bytecode=True
from intake import ROOT,load,parent_member,need,canon,sha,PARENT_SHA
@lru_cache(None)
def ring_cycle(m):
 u,x=2,1;out=[]
 while True:
  d=(3*x-1)//2%m;y=u//2%m;out.append((d,y))
  u,x=(18817*u+32592*x)%(2*m),(10864*u+18817*x)%(2*m)
  if ((3*x-1)//2%m,u//2%m)==(1,1):return out
  need(len(out)<1000000,'receiver period guard')
def digest(o):
 h=hashlib.sha256()
 for d,y in o:h.update(struct.pack('>QQ',d,y))
 return h.hexdigest()
def matmul(a,b,m):return [[sum(a[i][k]*b[k][j] for k in range(3))%m for j in range(3)] for i in range(3)]
def affine(q,m):
 a=[[18817,32592,9408],[10864,18817,5432],[0,0,1]];b=[[1,0,0],[0,1,0],[0,0,1]]
 while q:
  if q&1:b=matmul(b,a,m)
  a=matmul(a,a,m);q//=2
 return (sum(b[0])%m,sum(b[1])%m)
def original(A,d,y,h,m):
 v=A*y%m;Q=(d+v)%m;H=(h*d-Q)*pow(4,-1,m)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m
 return dict(H=H,h=h,P=P,Q=Q,v=v,E=(4*v*H*H-P*Q*Q+1)%m,F=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m,N=(4*v*H**3+H+Q)%m,n=n,z=(2*d*H-Q*Q)%m)
def svalue(A,d,y,B,m):
 # Horner form independent of the generating expanded expression.
 v=A*y
 return (((((v+5*d)*v+10*d*d)*v+10*d**3)*v+5*d**4)+d*d*B*y)%m
@lru_cache(None)
def pcycle(m):
 vals=[];v=1
 while v not in vals:
  vals.append(v);v=2*v%m
 need(v==1,'positive power first return');return vals
@lru_cache(None)
def rows41(a):
 out=[]
 for h in range(41):
  r=original(a,1,1,h,41)
  if r['E']==0:out.append(r)
 return sorted(out,key=lambda r:r['H'])
def joint41mask(k,a41,p,n11):
 mask=0
 for a11 in range(11):
  for c,s0 in p['labels'][k]:
   if (c,s0) not in n11[a11]:continue
   # Explicit common positive-exponent representatives, not separate choices.
   if any(r['n']==c*pow(2,s,41)%41 for s in range(s0,60,30) for r in rows41(a41)):
    mask|=1<<a11;break
 return mask

# Small sparse-polynomial engine, used only for exact symbolic identities.
NV=6
class Poly:
 def __init__(self,x=0):self.t=x if isinstance(x,dict) else ({(0,)*NV:x} if x else {})
 def __add__(self,b):
  b=b if isinstance(b,Poly) else Poly(b);t=dict(self.t)
  for k,v in b.t.items():t[k]=t.get(k,0)+v
  return Poly({k:v for k,v in t.items() if v})
 __radd__=__add__
 def __neg__(self):return Poly({k:-v for k,v in self.t.items()})
 def __sub__(self,b):return self+-aspoly(b)
 def __rsub__(self,b):return aspoly(b)+-self
 def __mul__(self,b):
  b=aspoly(b);t={}
  for k,v in self.t.items():
   for l,w in b.t.items():
    key=tuple(x+y for x,y in zip(k,l));t[key]=t.get(key,0)+v*w
  return Poly({k:v for k,v in t.items() if v})
 __rmul__=__mul__
 def __pow__(self,e):
  r=Poly(1)
  for _ in range(e):r=r*self
  return r
def aspoly(x):return x if isinstance(x,Poly) else Poly(x)
def algebra():
 vs=[]
 for j in range(NV):k=[0]*NV;k[j]=1;vs.append(Poly({tuple(k):1}))
 d,v,H,h,B,y=vs;Q=d+v;P=Q+h*v;E=4*v*H**2-P*Q**2+1
 F=4*d*v*H**2-4*v*Q**2*H-Q**4+d;N=4*v*H**3+H+Q;n=2*P*Q*H+2;Z=2*d*H-Q**2
 S=v**4+5*d*v**3+10*d**2*v**2+10*d**3*v+5*d**4+d**2*B*y
 checks=[F-d*E-v*Q**2*(d*h-4*H-Q),2*N-n*Q-2*H*E,v*Z**2-Q**5+d**2-d*F,v*S-Q**5+d**2-d**2*(v*B*y-d**3+1)]
 need(all(not x.t for x in checks),'four original symbolic identities')

def verify(folder):
 p=load();c={f.name:json.loads(f.read_text()) for f in folder.glob('*.json')};need(len(c)==9,'nine certificates');algebra()
 a=c['01_source_cycles.json']
 for m in (11,17,41,743,769):
  oo=ring_cycle(m);need(a['small_states'][str(m)]==[list(x) for x in oo],'small ring orbit')
  need(a['periods'][str(m)]==len(oo),'small first return')
 for m in (17,743,769):need(a['unique_d1'][str(m)]==[q for q,(d,y) in enumerate(ring_cycle(m)) if d==1],'full d1 positions')
 big=ring_cycle(1104098);need(len(big)==a['periods']['1104098']==275653 and digest(big)==a['big_state_sha256'],'entire true-quotient source period')
 for m in (17,41,743,769):need(not [j for j in range(2,math.isqrt(m)+1) if m%j==0] and a['prime_checks'][str(m)]==[],'prime by trial division')
 for m in (41,743):need(a['powers'][str(m)]==pcycle(m),'complete power cycle')
 need(18817**2-32592*10864==1 and a['determinant']==1,'source invertibility')
 print('PASS exact identities and complete source cycles')

 a=c['02_true743_quotient.json'];T=math.lcm(len(big),7420);need(a['joint_period']==T==5513060 and a['source_period']==len(big),'quotient coverage period')
 need([r['q'] for r in a['rows']]==list(range(1484,T,7420)),'all original entry classes')
 counts=Counter();kept=[];zeros=[]
 exps={pow(2,s,743):s for s in range(9,11130,30)};need(len(exps)==371,'common exponent CRT')
 for row in a['rows']:
  q=row['q'];D,Y=big[q%len(big)];need((D-1)%1486==0,'actual divisibility before integer quotient');B=(3*(D-1)//1486)%743
  need(row['D']==D and row['Y']==Y and row['B']==B and row['r']==(q-1484)//7420,'exact lifted divisor data')
  d,y=D%743,Y%743;S=svalue(1486,d,y,B,743);need(d==y==1 and row['S']==S,'original S')
  need(B==(218+347*row['r'])%743 and S==(223+347*row['r'])%743,'complete affine formulas')
  rr=[]
  for h in range(743):
   r=original(1486,d,y,h,743)
   if r['E']==0 and r['z']**2%743==S:
    r['s_mod11130']=exps.get(r['n']);rr.append(r)
  rr.sort(key=lambda r:r['z']);need(row['roots']==rr,'all signed roots recovered from original h, including zero')
  counts['entry_rows']+=1;counts['zero_square' if S==0 else 'unit_square' if rr else 'nonsquare']+=1
  counts['kept_rows']+=any(r['s_mod11130'] is not None for r in rr);counts['kept_roots']+=sum(r['s_mod11130'] is not None for r in rr)
  if any(r['s_mod11130'] is not None for r in rr):kept.append(q)
  if S==0:zeros.append(q)
 need(dict(counts)==a['counts'] and a['kept_q']==kept and a['zero_q']==zeros,'complete true743 counts')
 need(a['B_formula']==[218,347] and a['S_formula']==[223,347],'declared formulas')
 print('PASS true743 integer quotient, all roots and same exponent:',dict(counts))

 a=c['03_A1486_closure.json'];rr=rows41(10);need(a['roots']==rr and a['allowed_n41']==[20,21],'A1486 exact roots and original n targets')
 need(all(r['n']==27 for r in rr) and len(rr)==2 and all(r['n'] not in a['allowed_n41'] for r in rr),'all-index contradiction')
 need(a['S_mod41']==svalue(1486,1,1,0,41)==33 and a['actual_z_roots']==[19,22],'unit squared S is retained')
 need(a['polynomial_F_mod41']==[(-11**4+1)%41,(-4*10*11**2)%41,40],'F coefficients')
 r=original(1486,0,2,9,11);need(r['E']==0 and all(a['parent11'][k]==r[k] for k in ('H','h','P','Q','n')),'d zero original E retained')
 need(a['uniform_condition']==dict(A_multiple=743,A_mod41=10,c=1,s_mod10=9),'uniform domain')
 b=c['04_same_source41_gate.json'];need(b['trials']==1681 and len(b['roots'])==41,'source41 coverage')
 for row in b['roots']:need(row['roots']==rows41(row['a']),'complete source41 roots')
 for row in b['allowed_A41']:
  cc=row['c'];s=row['s_mod10'];allowed=[v for v in range(41) if any(r['n']==cc*pow(2,t,41)%41 for t in (s,s+10) for r in rows41(v))]
  need(row['allowed']==allowed,'same original c and s source41 table')
 a=c['05_source769_source17.json']
 need(len(ring_cycle(769))==24 and len(ring_cycle(17))==9,'auxiliary all-index source gates')
 need(a['TRI4_table_q_A']==[[(-v*(v+2)//8)%4,v] for v in range(0,16,2)],'TRI4 exact')
 need([v for v in range(0,16,2) if -v*(v+2)//8%4==0]==a['source769']['allowed_even_A_mod16']==[0,14],'all even TRI4 zero classes')
 need(1538==2*769 and -1538*(1538+2)//8%4==3 and a['closed_A1538']['TRI4']==3,'A1538 contradiction')
 need(1836==4*27*17 and (1836//27)%3!=0 and a['closed_A1836']['FULL3_v3q']==1 and a['closed_A1836']['source_v3q_at_least']==2,'A1836 contradiction')
 print('PASS three fixed-A closures and uniform source obstructions')

 # Reconstruct current compressed fibers only from frozen data; no historical programs.
 n11={j:set() for j in range(11)}
 for r in p['fn11']['rows']:
  for v in r['roots']:
   for cc in (1,3):
    for s in range(30):
     if v['n']==cc*pow(2,s,11)%11:n11[r['a']].add((cc,s))
 newmasks={k:[joint41mask(k,j,p,n11) for j in range(41)] for k,row in p['currmap'].items() if row['not_divisible7']}
 a=c['06_projection_delta.json'];need(a['source743_masks']==[dict(k=k,masks41_to11=newmasks[k]) for k in sorted(newmasks)],'complete new conditional masks')
 weights=Counter()
 for r in p['rows']:
  k,z,r5,w=r[:4];g,h=r[-2:];weights[k,z]+=w*(190*g.bit_count()+h.bit_count())
 need([(r[0],r[1]) for r in a['rows']]==sorted(weights),'all frozen fibers exactly once')
 counts=[0]*4
 for k,z,w,old,new,f769,f17 in a['rows']:
  need(w==weights[k,z] and old==p['currmap'][k]['shared_factor'],'parent weight and original factor')
  row=p['currmap'][k]
  if k%7:
   new1=sum(1 for lift in range(7) for j in range(41) for b11 in range(11) if newmasks[k][j]>>b11&1)
  else:
   # TRUE7 makes B a unit: q=0mod7 permits only the u=0 lift.
   need(all(((cc*pow(2,s,7)-3)**2-5)%7 for cc in(1,3) for s in range(3)),'TRUE7 B unit')
   new1=sum(1 for j in range(41) for b11 in range(11) if row['masks_by_u_a41'][0][j]>>b11&1)
  f769a=sum(1 for r769 in range(769) if r769 or -k*(k+2)//8%4==0)
  f17a=sum(1 for l in range(3) for r17 in range(17) if r17 or (z+27*l)%3 or (z+27*l)%81==0)
  need(new==new1 and f769==f769a and f17==f17a,'all new CRT fibers including zero-prime residues')
  counts[0]+=w*old;counts[1]+=w*(742*old+new1);counts[2]+=w*(742*old+new1)*f769a;counts[3]+=w*(742*old+new1)*f769a*f17a
 M=p['current']['M6'];periods=[M,743*M,743*769*M,743*769*51*M]
 need(a['counts']==counts and a['periods']==periods and a['groups']==len(weights),'exact common-period counts')
 need(a['stage_deleted']==[743*counts[0]-counts[1],769*counts[1]-counts[2],51*counts[2]-counts[3]],'same-period stage differences')
 need(a['lifted_parent']==counts[0]*743*769*51 and a['net_deleted']==a['lifted_parent']-counts[-1],'final exact parent delta')
 def mem(A):
  if not parent_member(A,p):return False
  if A%743==0:
   if A%7==0:
    if (A//7)%7:return False
   elif not(newmasks[A%10416][A%41]>>(A%11)&1):return False
  if A%769==0 and -A*(A+2)//8%4:return False
  if A%17==0 and A%3==0 and A%81:return False
  return True
 minimum=next(A for A in range(2,20000,2) if mem(A));need(a['minimum']==minimum==3866,'least surviving necessary projection')
 need(a['parent_below_minimum']==[A for A in range(2,minimum,2) if parent_member(A,p)]==[1486,1538,1836],'all parent small fibers')
 print('PASS exact projection comparison:',counts)

 a=c['07_finite_boundary.json'];A=a['A'];q=a['q_offset'];M=a['M'];D,Y=affine(q,A*M);need(D==a['D'] and Y==a['Y'] and (D-1)%A==0,'true family quotient')
 need(affine(a['q_step'],A*M)==(1,1),'all-index boundary family period')
 d,y=D%M,Y%M;B=(3*(D-1)//A)%M;loc=a['local'];r=original(A,d,y,loc['h'],M)
 need(loc==dict(d=d,y=y,B=B,S=svalue(A,d,y,B,M),**r),'boundary original tuple')
 need(r['E']==r['F']==0 and r['z']**2%M==loc['S'] and r['n']==pow(2,a['s_mod11130'],M),'same original finite congruences')
 need((a['s_mod11130']-9)%30==0 and (q-1484)%7420==0 and a['q_step']%7420==0,'unchanged parent labels')
 for p0,H0 in a['H_residues'].items():need(r['H']%int(p0)==H0,'same H CRT')
 for p0,h0 in a['h_residues'].items():need(r['h']%int(p0)==h0,'same h CRT')
 need(r['H']%11==5 and r['P']%11==9 and r['Q']%11==2 and r['n']%11==6,'nonunit d11 branch retained')
 a=c['08_next_entry.json'];need(a['A']==3866 and a['parent_member'] and a['new_member'] and a['TRI4_q_mod4']==1,'next projection only')
 tags=[list(t) for t in p['labels'][3866%10416] if tuple(t) in n11[3866%11]];need(a['coarse_c_s_mod30']==tags,'next coarse labels')
 a=c['09_source_adoption.json'];need(a['parent_sha256']==PARENT_SHA and a['parent_manifest_members']==p['manifest_members'] and a['R_sha256']==p['R_sha'] and a['overview_sha256']==sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),'frozen source adoption')
 print('PASS finite-boundary failure and source adoption')
 print('VERIFY PASS: 9 new certificates, all algebraic and complete finite coverage checks')
 return counts

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--cert-dir',type=Path,default=ROOT/'certificates');args=ap.parse_args();verify(args.cert_dir)
if __name__=='__main__':main()
