from __future__ import annotations
from fractions import Fraction as F
from math import comb, gcd, factorial
from pathlib import Path
from functools import reduce
import re, json, hashlib, time, datetime

START = time.monotonic()
ROOT = Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN = ROOT / 'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT = Path(__file__).resolve().parent
assert OUT == RUN / 'reviews/huan-i11-two-five-edge-independent-5e2d13bb'
EDGE = RUN / 'experiments/huan-i11-two-five-scaled-edge-5e2d13bb'
TREE = RUN / 'experiments/huan-i11-two-five-growth-tree-5e2d13bb'
PLAN = RUN / 'experiments/huan-i11-elementary-finite-plan-5e2d13bb'
BRIDGE = RUN / 'experiments/huan-i11-approximation-bridge-plan-5e2d13bb'
SOURCES = {}

def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def read(p):
    SOURCES[p.relative_to(ROOT).as_posix()] = {'bytes':p.stat().st_size, 'sha256':sha(p)}
    return p.read_text(encoding='utf-8-sig')
def js(p): return json.loads(read(p))
def clock():
    assert time.monotonic()-START < 60, 'bounded 60-second budget exceeded'
def trim(p):
    while len(p)>1 and not p[-1]: p.pop()
    return p

def add(p,q):
    r=[F(0)]*max(len(p),len(q))
    for i,c in enumerate(p): r[i]+=c
    for i,c in enumerate(q): r[i]+=c
    return trim(r)
def mul(p,q):
    r=[F(0)]*(len(p)+len(q)-1)
    for i,c in enumerate(p):
        for j,d in enumerate(q): r[i+j]+=c*d
    return trim(r)
def scale(p,a): return trim([c*a for c in p])
def power(p,n):
    q=[F(1)]
    for _ in range(n): q=mul(q,p)
    return q

def affine_comp(p,a,b):
    r=[F(0)]
    for c in reversed(p): r=add(mul(r,[a,b-a]),[c])
    return r

def bern(i,n): return mul([F(0)]*i+[F(1)],power([F(1),F(-1)],n-i))
def moment(p): return sum((c/F(i+1) for i,c in enumerate(p)), F(0))
def eval_poly(p,z):
    r=F(0)
    for c in reversed(p):r=r*z+c
    return r

def q_coeff(u,v): return [(-1)**u*comb(2*u-h,u)*comb(v+h,h) for h in range(u+1)]
def p_coeff(u,v): return [(-1)**(u+h)*comb(2*u+v+1,h)*comb(2*u-h,u) for h in range(u+1)]
def e_coeff(u,v): return [(-1)**h*comb(u+h,h)*comb(2*u+v+1,2*u+h+1) for h in range(v+1)]
def hom(coeff,x,y): return sum(c*x**i*y**(len(coeff)-1-i) for i,c in enumerate(coeff))
def rational_divisor(u,v):
    f=v//2
    return F(factorial(u+f)*factorial(f),factorial(u)*factorial(v))
def factorial_term(m,d): return F(factorial(9*m-d),factorial(4*m-d)**2*factorial(m+d-1))

freeze=js(EDGE/'SOURCE_FREEZE.json')
for name,record in freeze['sources'].items():
    text=read(EDGE/name)
    assert SOURCES[(EDGE/name).relative_to(ROOT).as_posix()]==record, name
for module in freeze['implementation_chain']:
    clean=re.sub(r'/-.*?-/', '', (EDGE/(module+'.lean')).read_text(encoding='utf-8-sig'), flags=re.S)
    clean=re.sub(r'--[^\n]*','',clean)
    assert not re.search(r'\b(?:sorry|admit|axiom|native_decide|ofReduceBool)\b',clean), module
for name,record in js(TREE/'FREEZE.json')['files'].items():
    read(TREE/name)
    assert SOURCES[(TREE/name).relative_to(ROOT).as_posix()]==record, name
