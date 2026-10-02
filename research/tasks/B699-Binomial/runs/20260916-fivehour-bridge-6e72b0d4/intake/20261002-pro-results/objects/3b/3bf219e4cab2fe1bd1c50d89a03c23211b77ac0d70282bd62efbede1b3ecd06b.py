"""Exact certificates for batch round 3. Python standard library only."""
from __future__ import annotations
import argparse, hashlib, io, json, math, sys, zipfile
from collections import defaultdict
from pathlib import Path
sys.dont_write_bytecode = True
ROOT=Path(__file__).resolve().parents[1]
PARENT_SHA='47147e49bf04db159e50f8a96ad42134089893c93eeadf0d118c304d7dd41ecf'
C13=(13,169,181,1)
def need(ok,msg):
 if not ok: raise ValueError(msg)
def canonical(x): return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def digest(b): return hashlib.sha256(b).hexdigest()
def member_bytes(z,suffix):
 names=[n for n in z.namelist() if n.endswith('/'+suffix)]
 need(len(names)==1,'unique member '+suffix);return z.read(names[0])
def inputs():
 raw=(ROOT/'inputs/parent_evidence.zip').read_bytes();need(digest(raw)==PARENT_SHA,'parent digest')
 with zipfile.ZipFile(io.BytesIO(raw)) as z:
  cb=member_bytes(z,'certificates/04_projection_delta.json')
  pp=member_bytes(z,'inputs/parent_evidence.zip')
 with zipfile.ZipFile(io.BytesIO(pp)) as z:sb=member_bytes(z,'inputs/parent_snapshot.json')
 return json.loads(sb),json.loads(cb),{'parent_zip_sha256':digest(raw),'parent_projection_member_sha256':digest(cb),'nested_snapshot_sha256':digest(sb),'nested_zip_sha256':digest(pp),'overview_sha256':digest((ROOT/'inputs/OVERVIEW-2026-10-02.md.txt').read_bytes()),'parent_handoff_sha256':digest((ROOT/'inputs/parent_HANDOFF.md').read_bytes()),'parent_proofs_sha256':digest((ROOT/'inputs/parent_PROOFS.md').read_bytes()),'historical_mathematics_replayed':False}
def step(d,y,m):return ((18817*d+32592*y+9408)%m,(10864*d+18817*y+5432)%m)
def orbit(m):
 d=y=1;out=[]
 while True:
  out.append([d,y]);d,y=step(d,y,m)
  if(d,y)==(1,1):return out
  need(len(out)<1000000,'orbit cap exceeded; not a mathematical bound')
def mm(a,b,m):return [[sum(a[i][k]*b[k][j] for k in range(3))%m for j in range(3)] for i in range(3)]
def source(q,m):
 a=[[18817,32592,9408],[10864,18817,5432],[0,0,1]];b=[[1,0,0],[0,1,0],[0,0,1]]
 while q:
  if q&1:b=mm(b,a,m)
  a=mm(a,a,m);q//=2
 return [sum(b[0])%m,sum(b[1])%m]
