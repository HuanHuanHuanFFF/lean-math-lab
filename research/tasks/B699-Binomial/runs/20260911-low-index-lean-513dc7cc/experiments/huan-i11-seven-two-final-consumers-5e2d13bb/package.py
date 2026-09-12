from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-seven-two-final-consumers-5e2d13bb'
assert not (out/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-seven-two-final-consumers-5e2d13bb»'
ns='Math.B699.I11SevenTwoFinalConsumers'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def obj(p):return {'path':str(p.relative_to(root)).replace('\\','/'),'sha256':sha(p),'bytes':p.stat().st_size}
def put(n,x):(out/n).write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
roots=[];ths=[];mods=['RateBasis','ActualNumeric','ActualInstance','Component'];layers=[]
for n in mods:
    p=out/(n+'.lean');s=p.read_text()
    ds=[{'kind':m[1],'name':ns+'.'+m[2]} for m in re.finditer(r'^(theorem|def)\s+(\w+)',s,re.M)]
    dr=[d['name'] for d in ds]
    roots+=dr;ths += [d['name'] for d in ds if d['kind']=='theorem']
    (out/(n+'Audit.lean')).write_text('import '+own+'.'+n+'\n\n'+'\n'.join('#print axioms '+r for r in dr)+'\n',encoding='utf-8')
    layers.append({'source':obj(p),'audit':n+'Audit.lean','declarations':ds,
      'imports':re.findall(r'^import\s+(\S+)',s,re.M),
      'proposed_target':str((run/'lean/I11SevenTwoFinal'/(n+'.lean')).relative_to(root)).replace('\\','/')})
(out/'Audit.lean').write_text('import '+own+'.Component\n\n'+'\n'.join('#print axioms '+r for r in roots)+'\n',encoding='utf-8')
put('expected-axioms.json',{'allowed_axioms':['propext','Classical.choice','Quot.sound'],'candidate_public_theorems':ths,'expected_print_roots':roots})
put('AUDIT_PLAN.json',{'status':'UNCOMPILED','public_theorems':len(ths),'all_public_roots':len(roots),'layers':layers,
 'root':'Audit.lean','new_Lean_invocations':0,'acceptance':'parent serial compiler, exact source closure, every expected #print, no compiler error/sorryAx/custom axiom'})
auditor=run/'experiments/huan-i11-two-five-final-consumers-5e2d13bb/audit_axioms.py'
(out/'audit_axioms.py').write_bytes(auditor.read_bytes())
paths=[
 'experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json',
 'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-01.json',
 'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb/FREEZE.json',
 'experiments/huan-i11-seven-two-growth-tree-5e2d13bb/FREEZE.json',
 'experiments/huan-i11-seven-two-growth-tree-5e2d13bb/selector/FREEZE.json',
 'lean/I11Component/CeilHalf.lean','lean/I11SmallPrimes/Components.lean','lean/I11SmallPrimes/Window.lean',
] + ['lean/I11TwoFiveFinal/'+n+'.lean' for n in mods]
edge=run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb'
growth=run/'experiments/huan-i11-seven-two-growth-tree-5e2d13bb'
paths += [str(p.relative_to(run)).replace('\\','/') for p in edge.glob('*.lean') if not p.stem.endswith('Audit')]
paths += [str(p.relative_to(run)).replace('\\','/') for p in (growth/'candidate/lean/Growth').glob('*.lean')]
paths += [str(p.relative_to(run)).replace('\\','/') for p in (growth/'selector/candidate/lean/I11Numeric').glob('*.lean')]
paths=list(dict.fromkeys(paths))
records=[obj(run/p) for p in paths]
receipt_records=[]
for name in ['i11-two-five-final-rate','i11-two-five-actual-numeric','i11-two-five-actual-instance',
 'i11-two-five-actual-component-edge','i11-two-five-final-chain-audit','i11-small-prime-localization']:
    p=run/'verification/huan-prerequisites'/f'{name}.json'
    if p.exists():
        x=json.loads(p.read_text());r={'receipt':obj(p),'name':x.get('name'),'root':x.get('root'),'evidence':x.get('evidence'),
         'new_B_original_results':x.get('new_B_original_results'),'root_current_hash_matches':sha(root/x['root'])==x['source_sha256']}
        ev=root/x['evidence']
        if ev.exists():r['evidence_binding']=obj(ev)
        receipt_records.append(r)
# Verify candidate bytes against their owners' frozen manifests without altering them.
freeze_checks=[]
for folder in [edge,growth,growth/'selector']:
    manifest=json.loads((folder/'FREEZE.json').read_text())
    checked=[]
    for rel,rec in manifest['files'].items():
        if rel.endswith('.lean'):
            p=folder/rel
            assert sha(p)==rec['sha256'],p
            checked.append(rel)
    freeze_checks.append({'manifest':obj(folder/'FREEZE.json'),'checked_lean_files':len(checked),'all_hashes_match':True})
put('INPUT_SOURCES.json',{'utc':datetime.now(timezone.utc).isoformat(),'source_bindings':records,'adopted_template_receipts':receipt_records,
 'external_candidate_freeze_checks':freeze_checks,
 'boundary':'The old two-five template is accepted; new seven-two imports remain candidates until the parent verifies their actual closure.'})
put('SOURCE_MAP.json',{
 'namespace':ns,'final_root':ns+'.actual_seven_two_component_edge',
 'final_quantifiers':'for every n : Nat with 2^15360 <= n',
 'actual_X7':'B699LowIndex.I11SmallPrimes.primeComponent n 7 = 7^((n.choose 11).factorization 7)',
 'actual_X2':'B699LowIndex.I11SmallPrimes.primeComponent n 2 = 2^((n.choose 11).factorization 2)',
 'final_conclusion':'X7^1000 * ((n+1)/2)^60 <= n^1000 OR X2^1000 * ((n+1)/2)^330 <= n^1000',
 'source_row':{'p':7,'q':2,'c':9,'d':5,'P':49,'Q':16,'a':1,'b':3,'D':1,'z':'1/49',
   'M':285,'m0':224,'Z':17498099772305953,'Y0':'2^15359','weights':[60,330]},
 'rate_proof':'Actual qRate equals frozen N/D; 2D^32<=N^32 => R^32>=2 => R^192>=64; 192<=285 and R>=1 => R^285>48',
 'numeric_bundle':'Construct And.intro from all eight original source types; simpa only Z/M/Y0 aliases; unpack actual-type bundle before FixedEdge',
 'tree_wiring':{'false':'delta1','true':'delta0','Q':'q_tree_delta1/0','E':'e_tree_delta1/0','same_parameters':True},
 'window_to_component':'PrimeWindow localization gives cofactor * p^v_p(choose(n,11)) = n-offset; ceil bounds and absolute difference <=10; actual cofactor edge; primeWindow_graph_capacity',
 'remaining_final_hypotheses':['2^15360 <= n'],
 'not_final_hypotheses':['four GrowthTrees','eight numeric facts','G lower bound','Hom/determinant','standard Q/E growth','window/cofactor data','noCommon','height-validity predicate'],
 'remaining_research':['all new candidates require parent Lean verification','complete all five i11 edges and their global consumer',
   'original B699 unbounded n,j target is not established by this one edge'],
 'proposed_import_mapping':{
  own:base+'.lean.I11SevenTwoFinal',
  base+'.experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb»':base+'.lean.I11SevenTwoEdge',
  base+'.experiments.«huan-i11-seven-two-growth-tree-5e2d13bb».candidate.lean.Growth':base+'.lean.Growth',
  base+'.experiments.«huan-i11-seven-two-growth-tree-5e2d13bb».selector.candidate.lean.I11Numeric.I11SevenTwoSelector':base+'.lean.I11SevenTwoNumeric.Selector',
  base+'.lean.I11Numeric.I11SevenTwoBasis':base+'.lean.I11SevenTwoNumeric.Basis'},
 'mapping_notes':['F9D5 from previous package maps separately to lean/Factorial/Factorial9D5; do not map it into edge directory.',
   'Generated tree files already name future lean.Growth Shared/Leaves; parent must place those files before serial verification.',
   'Generated selector own Basis import currently uses lean.I11Numeric.I11SevenTwoBasis; change only imports to agreed I11SevenTwoNumeric.Basis.',
   'No imported candidate or accepted source was edited.'],
 'new_Lean_invocations':0,'new_Git_invocations':0,'new_original_B_results':0})
print(json.dumps({'theorems':len(ths),'public_roots':len(roots),'external_bindings':len(records),'receipt_count':len(receipt_records),
 'external_frozen_lean_counts':freeze_checks},ensure_ascii=False,indent=2))