plan=js(PLAN/'FINAL_PLAN.json')['selected_plan']
row=plan['rows'][0]
qe=js(PLAN/'qe-certificates/row-00.json')
short=js(BRIDGE/'short-power-bases.json')['rows'][0]
selector=js(BRIDGE/'log-free-selector-results.json')['rows'][0]
source_map=js(EDGE/'SOURCE_MAP.json')
# Hash this diagnostic as part of reproducibility.
read(OUT/'check.py')

# Receipts are read-only historical executions; no new compilation occurs here.
receipt_summary=[]
for name in ['i11-two-five-actual-prefix','i11-two-five-divisor-finite','factorial-extra-5-4','i11-pade-capacity','i11-scaled-rat-bounds','discrete-least-exponent','discrete-short-power-bounds']:
    rec=js(RUN/'verification/huan-prerequisites'/f'{name}.json')
    ev=js(ROOT/rec['evidence'])
    assert ev['success'] and ev['exit_code']==0 and ev['failure'] is None
    assert sha(ROOT/rec['root'])==rec['source_sha256']
    roots=rec['public_axiom_audit']
    assert all(set(t['axioms']) <= {'propext','Classical.choice','Quot.sound'} for t in roots)
    count=0
    for c in ev['source_closure']:
        read(ROOT/c['source'])
        assert sha(ROOT/c['source'])==c['source_sha256_before']==c['source_sha256_after'], c['source']
        count+=1
    receipt_summary.append({'receipt':name,'evidence':rec['evidence'],'root_sha256':rec['source_sha256'],
      'source_closure_hash_matches':count,'audit_roots':len(roots),'success':True,'new_Lean_run':False})
clock()

seed={'p':2,'q':5,'k0':7,'l0':3,'a':1,'b':1,'D0':3,'c':5,'d':4}
assert row['seed']==seed and selector['seed']==seed and short['seed']==seed
assert (row['wp'],row['wq'])==(248,252) and short['weights']==[248,252]
assert row['D_threshold_m0']==141 and plan['B']==15360
Z=115572769905797;M=329;H=15359;L=F(602791,500000)**4;beta=F(387420489,65536)
qlam=F(qe['Q']['lambda']);elam=F(qe['E']['lambda'])
BQ=beta*qlam;BE=beta*elam
A3=128*L/BQ;W=(128*125)**5*L/(128*3**8*BE)
assert A3==F(row['Omega3_power_d'])==F(selector['A3'])
assert W==128**5*F(row['Omega4_power_d'])==F(selector['W'])
assert W!=125**5*F(row['Omega4_power_d'])
assert selector['integer_threshold_base_Z']==Z==short['Z'] and selector['minimum_index_at_Y0']==M==short['M']
assert W>=Z and A3>=1
small_constants=[]
X=[F(0),F(1)];one_sub=[F(1),F(-1)]
qfactor=[F(1),F(-125,128)];efactor=[F(1),F(-3,128)]
qcore=mul(mul(X,power(one_sub,4)),power(qfactor,4))
ecore=mul(mul(power(X,4),power(one_sub,4)),efactor)
for d in (0,1):
    qw=mul(mul(power(X,d),power(one_sub,4-d)),power(qfactor,4-d))
    ew=mul(mul(power(X,4-d),power(one_sub,4-d)),power(efactor,d))
    Q1=eval_poly(q_coeff(4-d,d),F(3,128));E1=eval_poly(e_coeff(4-d,d),F(3,128))
    K=2*factorial_term(1,d)/beta
    assert K==F(qe['factorial_certificate']['K'][d])
    assert 2*abs(Q1)<=BQ and 2*abs(E1)<=BE
    assert moment(qw)*factorial_term(1,d)==abs(Q1)
    assert moment(ew)*factorial_term(1,d)==abs(E1)
    c=qe['constants'][d]
    assert moment(qw)==F(c['JQ']) and moment(ew)==F(c['JE'])
    assert 2*abs(Q1)/BQ==F(c['CQ']) and 2*abs(E1)/BE==F(c['CE'])
    small_constants.append({'delta':d,'Q1':str(Q1),'E1':str(E1),'K':str(K),'CQ':str(2*abs(Q1)/BQ),'CE':str(2*abs(E1)/BE)})
