"""Independent mathematical receiver: quadratic-ring sources; h-first original roots.
Does not import or call generate.py. Frozen parent mathematics is adopted, not rerun.
"""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import math,json,argparse
from pathlib import Path
from collections import Counter
from functools import lru_cache
from intake import ROOT,PARENT_SHA,load,member,need,canon,sha

def eq(x,y,msg):need(canon(x)==canon(y),msg)
def mul(x,y,m=None):
 u,v=x;w,z=y;a,b=u*w+3*v*z,u*z+v*w
 return (a,b) if m is None else (a%m,b%m)
def ppow(base,e,m=None):
 x=(1,0)
 while e:
  if e&1:x=mul(x,base,m)
  base=mul(base,base,m);e//=2
 return x
@lru_cache(None)
def source(m):
 # Original t=8q+1 coordinates, not the affine generator.
 U,X=2,1;out=[]
 while True:
  need(U%2==0 and X%2==1,'source parity')
  d,y=((3*X-1)//2)%m,(U//2)%m
  if out and (d,y)==(1,1):return out
  out.append((d,y));U,X=mul((U,X),(18817,10864),2*m)
  need(len(out)<2000000,'source receiver guard')
def exact(q):
 U,X=ppow((2,1),8*q+1)
 return (3*X-1)//2,U//2
@lru_cache(None)
def powers(m):
 out=[]
 for e in range(m+1):
  v=pow(2,e,m)
  if e and v==1:return out
  out.append(v)
 raise ValueError('no power cycle')
def rec(A,d,y,H,h,m):
 v=A*y%m;Q=(d+v)%m;P=(Q+h*v)%m
 need((h*d-4*H-Q)%m==0,'original linear recovery')
 E=(4*v*H*H-P*Q*Q+1)%m;n=(2*P*Q*H+2)%m
 N=(n*Q*pow(2,-1,m)+H*E)%m
 return dict(H=H,h=h,v=v,Q=Q,P=P,E=E,F=d*E%m,N=N,n=n,z=(2*d*H-Q*Q)%m)
def square(A,d,y,B,m=None):
 # Expanded through binomial coefficients rather than copied source formula.
 v=A*y
 ans=sum(math.comb(5,j)*v**(4-j)*d**j for j in range(5))+d*d*B*y
 return ans if m is None else ans%m
@lru_cache(None)
def rr(a,j):
 d,y=source(11)[j];Q=(d+a*y)%11;out=[]
 for h in range(11):
  H=(h*d-Q)*3%11 # 4^(-1)=3
  r=rec(a,d,y,H,h,11)
  if r['E']==0:out.append(r)
 return sorted(out,key=lambda r:(r['H'],r['h']))
@lru_cache(None)
def tag(a,c,s):return any(r['n']==c*pow(2,s,11)%11 for j in range(5) for r in rr(a,j))
def verify_sources(c):
 eq(c['affine'],[18817,32592,9408,10864,18817,5432],'affine')
 need(18817**2-32592*10864==c['determinant']==1,'determinant')
 eq(c['initial'],[1,1],'initial')
 for m in (11,109,1090,118810,1486):
  ss=source(m);eq(c['states'][str(m)],ss,'full source states '+str(m));need(c['periods'][str(m)]==len(ss),'first-return period')
 for m in (11,109):eq(c['power_cycles'][str(m)],powers(m),'power cycle')
 need(c['positive_exponents'],'positive exponent convention')
def verify_quotient(c):
 need(c['A']==1090 and c['actual_divisor']==1090 and c['source_modulus']==118810,'real denominator')
 oo=source(118810);T=math.lcm(len(oo),108);need(c['source_period']==len(oo) and c['joint_period']==T,'source coverage')
 need(c['same_c']==1 and c['parent_s_mod15']==1,'same original c,s')
 qs=list(range(27,T,108));need(len(c['rows'])==len(qs),'all entry rows');ct=Counter();kept=[];zero=[]
 for entry,q in zip(c['rows'],qs):
  D,Y=oo[q%len(oo)];need((D-1)%1090==0,'integer B integrality')
  B=((3*D-3)//1090)%109;d,y=D%109,Y%109;S=square(1090,d,y,B,109);roots=[]
  for H in range(109):
   Q=(d+1090*y)%109;h=(4*H+Q)*pow(d,-1,109)%109;r=rec(1090,d,y,H,h,109)
   if r['z']**2%109!=S:continue
   need(r['E']==r['F']==0,'same original root')
   ss=[s for s in range(1,180,15) if pow(2,s,109)==r['n']]
   roots.append(dict(**r,s_mod180=ss))
  roots.sort(key=lambda r:r['z'])
  expected=dict(q=q,r=(q-27)//108,D=D,Y=Y,d=d,y=y,B=B,S=S,roots=roots)
  eq(entry,expected,'full quotient row '+str(q))
  need(B==(64+38*((q-27)//108))%109 and S==(69+38*((q-27)//108))%109,'linear quotient formula')
  ct['entry_rows']+=1;ct['zero_square' if S==0 else 'unit_square' if roots else 'nonsquare']+=1
  good=any(x['s_mod180'] for x in roots);ct['kept_rows']+=good;ct['kept_roots']+=sum(bool(x['s_mod180']) for x in roots)
  if good:kept.append(q)
  if S==0:zero.append(q)
 eq(c['counts'],dict(ct),'quotient counts');eq(c['kept_q'],kept,'kept q');eq(c['zero_q'],zero,'zero q')
 eq(c['B_formula'],[64,38],'B formula');eq(c['S_formula'],[69,38],'S formula')
def verify_local(c):
 need(c['modulus']==11 and c['source_period']==5 and c['order2']==10 and c['H_h_trials']==6655,'complete FN11 domain')
 expected=[dict(a=a,q_mod5=j,d=source(11)[j][0],y=source(11)[j][1],roots=rr(a,j)) for a in range(11) for j in range(5)]
 eq(c['rows'],expected,'all original FN11 roots including nonunit d')
 exp=[dict(c=cc,s_mod10=s,A_allowed=[a for a in range(11) if tag(a,cc,s)]) for cc in (1,3) for s in range(10)]
 eq(c['allowed_A_by_c_s10'],exp,'FN11 all tags')
def verify_closure(c):
 eq(c['uniform_conditions'],[[1,1,1],[6,3,1]],'uniform scope')
 need(len(c['blocks'])==2,'two closures')
 for b,(A,cc) in zip(c['blocks'],[(1090,1),(1458,3)]):
  table=[dict(q_mod5=j,d=d,y=y,roots=rr(A%11,j)) for j,(d,y) in enumerate(source(11))]
  allowed=sorted({cc*pow(2,e,11)%11 for e in (1,6)})
  eq(b,dict(A=A,A_mod11=A%11,c=cc,s_mod5=1,allowed_n=allowed,table=table),'closure table')
  need(not any(r['n'] in allowed for x in table for r in x['roots']),'all source states impossible')
class Receiver:
 def __init__(self,p):self.p=p
 @lru_cache(None)
 def mask(self,k,u=None,a41=None):
  out=0
  # Explicit common exponent in [0,60), rather than two independently selected tags.
  for c,s0 in self.p['labels'][k]:
   if u is not None:
    good=False
    for ss in range(s0,60,30):
     B=((c*pow(2,ss,7)-3)**2-5)%7;j=u*5*B%7
     if any(r['n']==c*pow(2,ss,41)%41 for r in self.p['roots41'][a41,j]):good=True
    if not good:continue
   for a in range(11):
    if tag(a,c,s0):out|=1<<a
  return out
 def member(self,A):
  if not member(A,self.p):return False
  m=self.mask(A%10416,(A//7)%7 if A%7==0 else None,A%41 if A%7==0 else None)
  return bool(m>>(A%11)&1)
def verify_projection(c,p,g):
 weights=Counter()
 for row in p['rows']:
  k,zz,r5,w=row[:4];weights[k]+=w*(190*row[-2].bit_count()+row[-1].bit_count())
 expected=[];old=ind=shared=0
 for k,w in sorted(weights.items()):
  mask=g.mask(k)
  if k%7:
   oldf=287;indf=newf=287*mask.bit_count();r=dict(k=k,weight=w,mask11=mask,not_divisible7=True,old_factor=oldf,independent_factor=indf,shared_factor=newf)
  else:
   oldf=sum(x.bit_count() for x in p['masks41'][k]);indf=oldf*mask.bit_count()
   mm=[[g.mask(k,u,a) for a in range(41)] for u in range(7)]
   need(all(not mm[u][a] or p['masks41'][k][u]>>a&1 for u in range(7) for a in range(41)),'parent gate containment')
   newf=sum(x.bit_count() for ms in mm for x in ms)
   r=dict(k=k,weight=w,mask11=mask,not_divisible7=False,old_factor=oldf,independent_factor=indf,shared_factor=newf,masks_by_u_a41=mm)
  expected.append(r);old+=w*oldf;ind+=w*indf;shared+=w*newf
 eq(c['rows'],expected,'exact compressed masks');need(c['groups']==len(expected),'mask groups')
 for key,val in dict(M5=6866289120776400,M6=75529180328540400,period_multiplier=11,parent_count=old,lifted_parent=11*old,after_FN11_independent=ind,after_shared_FN11_FN41=shared,net_deleted=11*old-shared).items():need(c[key]==val,key)
 need(old==p['old']['final_count'],'same parent period baseline')
 eq(c['deleted'],[11*old-ind,ind-shared],'stage net')
 minimum=next(A for A in range(2,20000,2) if g.member(A));need(c['minimum']==minimum,'new minimum')
 eq(c['parent_below_minimum'],[A for A in range(2,minimum,2) if member(A,p)],'all prior low projections')
 need(c['joint_period_enumerated'] is False and c['not_actual_NC3_count'] is True,'count scope')
def verify_boundary(c):
 need(c['A']==1090 and c['q_offset']==351 and c['q_step']==11772 and c['M']==23653,'boundary scope')
 A=1090;q=351;M=23653;mod=A*M;oo=source(mod)
 need(c['source_modulus']==mod and c['source_period']==len(oo) and 11772%len(oo)==0,'all q family source periodicity')
 need(c['source_states_sha256']==sha(canon(oo)),'boundary full-period digest')
 d,y=exact(q);need((d-1)%A==0,'boundary integer quotient');B=3*(d-1)//A
 H=next(x for x in range(75,M,109) if x%31==x%7==0)
 h=(4*H+(d+A*y))*pow(d,-1,M)%M;r=rec(A,d,y,H,h,M);S=square(A,d,y,B,M)
 eq(c['local'],dict(d=d%M,y=y%M,B=B%M,S=S,**r),'same local original model')
 need(r['E']==r['F']==0 and r['z']**2%M==S and r['n']==pow(2,46,M),'boundary shared equations')
 eq(c['H_residues'],{'109':75,'31':0,'7':0},'same H residues')
 need(c['c']==1 and c['s_mod180']==46,'same c,s')
 full=square(A,d,y,B);lo=math.isqrt(full);need(lo*lo<full<(lo+1)**2,'exact diagnostic square gap')
 eq(c['sample_hex'],dict(d=hex(d),y=hex(y),B=hex(B),S=hex(full),floor_sqrt=hex(lo),lower_gap=hex(full-lo*lo),upper_gap=hex((lo+1)**2-full)),'exact sample data')
def verify_next(c,p,g):
 A=1486;need(g.member(A),'next remains in new projection')
 need(all(743%d for d in range(2,math.isqrt(743)+1)),'743 primality by full trial division')
 eq(c['factors'],[[2,1],[743,1]],'next factorization')
 tags=[(cc,s) for cc,s in p['labels'][A%10416] if tag(A%11,cc,s)];eq(tags,[(1,9)],'unique inherited coarse tag')
 oo=source(A);T=math.lcm(len(oo),4,5);qs=[q for q in range(T) if q%4==0 and q%5==4 and (oo[q%len(oo)][0]-1)%A==0]
 for key,val in dict(A=A,same_c=1,s_mod30=9,source_A_period=len(oo),TRI4_q_mod4=0,FN11_q_mod5=4,joint_period=T,next_source_modulus=A*743).items():need(c[key]==val,'next '+key)
 eq(c['source_d1'],[q for q,(d,y) in enumerate(oo) if d==1],'next full source d1')
 eq(c['necessary_q_classes'],qs,'next necessary rows');eq(c['local11'],dict(d=0,y=2,H=5,h=9,P=9,Q=2,n=6),'next nonunit d source')
 need(c['q_positive'] and c['member'],'next is positive necessary-only')
def main():
 ap=argparse.ArgumentParser();ap.add_argument('--cert-dir',type=Path,default=ROOT/'certificates');a=ap.parse_args()
 def get(n):return json.loads((a.cert_dir/n).read_bytes())
 p=load();g=Receiver(p)
 work=[('01_source_cycles.json',verify_sources),('02_true109_quotient.json',verify_quotient),('03_A1090_A1458_closure.json',verify_closure),('04_original_FN11.json',verify_local)]
 for n,fn in work:fn(get(n));print('PASS',n)
 verify_projection(get('05_projection_delta.json'),p,g);print('PASS 05_projection_delta.json')
 verify_boundary(get('06_finite_boundary.json'));print('PASS 06_finite_boundary.json')
 verify_next(get('07_next_A1486.json'),p,g);print('PASS 07_next_A1486.json')
 ad=get('08_source_adoption.json');eq(ad,dict(parent_sha256=PARENT_SHA,parent_manifest_members=p['manifest_members'],R_sha256=p['R_sha'],overview_sha256=sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),historical_mathematics_executed=False,repository_actions='none'),'source adoption')
 print('PASS 08_source_adoption.json');print('VERIFY PASS: 8 certificates; independent formulas; no historical mathematics rerun')
if __name__=='__main__':main()
