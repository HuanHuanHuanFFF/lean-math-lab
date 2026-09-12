from pathlib import Path
from datetime import datetime,timezone
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb'
assert not (out/'FREEZE.json').exists(), 'This package is frozen; do not regenerate here'
prefix='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=prefix+'.experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb»'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def obj(p):return {'path':str(p.relative_to(root)).replace('\\','/'),'bytes':p.stat().st_size,'sha256':sha(p)}
def put(name,data): (out/name).write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
mods=['Factorial9D5','Parameters','SourceRows','ActualRows','GrowthInputs','ScaledGap','SmallCertificates','SelectedEdge','FixedEdge']
decls=[];allroots=[];theorems=[];plan=[]
for mod in mods:
    p=out/(mod+'.lean');s=p.read_text(encoding='utf-8')
    ns=re.search(r'^namespace\s+(\S+)',s,re.M)[1]
    ds=[{'name':ns+'.'+m[2],'kind':m[1]} for m in re.finditer(r'^(?:(noncomputable)\s+)?(theorem|def)\s+(\w+)',s,re.M)] if False else []
    for m in re.finditer(r'^(?:noncomputable\s+)?(theorem|def)\s+(\w+)',s,re.M):
        ds.append({'name':ns+'.'+m[2],'kind':m[1]})
    roots=[x['name'] for x in ds];allroots+=roots;theorems += [x['name'] for x in ds if x['kind']=='theorem']
    decls.append({'module':mod,'declarations':ds,'source':obj(p)})
    audit='FactorialAudit' if mod=='Factorial9D5' else mod+'Audit'
    if mod!='Factorial9D5':
        (out/(audit+'.lean')).write_text('import '+own+'.'+mod+'\n\n'+'\n'.join('#print axioms '+n for n in roots)+'\n',encoding='utf-8')
    target='lean/Factorial/Factorial9D5.lean' if mod=='Factorial9D5' else 'lean/I11SevenTwoEdge/'+mod+'.lean'
    plan.append({'source':mod+'.lean','target':str((run/target).relative_to(root)).replace('\\','/'),
      'audit':audit+'.lean','theorems':len([x for x in ds if x['kind']=='theorem']),'print_roots':len(roots),
      'imports':re.findall(r'^import\s+(\S+)',s,re.M),'lean_run':False})
assert len(allroots)==len(set(allroots))
(out/'Audit.lean').write_text('import '+own+'.FixedEdge\n\n'+'\n'.join('#print axioms '+n for n in allroots)+'\n',encoding='utf-8')
put('DECLARATIONS.json',decls)
put('expected-axioms.json',{'allowed_axioms':['propext','Classical.choice','Quot.sound'],
  'candidate_public_theorems':theorems,'expected_print_roots':allroots})
put('AUDIT_PLAN.json',{'status':'UNCOMPILED','candidate_implementation_modules':len(mods),'candidate_theorems':len(theorems),
  'full_audit_print_roots':len(allroots),'layer_order':plan,
  'acceptance':'parent serial fresh verification with exact import-remapped bytes; reject any error, sorryAx, extra axiom, absent expected root',
  'factorial_prefix_note':'FactorialAudit preserves previously frozen 11-theorem audit; aggregate Audit also prints its three definitions'})
# Copy the frozen auditor only, never execute any old script.
p=run/'experiments/huan-i11-two-five-scaled-edge-5e2d13bb/audit_axioms.py'
(out/'audit_axioms.py').write_bytes(p.read_bytes())
# Make the diagnostic checker read-only, including on subsequent execution.
p=out/'check.py';s=p.read_text()
a=s.index('# Only unfrozen edge sources')
b=s.index('beta=F(',a)
s=s[:a]+"""# Read-only checks after freeze. The recorded static corrections are historical.
assert '(1 : ℚ) ≤ 128' not in (out/'ActualRows.lean').read_text()
assert '(0 : ℚ) < 2187' not in (out/'ScaledGap.lean').read_text()
"""+s[b:]
# No diagnostic file rewrite on a future rerun; print checked data to stdout only.
s=s.replace("(out/'exact-checks.json').write_text(json.dumps(report,indent=2)+'\\n',encoding='utf-8')",
"""if not (out/'exact-checks.json').exists():
    (out/'exact-checks.json').write_text(json.dumps(report,indent=2)+'\\n',encoding='utf-8')
else:
    assert json.loads((out/'exact-checks.json').read_text()) == report""")
p.write_text(s,encoding='utf-8')
inputs=[
 'experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json',
 'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-01.json',
 'experiments/huan-i11-seven-two-divisor-finite-5e2d13bb/FREEZE.json',
 'experiments/huan-i11-seven-two-divisor-finite-5e2d13bb/Threshold.lean',
 'lean/Factorial/FactorialCommon.lean','lean/Factorial/Factorial5D4.lean',
 'lean/Pade/Rows.lean','lean/HomRemainder/Remainder.lean',
 'lean/Growth/Normalization.lean','lean/Growth/ActualKernel.lean',
 'lean/I11Edge/Capacity.lean','lean/DiscreteSelector/LeastExponent.lean',
 'lean/I11Scaled/RatBounds.lean','lean/I11Scaled/ScaledGap.lean',
 'lean/I11Edge/ActualRemainder.lean','lean/I11TwoFive/Prefix.lean'] + [
 'lean/I11TwoFiveEdge/'+m+'.lean' for m in ['Parameters','ActualRows','GrowthInputs','ScaledGap','SmallCertificates','SelectedEdge','FixedEdge']]