assert F(small_constants[1]['K'])>F(small_constants[0]['K'])

small_rows=[];normalized_by_m={};moments_checked=0
for m in range(1,7):
    normalized_by_m[m]=[]
    for d in (0,1):
        u=4*m-d;v=m+d-1
        qc=q_coeff(u,v);pc=p_coeff(u,v);ec=e_coeff(u,v)
        G=reduce(gcd,(abs(c) for c in qc));ph=hom(pc,3,128);qh=hom(qc,3,128)
        assert ph%G==qh%G==0
        pn=ph//G;qn=qh//G
        Q=eval_poly(qc,F(3,128));E=eval_poly(ec,F(3,128))
        err=128**(5*m)*pn-125**(5*m)*qn
        coeff=128**v*3**(2*u+1)
        assert G*qn==128**u*Q and G*err==coeff*E
        ratio=F(coeff,839808**m)
        assert ratio==[F(3,128),F(1,3)][d]
        assert abs(Q)<=BQ**m and abs(E)<=BE**m
        assert F(G,1)/rational_divisor(u,v)>0 and (F(G,1)/rational_divisor(u,v)).denominator==1
        if m<=3:
            qw=mul(mul(power(X,d),power(one_sub,4-d)),power(qfactor,4-d))
            ew=mul(mul(power(X,4-d),power(one_sub,4-d)),power(efactor,d))
            assert abs(Q)==factorial_term(m,d)*moment(mul(qw,power(qcore,m-1)))
            assert abs(E)==factorial_term(m,d)*moment(mul(ew,power(ecore,m-1)))
            moments_checked+=2
        normalized_by_m[m].append((pn,qn))
        small_rows.append({'m':m,'delta':d,'u':u,'v':v,'G':str(G),'D':str(rational_divisor(u,v)),
          'error_scale_ratio':str(ratio),'Q_sign':1 if Q>0 else -1,'max_homogeneous_bits':max(abs(ph).bit_length(),abs(qh).bit_length(),abs(err).bit_length())})
    (p0,q0),(p1,q1)=normalized_by_m[m]
    assert p0*q1-p1*q0!=0
clock()

# All four parity/delta branches at the actual threshold, and a next-step check.
threshold_rows=[]
for m in [141,142,143,144]:
    for d in (0,1):
        u=4*m-d;v=m+d-1;D=rational_divisor(u,v)
        magnitudes=[abs(x) for x in q_coeff(u,v)]
        G=reduce(gcd,magnitudes)
        assert L**m<D<=G and (F(G,1)/D).denominator==1
        assert all((F(q,1)/D).denominator==1 for q in magnitudes)
        threshold_rows.append({'m':m,'delta':d,'q_coefficients':len(magnitudes),'G_bits':G.bit_length(),
          'D_numerator_bits':D.numerator.bit_length(),'D_denominator_bits':D.denominator.bit_length(),
          'actual_lower_check':True,'individual_q_over_D_integral':True})
clock()

# Full degree-9 identities, independently expanded from actual core and source literals.
leaves_text=read(TREE/'candidate/lean/Growth/I11TwoFiveLeaves.lean')
blocks=re.findall(r'namespace Math\.B699\.I11TwoFiveGrowth\.([QE]Leaf\d+)\s+(.*?)\nend Math\.B699\.I11TwoFiveGrowth\.\1',leaves_text,re.S)
def rat_literal(block,name):
    m=re.search(r'def '+re.escape(name)+r' : ℚ := \((-?\d+) : ℚ\)(?: / (\d+))?',block)
    assert m,name
    return F(int(m[1]),int(m[2] or 1))
