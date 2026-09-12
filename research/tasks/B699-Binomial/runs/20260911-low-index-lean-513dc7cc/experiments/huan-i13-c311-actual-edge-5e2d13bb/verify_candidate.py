"""Independent exact checker for fixed actualc7d5 edge candidates. No Lean.
Only four short integer bases and small rational powers are numerically evaluated;
large capacity conclusions are checked through the accepted symbolic API premises.
"""
from pathlib import Path
from fractions import Fraction as F
from math import comb,gcd
from functools import reduce
import json,re,hashlib,time,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent;SRC=OUT/'candidate/lean/I13C311Edge'
assert OUT==RUN/'experiments/huan-i13-c311-actual-edge-5e2d13bb'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def module(p):return '.'.join(p.relative_to(ROOT).with_suffix('').parts)
def clean(s):return re.sub(r'--[^\n]*','',re.sub(r'/\-.*?\-/','',s,flags=re.S))
def run():
 t0=time.perf_counter();plan=json.loads((OUT/'numeric-plan.json').read_text())
 Z=71*2**76;M=187;H=15359;R=F(11664,3125);rho=F(4487,4511);S=R*rho
 assert Z==plan['Z'] and plan['M']==M and plan['H']==H
 # Independent exponent-bound arithmetic. No original giant capacity power evaluated.
 assert 3**32768<=2**51937 and 11**4096<=2**14170
 assert 2**25189<=71**4096<=2**25190
 assert 25189+76*4096==336485 and 25190+76*4096==336486
 assert 336486*186<=4096*15361
 margins={}
 for p,a,b,N,alpha in [(3,51937,32768,35000,679),(11,14170,4096,14000,593)]:
  x=336485*b*alpha-a*4096*N
  y=b*H*alpha-a*N*M
  z=336485*b*alpha*M-(2*alpha*b*4096+a*4096*N*(M+1))
  assert min(x,y,z)>0
  assert [x,y,z]==plan['prime_bases'][str(p)]['positive_exponent_differences']
  margins[str(p)]=[x,y,z]
 # Small-power decomposition of the actualG tail anchor.
 assert 0<rho<1 and rho**8<=F(23,24)
 assert R*4487*F(23,24)**23<=6900
 assert 8*23==184<=187
 assert F(1,300)*S**187<=23*R**186/F(4487)
 assert F(5,8)<=F(115,48)/R
 beta=F(12**12,5**10*4);qbase=beta*F(451,100000);ebase=beta*F(973,1000000)
 qr=F(243**7)*S/(F(2**7*243**5)*qbase)
 wr=F((243*121)**7)*S/(F(243**2)*ebase)
 assert qr==F(plan['q_rate'])>=F(3,2)
 assert wr==F(plan['w_rate'])>=Z
 assert F(3,2)**24>7200 and 24<=M
 assert 300*F(1,2)==150 and 2*24*150==7200
 assert 300*F(11,100)==33<243 and F(1,2)/F(5,8)==F(4,5)<=1
 # Direct source correspondence at m1, not evidence for the allm theorem.
 rows=[]
 for delta in [0,1]:
  u=5-delta;v=1+delta;N=2*u+v+1
  pc=[(-1)**(u+j)*comb(N,j)*comb(2*u-j,u) for j in range(u+1)]
  qm=[comb(2*u-j,u)*comb(v+j,j) for j in range(u+1)]
  qc=[(-1)**u*x for x in qm]
  ec=[(-1)**j*comb(u+j,j)*comb(N,2*u+j+1) for j in range(v+1)]
  g=reduce(gcd,qm)
  assert all(x%g==0 for x in pc+qc)
  ph=sum(x*243**(u-j) for j,x in enumerate(pc))//g
  qh=sum(x*243**(u-j) for j,x in enumerate(qc))//g
  eh=sum(x*243**(v-j) for j,x in enumerate(ec))
  err=243**7*ph-242**7*qh
  assert g*err==eh
  assert u+v+1==7 and 242==2*121
  rows.append({'delta':delta,'u':u,'v':v,'content':g,'pRow':str(ph),'qRow':str(qh),'error':str(err),'remainder_identity':True})
 assert rows[0]['pRow']!=rows[1]['pRow']
 assert int(rows[0]['pRow'])*int(rows[1]['qRow'])-int(rows[1]['pRow'])*int(rows[0]['qRow'])!=0
 # Source text alignment and final external-premise boundary.
 source={p.stem:p.read_text() for p in SRC.glob('*.lean')}
 assert 'def selectorZ : ℕ := 71 * 2 ^ 76' in source['Parameters']
 assert 'def selectorM : ℕ := 187' in source['Parameters']
 assert 'def heightY0 : ℕ := 2 ^ 15359' in source['Parameters']
 for name,power,bits in [('Basis3',32768,51937),('Basis11',4096,14170),('Basis71',4096,25190)]:
  assert str(power) in source[name] and str(bits) in source[name]
 assert 'conditions_from_short_bases 3 selectorZ 35000 679 187 15359' in source['SelectorNumeric']
 assert '51937 32768 336485 4096' in source['SelectorNumeric']
 assert 'conditions_from_short_bases 11 selectorZ 14000 593 187 15359' in source['SelectorNumeric']
 assert '14170 4096 336485 4096' in source['SelectorNumeric']
 assert '33 * ((243 : ℚ) ^ (2 * m - 1) * eBase ^ m)' in source['ActualBounds']
 assert '150 * ((243 : ℚ) ^ 5 * qBase) ^ m' in source['ActualBounds']
 assert 'content_one_lower m' in source['ActualBounds']
 assert '(r := (243 : ℤ) ^ (7 * m)) (s := (121 : ℤ) ^ (7 * m))' in source['ActualGap']
 assert '(a := 1) (b := (2 : ℤ) ^ (7 * m))' in source['ActualGap']
 final=source['Final'];typ=final[final.index('theorem actual_c311_cofactor_edge'):].split(':= by',1)[0]
 assert '(Y a b A B : ℕ)' in typ and '(2 : ℕ) ^ 15359 ≤ Y' in typ
 assert 'Y ^ 321 ≤ A ^ 1000 ∨ Y ^ 407 ≤ B ^ 1000' in typ
 assert all(x not in typ for x in ['leastExponent','edgeIndex','contentBase','qRate','wRate','hcapacity','hsmall','GrowthTree','eta'])
 assert 'extract_same_index Y a b A B' in final and 'index_threshold Y' in final
 assert 'actual_integer_gap_sum_lt m hm row V Nq hNV hNsmall' in final
 # Modules import actual candidateQ/E, pendingtail, accepted row/gap/selector APIs.
 files=sorted(SRC.glob('*.lean'));future={module(RUN/'lean/I13C311Edge'/p.name):p for p in files};records=[];decls=set();audits=[]
 for p in files:
  s=p.read_text();c=clean(s)
  assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',c)
  if p.stem!='Audit':assert 'set_option autoImplicit false' in s and 'set_option relaxedAutoImplicit false' in s
  assert b'\r\r\n' not in p.read_bytes()
  declared=re.findall(r'^(?:@\[simp\] )?(?:noncomputable )?(?:theorem|def) ([A-Za-z0-9_]+)',c,re.M)
  decls.update('Math.B699.I13C311Edge.'+x for x in declared)
  imports=[]
  for imp in re.findall(r'^import (.+)$',s,re.M):
   cm=imp.replace('«','').replace('»','');imports.append(cm)
   if cm.startswith('research.'):
    dest=future.get(cm,ROOT.joinpath(*cm.split('.')).with_suffix('.lean'));assert dest.exists(),cm
  pa=re.findall(r'^#print axioms (.+)$',s,re.M);audits+=pa
  records.append({'candidate':p.relative_to(OUT).as_posix(),'future_target':(RUN/'lean/I13C311Edge'/p.name).relative_to(ROOT).as_posix(),'module':module(RUN/'lean/I13C311Edge'/p.name),'sha256':sha(p),'bytes':p.stat().st_size,'imports':imports,'audits':pa})
 assert all(a in decls for a in audits)
 bymod={x['module']:x for x in records};done=set();order=[]
 while len(done)<len(records):
  ready=[x for x in records if x['module'] not in done and all(i not in bymod or i in done for i in x['imports'])]
  assert ready
  for x in ready:done.add(x['module']);order.append(x['future_target'])
 frozen=[]
 for name in ['huan-i13-c311-high-height-5e2d13bb','huan-i13-c311-actual-growth-probe-5e2d13bb','huan-i13-c311-actual-growth-5e2d13bb']:
  pkg=RUN/'experiments'/name;f=json.loads((pkg/'FREEZE.json').read_text())
  for n,v in f['files'].items():assert sha(pkg/n)==v['sha256']
  frozen.append({'name':name,'files':len(f['files']),'freeze_sha256':sha(pkg/'FREEZE.json')})
 if (OUT/'FREEZE.json').exists():
  f=json.loads((OUT/'FREEZE.json').read_text())
  for n,v in f['files'].items():assert sha(OUT/n)==v['sha256']
 result={'status':'PASS_EXACT_FIXED_SELECTOR_SCALING_AND_SOURCE_CHECK_NOT_LEAN','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'seconds':time.perf_counter()-t0,
  'numeric_plan_sha256':sha(OUT/'numeric-plan.json'),'capacity_exponent_margins':margins,'global_proof_mechanism':'accepted short-basis conditions + leastExponent minimality, allY withoutsampling',
  'G_anchor_primitive_exponents':[8,23],'G_anchor_target_exponent187_kept_symbolic_in_Lean':True,
  'row_source_alignment_examples_m1':rows,'examples_not_universal_proof':True,'candidate_sources':records,'serial_order':order,'final_type':typ,
  'final_selector_growth_error_inputs':0,'old_frozen_packages':frozen,'final_audit_roots':len(re.findall(r'^#print axioms ',source['Audit'],re.M)),
  'Lean_invocations':0,'pending_dependencies':['I13C311QE actualsourceclosure','I13G75Tail.Bounds'],'original_i13_added':False,'validation_boundary':'exact arithmetic and source text checks, not Lean compilation or axiom acceptance'}
 if not (OUT/'FREEZE.json').exists():(OUT/'independent-check.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':result['status'],'modules':len(records),'capacity_margins':margins,'final_audit_roots':result['final_audit_roots'],'final_external_nonwindow_inputs':0,'old_frozen_files':sum(x['files'] for x in frozen),'seconds':result['seconds'],'Lean_invocations':0},ensure_ascii=False,indent=2))
 return result
if __name__=='__main__':run()
