"""Read-only independent data/source checker; no Lean invocation.
Reconstructs standard Bernstein coefficients from affine factor endpoints,
independent of power conversion/de Casteljau generation. Also checks literal
Lean coefficient data, full dyadic coverage, tree references and typed interfaces.
"""
from pathlib import Path
from fractions import Fraction as F
from math import comb,factorial
import json,re,hashlib,time,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-c311-actual-growth-5e2d13bb'
BASE=OUT/'candidate'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def multiply_standard(a,b):
 m,n=len(a)-1,len(b)-1
 return [sum((F(comb(m,i)*comb(n,k-i),comb(m+n,k))*a[i]*b[k-i]
  for i in range(max(0,k-n),min(m,k)+1)),F()) for k in range(m+n+1)]
def from_affine_factors(kind,a,b):
 z=F(1,243)
 endpoints=[(a,b),(1-a,1-b),(1-(1-z)*a,1-(1-z)*b) if kind=='Q' else (1-z*a,1-z*b)]
 powers=[2,5,5] if kind=='Q' else [5,5,2];bs=[F(1)]
 for (left,right),degree in zip(endpoints,powers):
  bs=multiply_standard(bs,[left**(degree-k)*right**k for k in range(degree+1)])
 return bs
def trim(p):
 while len(p)>1 and p[-1]==0:p.pop()
 return p
def mul(a,b):
 o=[F(0)]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):o[i+j]+=x*y
 return trim(o)
def add(a,b):
 o=[F(0)]*max(len(a),len(b))
 for i,x in enumerate(a):o[i]+=x
 for i,x in enumerate(b):o[i]+=x
 return trim(o)
def power(p,n):
 r=[F(1)]
 for _ in range(n):r=mul(r,p)
 return r
def basis_to_poly(coeffs,standard):
 n=len(coeffs)-1;result=[F(0)]
 for k,c in enumerate(coeffs):
  scale=c*(comb(n,k) if standard else 1)
  p=mul(power([F(0),F(1)],k),power([F(1),F(-1)],n-k))
  result=add(result,[scale*x for x in p])
 return result
def fraction_literal(s):
 m=re.fullmatch(r'\((-?\d+) : ℚ\)(?: / (\d+))?',s.strip());assert m,s
 return F(int(m[1]),int(m[2] or 1))
def stripped(s):
 s=re.sub(r'/\-.*?\-/','',s,flags=re.S)
 return re.sub(r'--[^\n]*','',s)
def canonical_module(p):
 return '.'.join(p.relative_to(ROOT).with_suffix('').parts)
def future_path(p):
 rel=p.relative_to(BASE)
 if rel.parts[:3]==('lean','Growth','Leaves'):
  return RUN/'lean/Growth/I13C311Leaves'/p.name
 return RUN/rel
