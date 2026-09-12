from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-five-seven-scaled-edge-5e2d13bb'
assert not (out/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-five-seven-scaled-edge-5e2d13bb»'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def obj(p):return {'path':str(p.relative_to(root)).replace('\\','/'),'sha256':sha(p),'bytes':p.stat().st_size}
def put(n,x):(out/n).write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
mods=['Factorial11D7','Parameters','SourceRows','ActualRows','GrowthInputs','ScaledGap','SmallCertificates','SelectedEdge','FixedEdge']
roots=[];thms=[];layers=[]
for mod in mods:
    p=out/(mod+'.lean');s=p.read_text();ns=re.search(r'^namespace (\S+)',s,re.M)[1]
    ds=[{'kind':m[1],'name':ns+'.'+m[2]} for m in re.finditer(r'^(?:noncomputable\s+)?(theorem|def)\s+(\w+)',s,re.M)]
    dr=[d['name'] for d in ds];roots+=dr;thms+=[d['name'] for d in ds if d['kind']=='theorem']
    audit='FactorialAudit' if mod=='Factorial11D7' else mod+'Audit'
    if mod!='Factorial11D7':
        (out/(audit+'.lean')).write_text('import '+own+'.'+mod+'\n\n'+'\n'.join('#print axioms '+n for n in dr)+'\n',encoding='utf-8')
    layers.append({'source':obj(p),'audit':audit+'.lean','declarations':ds,'imports':re.findall(r'^import (\S+)',s,re.M),
      'target':str((run/('lean/Factorial/Factorial11D7.lean' if mod=='Factorial11D7' else 'lean/I11FiveSevenEdge/'+mod+'.lean')).relative_to(root)).replace('\\','/')})
(out/'Audit.lean').write_text('import '+own+'.FixedEdge\n\n'+'\n'.join('#print axioms '+r for r in roots)+'\n',encoding='utf-8')
put('expected-axioms.json',{'allowed_axioms':['propext','Classical.choice','Quot.sound'],'candidate_public_theorems':thms,'expected_print_roots':roots})
put('AUDIT_PLAN.json',{'status':'UNCOMPILED','public_theorems':len(thms),'all_roots':len(roots),'layers':layers,
 'factorial_prefix':'FactorialAudit keeps 11-theorem frozen prefix; aggregate covers its 3 definitions also',
 'acceptance':'parent serial verification, full imported source closure, all expected roots, no error/sorryAx/extra axiom'})
(out/'audit_axioms.py').write_bytes((run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb/audit_axioms.py').read_bytes())
paths=['experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json',
 'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-04.json',
 'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb/FREEZE.json',
 'lean/Factorial/FactorialCommon.lean','lean/Factorial/Factorial25D17.lean','lean/I11TwoFiveEdge/ScaledGap.lean',
 'lean/Pade/Rows.lean','lean/HomRemainder/Remainder.lean','lean/Growth/Normalization.lean','lean/Growth/ActualKernel.lean',
 'lean/I11Edge/Capacity.lean','lean/I11Scaled/RatBounds.lean']
paths += [str(p.relative_to(run)).replace('\\','/') for p in (run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb').glob('*.lean') if not p.stem.endswith('Audit')]
paths += [str(p.relative_to(run)).replace('\\','/') for p in (run/'lean/I11DivisorThreeTwo').glob('*.lean')]
paths += ['experiments/huan-i11-three-two-scaled-edge-5e2d13bb/ScaledGap.lean', 'experiments/huan-i11-approximation-bridge-plan-5e2d13bb/short-power-bases.json']
records=[obj(run/p) for p in dict.fromkeys(paths)]
receipts=[]
receipt_dir=run/'verification/huan-prerequisites'
fixed=['factorial-extra-25-17','actual-hom-remainder','growth-normalization','i11-pade-capacity','i11-scaled-rat-bounds','i11-two-five-fixed-chain-audit']
receiptpaths=[receipt_dir/(n+'.json') for n in fixed]
receiptpaths += list(receipt_dir.glob('*five-seven*'))
for p in receiptpaths:
    if p.exists():
        x=json.loads(p.read_text());r={'receipt':obj(p),'root':x.get('root'),'evidence':x.get('evidence'),'new_B_original_results':x.get('new_B_original_results')}
        if x.get('root') and (root/x['root']).exists():r['root_hash_matches']=sha(root/x['root'])==x.get('source_sha256')
        if x.get('evidence') and (root/x['evidence']).exists():r['evidence_binding']=obj(root/x['evidence'])
        receipts.append(r)
put('INPUT_SOURCES.json',{'utc':datetime.now(timezone.utc).isoformat(),'source_bindings':records,'receipt_bindings':receipts,
 'boundary':'Receipts apply only to their exact roots. This new 3/2 candidate has no Lean run; Factorial9D5 template is frozen proof text, not promoted to accepted here.'})
put('SOURCE_MAP.json',{'row':4,'namespace':'Math.B699.I11FiveSevenScaled',
 'parameters':{'p':5,'q':7,'P':25,'Q':49,'a':2,'b':1,'D':1,'y':50,'c':11,'d':7,
  'weights':[352,216],'m0':149,'M':194,'Z':719422706382292314227864,'Y0':'2^15359','Lt':'1303943/1000000'},
 'rows':{'true':'delta0,u7m,v4m-1','false':'delta1,u7m-1,v4m','m':'same leastExponent Z Y for both rows and primes'},
 'G_api':'Math.B699.I11DivisorFiveSeven.qContent_lower delta m hdelta hm149',
 'G_object':'qContent(7m-delta,4m+delta-1,7m-delta) individually for each delta; no interchange',
 'Q_Hom':'Gdelta*qRow=50^(7m-delta)*actualQ(11,7,delta,m,1/50)',
 'E_Hom':'Gdelta*(50^(11m)*pRow-49^(11m)*qRow)=50^(4m+delta-1)*actualE(11,7,delta,m,1/50)',
 'scales':{'Q':'50^7','E':'50^4','a':'2^(11m)','b':'1','integer_lower_bound':'25^(11m)'},
 'extraction':{'left':'22m<e','right':'22m<f'},
 'integer_gap':'25^(11m)<=24*abs(qRow)+abs(rowError)*abs(V)',
 'rates':{'Q':'25^11*Lt^7/(50^7*beta11,7*qLambda)','E':'(25*49)^11*Lt^7/(50^4*beta11,7*eLambda)'},
 'final_root':'Math.B699.I11FiveSevenScaled.five_seven_edge_of_fixed_certificates',
 'conclusion':'Y^352<=A^1000 or Y^216<=C^1000 (cofactor edge)',
 'special_inputs':['four actual GrowthTrees Q/E each delta','48<qRate(qBase)^194','Z^193<=4Y0',
  '5^22000<=Z^648','(5^22000)^194<=Y0^648','4^648*(5^22000)^195<=Z^(648*194)',
  '7^22000<=Z^784','(7^22000)^194<=Y0^784','4^784*(7^22000)^195<=Z^(784*194)'],
 'ordinary_inputs':['Y,e,f,A,C Nat','Y0<=Y','1<=C','Y<=5^e*A','Y<=7^f*C<=2Y','abs(5^e*A-7^f*C)<=24 over Int'],
 'not_assumed':['actual F/G bound','Hom/source identity','determinant','standard all-m Q/E growth','desired edge'],
 'next':['parent serial factorial/G/edge acceptance','actual four-tree and eight-number instantiation','primeWindow component consumer'],
 'diagnostic_boundary':'coarse v256 short basis failed p5 lookahead; original frozen v1024 row04 basis passes. No numerical target or parameter changed.',
 'new_Lean_invocations':0,'new_original_B_results':0})
exact=json.loads((out/'exact-checks.json').read_text())
print(json.dumps({'theorems':len(thms),'audit_roots':len(roots),'receipt_count':len(receipts),'qRate_approx_diagnostic':float(__import__('fractions').Fraction(exact['qRate']))},indent=2))