leaf_results=[];path_by_leaf={};tamper_rejected=[]
for name,block in blocks:
    kind=name[0];idx=int(name[5:]);entry=qe[kind]['leaves'][idx]
    a=rat_literal(block,'leafA');b=rat_literal(block,'leafB');lam=rat_literal(block,'lam')
    assert a==F(entry['a']) and b==F(entry['b']) and 0<=a<b<=1
    assert lam=={'Q':qlam,'E':elam}[kind]
    core={'Q':qcore,'E':ecore}[kind]
    local=affine_comp(core,a,b)
    bs=[sum((local[i]*F(comb(k,i),comb(9,i)) for i in range(k+1)),F(0)) for k in range(10)]
    assert bs==[F(int(x),int(entry['bernstein_denominator'])) for x in entry['bernstein_numerators']]
    gap=add([lam],scale(local,-1));expansion=[F(0)]
    for k in range(10):
        c=rat_literal(block,f'gapCoeff{k}')
        assert c==comb(9,k)*(lam-bs[k]) and c>=0
        expansion=add(expansion,scale(bern(k,9),c))
    assert gap==expansion
    # A changed coefficient cannot survive the full polynomial identity.
    assert gap!=add(expansion,bern(0,9))
    path_line=re.search(r'theorem leafMap_eq_path : leafMap = (.*?) := by',block).group(1)
    path=''.join('L' if x=='halfLeft' else 'R' for x in re.findall(r'halfLeft|halfRight',path_line))
    pa=F(0);pb=F(1)
    for letter in path:
        mid=(pa+pb)/2
        if letter=='L':pb=mid
        else:pa=mid
    assert (pa,pb)==(a,b)
    path_by_leaf[name]=path
    leaf_results.append({'name':name,'a':str(a),'b':str(b),'path':path,'degree':9,
      'full_gap_identity':True,'nonnegative_coefficients':10,'tamper_rejected':True})
assert len(leaf_results)==19
for kind in ['Q','E']:
    intervals=sorted((F(t['a']),F(t['b'])) for t in leaf_results if t['name'][0]==kind)
    assert intervals[0][0]==0 and intervals[-1][1]==1
    assert all(x[1]==y[0] for x,y in zip(intervals,intervals[1:]))
# Check actual source tree children, not only a list of interval labels.
tree_text=read(TREE/'candidate/lean/Growth/I11TwoFiveTree.lean')
node_count=0
nodes=re.findall(r'theorem ([qe]TreeNode([LR]+|Root)Delta([01]))\s*:.*?:= by\s*(.*?)(?=\ntheorem |\nend )',tree_text,re.S)
for name,path,d,body in nodes:
    prefix='' if path=='Root' else path;kind=name[0].upper()
    targets=re.findall(r'using (?:Math\.B699\.I11TwoFiveGrowth\.)?([QE]Leaf\d+\.leaf_delta[01]|[qe]TreeNode[LR]+Delta[01])',body)
    assert len(targets)==2,(name,targets)
    for direction,target in zip('LR',targets):
        if 'Leaf' in target:
            leaf,ending=target.split('.')
            assert leaf[0]==kind and ending==f'leaf_delta{d}'
            childpath=path_by_leaf[leaf]
        else:
            match=re.fullmatch(r'([qe])TreeNode([LR]+)Delta([01])',target)
            assert match[1].upper()==kind and match[3]==d
            childpath=match[2]
        assert childpath==prefix+direction,(name,direction,target,childpath)
    node_count+=1
assert node_count==34
for kind in ['q','e']:
    for d in (0,1):
        assert re.search(r'theorem '+kind+r'_tree_delta'+str(d)+r'.*?:= by\s*exact '+kind+r'TreeNodeRootDelta'+str(d),tree_text,re.S)
clock()

# Exact short bases and the small arithmetic implications of the six huge goals.
u,v=11959,256
basis_Z=Z**v;basis5=5**4096
assert 2**u<=basis_Z and basis5<=2**9511
assert (u,v)==(short['u'],short['v'])
max_power_bits=max((Z**329).bit_length(),(2**15361).bit_length(),basis_Z.bit_length(),basis5.bit_length())
assert Z**328<=2**15361<Z**329
A3_32=A3**32
assert A3_32>=2 and 192<=M
# Thus A3^329 >= A3^192 >= 2^6=64>48, without expanding A3^329.
capacity=[]
for p,N,alpha,a,b in [(2,35000,752,1,1),(5,15000,748,9511,4096)]:
    rate=u*b*alpha-a*v*N
    base=b*H*alpha-a*N*M
    look=u*b*alpha*M-(2*alpha*b*v+a*v*N*(M+1))
    assert min(rate,base,look)>=0
    capacity.append({'p':p,'N':N,'alpha':alpha,'a':a,'b':b,'u':u,'v':v,
       'rate_margin':rate,'base_margin':base,'lookahead_margin':look})
