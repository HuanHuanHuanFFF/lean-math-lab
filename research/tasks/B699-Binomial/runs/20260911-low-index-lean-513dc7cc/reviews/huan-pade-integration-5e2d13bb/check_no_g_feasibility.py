from pathlib import Path
from fractions import Fraction as F
from hashlib import sha256
from datetime import datetime,timezone
import importlib.util,sys,json,re,math,itertools,time
ROOT=Path(__file__).resolve().parent
RUN=ROOT.parents[1]
I18=RUN/'experiments/huan-i18-adoption-5e2d13bb/REPORT.md'
PROFILES=RUN.parent/'20260910-asymmetric-pade-022987af/delivery/results/refined_profiles.json'
VENDOR=RUN/'experiments/huan-i18-adoption-5e2d13bb/code/vendor/rational_intervals.py'
spec=importlib.util.spec_from_file_location('nog_exact_intervals',VENDOR)
ri=importlib.util.module_from_spec(spec);sys.modules[spec.name]=ri;spec.loader.exec_module(ri)
I,logq,logI,sqrtq=ri.I,ri.logq,ri.logI,ri.sqrtq
start=time.monotonic()

def seedkey(r):return tuple(int(r[k]) for k in ('p','q','k0','l0','a','b','D0'))

def data(r):
 p,q,k,l,a,b,D=seedkey(r);P=p**k;Q=q**l
 assert a*P-b*Q==D and D>0 and a*P>0 and min(P,Q)>1
 return P,Q,a,b,D,F(D,a*P)

def kernel_logs(s,z):
 R=sqrtq(s*s*z*z+4-4*z,bits=160)
 # Rationalized source formulas avoid small-z cancellation.
 u1=2*(s-1)/(s*(2-z)+R)
 u2=2/(s*z+2+R)
 assert 0<u1.lo<=u1.hi<1 and 0<u2.lo<=u2.hi<1
 la=((s+1)*logq(s+1)-(s-1)*logq(s-1)).rounded()
 lq=(la+(s-1)*logI(u1)+logI(1-u1)+logI(1-(1-z)*u1)).rounded()
 le=(la+logI(u2)+logI(1-u2)+(s-1)*logI(1-z*u2)).rounded()
 return lq,le

cap_cache={}
def uniform_caps(r):
 key=seedkey(r)
 if key in cap_cache:return cap_cache[key]
 P,Q,a,b,D,z=data(r)
 if P<=b:
  out={'seed':dict(zip(('p','q','k0','l0','a','b','D0'),key)),'reason':'P<=b implies Omega3<1 using Qcal>=4','no_positive_joint_weight_proved':True,'optimistic_integer_caps':[0,0]}
 else:
  s0=logq(F(4*a*P))/logq(F(P,b))
  sa=F(ri.floorq(s0.lo*10000),10000)
  assert 1<sa<=s0.lo
  if sa*z>=1:
   out={'seed':dict(zip(('p','q','k0','l0','a','b','D0'),key)),'reason':'necessary coefficient threshold lies beyond 1/z','s0_interval':s0.json(),'s_lower':str(sa),'no_positive_joint_weight_proved':True,'optimistic_integer_caps':[0,0]}
  else:
   _,le=kernel_logs(sa,z)
   base=logq(F(Q,a));C0=logq(F(a*P,D*D));num=(C0-le).rounded()
   # Every useful source rate has s<1/z and positive C0-log(Ecal(s));
   # monotonic Ecal and s>=sa therefore give this uniform upper bound.
   upper=(base+max(F(0),num.hi)/sa).hi
   lp,lq=logq(F(P)),logq(F(Q))
   nojoint=upper<=logq(F(max(P,Q))).lo
   wp=1000*(1-lp.lo/upper) if upper>0 else F(-1000)
   wq=1000*(1-lq.lo/upper) if upper>0 else F(-1000)
   caps=[0,0] if nojoint else [max(0,min(999,ri.ceilq(wp))),max(0,min(999,ri.ceilq(wq)))]
   out={'seed':dict(zip(('p','q','k0','l0','a','b','D0'),key)),'P':P,'Q':Q,'x_D0':D,'y_aP':a*P,'z':str(z),'s0_interval':s0.json(),'s_lower':str(sa),'log_E_at_s_lower':le.json(),'F_upper_exact':str(upper),'weight_upper_exact':[str(wp),str(wq)],'optimistic_integer_caps':caps,'no_positive_joint_weight_proved':nojoint,'reason':'uniform necessary bound from both coefficient growth and error/height exponent'}
 cap_cache[key]=out;return out