def square(A,d,y,B,m):
 v=A*y
 return (v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%m
def core(d,y,A,m):
 v=A*y%m;Q=(d+v)%m;ans=[]
 for h in range(m):
  H=(h*d-Q)*pow(4,-1,m)%m;P=(Q+h*v)%m
  if (4*v*H*H-P*Q*Q+1)%m==0:
   ans.append([H,h,P,Q,(2*P*Q*H+2)%m,(4*v*H**3+H+Q)%m])
 return sorted(ans)
def true47():
 A=10152;den=3384;m=47;o=orbit(den*m);T=math.lcm(len(o),4140);rows=[]
 counts={'nonsquare':0,'unit_square':0,'zero_square':0,'after_same_c_s_rows':0,'after_same_c_s_roots':0}
 for a,off in enumerate((1794,3174)):
  for r in range(T//4140):
   q=off+4140*r;D,Y=o[q%len(o)];need((D-1)%den==0,'actual integer B')
   B=(D-1)//den%m;d,y=D%m,Y%m;S=square(A,d,y,B,m);zz=[z for z in range(m) if z*z%m==S]
   counts['nonsquare' if not zz else 'unit_square' if S else 'zero_square']+=1
   rr=[]
   for H,h,P,Q,n,N in core(d,y,A,m):
    z=(2*d*H-Q*Q)%m
    if z*z%m!=S:continue
    ee=[e for e in range(15,2070,90) if 3*pow(2,e,m)%m==n]
    rr.append({'H':H,'h':h,'P':P,'Q':Q,'n':n,'N':N,'z':z,'s_mod2070':ee})
   passing=[x for x in rr if x['s_mod2070']]
   counts['after_same_c_s_rows']+=bool(passing);counts['after_same_c_s_roots']+=len(passing)
   rows.append({'offset_index':a,'r_mod47':r,'q_mod194580':q%T,'D':D,'Y':Y,'B_mod47':B,'S_mod47':S,'square_roots':zz,'actual_core_roots':rr})
 need(len(o)==3243 and T==194580,'complete periods')
 need(counts==dict(nonsquare=46,unit_square=46,zero_square=2,after_same_c_s_rows=36,after_same_c_s_roots=46),'true47 complete result')
 return {'A':A,'denominator':den,'source_modulus':den*m,'source_period':len(o),'source_orbit_sha256':digest(canonical(o)),'entry_offsets':[1794,3174],'entry_step':4140,'joint_period':T,'rows':rows,'counts':counts,'B_formulas_mod47':[[17,32],[12,32]],'S_formulas_mod47':[[22,32],[17,32]],'c':3,'parent_s_mod90':15,'zero_square_rows':[r['q_mod194580'] for r in rows if r['S_mod47']==0],'whole_branch_not_closed_by_this_finite_ring':True}
def q13():
 return {'source_mod9':orbit(9),'source_mod13':orbit(13),'source_mod7':orbit(7),'source_mod336':orbit(336),'Q13_positive_power_cycle_mod336':list(C13),'Q13_positive_power_cycle_mod7':[6,1],'Q13_triggers':[{'q_mod3':0,'A_mod13':12},{'q_mod3':2,'A_mod13':1}],'nonunit_y_row':{'q_mod3':1,'d_mod13':3,'y_mod13':0,'v_mod13':0,'Q_mod13':3,'Q13_trigger':False},'projected_gate':{'A_divisor':27,'A_mod13':12,'required_A_plus1_mod336':sorted(C13)},'fixed_A10152':{'A_mod27':0,'A_mod13':12,'A_mod7':2,'Q_mod7':3,'Q_mod13':0,'Q_mod336':73,'conclusion':'If the adopted original core had A=10152, its original full Q would be 13^a with a>=1, but Q mod7=3. Contradiction for all exponents.'},'scope':'Original Q itself, not its radical or a truncated exponent. No original P prime base is assigned.'}
def norm3():
 u,x=1,0
 for _ in range(24):u,x=2*u+3*x,u+2*x
 tests=[]
 for r in range(1,8):
  for w in (1,2,4,5,7,8):
   q=3**r*w;m=3**(r+2);d,y=source(q,m);lead=((d-1)//3**(r+1))%3
   need((d-1)%3**(r+1)==0 and lead==2*w%3,'exact normalized 3-adic first digit')
   tests.append([q,r,w,d,m,lead])
 phase=[]
 for e in (2,3,4):
  for u3 in (1,2):
   for c in (1,3):
    B3=2 if c==1 else 1
    phase.append({'e_case':'2' if e==2 else '3' if e==3 else '>=4','unit_A_over_3e_mod3':u3,'c':c,'B_mod3':B3,'normalized_q_mod3':u3*B3%3 if e==2 else 2*u3*B3%3,'q_mod9_values':[j for j in range(9) if j%3==u3*B3%3] if e==2 else [3*(2*u3*B3%3)] if e==3 else [0]})
 return {'alpha24':[u,x],'alpha24_mod9':[u%9,x%9],'source_mod9':orbit(9),'low_case':'If 3 does not divide q, (d_q-1)/3 = q mod3.','high_case':'If r=v3(q)>=1, d_q-1 = 6q mod3^(r+2); in particular v3(d_q-1)=r+1 and (d_q-1)/3^(r+1)=2q/3^r mod3.','proof':'Exact binomial valuation in Z[sqrt3]; PROOFS P4. Diagnostics are not the proof for all exponents.','full_distribution_phase_table':phase,'diagnostics_only':tests,'A10152_c3':{'e':3,'u_mod3':1,'B_mod3':1,'required_q_mod9':6,'remaining_q_mod4140':3174},'projection_counted':False,'old_dependencies':['FULL3 complete allocation','TRUE3 relation between B mod3 and the same c; rederived from original square/n in this report'],'not_claimed_new':'The valuation magnitude v3(d-1)=1+v3(q) and FULL3 were already known; the normalized high-layer unit and its c-dependent phase are the new interface.'}
def secondary():
 rows=[]
 for q in (3,6):
  d,y=source(q,17);rows.append({'q_mod9':q,'d':d,'y':y,'v':10152*y%17,'Q':(d+10152*y)%17,'core_roots':core(d,y,10152,17)})
 return {'source_mod17':orbit(17),'A_mod17':10152%17,'rows':rows,'allowed_n_for_c3_odd_s_mod17':sorted({3*pow(2,s,17)%17 for s in(1,3,5,7)}),'whole_A10152_closed':True,'counted_separately':False,'note':'Second author-level proof for the same already counted branch; not an external independent review. The primary proof uses original Q13 and does not require the n phase.'}
class Parent:
 def __init__(self,p,cert,phase=True):
  self.p=p;self.phase=phase;self.ledger=next(t for t in cert['ledgers'] if t['adopt_old_R27']==phase)
  self.rows={(r[0],r[1]):r for r in self.ledger['rows']};self.R=set(p['R']);self.bad=set(p['bad725']);self.fiber={(r[0],r[1],r[2]):r for r in p['ancestor_fibers']};self.cm={r['k']:r for r in p['base11_projection']['rows']};self.xm={r['k']:r['masks41_to11'] for r in p['parent_projection']['source743_masks']}
 def member(self,A):
  if A%3031056 not in self.R or A%725 in self.bad:return False
  if A%5==4 and((A+1)%336 not in{5,25,125,289,101,169,173,193,293,121,269,1} or A%27 in(9,18)):return False
  k=A%10416;r=self.fiber.get((k,A%27,A%5))
  if r is None or not((r[-1] if A%191==0 else r[-2])>>(A%19)&1):return False
  t=self.cm[k];mask=t['mask11'] if t['not_divisible7'] else t['masks_by_u_a41'][(A//7)%7][A%41]
  if not(mask>>(A%11)&1):return False
  if A%743==0:
   if A%7==0:
    if (A//7)%7:return False
   elif not(self.xm[k][A%41]>>(A%11)&1):return False
  if A%769==0 and A%16 not in(0,14):return False
  if A%17==0 and A%3==0 and A%81!=0:return False
  if A%103==0 and A%10609!=0:return False
  rr=self.rows.get((k,A%19))
  if rr is None:return False
  mask=rr[4] if A%5 else rr[7][(A//5)%5][0]
  return bool(mask>>(A%11)&1)
 def new_member(self,A):return self.member(A) and not(A%27==0 and A%13==12 and (A+1)%336 not in C13)
 def count(self):
  groups=defaultdict(int)
  for rr in self.p['ancestor_fibers']:
   k,z,r5,w=rr[:4];gm,hm=rr[-2:];fac=(769 if k%16 in(0,14) else 768)*(51 if k%3 else 49 if z==0 else 48)
   for b in range(19):
    t=190*((gm>>b)&1)+((hm>>b)&1)
    if not t:continue
    r=self.rows[k,b]
    if r5==0:
     need(w%129==0,'actual mod725 distribution')
     n=w//129*sum(num*(742*f[1]+f[2]) for num,f in zip((13,29,29,29,29),r[7]))
    else:n=w*(742*r[5]+r[6])
    groups[k%336,z]+=n*t*fac*10507
  old=sum(groups.values());need(old==self.ledger['new_count'],'exact current parent count')
  W=sum(n for(a,z),n in groups.items() if z==0 and(a+1)%336 not in C13)
  mn=next(a for a in range(2,100000,2) if self.new_member(a))
  return {'adopt_old_R27':self.phase,'parent_count':old,'parent_lifted_count':13*old,'new_count':13*old-W,'net_deleted':W,'bad_parent_mass':W,'minimum':mn,'parent_below_new_minimum':[a for a in range(2,mn,2) if self.member(a)],'group_columns':['Amod336','Amod27','current_parent_mass'],'groups':[[a,z,n] for(a,z),n in sorted(groups.items())]}
def projection(p,pc):
 M=pc['period'];need(math.gcd(M,13)==1,'new CRT factor is coprime')
 return {'old_period':M,'new_period':13*M,'lift_factor':13,'ledgers':[Parent(p,pc,b).count() for b in(True,False)],'gate':'If 27|A and A=12mod13 then A+1mod336 must lie in {1,13,169,181}.','normalized3_phase_not_counted':True,'other_Q13_source_sign_not_counted':True,'actual_NC3_count':False,'all_history_net_audit':False,'joint_period_enumerated':False,'relaxation':'All frozen parent Boolean gates and previous ledger separation remain; only the specified A-only Q13 implication is counted. No joint reconstruction of all historical P/Q roots.'}
def crt(vals,mods):
 a=0;m=1
 for b,n in zip(vals,mods):a+=m*((b-a)*pow(m,-1,n)%n);m*=n
 return a%m

def boundary():
 A=10152;den=3384;q=3174;delta=194580;primes=[3,5,7,11,13,19,47];m=math.prod(primes)
 D,Y=source(q,den*m);need((D-1)%den==0,'boundary actual divisor');B=(D-1)//den%m;d,y=D%m,Y%m
 H=crt([2,4,6,6,6,1,20],primes);h=crt([0,4,6,6,11,3,34],primes);v=A*y%m;Q=(d+v)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m;N=(4*v*H**3+H+Q)%m;Z=(2*d*H-Q*Q)%m;S=square(A,d,y,B,m)
 need(source(delta,den*m)==[1,1],'whole-family source return')
 need((h*d-4*H-Q)%m==0 and (4*v*H*H-P*Q*Q+1)%m==0 and(2*N-n*Q)%m==0 and(Z*Z-S)%m==0,'original simultaneous equations')
 need(n==3*pow(2,105,m)%m and Q%13==0 and Q%7==3,'lost full Q condition')
 return {'A':A,'q_offset':q,'q_step':delta,'r_nonnegative':True,'modulus':m,'source_modulus':den*m,'prime_factors':primes,'D':D,'Y':Y,'d':d,'y':y,'B':B,'H':H,'h':h,'v':v,'P':P,'Q':Q,'n':n,'N':N,'Z':Z,'S':S,'c':3,'s_offset':105,'s_period':4140,'H_residues':[H%p for p in primes],'h_residues':[h%p for p in primes],'source_return':source(delta,den*m),'passes':'Actual Pell/integer distribution, original linear/E/F/N/n and square congruences at the single combined modulus, same c=3 and s=105mod4140. Also the new high-3 unit phase.','fails':'The original Q is required to be a single full odd-prime power. Its actual residue is divisible by13 but is3mod7, impossible for any positive power of13.','status':'Whole weak modular family is excluded in this round; not a surviving original input or a counterexample.','missing':['exact integer square S','positive original integers H,h','different odd-prime full P/Q powers','exact integer n=3*2^s','original legal j and noCommon']}
def next_entry(p,pc):
 A=11286;pp=Parent(p,pc);need(pp.new_member(A),'next projection membership')
 phase=[{'c':1,'q_mod180':30,'coarse_s_mod30':[6]},{'c':3,'q_mod180':150,'coarse_s_mod30':[6,21]}]
 for r in phase:
  q=r['q_mod180'];D,Y=source(q,3762*11);need((D-1)%3762==0,'next integer quotient')
 return {'A':A,'factorization':[[2,1],[3,3],[11,1],[19,1]],'true_B':'(d-1)/3762','q_positive':True,'phase_split':phase,'A_over27_mod3':1,'source_modulus_for_B_mod11':41382,'source_modulus_for_B_mod19':71478,'P_Q_bases':'Unspecified original different odd primes; no13 base is transferred from A10152.','old_R27_adopted_separately':True,'next_falsifiable_check':'For each same-c branch recover actual Bmod11 and Bmod19 by integer division from dmod3762p, retaining the listed q/c/s phase. Then join the actual square and original E/n with full P/Q conditions.','status':'Lowest A-only necessary projection after this round; normalized3 adds the displayed conditional row split. These rows have not been shown to restore an original input, and their true quotient terminal was not executed.'}
def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');ns=ap.parse_args();ns.out.mkdir(parents=True,exist_ok=True)
 p,pc,prov=inputs()
 data={'01_true47_A10152.json':true47(),'02_complete_Q13.json':q13(),'03_normalized3.json':norm3(),'04_secondary_FN17.json':secondary(),'05_projection_delta.json':projection(p,pc),'06_boundary_family.json':boundary(),'07_next_entry.json':next_entry(p,pc),'08_source_adoption.json':prov}
 for name,obj in data.items():
  b=canonical(obj);(ns.out/name).write_bytes(b);print(name,len(b),digest(b),flush=True)
 print('GENERATE PASS: 8 new certificates',flush=True)
 for ledger in data['05_projection_delta.json']['ledgers']:print({k:v for k,v in ledger.items() if k not in('groups','group_columns')},flush=True)
if __name__=='__main__':main()