max_power_bits=max(max_power_bits,A3_32.numerator.bit_length(),A3_32.denominator.bit_length())
assert max_power_bits<20000

# Small cases exercise the actual integer gap without requiring near-equal prime windows.
gap_cases=0
for m,pair in normalized_by_m.items():
    r=128**(5*m);s=125**(5*m)
    for U in range(-3,4):
        for V in [-3,-2,-1,1,2,3]:
            D=abs(r*U-s*V)
            works=[]
            for pn,qn in pair:
                z=qn*U-pn*V
                if z: assert r<=D*abs(qn)+abs(r*pn-s*qn)*abs(V)
                works.append(z!=0 and r<=D*abs(qn)+abs(r*pn-s*qn)*abs(V))
            assert any(works)
            gap_cases+=1

# Verify no source was changed while the bounded check ran.
for relative,record in list(SOURCES.items()): assert sha(ROOT/relative)==record['sha256'],relative
result={
 'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
 'status':'PASS_INDEPENDENT_BOUNDED_ARITHMETIC_AND_SOURCE_BINDING_NOT_LEAN',
 'candidate_forbidden_tokens_absent':True,'seed':seed,'weights':[248,252],'old_qe_metadata_weights':[qe['seed_row']['wp'],qe['seed_row']['wq']],
 'm0':141,'M':M,'Z':Z,'Y0_exponent':H,'q_scale':128**4,'e_scale':839808,
 'qLambda':str(qlam),'eLambda':str(elam),'qBase':str(BQ),'eBase':str(BE),'contentBase':str(L),
 'A3':str(A3),'W':str(W),'W_multiplier_from_Omega4_power_d':128**5,
 'wrong_constant_Q_multiplier_rejected':True,'initial_constants':small_constants,
 'actual_small_rows':small_rows,'actual_small_row_count':len(small_rows),'moment_identities_checked':moments_checked,
 'threshold_four_tracks':threshold_rows,'threshold_q_coefficients_checked':sum(x['q_coefficients'] for x in threshold_rows),
 'normalized_determinants_nonzero_m':[1,2,3,4,5,6],'integer_gap_test_cases':gap_cases,
 'leaves':leaf_results,'leaf_coefficient_identity_checks':190,'tree_source_child_checks':2*node_count,
 'complete_intervals':[{'kind':'Q','leaves':10},{'kind':'E','leaves':9}],
 'capacity_short_implications':capacity,'previous_and_threshold_at_Y0':True,'A3_pow32_ge2':True,
 'max_direct_power_operand_bits':max_power_bits,'huge_capacity_targets_expanded':False,
 'tamper_tests':{'changed_gap_coefficient_rejected':19,'wrong_W_multiplier_rejected':True,
   'omitted_D3_scale_rejected':all(128**d*3**(2*(4-d)+1)>128 for d in (0,1))},
 'receipt_verification':receipt_summary,'source_count':len(SOURCES),'seconds':time.monotonic()-START,
 'resource_bound':{'seconds':60,'direct_power_operand_bits':20000,'scope':'only listed exact finite checks'},
 'worker_Lean_invocations':0,'worker_Git_invocations':0,'new_original_B_results':0
}
(OUT/'exact-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(OUT/'SOURCE_BINDINGS.json').write_text(json.dumps({'sources':SOURCES,'all_matched_before_and_after':True},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:result[k] for k in ['status','actual_small_row_count','moment_identities_checked','threshold_q_coefficients_checked','integer_gap_test_cases','leaf_coefficient_identity_checks','tree_source_child_checks','max_direct_power_operand_bits','source_count','seconds']},ensure_ascii=False))