def float_grid(r):
 P,Q,a,b,D,zf=data(r);z=float(zf);best=None;trials=0
 lp,lq=math.log(P),math.log(Q)
 for d in range(1,33):
  for c in range(d+1,65):
   if math.gcd(c,d)!=1:continue
   s=c/d
   if not 1<s<min(6,1/z):continue
   trials+=1
   R=math.sqrt(s*s*z*z+4-4*z);u1=2*(s-1)/(s*(2-z)+R);u2=2/(s*z+2+R)
   la=(s+1)*math.log(s+1)-(s-1)*math.log(s-1)
   LQ=la+(s-1)*math.log(u1)+math.log1p(-u1)+math.log1p(-(1-z)*u1)
   LE=la+math.log(u2)+math.log1p(-u2)+(s-1)*math.log1p(-z*u2)
   A=(s-1)*lp-math.log(a)-s*math.log(b)-LQ
   B=s*min(lp,lq)-(s-1)*math.log(a*P)-2*math.log(D)-LE
   rate=max(lp,lq)+B/s
   if A>0 and (best is None or rate>best['F_float']):
    best={'c':c,'d':d,'logOmega3_float':A,'logOmega4_float':B,'F_float':rate,'joint_positive_weight_float':rate>max(lp,lq)}
 return {'trials':trials,'best':best,'status':'heuristic floating reconnaissance only'}

def all_corners(primes,rows):
 idx={p:i for i,p in enumerate(primes)};edges=[(idx[r['p']],idx[r['q']],*r['optimistic_caps']) for r in rows]
 out=[]
 for mask in range(1<<len(edges)):
  x=[0]*len(primes)
  for k,(p,q,wp,wq) in enumerate(edges):
   j,w=(q,wq) if(mask>>k)&1 else(p,wp);x[j]=max(x[j],w)
  out.append((mask,x))
 return out

text=I18.read_text(encoding='utf-8-sig');i18=[]
for g in re.findall(r'^\|(\d+),(\d+)\|(\d+),(\d+)\|(\d+),(\d+),(\d+)\|(\d+),(\d+)\|(\d+),(\d+)\|',text,re.M):
 i18.append(dict(zip(['p','q','k0','l0','a','b','D0','c','d','wp','wq'],map(int,g))))
assert len(i18)==10
profiles=json.loads(PROFILES.read_text())['profiles']
rows=i18+[r for p in profiles for r in p['cuts']]
for r in rows:
 cap=uniform_caps(r);r['optimistic_caps']=cap['optimistic_integer_caps']
 if 'weight_upper_exact' in cap:
  W=list(map(F,cap['weight_upper_exact']))
  r['original_weights_uniformly_ruled_out']=cap['no_positive_joint_weight_proved'] or r['wp']>=W[0] or r['wq']>=W[1]
 else:r['original_weights_uniformly_ruled_out']=True

primes18=[2,3,5,7,11,13,17];corners18=all_corners(primes18,i18)
weighted=min((sum(w*z for w,z in zip(range(24,17,-1),sorted(x))),mask,x) for mask,x in corners18)
collisions=[]
for p,q in itertools.combinations(range(7),2):
 val,mask,x=min((sum(x)+max(0,1000-x[p]-x[q]),mask,x) for mask,x in corners18)
 collisions.append({'pair':[primes18[p],primes18[q]],'minimum':val,'orientation':mask,'witness':dict(zip(primes18,x)),'exponent_delta':19*(11000+val)-234000})
i18out={'seed_rows':i18,'orientations':len(corners18),'weighted_minimum':weighted[0],'weighted_required_strictly_above':24000,'weighted_deficit':weighted[0]-24000,'witness_orientation':weighted[1],'witness':dict(zip(primes18,weighted[2])),'collision_pair_count':21,'collision_bounds':collisions,'collision_worst_minimum':min(r['minimum'] for r in collisions),'all_original_row_weights_ruled_out':all(r['original_weights_uniformly_ruled_out'] for r in i18)}
profileout=[];total_orientations=len(corners18)
for p in profiles:
 corners=all_corners(p['primes'],p['cuts']);total_orientations+=len(corners)
 val,mask,x=min((sum(x),m,x) for m,x in corners)
 delta=p['lambda']*(1000*(p['i']-p['t'])+val)-1000*p['E']
 opts=[]
 for r in range(p['i']):
  for s in range(1,p['i']):
   if 2*s<=r:continue
   lam=2*s-r;E=s*(s+1)+(p['i']-r-1)*(p['i']-r)//2
   opts.append((lam*(1000*(p['i']-p['t'])+val)-1000*E,r,s,lam,E))
 opt=max(opts)
 profileout.append({'i':p['i'],'primes':p['primes'],'edges':len(p['cuts']),'orientations':len(corners),'optimistic_S':val,'original_S':p['S'],'original_height_bits':p['height_bits'],'current_structure_Delta':delta,'best_same_family_structure':{'Delta':opt[0],'r':opt[1],'s':opt[2],'lambda':opt[3],'E':opt[4]},'witness_orientation':mask,'witness':dict(zip(p['primes'],x)),'cuts':p['cuts']})