source_records=[obj(run/p) for p in inputs]
receipts=[]
for name in ['factorial-extra-5-4','actual-hom-remainder','growth-normalization','i11-pade-capacity','i11-scaled-rat-bounds',
             'i11-two-five-fixed-chain-audit','i11-seven-two-divisor-actual','i11-seven-two-divisor-polynomials','i11-seven-two-divisor-bounds']:
    p=run/'verification/huan-prerequisites'/f'{name}.json'
    if p.exists():
        x=json.loads(p.read_text());receipt={'receipt':obj(p),'recorded_name':x.get('name'),'recorded_root':x.get('root'),
          'recorded_source_sha256':x.get('source_sha256'),'evidence':x.get('evidence'),
          'new_B_original_results':x.get('new_B_original_results')}
        ev=root/x['evidence']
        if ev.exists():receipt['evidence_file']=obj(ev)
        rr=root/x['root']
        if rr.exists():receipt['receipt_root_current_hash_matches']=sha(rr)==x['source_sha256']
        receipts.append(receipt)
put('INPUT_SOURCES.json',{'captured_utc':datetime.now(timezone.utc).isoformat(),'source_bindings':source_records,'receipt_bindings':receipts,
 'boundary':'Receipts verify their specific recorded roots. Seven-two Threshold candidate is not promoted to accepted here; the parent owns actual verification.'})
put('SOURCE_MAP.json',{
 'row':1,'original_plan':{'B':15360,'p':7,'q':2,'P':49,'Q':16,'a':1,'b':3,'D':1,'y':49,'c':9,'d':5,
     'weights':[60,330],'m0':224,'M':285,'Z':17498099772305953,'Y0':'2^15359','targetBase':'1302991/1000000'},
 'actual_rows':{'true':'delta=0; u=5m,v=4m-1','false':'delta=1; u=5m-1,v=4m','same_m':'leastExponent Z Y; 4Y<Z^m, M<=m'},
 'integer_gap':'49^(9m) <= 3^(9m)*24*abs(qRow) + abs(49^(9m)*pRow-48^(9m)*qRow)*abs(V)',
 'hom':{'Q':'Gδ*qRowδ=49^(5m-δ)*actualQ(9,5,δ,m,1/49)',
         'E':'Gδ*rowErrorδ=49^(4m+δ-1)*actualE(9,5,δ,m,1/49)',
         'G':'qContent(5m-δ,4m+δ-1,5m-δ), separately for each delta',
         'uniform_Q':'49^5','uniform_E':'49^4'},
 'parameter_extraction':{'left':'18m<e, U=7^(e-18m)*A','right':'36m<f, V=2^(f-36m)*C'},
 'rates':{'qRate':'49^4 * (1302991/1000000)^5 / (3^9 * qBase)',
          'wRate':'(49*16)^9 * (1302991/1000000)^5 / (49^4 * eBase)'},
 'final_theorem':'Math.B699.I11SevenTwoScaled.seven_two_edge_of_fixed_certificates',
 'final_conclusion':'Y^60 <= A^1000 or Y^330 <= C^1000',
 'remaining_special_inputs':[
   'qt true, qt false at actual c9d5 z1/49 qWeight/qCore and fixed qLambda',
   'et true, et false at actual c9d5 z1/49 eWeight/eCore and fixed eLambda',
   '48 < qRate(qBase)^285','Z^284 <= 4*Y0',
   '7^18000 <= Z^940','(7^18000)^285 <= Y0^940','4^940*(7^18000)^286 <= Z^(940*285)',
   '2^36000 <= Z^670','(2^36000)^285 <= Y0^670','4^670*(2^36000)^286 <= Z^(670*285)'],
 'ordinary_inputs':['Y,e,f,A,C Nat','2^15359<=Y','1<=C','Y<=7^e*A','Y<=2^f*C','2^f*C<=2Y','abs(7^e*A-2^f*C)<=24 over Int'],
 'not_assumed':['actual G bound','Hom identity','determinant nonvanishing','factorial bound','standard all-m Q/E bound','target edge'],
 'remaining_outside_package':['actual four-tree imports and finite certificate instances','primeWindow/ceilHalf component edge consumer',
   'other i11 edges and complete n<2^15360 derivation','finite tail consumers and original B699 target'],
 'evidence_boundary':{'new_Lean_runs':0,'new_original_B_results':0,'finite_checks':'Python exact only','novelty':'no claim'}
})
print(json.dumps({'core_modules':len(mods),'public_theorems':len(theorems),'audit_roots':len(allroots),'receipt_count':len(receipts)},indent=2))
