from pathlib import Path
from datetime import datetime,timezone
from math import comb
from fractions import Fraction as F
import hashlib,json,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-remaining-final-consumers-5e2d13bb'
dat=run/'experiments/huan-i11-remaining-growth-numeric-5e2d13bb'
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-remaining-final-consumers-5e2d13bb»'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def obj(p):return {'path':str(p.relative_to(root)).replace('\\','/'),'sha256':sha(p),'bytes':p.stat().st_size}
def put(path,x):path.write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
configs=[
 ('ThreeTwo','row02','three-two','threeTwo','three_two',3,2,23,15,226,268,162,'4ddc1389a9955acaa330a265e77574fb36142ddc3dd06cce962a0c722af54bed'),
 ('FiveSeven','row04','five-seven','fiveSeven','five_seven',5,7,11,7,352,216,194,'72b2510a3029dc0dfa4a94bfc31d7275e8cbca010f0a321ba1b79d96d343a7bf')]
for group,row,slug,camel,snake,p,q,c,d,wp,wq,M,fh in configs:
    sub=out/group;assert not (sub/'FREEZE.json').exists()
    ns='Math.B699.I11'+group+'FinalConsumers'
    rate_freeze=json.loads((sub/'RATE_FREEZE.json').read_text())
    for file,rec in rate_freeze['files'].items():
        assert sha(sub/file)==rec['sha256'],file
    assert sha(dat/row/'FREEZE.json')==fh
    extfreeze=json.loads((dat/row/'FREEZE.json').read_text())
    for rel,rec in extfreeze['files'].items():
        file=dat/row/rel
        assert file.exists(),file
        assert sha(file)==rec['sha256'],file
    ds=[];roots=[];ths=[];layers=[]
    for mod in ['RateBasis','ActualNumeric','ActualInstance','Component']:
        file=sub/(mod+'.lean');s=file.read_text()
        decl=[{'kind':m[1],'name':ns+'.'+m[2]} for m in re.finditer(r'^(theorem|def)\s+(\w+)',s,re.M)]
        dr=[x['name'] for x in decl];roots+=dr;ths +=[x['name'] for x in decl if x['kind']=='theorem'];ds+=decl
        if mod!='RateBasis':
            (sub/(mod+'Audit.lean')).write_text('import '+own+'.'+group+'.'+mod+'\n\n'+'\n'.join('#print axioms '+x for x in dr)+'\n',encoding='utf-8')
        layers.append({'module':mod,'source':obj(file),'audit':mod+'Audit.lean','declarations':decl,'imports':re.findall(r'^import (\S+)',s,re.M)})
        assert not re.search(r'\b(sorry|admit|native_decide)\b|^\s*(axiom|unsafe)\b',s,re.M),file
    (sub/'Audit.lean').write_text('import '+own+'.'+group+'.Component\n\n'+'\n'.join('#print axioms '+x for x in roots)+'\n',encoding='utf-8')
    put(sub/'expected-axioms.json',{'allowed_axioms':['propext','Classical.choice','Quot.sound'],'candidate_public_theorems':ths,'expected_print_roots':roots})
    assert len(ths)==22 and len(roots)==25
    (sub/'audit_axioms.py').write_bytes((run/'experiments/huan-i11-two-five-final-consumers-5e2d13bb/audit_axioms.py').read_bytes())
    put(sub/'AUDIT_PLAN.json',{'status':'UNCOMPILED','public_theorems':22,'all_roots':25,'layers':layers,
      'target_root':'lean/I11'+group+'Final/Audit.lean','acceptance':'parent serial compile of exact imported closure; all roots; std3 only'})
    edge=run/f'experiments/huan-i11-{slug}-scaled-edge-5e2d13bb'
    sources=[dat/row/'FREEZE.json',dat/row/'README.md',edge/'FREEZE.json',
       run/'lean/I11Component/CeilHalf.lean',run/'lean/I11SmallPrimes/Window.lean',run/'lean/I11SmallPrimes/Components.lean',
       run/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json']
    sources += [f for f in edge.glob('*.lean') if not f.stem.endswith('Audit')]
    sources += [f for f in (dat/row/'candidate/lean/Growth').rglob('*.lean')
                if f.name.startswith('I11'+group) or 'Leaves' in f.relative_to(dat/row/'candidate/lean/Growth').parts]
    sources += list((dat/row/'selector/candidate/lean/I11Numeric').glob('I11'+group+'*.lean'))
    sources += [run/'lean/I11TwoFiveFinal'/(mod+'.lean') for mod in ['RateBasis','ActualNumeric','ActualInstance','Component']]
    sources=list(dict.fromkeys(sources))
    receipts=[]
    for name in ['i11-two-five-final-chain-audit','i11-small-prime-localization']:
        f=run/'verification/huan-prerequisites'/(name+'.json')
        if f.exists():
            data=json.loads(f.read_text());r={'receipt':obj(f),'root':data['root'],'evidence':data['evidence'],
              'root_current_hash_matches':sha(root/data['root'])==data['source_sha256']}
            assert r['root_current_hash_matches']
            receipts.append(r)
    put(sub/'INPUT_SOURCES.json',{'utc':datetime.now(timezone.utc).isoformat(),
       'parent_confirmed_official_refreeze_sha256':fh,'all_official_manifest_entries_verified':len(extfreeze['files']),
       'adopted_active_sources':[obj(f) for f in sources],'accepted_template_receipts':receipts,
       'excluded_historical_modules':'I11Row02/04 Shared/Leaves/Tree/Basis/Selector/Audit; only newly named actual group modules are imported',
       'boundary':'Official source adoption/correspondence is checked; these final consumers still have no Lean run.'})
    comp=(sub/'Component.lean').read_text()
    sig=comp.split('theorem actual_'+snake+'_component_edge',1)[1].split(':= by',1)[0]
    assert '(hn : (2 : ℕ) ^ 15360 ≤ n)' in sig
    assert f'(primeComponent n {p}) ^ 1000 * ((n + 1) / 2) ^ {wp}' in sig
    assert f'(primeComponent n {q}) ^ 1000 * ((n + 1) / 2) ^ {wq}' in sig
    num=(sub/'ActualNumeric.lean').read_text()
    plain=re.sub(r'/\-.*?\-/','',num,flags=re.S)
    assert plain.count('And.intro')==7
    assert f'simpa only [{camel}Z, Math.B699.I11{group}Numeric.certificateZ,' in num
    assert f'rateRational_pow{M}_gt_48' in num
    ins=(sub/'ActualInstance.lean').read_text()
    assert 'row_delta_false : rowDelta false = 1' in ins and 'row_delta_true : rowDelta true = 0' in ins
    windowchecks=0
    for n in range(20,201):
        binomial=comb(n,11);Y=(n+1)//2
        for prime in [p,q]:
            rem=binomial;v=0
            while rem%prime==0:v+=1;rem//=prime
            X=prime**v
            offsets=[a for a in range(11) if (n-a)%X==0 and (n-a)//X>=1]
            assert offsets
            a=offsets[0];C=(n-a)//X
            assert X*C==n-a and Y<=X*C<=2*Y
            windowchecks+=1
    put(sub/'exact-checks.json',{'status':'EXACT_BOUNDED_CHECKS_NOT_LEAN','official_source_refreeze':fh,'same_delta_mapping':True,
      'numeric_bundle_actual_aliases_only':True,'final_only_hypothesis':'2^15360<=n','primes':[p,q],'weights':[wp,wq],
      'actual_binomial_window_range':[20,200],'actual_binomial_window_cases':windowchecks,
      'rate_prefix_unchanged':True,'new_Lean_invocations':0,
      'core_hashes':{mod:sha(sub/(mod+'.lean')) for mod in ['RateBasis','ActualNumeric','ActualInstance','Component']}})
    put(sub/'SOURCE_MAP.json',{'namespace':ns,'final_root':ns+'.actual_'+snake+'_component_edge',
      'Xp':f'{p}^((n.choose 11).factorization {p})','Xq':f'{q}^((n.choose 11).factorization {q})',
      'result':f'Xp^1000*((n+1)/2)^{wp}<=n^1000 OR Xq^1000*((n+1)/2)^{wq}<=n^1000',
      'only_final_input':'n:Nat and2^15360<=n','special_inputs_discharged':['four actual GrowthTrees','eight numerical certificates','primeWindow/ceilHalf'],
      'ordinary_to_raw':'C*primeComponent=n-offset; offset<11,cofactor positive; |difference|<=10<=24; graph_capacity transfers cofactor edge',
      'row_mapping':{'false':1,'true':0},'new_Lean_invocations':0,'new_original_B_results':0,
      'self_import_mapping':{own+'.'+group:base+'.lean.I11'+group+'Final'},
      'external_targets':{'edge':'lean/I11'+group+'Edge','factorial':'lean/Factorial/Factorial'+str(c)+'D'+str(d),
       'tree_shared_aggregator':'lean/Growth/I11'+group+'{Shared,Leaves,Tree}',
       'leaf_directory':'lean/Growth/I11'+group+'Leaves/',
       'numeric':'lean/I11'+group+'Numeric/{Basis,Selector,Audit}'},
      'exclude':'historical I11RowNN modules; imports use only official newly named files',
      'remaining':'parent actual Lean closure verification and complete original i11/global B699 consumers'})
    print(json.dumps({'group':group,'theorems':22,'roots':25,'active_sources':len(sources),
      'official_manifest_entries_verified':len(extfreeze['files']),'window_checks':windowchecks}))
