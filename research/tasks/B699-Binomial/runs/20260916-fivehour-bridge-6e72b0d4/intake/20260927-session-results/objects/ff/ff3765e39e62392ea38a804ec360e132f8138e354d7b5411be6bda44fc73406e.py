"""Independent accepting implementation: quadratic-ring source, original E/n and h-roots.
Does not import the certificate generator. Frozen input I/O is shared via intake.py.
"""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import argparse,json,math
from pathlib import Path
from functools import lru_cache
from collections import Counter
from intake import ROOT,PARENT_SHA,canon,sha,need,load_parent,parent_member

def eq(a,b,msg):need(a==b,msg)
def mul(x,y,m=None):
 a,b=x;c,d=y;r=(a*c+3*b*d,a*d+b*c)
 return r if m is None else (r[0]%m,r[1]%m)
def pwr(x,n,m=None):
 r=(1,0)
 while n:
  if n&1:r=mul(r,x,m)
  x=mul(x,x,m);n//=2
 return r
def decode(x,m=None):
 a,b=x;need(a%2==0 and b%2==1,'source parity');r=((3*b-1)//2,a//2)
 return r if m is None else (r[0]%m,r[1]%m)
@lru_cache(None)
def source(m):
 pair=(2,1);gamma=pwr((2,1),8,2*m);out=[]
 while True:
  out.append(decode(pair,m));pair=mul(pair,gamma,2*m)
  if decode(pair,m)==(1,1):break
  need(len(out)<2000000,'independent source cap')
 eq(len(out),len(set(out)),'first-return orbit has no premature repetition')
 return out
def dypair(q):return decode(pwr((2,1),8*q+1))
def powers(a,m):
 out=[]
 for e in range(m+1):
  x=pow(a,e,m)
  if e and x==1:break
  out.append(x)
 else:raise ValueError('no unit power return')
 eq(len(out),len(set(out)),'power orbit distinctness');return out

def original(A,d,y,H,m):
 v=A*y%m;Q=(d+v)%m;h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
 E=(v*(2*H)**2-P*Q**2+1)%m;F=d*E%m;n=(P*Q*(2*H)+2)%m
 N=(n*Q*pow(2,-1,m)+H*E)%m;z=(2*d*H-Q*Q)%m
 return dict(H=H,v=v,Q=Q,h=h,P=P,F=F,E=E,N=N,n=n,z=z)
def actualS(A,d,y,B,m=None):
 v=A*y
 # Evaluate directly in Horner form; never cancel nonunit v.
 s=((((v+5*d)*v+10*d*d)*v+10*d**3)*v+5*d**4)+d*d*B*y
 return s if m is None else s%m
@lru_cache(None)
def original_roots41(a,q):
 d,y=source(41)[q];v=a*y%41;Q=(d+v)%41;out=[]
 for h in range(41):
  H=(h*d-Q)*pow(4,-1,41)%41;r=original(a,d,y,H,41)
  eq(r['h'],h,'h to H bijection')
  if r['E']==0:out.append(r)
 return sorted(out,key=lambda r:r['H'])
def phi(a):return sum(pow(a+1,j) for j in range(5))
def v7(x):
 n=0
 while x%7==0:n+=1;x//=7
 return n

def verify(directory,quiet=False):
 p=load_parent();get=lambda name:json.loads((directory/name).read_text())
 c=get('01_source_cycles.json')
 for k,states in c['states'].items():
  s=source(int(k));eq(states,[list(t) for t in s],f'source {k}');eq(c['periods'][k],len(s),f'period {k}')
 eq(c['affine'],[18817,32592,9408,10864,18817,5432],'affine');eq(c['determinant'],18817**2-32592*10864,'determinant')
 for k,pc in c['positive_exponent_cycles'].items():eq(pc,powers(2,int(k)),f'2 powers mod{k}')
 if not quiet:print('01 PASS: independent quadratic-ring source and first return')

 c=get('02_true7_quotient.json');A=882;m=7;div=294;oo=source(2058);T=math.lcm(84,len(oo));rows=[];ct=Counter()
 for q in range(7,T,84):
  D,Y=oo[q%len(oo)];need((D-1)%div==0,'true quotient integrality');B=(D-1)//div%7;d,y=D%7,Y%7;S=actualS(A,d,y,B,7)
  zs=[z for z in range(7) if z*z%7==S];ct['entry_rows']+=1;ct['zero_square' if S==0 else ('unit_square' if zs else 'nonsquare')]+=1;rr=[]
  for z in zs:
   H=(z+(d+A*y)**2)*pow(2*d,-1,7)%7;r=original(A,d,y,H,7)
   eq(r['E'],0,'root must satisfy original E');eq(r['z'],z,'actual signed root')
   ss=[e for e in range(15) if e%5==0 and pow(2,e,7)==r['n']]
   rr.append(dict(**r,s_mod15=ss,kept=bool(ss)))
  ct['kept_rows']+=any(t['kept'] for t in rr);ct['kept_roots']+=sum(t['kept'] for t in rr)
  rows.append(dict(q=q,D=D,Y=Y,B=B,S=S,roots=rr))
 eq(c['rows'],rows,'true quotient full rows');eq(c['counts'],dict(ct),'true quotient counts');eq(c['source_period'],len(oo),'true quotient source period');eq(c['joint_period'],T,'true quotient joint period')
 eq(c['kept_q'],[r['q'] for r in rows if any(t['kept'] for t in r['roots'])],'kept q');eq(c['zero_q'],[r['q'] for r in rows if r['S']==0],'zero q')
 for j,r in enumerate(rows):eq(r['B'],(6+2*j)%7,'true B formula');eq(r['S'],(4+2*j)%7,'actual S formula')
 eq(c['same_c'],1,'do not reset c');eq(c['parent_s_mod5'],0,'do not reset s')
 if not quiet:print('02 PASS: all true B rows, zero and unit roots, same c/s')

 c=get('03_A882_PERIOD41.json');sq=sorted({z*z%41 for z in range(41)})
 eq(c['source49_d1'],[q for q,(d,y) in enumerate(source(49)) if d==1],'49 source d1');eq(c['source49_d1'],[0],'49 fixes q0mod7')
 eq(c['source41_period'],7,'41 period');eq(c['source41_q0'],[1,1],'same source q0')
 eq(c['A_mod41'],882%41,'A882 residue');eq(c['actual_B_mod41'],0,'Bmod41 from actual unit A');eq(c['f_A_mod41'],phi(882)%41,'cyclotomic S');need(c['f_A_mod41'] not in sq,'A882 must be nonsquare')
 eq(c['quadratic_residues_mod41'],sq,'complete square set');eq(c['nonresidue_power'],pow(c['f_A_mod41'],20,41),'Euler check')
 tab=[dict(a=a,S=phi(a)%41,roots=[z for z in range(41) if z*z%41==phi(a)%41]) for a in range(1,41)]
 eq(c['uniform_table'],tab,'all nonzero A classes');K=[r['a'] for r in tab if not r['roots']];eq(c['forbidden_nonzero_A_mod41'],K,'uniform forbidden list');eq(c['zero_square_A_mod41'],[r['a'] for r in tab if r['S']==0],'zero target residues retained');eq(c['noninvertible_A_mod41'],0,'nonunit branch retained')
 if not quiet:print('03 PASS: A882 all-q closure and uniform square gate')

 c=get('04_TRUE7_all_exponents.json');gamma=pwr((2,1),8)
 eq(c['gamma'],list(gamma),'gamma');eq(c['gamma_minus1_div7'],[(gamma[0]-1)//7,gamma[1]//7],'coefficientwise seven divisibility')
 lam=3*((gamma[0]-1)+2*gamma[1])//2;eq(c['Lambda_gamma_minus1'],lam,'linear functional coefficient');eq(c['unit_60816_over7_mod7'],lam//7%7,'leading unit')
 eq(c['source49_quotient'],[((d-1)//7)%7 for d,y in source(49)],'true mod49 integer quotient');eq(c['source49_quotient'],list(range(7)),'source quotient equals q')
 table=[]
 for cc in (1,3):
  for s in range(3):
   n=cc*pow(2,s,7)%7;H=(n-2)*pow(2,-1,7)%7;B=((2*H-1)**2-5)%7
   need(B!=0,'noSplit7 from square and original n');table.append(dict(c=cc,s_mod3=s,n_mod7=n,B_mod7=B))
 eq(c['B_by_shared_c_s'],table,'TRUE7 shared-c/s table')
 for row in c['diagnostics']:
  q=row['q'];d,y=dypair(q);r=v7(q);eq(v7(d-1),r+1,'diagnostic valuation');eq(row,dict(q=q,v7_q=r,modulus=7**(r+2),d_minus1_modulus=(d-1)%7**(r+2),unit=((d-1)//7**(r+1))%7,q_unit=(q//7**r)%7),'diagnostic complete data')
 # These are checks of the proof constants. The unbounded binomial argument is in PROOFS.
 if not quiet:print('04 PASS: TRUE7 quotient, shared c/s and all-exponent proof constants')

 c=get('05_original_FN41.json')
 tab=[dict(a=a,q_mod7=q,d=source(41)[q][0],y=source(41)[q][1],roots=original_roots41(a,q)) for a in range(41) for q in range(7)]
 eq(c['rows'],tab,'all original FN41 h roots');eq(c['all_A_q_H_trials'],41*7*41,'full ring coverage')
 eq(c['order2'],len(powers(2,41)),'order2 exact')
 n4=sorted({pow(2,5*j,41) for j in range(4)})
 sm=[dict(a=a,roots=[r for r in original_roots41(a,0) if r['n'] in n4]) for a in range(41)]
 eq(c['extra_c1_s5']['rows'],sm,'same c1 and s divisible5');eq(c['extra_c1_s5']['allowed_n'],n4,'shared n list');eq(c['extra_c1_s5']['allowed_A_mod41'],[r['a'] for r in sm if r['roots']],'forced A residue');eq(c['extra_c1_s5']['allowed_A_mod41'],[0],'forces41|A')
 if not quiet:print('05 PASS: original E/n enumeration, including Q/P nonunit branches')

 @lru_cache(None)
 def admissible(k,u,a):
  for cc,s in p['labels'][k]:
   n7=cc*pow(2,s,7)%7;b=((n7-3)**2-5)%7
   qs=[q for q in range(7) if 3*q%7==u*b%7];eq(len(qs),1,'source q is unique for each original tag')
   for root in original_roots41(a,qs[0]):
    if any(cc*pow(2,e,41)%41==root['n'] and (e-s)%math.gcd(30,20)==0 for e in range(20)):return True
  return False
 c=get('06_projection_delta.json');old=aff=total=0;byk={}
 for row in p['rows']:
  k,z,r5,w=row[:4];cnt=w*(190*row[-2].bit_count()+row[-1].bit_count());old+=cnt
  if k%7:t=287
  else:
   aff+=cnt
   if k not in byk:byk[k]=[sum(1<<a for a in range(41) if admissible(k,u,a)) for u in range(7)]
   t=sum(mask.bit_count() for mask in byk[k])
  total+=cnt*t
 eq(old,p['count'],'direct-parent contribution sum');base=old*287;basic=base-20*aff
 eq(c['old_parent_rows_sha256'],sha(canon(p['rows'])),'parent row fingerprint');eq(c['parent_count'],old,'parent count');eq(c['parent_A_divisible7_count'],aff,'affected parent fibers');eq(c['lifted_parent_count'],base,'explicit common-period lift');eq(c['after_uniform_square_gate'],basic,'square-only net');eq(c['final_count'],total,'new gate total')
 eq(c['stage_deleted'],[base-basic,basic-total],'stage net deletes');eq(c['net_deleted'],base-total,'total net delete');eq(c['new_period'],p['M4']*7*41,'new exact period');eq(c['period_multiplier'],287,'period multiplier')
 eq(c['mask_rows'],[dict(k=k,coarse_parent_c_s_mod30=p['labels'][k],allowed_A41_masks_by_Aover7_mod7=ms,lift_factor=sum(m.bit_count() for m in ms)) for k,ms in sorted(byk.items())],'all compressed new masks')
 for ms in byk.values():need(all(not (ms[0]>>a)&1 for a in K),'full gate contains square obstruction')
 def member(A):return parent_member(A,p) and (A%7!=0 or admissible(A%10416,(A//7)%7,A%41))
 minimum=next(A for A in range(2,20000,2) if member(A));eq(c['minimum_positive_projection'],minimum,'minimum projection');eq(c['parent_below_minimum'],[A for A in range(2,minimum,2) if parent_member(A,p)],'all deleted low parent states');eq(c['remaining_examples'],[A for A in range(minimum,8000,2) if member(A)][:20],'remaining low examples')
 if not quiet:print('06 PASS: compressed CRT counts, old/new common period, minimal projection',minimum)

 c=get('07_finite_boundary.json');q=c['q_offset'];step=c['q_step'];A=c['A'];M=c['M'];d,y=dypair(q);need((d-1)%294==0,'actual integer B');B=(d-1)//294
 H=c['local']['H'];eq(H%M,H,'canonical H');eq({str(m):H%m for m in (3,5,7,19,31)},c['H_residues'],'same H CRT')
 r=original(A,d,y,H,M);S=actualS(A,d,y,B,M)
 eq(c['local'],dict(d=d%M,y=y%M,B=B%M,S=S,**r),'weak model exact local arithmetic');eq(r['E'],0,'weak original E');eq(r['F'],0,'weak original F');eq(r['z']**2%M,S,'weak actual square');eq(r['n'],pow(2,c['s_mod180'],M),'weak same c/s');eq(c['same_c'],1,'weak original c')
 period=len(source(294*M));eq(c['source_period'],period,'weak quotient complete period');need(step%period==0 and step%84==0,'weak family covers all k');eq((q%84,c['q_step']), (7,2940),'weak family membership')
 full=actualS(A,d,y,B);lo=math.isqrt(full);eq(c['sample_hex'],dict(q=q,d=hex(d),y=hex(y),B=hex(B),S=hex(full),floor_sqrt=hex(lo),lower_gap=hex(full-lo*lo),upper_gap=hex((lo+1)**2-full)),'exact nonsquare sample receipt');need(lo*lo<full<(lo+1)**2,'integer nonsquare diagnostic');eq(q%7,0,'weak whole family q0mod7');eq(actualS(A,d%41,y%41,B%41,41),26,'whole family new obstruction')
 if not quiet:print('07 PASS: exact quotient family, one shared H/c/s, missing integer recovery witnessed')

 c=get('08_next_A1090.json');A=1090;eq(c['A'],minimum,'next minimum');need(member(A),'next passes new projection');ss=source(1090);T=math.lcm(4,len(ss));tri=(-A*(A+2)//8)%4
 qs=[q for q in range(T) if q%4==tri and 3*(ss[q%len(ss)][0]-1)%A==0]
 eq(c['source1090_period'],len(ss),'next exact source period');eq(c['source1090_d1'],[q for q,(d,y) in enumerate(ss) if d==1],'next divisor source');eq(c['joint_period'],T,'next joint period');eq(c['necessary_q_classes'],qs,'next complete necessary q');eq(c['TRI4_q_mod4'],tri,'next TRI4');eq(c['frozen_coarse_labels'],p['labels'][A%10416],'next adopted labels');eq(c['source_modulus_for_Bmod109'],1090*109,'next quotient modulus')
 if not quiet:print('08 PASS: next entry is only a necessary projection, not a reconstructed input')

 c=get('09_source_adoption.json');eq(c['parent_sha256'],PARENT_SHA,'source parent digest');eq(c['parent_manifest_members'],p['manifest_members'],'source parent manifest');eq(c['parent_count'],p['count'],'source baseline');eq(c['R_sha256'],p['R_sha256'],'source frozen R');eq(c['overview_sha256'],sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),'source Overview digest');eq(c['historical_mathematics_rerun'],False,'no historical reruns')
 if not quiet:print('09 PASS: source adoption, hashes are not proof of the historical NC3 bridge')
 return dict(status='PASS',certificates=9,minimum=minimum,remaining_projection=total,net_deleted=base-total,independent_formula_route='quadratic-ring source; h-first original E/n roots; explicit CRT compatibility',evidence_level='same-author alternate exact implementation; not external independent review or Lean')

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--certificates',type=Path,default=ROOT/'certificates');ap.add_argument('--quiet',action='store_true');args=ap.parse_args();receipt=verify(args.certificates,args.quiet);print(json.dumps(receipt,sort_keys=True))
if __name__=='__main__':main()
