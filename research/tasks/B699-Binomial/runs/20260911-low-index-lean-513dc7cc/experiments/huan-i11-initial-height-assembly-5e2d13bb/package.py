from pathlib import Path
from itertools import product
from math import factorial
from datetime import datetime,timezone
import hashlib,json,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-initial-height-assembly-5e2d13bb'
assert not (out/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-initial-height-assembly-5e2d13bb»'
ns='Math.B699.I11InitialHeight'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def obj(p):return {'path':str(p.relative_to(root)).replace('\\','/'),'sha256':sha(p),'bytes':p.stat().st_size}
def put(n,x):(out/n).write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
allroots=[];public=[];layers=[]
for mod in ['WindowBounds','Product','Height','Compression']:
    file=out/(mod+'.lean');s=file.read_text()
    names=[ns+'.'+n for n in re.findall(r'^theorem\s+(\w+)',s,re.M)];allroots+=names;public+=names
    cmds=[]
    for n in names:cmds+=['#check @'+n,'#print axioms '+n]
    (out/(mod+'Audit.lean')).write_text('import '+own+'.'+mod+'\n\n'+'\n'.join(cmds)+'\n',encoding='utf-8')
    layers.append({'source':obj(file),'audit':mod+'Audit.lean','roots':names,
      'imports':re.findall(r'^import\s+(\S+)',s,re.M),'proposed_target':'lean/I11InitialHeight/'+mod+'.lean'})
externals=[
 'B699LargePrimeStructure.Common',
 'B699LowIndex.I11SmallPrimes.primeWindow_nonempty',
 'B699LowIndex.I11SmallPrimes.smallPrimePart_eq_four_components',
 'Math.B699.I11TwoFiveFinalConsumers.actual_two_five_component_edge',
 'Math.B699.I11SevenTwoFinalConsumers.actual_seven_two_component_edge',
 'Math.B699.I11ThreeTwoFinalConsumers.actual_three_two_component_edge',
 'B699LowIndex.I11FiveThreeFinalInstance.actual_five_three_component_edge',
 'Math.B699.I11FiveSevenFinalConsumers.actual_five_seven_component_edge',
 'Math.B699.I11WeightedProduct.i11_five_edges_product',
 'Math.B699.I11WeightedProduct.i11_noCommon_false_of_product',
 'Math.B699.I11VerifiedCubicCompression.actual_i11_below_109_of_initial_height']
allroots += externals
commands=[]
for n in allroots:commands+=['#check @'+n,'#print axioms '+n]
(out/'Audit.lean').write_text('import '+own+'.Compression\n\n'+'\n'.join(commands)+'\n',encoding='utf-8')
put('expected-axioms.json',{'allowed_axioms':['propext','Classical.choice','Quot.sound'],'candidate_public_theorems':public,'expected_print_roots':allroots})
put('AUDIT_PLAN.json',{'status':'UNCOMPILED','own_public_roots':len(public),'typed_and_axiom_roots':len(allroots),
 'layers':layers,'critical_imported_roots':externals,'type_audit':'#check @ applied to every own/critical imported root',
 'acceptance':'parent serial full-closure Lean and type/axiom outputs; no errors, sorryAx, unexpected axioms or missing roots'})
(out/'audit_axioms.py').write_bytes((run/'experiments/huan-i11-two-five-final-consumers-5e2d13bb/audit_axioms.py').read_bytes())
# Independent exact arithmetic for the global reduction, without giant powers.
edges=[(2,5,248,252),(7,2,60,330),(3,2,226,268),(5,3,354,228),(5,7,352,216)]
cases=[]
for bits in product([0,1],repeat=5):
    weights={p:0 for p in [2,3,5,7]}
    for bit,(p,q,a,b) in zip(bits,edges):
        prime,w=(p,a) if bit==0 else (q,b)
        weights[prime]=max(weights[prime],w)
    total=sum(weights.values());assert total>=640
    cases.append({'choices':list(bits),'weights':weights,'sum':total})
assert len(cases)==32
assert 121*1000+640*11-84*1000-4000*11==40
assert 2*factorial(11)<2**27
assert 27*11000+7040==304040
assert 15360*40==614400 and 304040<614400
commonsource=root/'research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean'
common=commonsource.read_text()
assert 'p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)' in common
for file,theorem,bound in [('Height','actual_i11_below_15360',15360),('Compression','actual_i11_below_109',109)]:
    text=(out/(file+'.lean')).read_text()
    typ=text.split('theorem '+theorem,1)[1].split(':= by',1)[0]
    assert '(hij : 11 < j)' in typ and '(hjn : j ≤ n / 2)' in typ and '(hno : ¬ Common n 11 j)' in typ
    assert 'hheight' not in typ and f'n < (2 : ℕ) ^ {bound}' in typ
put('exact-checks.json',{'status':'BOUNDED_SOURCE_AND_INTEGER_DIAGNOSTICS_NOT_LEAN','orientations':cases,
 'minimum_weight_sum':min(x['sum'] for x in cases),'tail_exponent_difference':40,
 'factorial_constant':2*factorial(11),'factorial_dyadic_exponent':27,
 'upper_exponent':304040,'lower_exponent':614400,'strict_exponent_gap':310360,
 'original_inclusive_prime_threshold_preserved':True,'final_three_original_hypotheses_only':True,
 'giant_height_powers_evaluated':False,'new_Lean_invocations':0})
# Bind current accepted roots and exact candidate fallbacks for not-yet-integrated components.
deps=[
 ('Common definition',commonsource,'source definition, inclusive p>=i'),
 ('actual smallPrimePart identity',run/'lean/I11SmallPrimes/Components.lean','accepted prior'),
 ('actual PrimeWindow source',run/'lean/I11SmallPrimes/Window.lean','accepted prior'),
 ('ceil arithmetic',run/'lean/I11Component/CeilHalf.lean','accepted prior'),
 ('five-three actual edge',run/'lean/I11Component/ActualInstance.lean','accepted parent'),
 ('two-five actual edge',run/'lean/I11TwoFiveFinal/Component.lean','accepted parent'),
 ('seven-two actual edge',run/'lean/I11SevenTwoFinal/Component.lean','accepted parent'),
 ('Product source',run/'lean/I11WeightedProduct/Product.lean','parent v15 verification pending'),
 ('Tail source',run/'lean/I11WeightedProduct/Tail.lean','parent v15 verification pending; known Nat.pow_pos interface check'),
 ('accepted actual cubic compression',run/'lean/CubicBatches/ActualCompression.lean','accepted receipt')]
for group in ['ThreeTwo','FiveSeven']:
    target=run/'lean'/('I11'+group+'Final')/'Component.lean'
    fallback=run/'experiments/huan-i11-remaining-final-consumers-5e2d13bb'/group/'Component.lean'
    deps.append((group+' final actual edge',target if target.exists() else fallback,'candidate pending parent acceptance'))
sources=[{'role':role,'source':obj(p),'status':status} for role,p,status in deps]
receipts=[]
for name in ['i11-five-three-actual-component-edge','i11-two-five-actual-component-edge','i11-seven-two-actual-component-edge',
 'i11-actual-block-compression','i11-weighted-product','i11-weighted-tail']:
    p=run/'verification/huan-prerequisites'/(name+'.json')
    if p.exists():
        x=json.loads(p.read_text());rr=root/x['root']
        receipts.append({'receipt':obj(p),'root':x['root'],'root_current_hash_matches':sha(rr)==x['source_sha256'],'evidence':x['evidence']})
put('INPUT_SOURCES.json',{'utc':datetime.now(timezone.utc).isoformat(),'dependency_sources':sources,'receipt_bindings':receipts,
 'additional_frozen_upstream_records':[obj(run/'experiments/huan-i11-remaining-final-consumers-5e2d13bb'/g/'FREEZE.json') for g in ['ThreeTwo','FiveSeven']],
 'boundary':'Actual current source hashes do not equal acceptance. Pending dependencies must be truly verified after their parent-owned integration fixes.'})
put('SOURCE_MAP.json',{'namespace':ns,'fixed_index':11,
 'original_Common':'exists prime p with11<=p and p divides gcd(choose(n,11),choose(n,j))',
 'original_domain':['n,j:Nat','11<j','j<=n/2','not Common n11j'],
 'actual_product':'smallPrimePart n11 = X2*X3*X5*X7, Xp=p^v_p(choose(n,11))',
 'actual_Ap_bounds':'constructed from positive PrimeWindow cofactor, no external bound',
 'actual_edges':edges,'Y':'ceilHalf n=(n+1)/2','Y_bounds':'1<=Y at high n; n<=2Y for all n',
 'proof_route':[
 'Assume n>=2^15360 only inside the contradiction.',
 'Obtain all five actual raw component edges and four actual component upper bounds.',
 'Apply all32-choice product theorem and substitute actual smallPrimePart identity.',
 'Apply original noCommon_bernoulli_size tail via i11_noCommon_false_of_product; exponent gap40 yields contradiction.',
 'Conclude n<2^15360 under only original hij/hjn/hno.',
 'Supply this proved initial height to accepted full six-pair actual compression, concluding n<2^109.'],
 'final_roots':public[-2:],'no_external_final_inputs':['trees','numeric certificates','HeightValid','five edges','Ap<=n','U identity','product bound','initial height'],
 'pending_acceptance':['three-two/five-seven final consumers and their amended upstream selectors','Product/Tail v15 checks','this own four-module assembly'],
 'known_parent_owned_checks':['Tail has legacy explicit Nat.pow_pos exponents; parent waits for actual diagnostics and repairs integrated source only.',
   'Remaining upstream selectors require double-Nat annotation normalization; FiveSeven basis_seven added in integrated copy; final public APIs unchanged.'],
 'proposed_self_target':'lean/I11InitialHeight/{WindowBounds,Product,Height,Compression}',
 'component_import_targets':{'ThreeTwo':'lean/I11ThreeTwoFinal/Component.lean','FiveSeven':'lean/I11FiveSevenFinal/Component.lean'},
 'expected_frontier_if_verified':'i11 counterexamples with unbounded n -> only n<2^109 with original j-domain; finite CRT and terminal certificates still required',
 'actual_frontier_now':'own candidate not compiled; no original B count increase','new_Lean_invocations':0,'new_original_B_results':0})
print(json.dumps({'own_roots':len(public),'typed_axiom_roots':len(allroots),'min_weight_sum':min(x['sum'] for x in cases),
 'min_choices':[x['choices'] for x in cases if x['sum']==640],'receipts_seen':len(receipts)},indent=2))