def run():
 t0=time.perf_counter();data=json.loads((OUT/'tree-data.json').read_text());plan=json.loads((OUT/'tree-generation.json').read_text())
 prior=RUN/'experiments/huan-i13-c311-actual-growth-probe-5e2d13bb';probe=json.loads((prior/'probe-results.json').read_text())
 for pkg in [prior,RUN/'experiments/huan-i13-c311-high-height-5e2d13bb']:
  f=json.loads((pkg/'FREEZE.json').read_text())
  for n,v in f['files'].items():assert sha(pkg/n)==v['sha256']
 leafchecks=[];tree=(BASE/'lean/Growth/I13C311Tree.lean').read_text();expected_refs=[]
 for kind,lam in [('Q',F(451,100000)),('E',F(973,1000000))]:
  assert F(data[kind]['lambda'])==lam and data[kind]['degree']==12
  leaves=data[kind]['leaves'];previous=F(0)
  paths=plan['families'][kind]['paths']
  for i,leaf in enumerate(leaves):
   a,b=F(leaf['a']),F(leaf['b']);assert a==previous<b<=1;previous=b
   bs=from_affine_factors(kind,a,b)
   listed=[F(int(n),int(leaf['bernstein_denominator'])) for n in leaf['bernstein_numerators']]
   assert bs==listed and len(bs)==13
   gs=[comb(12,k)*(lam-x) for k,x in enumerate(bs)]
   assert all(x>0 for x in gs)
   actual=basis_to_poly(bs,True);target=add([lam],[-x for x in actual]);gap=basis_to_poly(gs,False)
   assert target==gap
   tamper=gs.copy();tamper[0]+=1;assert basis_to_poly(tamper,False)!=target
   p=BASE/f'lean/Growth/Leaves/{kind}Leaf{i:03d}.lean';s=p.read_text()
   parsed={int(k):fraction_literal(v) for k,v in re.findall(r'def gapCoeff(\d+) : ℚ := ([^\n]+)',s)}
   assert [parsed[k] for k in range(13)]==gs
   assert f'def seedC : ℕ := 7' in s and f'def seedD : ℕ := 5' in s
   assert 'def seedZ : ℚ := (1 : ℚ) / 243' in s
   assert fraction_literal(re.search(r'def leafA : ℚ := ([^\n]+)',s)[1])==a
   assert fraction_literal(re.search(r'def leafB : ℚ := ([^\n]+)',s)[1])==b
   assert fraction_literal(re.search(r'def lam : ℚ := ([^\n]+)',s)[1])==lam
   assert all(f'Polynomial.C gapCoeff{k} * bernsteinMonomial {k} {12-k}' in s for k in range(13))
   assert 'theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by' in s
   assert 'apply Polynomial.funext' in s and '<;> ring' in s
   assert 'exact GrowthTree.leaf' in s and 'local_weight0_cone local_core_cone local_gap_cone' in s
   assert 'local_weight1_cone local_core_cone local_gap_cone' in s
   for delta in [0,1]:expected_refs.append((kind,i,delta))
   # Infer interval directly from the dyadic path, independently of path_for.
   aa,bb=F(0),F(1)
   for c in paths[i]:
    mid=(aa+bb)/2
    if c=='L':bb=mid
    else:assert c=='R';aa=mid
   assert (aa,bb)==(a,b)
   leafchecks.append({'kind':kind,'index':i,'path':paths[i],'coefficients_checked':13,'all_strict_positive':True,'tamper_rejected':True,'source_sha256':sha(p)})
  assert previous==1
 refs=[(k,int(i),int(d)) for k,i,d in re.findall(r'using Math\.B699\.I13C311Growth\.([QE])Leaf(\d+)\.leaf_delta([01])',tree)]
 assert sorted(refs)==sorted(expected_refs) and len(refs)==16
 for kind in ['q','e']:
  for delta in [0,1]:assert f'theorem {kind}_tree_delta{delta} : GrowthTree' in tree
 # Literal factorial certificate and actual recurrence source alignment.
 f=(BASE/'lean/Factorial/Factorial7D5.lean').read_text()
 assert 'have hd : 5 * (k + 2) = 5 * (k + 1) + 5 := by omega' in f
 assert 'factorial_add_cast (5 * (k + 1)) 5' in f
 line=next(x for x in f.splitlines() if '0 ≤ 1036800 *' in x)
 nums=[int(x) for x in re.findall(r'\d+',line)]
 assert nums==[0,1036800]+probe['factorial']['positive_coefficients_x_ascending']
 B=F(12**12,5**10*4);cs=probe['factorial']['positive_coefficients_x_ascending']
 for x in range(13):
  m=x+1;U=1;W=2*m+1
  for j in range(1,12):U*=12*m+j
  for j in range(1,5):W*=(5*m+j)**2
  assert B.numerator*50*(m+1)**3*W-12*B.denominator*(m+2)*U==1036800*sum(c*x**k for k,c in enumerate(cs))
 assert all(x>0 for x in cs)
 # Four actual numeric literals and caps are bound to the exact source m1 data.
 numeric=(BASE/'lean/I13C311QE/Numeric.lean').read_text()
 for kind in ['q','e']:
  key='actualQ_m1' if kind=='q' else 'actualE_m1'
  for delta in [0,1]:
   value=F(probe['actual_normalization'][delta][key])
   pattern=rf'theorem actual_{kind}_one_{delta} : .*? = ([^\n]+) := by'
   literal=re.search(pattern,numeric)[1];assert fraction_literal(literal)==value
 assert 'noncomputable def qNormalizedConstant' in numeric and 'noncomputable def eNormalizedConstant' in numeric
 bounds=(BASE/'lean/I13C311QE/Bounds.lean').read_text()
 for name in ['actual_q_normalized_bound','actual_e_normalized_bound','actual_q_bound','actual_e_bound','actual_bounds_all_m','actual_e_zero_bound','actual_e_one_bound']:
  assert f'theorem {name}' in bounds
 assert '(hm : 1 ≤ m)' in bounds and '(hdelta : delta = 0 ∨ delta = 1)' in bounds
 assert 'fixed_initial_q_cap delta hdelta' in bounds and 'fixed_initial_e_cap delta hdelta' in bounds
 assert 'factorial_strict_k_7_5 delta m hdelta hm' in bounds
 # Import graph and explicit policy; this is not Lean type checking.
 files=sorted(BASE.rglob('*.lean'));future={canonical_module(future_path(p)):p for p in files}
 modules=[];all_decl=set();all_audits=[]
 for p in files:
  source=p.read_text();clean=stripped(source)
  assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',clean)
  if '/Leaves/' in p.as_posix() or p.name not in ['Audit.lean','I13C311Leaves.lean']:
   assert 'set_option autoImplicit false' in source and 'set_option relaxedAutoImplicit false' in source
  assert b'\r\r\n' not in p.read_bytes()
  namespace=None
  for ln in clean.splitlines():
   if ln.startswith('namespace '):namespace=ln.split()[1]
   m=re.match(r'(?:noncomputable )?(?:def|theorem) ([A-Za-z0-9_]+)',ln)
   if m:assert namespace;all_decl.add(namespace+'.'+m[1])
  imports=[]
  for imp in re.findall(r'^import (.+)$',source,re.M):
   cm=imp.replace('«','').replace('»','');imports.append(cm)
   if cm.startswith('research.'):
    target=future.get(cm,ROOT.joinpath(*cm.split('.')).with_suffix('.lean'));assert target.exists(),cm
  audited=re.findall(r'^#print axioms (.+)$',source,re.M);all_audits+=audited
  modules.append({'candidate':p.relative_to(OUT).as_posix(),'future_target':future_path(p).relative_to(ROOT).as_posix(),'module':canonical_module(future_path(p)),'sha256':sha(p),'bytes':p.stat().st_size,'imports':imports,'audits':audited})
 assert all(a in all_decl for a in all_audits)
 assert len(files)==16 and len(leafchecks)==8
 # Topological order for parent's serial integration, ready dependencies first.
 bymod={m['module']:m for m in modules};ordered=[];done=set()
 while len(done)<len(modules):
  available=[m for m in modules if m['module'] not in done and all(i not in bymod or i in done for i in m['imports'])]
  assert available
  available.sort(key=lambda x:(x['future_target']))
  for m in available:ordered.append(m['future_target']);done.add(m['module'])
 root_audits=len(re.findall(r'^#print axioms ',(BASE/'lean/I13C311QE/Audit.lean').read_text(),re.M));assert root_audits==19
 result={'status':'PASS_INDEPENDENT_EXACT_DATA_AND_SOURCE_CHECKS_NOT_LEAN','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'seconds':time.perf_counter()-t0,
  'leaf_checks':leafchecks,'total_gap_coefficients':13*len(leafchecks),'tree_leaf_references':16,'factorial_identity':'13point+degree12 identity and positive coefficients; actual factorial cancellation source aligned',
  'candidate_modules':modules,'serial_order':ordered,'final_audit_roots':root_audits,'typed_annotations_and_no_placeholder_scan_passed':True,'not_a_Lean_type_check':True,
  'new_Lean_invocations':0,'new_original_results':0,'source_review_corrections':['factorial hd increment3->5 after adapting c5d3 template','actual-dependent normalized constants explicitly noncomputable'],
  'old_frozen_packages_unchanged':True}
 if not (OUT/'FREEZE.json').exists():(OUT/'independent-check.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':result['status'],'modules':len(modules),'leaves':len(leafchecks),'gap_coefficients':result['total_gap_coefficients'],'tree_refs':16,'audit_roots':root_audits,'seconds':result['seconds'],'Lean_invocations':0},ensure_ascii=False,indent=2))
 return result
if __name__=='__main__':run()
