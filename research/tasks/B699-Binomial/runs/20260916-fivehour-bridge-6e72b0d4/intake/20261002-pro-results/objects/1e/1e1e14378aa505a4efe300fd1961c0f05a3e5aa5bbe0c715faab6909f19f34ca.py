"""Receiver: does not import the generator. Exact ring, H-root and CRT-fiber checks."""
from __future__ import annotations
import argparse, collections, hashlib, io, json, math, sys, zipfile
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
EXPECTED_PARENT='47147e49bf04db159e50f8a96ad42134089893c93eeadf0d118c304d7dd41ecf'
def check(p,msg):
 if not p:raise ValueError(msg)
def enc(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(x):return hashlib.sha256(x).hexdigest()
def take(z,path):
 ns=[n for n in z.namelist() if n.endswith('/'+path) and n.count('/')==path.count('/')+1];check(len(ns)==1,'unique frozen path');return z.read(ns[0])
def load_parent():
 b=(ROOT/'inputs/parent_evidence.zip').read_bytes();check(sha(b)==EXPECTED_PARENT,'parent ZIP SHA')
 with zipfile.ZipFile(io.BytesIO(b)) as z:
  cb=take(z,'certificates/04_projection_delta.json');zz=take(z,'inputs/parent_evidence.zip')
  check(take(z,'HANDOFF.md')==(ROOT/'inputs/parent_HANDOFF.md').read_bytes(),'parent handoff exact extraction')
  check(take(z,'PROOFS.md')==(ROOT/'inputs/parent_PROOFS.md').read_bytes(),'parent proofs exact extraction')
 with zipfile.ZipFile(io.BytesIO(zz)) as z:ss=take(z,'inputs/parent_snapshot.json')
 meta={'parent_zip_sha256':sha(b),'parent_projection_member_sha256':sha(cb),'nested_snapshot_sha256':sha(ss),'nested_zip_sha256':sha(zz),'overview_sha256':sha((ROOT/'inputs/OVERVIEW-2026-10-02.md.txt').read_bytes()),'parent_handoff_sha256':sha((ROOT/'inputs/parent_HANDOFF.md').read_bytes()),'parent_proofs_sha256':sha((ROOT/'inputs/parent_PROOFS.md').read_bytes()),'historical_mathematics_replayed':False}
 return json.loads(ss),json.loads(cb),meta

def mul(a,b,m):return ((a[0]*b[0]+3*a[1]*b[1])%m,(a[0]*b[1]+a[1]*b[0])%m)
def ringpower(k,m):
 a=(2,1);b=(1,0)
 while k:
  if k&1:b=mul(a,b,m)
  a=mul(a,a,m);k>>=1
 return b
def src(q,m):
 u,x=ringpower(8*q+1,2*m)
 check(u%2==0 and x%2==1,'integer half coordinates')
 return [(3*x-1)//2%m,u//2%m]
def fullorbit(m):
 u,x=2,1;g=ringpower(8,2*m);out=[]
 while True:
  pair=[(3*x-1)//2%m,u//2%m]
  if out and pair==[1,1]:return out
  check(len(out)<1000000,'receiver orbit cap')
  out.append(pair);u,x=mul((u,x),g,2*m)
def S_mod(A,d,y,B,m):
 # Evaluate the actual quotient identity form after exact integer substitutions.
 v=A*y
 return (v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%m
def hroots(d,y,A,m):
 v=A*y%m;Q=(d+v)%m;out=[]
 for H in range(m):
  hs=[(4*H+Q)*pow(d,-1,m)%m] if math.gcd(d,m)==1 else range(m)
  for h in hs:
   if (h*d-4*H-Q)%m:continue
   P=(Q+h*v)%m
   if(4*v*H*H-P*Q*Q+1)%m:continue
   n=(2*P*Q*H+2)%m;N=(4*v*H**3+H+Q)%m
   out.append([H,h,P,Q,n,N])
 return sorted(out)
def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def check_true47(c):
 check(all(prime(p) for p in(3,5,7,11,13,17,19,47)),'small primes')
 o=fullorbit(159048);check(len(o)==c['source_period']==3243,'complete true47 period')
 check(sha(enc(o))==c['source_orbit_sha256'],'orbit digest')
 T=math.lcm(4140,len(o));check(T==c['joint_period']==194580,'true47 joint period')
 check(c['source_modulus']==159048 and c['denominator']==3384 and c['A']==10152,'quotient constants')
 check(c['entry_offsets']==[1794,3174] and c['entry_step']==4140,'entry coverage')
 exp_rows=[];counts=dict(nonsquare=0,unit_square=0,zero_square=0,after_same_c_s_rows=0,after_same_c_s_roots=0)
 for k,off in enumerate([1794,3174]):
  for r in range(47):
   q=off+4140*r;D,Y=o[q%len(o)];check((D-1)%3384==0,'actual B divisibility')
   B=((D-1)//3384)%47;d,y=D%47,Y%47;S=S_mod(10152,d,y,B,47)
   zz=[z for z in range(47) if pow(z,2,47)==S]
   check(B==((17 if k==0 else 12)+32*r)%47,'actual affine B')
   counts['nonsquare' if not zz else 'unit_square' if S else 'zero_square']+=1
   rr=[]
   for z in zz:
    check(math.gcd(2*d,47)==1,'only invert the actual unit 2d')
    H=(z+pow((d+10152*y)%47,2,47))*pow(2*d,-1,47)%47
    Q=(d+10152*y)%47;h=(4*H+Q)*pow(d,-1,47)%47;P=(Q+h*10152*y)%47
    check((4*10152*y*H*H-P*Q*Q+1)%47==0,'original E, not divided E')
    n=(2*P*Q*H+2)%47;N=(4*10152*y*H**3+H+Q)%47
    es=[e for e in range(15,2070,90) if(3*pow(2,e,47)-n)%47==0]
    rr.append(dict(H=H,h=h,P=P,Q=Q,n=n,N=N,z=z,s_mod2070=es))
   rr.sort(key=lambda x:(x['H'],x['h'],x['P'],x['Q'],x['n'],x['N']))
   passing=[r for r in rr if r['s_mod2070']];counts['after_same_c_s_rows']+=bool(passing);counts['after_same_c_s_roots']+=len(passing)
   exp_rows.append(dict(offset_index=k,r_mod47=r,q_mod194580=q%T,D=D,Y=Y,B_mod47=B,S_mod47=S,square_roots=zz,actual_core_roots=rr))
 check(c['rows']==exp_rows,'all 94 true quotient rows and all original roots')
 check(c['counts']==counts,'true47 counts');check(counts['after_same_c_s_rows']==36 and counts['after_same_c_s_roots']==46,'no false finite-ring closure')
 check(c['B_formulas_mod47']==[[17,32],[12,32]] and c['S_formulas_mod47']==[[22,32],[17,32]],'linear formulas')
 check(c['zero_square_rows']==[59754,189474],'zero square rows kept')
 check(c['c']==3 and c['parent_s_mod90']==15,'same original c/s')

def check_Q13(c):
 for m in (9,13,7,336):check(c['source_mod'+str(m)]==fullorbit(m),'Q13 full source '+str(m))
 v=13;cyc=[]
 while v not in cyc:cyc.append(v);v=v*13%336
 check(v==13 and cyc==c['Q13_positive_power_cycle_mod336']==[13,169,181,1],'all positive exponents, no zero exponent substitution')
 check(c['Q13_positive_power_cycle_mod7']==[6,1],'13 power sign modulo7')
 check(c['Q13_triggers']==[{'q_mod3':0,'A_mod13':12},{'q_mod3':2,'A_mod13':1}],'both possible source signs')
 check(c['nonunit_y_row']==dict(q_mod3=1,d_mod13=3,y_mod13=0,v_mod13=0,Q_mod13=3,Q13_trigger=False),'no inversion of zero y')
 check(c['projected_gate']==dict(A_divisor=27,A_mod13=12,required_A_plus1_mod336=[1,13,169,181]),'precise projected gate')
 f=c['fixed_A10152'];check([f[k] for k in ('A_mod27','A_mod13','A_mod7','Q_mod7','Q_mod13','Q_mod336')]==[0,12,2,3,0,73],'fixed branch original Q residues')
 check(all(10153%7!=pow(13,a,7) for a in(1,2)),'complete two-period contradiction')

def check_norm3(c):
 # Exact, non-modular multiplication gives epsilon^24 separately from generator recurrence.
 b=(1,0)
 for _ in range(3):b=(b[0]*18817+3*b[1]*10864,b[0]*10864+b[1]*18817)
 check(list(b)==c['alpha24'] and [v%9 for v in b]==c['alpha24_mod9']==[1,6],'exact alpha24 first digit')
 check(c['source_mod9']==fullorbit(9),'low ramified layer')
 expect=[]
 for r in range(1,8):
  for w in(1,2,4,5,7,8):
   q=3**r*w;m=3**(r+2);d,y=src(q,m)
   check((d-1-6*q)%m==0,'normalized high-layer test')
   lead=(d-1)//3**(r+1)%3;expect.append([q,r,w,d,m,lead])
 check(c['diagnostics_only']==expect,'complete listed diagnostics, not a universal proof')
 for row in c['full_distribution_phase_table']:
  e=row['e_case'];u=row['unit_A_over_3e_mod3'];cn=row['c'];B=2 if cn==1 else 1
  needphase=u*B%3 if e=='2' else 2*u*B%3
  check(row['B_mod3']==B and row['normalized_q_mod3']==needphase,'actual c/B/unit relation')
  qs=[j for j in range(9) if j%3==needphase] if e=='2' else [3*needphase] if e=='3' else [0]
  check(row['q_mod9_values']==qs,'low versus high 3 layers')
 check(len(c['full_distribution_phase_table'])==12,'phase table coverage')
 check(c['A10152_c3']==dict(e=3,u_mod3=1,B_mod3=1,required_q_mod9=6,remaining_q_mod4140=3174),'normalized phase for actual branch')
 check(c['projection_counted'] is False,'do not mix uncounted gate')

def check_secondary(c):
 check(c['source_mod17']==fullorbit(17) and c['A_mod17']==3,'secondary source')
 for row,j in zip(c['rows'],(3,6)):
  d,y=src(j,17);check(row==dict(q_mod9=j,d=d,y=y,v=10152*y%17,Q=(d+10152*y)%17,core_roots=hroots(d,y,10152,17)),'secondary full H roots')
 allowed=sorted({3*pow(2,e,17)%17 for e in(1,3,5,7)})
 check(c['allowed_n_for_c3_odd_s_mod17']==allowed,'same odd exponent set')
 check(all(r[4] not in allowed for row in c['rows'] for r in row['core_roots']),'all secondary roots rejected')

# Frozen-parent membership is rechecked arithmetically; no historical solver imported.
MEMBERSHIP_CACHE={}
def membership(A,p,rows):
 if id(p) not in MEMBERSHIP_CACHE:
  MEMBERSHIP_CACHE[id(p)]=(set(p['R']),set(p['bad725']),{(r[0],r[1],r[2]):r for r in p['ancestor_fibers']},{r['k']:r for r in p['base11_projection']['rows']},{r['k']:r['masks41_to11'] for r in p['parent_projection']['source743_masks']})
 R,bad,fibers,cm,xm=MEMBERSHIP_CACHE[id(p)]
 if A%3031056 not in R or A%725 in bad:return False
 if A%5==4 and((A+1)%336 not in (5,25,125,289,101,169,173,193,293,121,269,1) or A%27 in(9,18)):return False
 k=A%10416
 rr=fibers.get((k,A%27,A%5))
 if rr is None or not ((rr[-1] if A%191==0 else rr[-2])>>(A%19)&1):return False
 o=cm[k]
 mask=o['mask11'] if o['not_divisible7'] else o['masks_by_u_a41'][(A//7)%7][A%41]
 if not(mask>>(A%11)&1):return False
 if A%743==0:
  if A%7==0 and (A//7)%7:return False
  if A%7 and not(xm[k][A%41]>>(A%11)&1):return False
 if A%769==0 and A%16 not in(0,14):return False
 if A%17==0 and A%3==0 and A%81:return False
 if A%103==0 and A%10609:return False
 r=rows.get((k,A%19))
 if r is None:return False
 ma=r[4] if A%5 else r[7][A//5%5][0]
 return bool(ma>>(A%11)&1)

def verify_projection(c,p,pc):
 M=pc['period'];check(c['old_period']==M and c['new_period']==13*M and math.gcd(M,13)==1,'CRT lift by13')
 cm={r['k']:r for r in p['base11_projection']['rows']};xm={r['k']:r['masks41_to11'] for r in p['parent_projection']['source743_masks']}
 bad=set(p['bad725']);nums=[sum(a%5==0 and a//5%5==u and a not in bad for a in range(725)) for u in range(5)]
 check(nums==[13,29,29,29,29],'actual allowed mod725 fibers, not equal weights')
 def factor(k,mask):
  o=cm[k]
  if o['not_divisible7']:
   f=7*41*(o['mask11']&mask).bit_count();g=7*sum((x&mask).bit_count() for x in xm[k])
  else:
   f=sum((x&mask).bit_count() for rr in o['masks_by_u_a41'] for x in rr);g=sum((x&mask).bit_count() for x in o['masks_by_u_a41'][0])
  return 742*f+g
 for lc in c['ledgers']:
  old=next(x for x in pc['ledgers'] if x['adopt_old_R27']==lc['adopt_old_R27']);rows={(r[0],r[1]):r for r in old['rows']}
  gg=collections.defaultdict(int)
  # Different accumulation: sum actual parent mask intersections before summing fibers.
  for rr in p['ancestor_fibers']:
   k,z,r5,w=rr[:4];gf,hf=rr[-2:];total=0
   for b in range(19):
    occ=190*((gf>>b)&1)+((hf>>b)&1)
    if not occ:continue
    r=rows[k,b]
    if r5==0:
     check(w%129==0,'divisible fiber for five subfamilies')
     val=sum(num*factor(k,x[0]) for num,x in zip(nums,r[7]))*(w//129)
    else:val=w*factor(k,r[4])
    total+=occ*val
   # Enumerate the actual A mod17 and mod81 choices instead of trusting49/48/51.
   mult17=sum(1 for b17 in range(17) for b81 in (z,z+27,z+54) if b17!=0 or k%3!=0 or b81==0)
   mult769=769 if k%16 in(0,14) else 768
   gg[k%336,z]+=total*mult17*mult769*10507
  group_rows=[[a,z,n] for(a,z),n in sorted(gg.items())];check(lc['groups']==group_rows,'exact correlated parent weights')
  mass=sum(gg.values());W=sum(n for(a,z),n in gg.items() if z==0 and(a+1)%336 not in(1,13,169,181))
  check(mass==lc['parent_count']==old['new_count'],'direct parent count reconstructed')
  check(lc['parent_lifted_count']==mass*13 and lc['net_deleted']==W==lc['bad_parent_mass'] and lc['new_count']==mass*13-W,'same-period exact difference')
  mn=lc['minimum'];below=[]
  for A in range(2,mn+1,2):
   if not membership(A,p,rows):continue
   reject=A%27==0 and A%13==12 and(A+1)%336 not in(1,13,169,181)
   if A<mn:check(reject,'no lower new projection member');below.append(A)
   else:check(not reject,'claimed minimum survives')
  check(below==lc['parent_below_new_minimum'],'complete parent lower projection list')
 check(c['actual_NC3_count'] is False and c['joint_period_enumerated'] is False,'correct counting boundary')

def check_boundary(c):
 A=10152;q=c['q_offset'];T=c['q_step'];m=c['modulus'];check(m==13408395 and q==3174 and T==194580,'boundary family constants')
 check(c['source_modulus']==3384*m,'actual quotient modulus')
 D,Y=src(q,3384*m);check((D-1)%3384==0,'boundary true divisor')
 d,y=D%m,Y%m;B=(D-1)//3384%m
 for k,x in dict(D=D,Y=Y,d=d,y=y,B=B).items():check(c[k]==x,'boundary actual '+k)
 H,h=c['H'],c['h'];v=A*y%m;Q=(d+v)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m;N=(4*v*H**3+H+Q)%m;Z=(2*d*H-Q*Q)%m;S=S_mod(A,d,y,B,m)
 for k,x in dict(v=v,Q=Q,P=P,n=n,N=N,Z=Z,S=S).items():check(c[k]==x,'boundary core '+k)
 check((h*d-4*H-Q)%m==0 and (4*v*H*H-P*Q*Q+1)%m==0,'boundary original linear/E')
 check((4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m==0 and (2*N-n*Q)%m==0 and (Z*Z-S)%m==0,'boundary F/N/S')
 check(c['c']==3 and c['s_offset']==105 and c['s_period']==4140 and n==3*pow(2,105,m)%m,'same original phase in all listed rings')
 check(src(T,3384*m)==[1,1]==c['source_return'],'infinite family fixed residue proof')
 for p in c['prime_factors']:
  check((3*(pow(2,105+4140,p)-pow(2,105,p)))%p==0,'all positive exponent representatives covered')
 check(Q%13==0 and Q%7==3,'specific missing full Q-power condition')
 check(c['H_residues']==[H%p for p in c['prime_factors']] and c['h_residues']==[h%p for p in c['prime_factors']],'same H/h residues')

def check_next(c,p,pc):
 check(c['A']==11286 and c['factorization']==[[2,1],[3,3],[11,1],[19,1]],'next A factorization')
 rows={(r[0],r[1]):r for r in next(l for l in pc['ledgers'] if l['adopt_old_R27'])['rows']}
 check(membership(11286,p,rows) and not(11286%27==0 and 11286%13==12),'next survives the precisely counted gate')
 check(c['true_B']=='(d-1)/3762' and c['source_modulus_for_B_mod11']==41382 and c['source_modulus_for_B_mod19']==71478,'next true quotient')
 check(c['phase_split']==[{'c':1,'q_mod180':30,'coarse_s_mod30':[6]},{'c':3,'q_mod180':150,'coarse_s_mod30':[6,21]}],'conditional high3 q split')
 for cn,q in [(1,30),(3,150)]:
  check(q%5==0 and q%4==2 and q%9==(3 if cn==1 else 6),'next necessary CRT')
 check(fullorbit(11)[0]==[1,1] and [j for j,x in enumerate(fullorbit(11)) if x[0]==1]==[0],'actual11 source q multiple5')

# Sparse integer-polynomial checks of the same-input identities (not random testing).
def verify_identities():
 nvars=6;zero=(0,)*nvars
 def add(a,b):
  c=a.copy()
  for k,v in b.items():c[k]=c.get(k,0)+v
  return {k:v for k,v in c.items() if v}
 def scale(a,z):return {k:v*z for k,v in a.items() if v*z}
 def sub(a,b):return add(a,scale(b,-1))
 def mulp(a,b):
  c={}
  for i,x in a.items():
   for j,y in b.items():
    k=tuple(u+v for u,v in zip(i,j));c[k]=c.get(k,0)+x*y
  return {k:v for k,v in c.items() if v}
 def pw(a,n):
  b={zero:1}
  for _ in range(n):b=mulp(b,a)
  return b
 vs=[]
 for i in range(nvars):z=[0]*nvars;z[i]=1;vs.append({tuple(z):1})
 d,v,H,h,B,y=vs;one={zero:1};Q=add(d,v);P=add(Q,mulp(h,v));n=add(scale(mulp(mulp(P,Q),H),2),scale(one,2));E=add(sub(scale(mulp(v,pw(H,2)),4),mulp(P,pw(Q,2))),one)
 F=add(sub(sub(scale(mulp(mulp(d,v),pw(H,2)),4),scale(mulp(mulp(v,pw(Q,2)),H),4)),pw(Q,4)),d)
 linear=sub(sub(mulp(h,d),scale(H,4)),Q);N=add(add(scale(mulp(v,pw(H,3)),4),H),Q);Z=sub(scale(mulp(d,H),2),pw(Q,2))
 S=add(add(add(add(add(pw(v,4),scale(mulp(d,pw(v,3)),5)),scale(mulp(pw(d,2),pw(v,2)),10)),scale(mulp(pw(d,3),v),10)),scale(pw(d,4),5)),mulp(mulp(pw(d,2),B),y))
 exprs=[sub(sub(F,mulp(d,E)),mulp(mulp(v,pw(Q,2)),linear)),sub(sub(scale(N,2),mulp(n,Q)),scale(mulp(H,E),2)),sub(add(sub(mulp(v,pw(Z,2)),pw(Q,5)),pw(d,2)),mulp(d,F)),sub(add(sub(mulp(v,S),pw(Q,5)),pw(d,2)),mulp(pw(d,2),add(sub(mulp(mulp(v,B),y),pw(d,3)),one)))]
 check(all(x=={} for x in exprs),'four exact original polynomial identities')

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--cert-dir',type=Path,default=ROOT/'certificates');args=ap.parse_args()
 def read(n):return json.loads((args.cert_dir/n).read_text())
 p,pc,meta=load_parent();check(read('08_source_adoption.json')==meta,'exact input provenance')
 verify_identities();check_true47(read('01_true47_A10152.json'));check_Q13(read('02_complete_Q13.json'));check_norm3(read('03_normalized3.json'));check_secondary(read('04_secondary_FN17.json'));verify_projection(read('05_projection_delta.json'),p,pc);check_boundary(read('06_boundary_family.json'));check_next(read('07_next_entry.json'),p,pc)
 print('VERIFY PASS: 8 certificates; 94 true47 rows; all roots; four integer-polynomial identities; exact same-period parent difference; boundary and next-entry checks.',flush=True)
 print('Universal high-3 theorem is supported by PROOFS.md; finite normalization diagnostics are not an all-exponent machine proof.',flush=True)
if __name__=='__main__':main()
