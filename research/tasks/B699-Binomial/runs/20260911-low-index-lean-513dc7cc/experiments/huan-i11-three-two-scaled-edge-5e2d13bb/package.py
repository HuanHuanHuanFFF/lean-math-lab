from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-three-two-scaled-edge-5e2d13bb'
assert not (out/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-three-two-scaled-edge-5e2d13bb»'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def obj(p):return {'path':str(p.relative_to(root)).replace('\\','/'),'sha256':sha(p),'bytes':p.stat().st_size}
def put(n,x):(out/n).write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
mods=['Factorial23D15','Parameters','SourceRows','ActualRows','GrowthInputs','ScaledGap','SmallCertificates','SelectedEdge','FixedEdge']
roots=[];thms=[];layers=[]
for mod in mods:
    p=out/(mod+'.lean');s=p.read_text();ns=re.search(r'^namespace (\S+)',s,re.M)[1]
    ds=[{'kind':m[1],'name':ns+'.'+m[2]} for m in re.finditer(r'^(?:noncomputable\s+)?(theorem|def)\s+(\w+)',s,re.M)]
    dr=[d['name'] for d in ds];roots+=dr;thms+=[d['name'] for d in ds if d['kind']=='theorem']
    audit='FactorialAudit' if mod=='Factorial23D15' else mod+'Audit'
    if mod!='Factorial23D15':
        (out/(audit+'.lean')).write_text('import '+own+'.'+mod+'\n\n'+'\n'.join('#print axioms '+n for n in dr)+'\n',encoding='utf-8')
    layers.append({'source':obj(p),'audit':audit+'.lean','declarations':ds,'imports':re.findall(r'^import (\S+)',s,re.M),
      'target':str((run/('lean/Factorial/Factorial23D15.lean' if mod=='Factorial23D15' else 'lean/I11ThreeTwoEdge/'+mod+'.lean')).relative_to(root)).replace('\\','/')})
(out/'Audit.lean').write_text('import '+own+'.FixedEdge\n\n'+'\n'.join('#print axioms '+r for r in roots)+'\n',encoding='utf-8')
put('expected-axioms.json',{'allowed_axioms':['propext','Classical.choice','Quot.sound'],'candidate_public_theorems':thms,'expected_print_roots':roots})
put('AUDIT_PLAN.json',{'status':'UNCOMPILED','public_theorems':len(thms),'all_roots':len(roots),'layers':layers,
 'factorial_prefix':'FactorialAudit keeps 11-theorem frozen prefix; aggregate covers its 3 definitions also',
 'acceptance':'parent serial verification, full imported source closure, all expected roots, no error/sorryAx/extra axiom'})
(out/'audit_axioms.py').write_bytes((run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb/audit_axioms.py').read_bytes())
paths=['experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json',
 'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-02.json',
 'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb/FREEZE.json',
 'lean/Factorial/FactorialCommon.lean','lean/Factorial/Factorial25D17.lean','lean/I11TwoFiveEdge/ScaledGap.lean',
 'lean/Pade/Rows.lean','lean/HomRemainder/Remainder.lean','lean/Growth/Normalization.lean','lean/Growth/ActualKernel.lean',
 'lean/I11Edge/Capacity.lean','lean/I11Scaled/RatBounds.lean']
paths += [str(p.relative_to(run)).replace('\\','/') for p in (run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb').glob('*.lean') if not p.stem.endswith('Audit')]
paths += [str(p.relative_to(run)).replace('\\','/') for p in (run/'lean/I11DivisorThreeTwo').glob('*.lean')]
records=[obj(run/p) for p in dict.fromkeys(paths)]
receipts=[]
receipt_dir=run/'verification/huan-prerequisites'
fixed=['factorial-extra-25-17','actual-hom-remainder','growth-normalization','i11-pade-capacity','i11-scaled-rat-bounds','i11-two-five-fixed-chain-audit']
receiptpaths=[receipt_dir/(n+'.json') for n in fixed]
receiptpaths += list(receipt_dir.glob('*three-two*'))
for p in receiptpaths:
    if p.exists():
        x=json.loads(p.read_text());r={'receipt':obj(p),'root':x.get('root'),'evidence':x.get('evidence'),'new_B_original_results':x.get('new_B_original_results')}
        if x.get('root') and (root/x['root']).exists():r['root_hash_matches']=sha(root/x['root'])==x.get('source_sha256')
        if x.get('evidence') and (root/x['evidence']).exists():r['evidence_binding']=obj(root/x['evidence'])
        receipts.append(r)
put('INPUT_SOURCES.json',{'utc':datetime.now(timezone.utc).isoformat(),'source_bindings':records,'receipt_bindings':receipts,
 'boundary':'Receipts apply only to their exact roots. This new 3/2 candidate has no Lean run; Factorial9D5 template is frozen proof text, not promoted to accepted here.'})
put('SOURCE_MAP.json',{'row':2,'namespace':'Math.B699.I11ThreeTwoScaled',
 'parameters':{'p':3,'q':2,'P':9,'Q':8,'a':1,'b':1,'D':1,'y':9,'c':23,'d':15,'weights':[226,268],
  'm0':160,'M':162,'Z':37002653975761602583641821923,'Y0':'2^15359','Lt':'41069/31250'},
 'rows':{'true':'delta0,u15m,v8m-1','false':'delta1,u15m-1,v8m','m':'same leastExponent Z Y for both rows and primes'},
 'G_api':'Math.B699.I11DivisorThreeTwo.qContent_lower delta m hdelta hm160',
 'G_object':'each delta owns qContent(15m-delta,8m+delta-1,15m-delta), no content interchange',
 'Q_Hom':'Gdelta*qRow=9^(15m-delta)*actualQ(23,15,delta,m,1/9)',
 'E_Hom':'Gdelta*(9^(23m)*pRow-8^(23m)*qRow)=9^(8m+delta-1)*actualE(23,15,delta,m,1/9)',
 'scales':{'Q':'9^15','E':'9^8','b':'1'},
 'extraction':{'left':'46m<e','right':'69m<f'},'integer_gap':'9^(23m)<=24*abs(qRow)+abs(rowError)*abs(V)',
 'rates':{'Q':'9^8*Lt^15/(beta23,15*qLambda)','E':'72^23*Lt^15/(9^8*beta23,15*eLambda)'},
 'final_root':'Math.B699.I11ThreeTwoScaled.three_two_edge_of_fixed_certificates',
 'conclusion':'Y^226<=A^1000 or Y^268<=C^1000 (cofactor edge)',
 'special_inputs':['Q/E actual GrowthTree, each delta separately','48<qRate(qBase)^162','Z^161<=4Y0',
  '3^46000<=Z^774','(3^46000)^162<=Y0^774','4^774*(3^46000)^163<=Z^(774*162)',
  '2^69000<=Z^732','(2^69000)^162<=Y0^732','4^732*(2^69000)^163<=Z^(732*162)'],
 'ordinary_inputs':['Y,e,f,A,C Nat','Y0<=Y','1<=C','Y<=3^e*A','Y<=2^f*C<=2Y','abs(3^e*A-2^f*C)<=24 over Int'],
 'not_assumed':['actual F bound','actual G bound','Hom/source identity','determinant','standard all-m Q/E growth','desired edge'],
 'next':['parent serial factorial/G/edge acceptance','actual four-tree and eight-number instantiation','actual primeWindow component consumer'],
 'new_Lean_invocations':0,'new_original_B_results':0})
exact=json.loads((out/'exact-checks.json').read_text())
print(json.dumps({'theorems':len(thms),'audit_roots':len(roots),'receipt_count':len(receipts),'qRate_approx_diagnostic':float(__import__('fractions').Fraction(exact['qRate']))},indent=2))