def beta_int(a,b):return F(math.factorial(a-1)*math.factorial(b-1),math.factorial(a+b-1))
def exact_witness():
 p,q,k,l,a,b,c,d,wp,wq,H=17,2,1,4,1,1,3,2,250,250,4095
 P,Q=p**k,q**l;D=a*P-b*Q;s=F(c,d);z=F(D,a*P)
 R=sqrtq(s*s*z*z+4-4*z,bits=160);u1=2*(s-1)/(s*(2-z)+R);u2=2/(s*z+2+R)
 alphaD=F((c+d)**(c+d),(c-d)**(c-d)*d**(2*d))
 Qd=alphaD*u1**(c-d)*(1-u1)**d*(1-(1-z)*u1)**d
 Ed=alphaD*u2**d*(1-u2)**d*(1-z*u2)**(c-d)
 O3=F(P**(c-d),a**d*b**c)/Qd
 O4=F(min(P,Q)**c,(a*P)**(c-d)*D**(2*d))/Ed
 assert O3.lo>1 and O4.lo>1
 fac=sqrtq(s*s-1,bits=160);C1=[];C2=[]
 for delta in [0,1]:
  hh=d-delta;tt=c-d-1+delta
  J1=sum((F(math.comb(hh,j))*z**j*beta_int(tt+j+1,2*hh-j+1) for j in range(hh+1)),F(0))
  J2=sum((F(math.comb(tt,j))*(1-z)**j*beta_int(hh+j+1,hh+tt-j+1) for j in range(tt+1)),F(0))
  sf=fac if delta==0 else fac.inv()
  a1=(alphaD*sf*J1/(6*Qd)).hi;a2=(alphaD*sf*J2/(6*Ed)).hi
  assert 0<a1<1 and 0<a2<1
  C1.append(str(a1));C2.append(str(a2))
 ell3,ell4=logI(O3),logI(O4)
 T=(c*logq(F(max(P,Q)))+ell4).rounded()
 beta=min((F(1000-wp,1000)/(c*logq(F(P)))).lo,(F(1000-wq,1000)/(c*logq(F(Q)))).lo)
 hlog=H*logq(F(2));mlo=beta*hlog.lo-1;gap=beta*T.lo-1
 margins={'m_minus_0':mlo,'coefficient_gap':mlo*ell3.lo-logq(F(48)).hi,'error_exponent':gap,'height_gap':gap*hlog.lo-T.hi-logq(F(4)).hi}
 assert all(x>0 for x in margins.values())
 return {'seed':{'p':p,'q':q,'k0':k,'l0':l,'a':a,'b':b,'D0':D},'c':c,'d':d,'L':1,'m0':0,'wp':wp,'wq':wq,'height_log2_Y':H,'C1_upper':C1,'C2_upper':C2,'logOmega3':(ell3/d).json(),'logOmega4':(ell4/d).json(),'margins_lower':{k:str(v) for k,v in margins.items()},'readable_margins':{k:ri.decimal_outer(I.point(v),8) for k,v in margins.items()},'status':'PASS_EXACT_RATIONAL_BOTH_DELTA_AND_ALL_FOUR_HEIGHT_TESTS','scope':'one weaker individual edge under the existing Padé analytic bound; no B699 index is unlocked'}

unique_rows={seedkey(r):r for r in rows}
grid={str(k):float_grid(r) for k,r in unique_rows.items()}
witness=exact_witness()
assert i18out['weighted_deficit']<0 and all(p['best_same_family_structure']['Delta']<0 for p in profileout)
record={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS_BOUNDED_FEASIBILITY_AUDIT','scope':'fixed material seeds; rigorous rational interval necessary caps for any s>1, plus exact exhaustive original orientation consumers; finite floating search is reconnaissance only; no new Lean proof or original-problem acceptance','input_sha256':{str(p):sha256(p.read_bytes()).hexdigest() for p in [I18,PROFILES,VENDOR]},'seed_count':len(cap_cache),'seed_caps':list(cap_cache.values()),'i18':i18out,'other_profiles':profileout,'total_orientation_vectors':total_orientations,'i18_collision_pair_orientation_evaluations':21*len(corners18),'bounded_grid':{'c_max':64,'d_max':32,'s_cap':6,'rows':grid},'exact_individual_witness':witness,'unlocked_original_B_indices':[],'remaining_scope':['new seeds or edges','other stage-B material not among these 8 indices','different global consumers','formalization of analytic Padé bounds'],'elapsed_seconds':time.monotonic()-start,'script_sha256':sha256(Path(__file__).read_bytes()).hexdigest()}
(ROOT/'no-g-feasibility.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':record['status'],'seed_count':record['seed_count'],'orientation_vectors':total_orientations,'i18_weighted_minimum':i18out['weighted_minimum'],'i18_weighted_deficit':i18out['weighted_deficit'],'i18_collision_worst_minimum':i18out['collision_worst_minimum'],'i18_original_weights_all_ruled_out':i18out['all_original_row_weights_ruled_out'],'other_profiles':[{k:p[k] for k in ('i','optimistic_S','current_structure_Delta','best_same_family_structure')} for p in profileout],'witness':{'c':3,'d':2,'weights':[250,250],'H':4095,'margins':witness['readable_margins']},'unlocked_indices':[],'elapsed_seconds':record['elapsed_seconds']},ensure_ascii=False))
