"""Below source fixes already diagnosed in shared copied dependencies.
Preserves every CRT/terminal numeric datum and exact full literal. No Lean.
"""
import ast, hashlib, inspect, json, pickle, re
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO, DECL, LOW
from compress_i11 import SCRATCH, add, override
from pack_consumer import pack, main as pack_main
from freeze import renamed

BASE=Path(__file__).resolve().parent
R=BASE/'repairs/20261007-below-runtime'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def source(p):return {'path':str(p.relative_to(REPO).as_posix()),'bytes':p.stat().st_size,'sha256':sha(p)}
def main():
 old=json.loads((BASE/'repairs/20261007-i11-below-options/FREEZE.json').read_text(encoding='utf-8'))['newArtifact']
 assert sha(REPO/old['path'])==old['sha256']
 with (SCRATCH/'i11-crt-compact.pickle').open('rb') as f:tree,_,_=pickle.load(f)
 for d in tree.decls.values():
  if d['line']==0:d['kind']=DECL.match(d['text'].lstrip()).group(1)
 changes=[]
 full='Math.B699.I11TerminalCandidateCoverage.fastWitnessCheck_spec'
 d=tree.decls[tree.byname[full][0]];before=d['text']
 after,n=re.subn(r'have hc : (decide \([^\n]+\) && trialPrimeCheck p) = true',r'have hc : (\1) = true',before)
 assert n==1;override(tree,full,after);changes.append({'original':full,'change':'only parentheses around Bool.and before =true','beforeTextSHA256':hashlib.sha256(before.encode()).hexdigest(),'afterTextSHA256':hashlib.sha256(after.encode()).hexdigest()})
 for name in ['child_windows_scaled_upper','mother_windows_scaled_upper','three_window_scaled_upper']:
  full='B699LowIndex.'+name;d=tree.decls[tree.byname[full][0]];before=d['text']
  pattern=r'rw \[← pow_add\]\n\s*rfl' if name.startswith('three_') else r'rw \[Finset.prod_pow_eq_pow_sum\]; rfl'
  replacement='rw [← pow_add] <;> rfl' if name.startswith('three_') else 'rw [Finset.prod_pow_eq_pow_sum] <;> rfl'
  after,n=re.subn(pattern,replacement,before);assert n==1;override(tree,full,after)
  changes.append({'original':full,'change':'same diagnosed copied proof sequencing as Above; rfl on remaining goals'})
 wrapper=[n.value for n in ast.walk(ast.parse(inspect.getsource(pack_main))) if isinstance(n,ast.Constant) and isinstance(n.value,str) and n.value.startswith('theorem common_i11_below ')][0]
 namespace='Math.B699.I11OriginalFinal';module=LOW+'I11OriginalFinal/Final.lean';target=namespace+'.common_i11_below'
 add(tree,module,namespace,'common_i11_below',wrapper,['B699LargePrimeStructure','Polynomial'],'before')
 report=pack(tree,target,R/'I11BelowFinalCandidate.lean');root=renamed(report,target)
 p=REPO/report['path'];text=p.read_text(encoding='utf-8').rstrip()+f"\n\n#check ({root} : {old['literalExpectedType']})\n#print axioms {root}\n"
 p.write_text(text,encoding='utf-8',newline='\n');report.update(source(p))
 assert p.stat().st_size<=1048576 and report['selectedDeclarations']<=200
 (R/'analysis/i11-below-local-proof.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 freeze={'status':'full Below source candidate with shared runtime/front-end fixes; actual Lean/AX/900s pending','timeUTC':datetime.now(timezone.utc).isoformat(),'fixedOldSource':old,'newArtifact':dict(source(p),root=root,literalExpectedType=old['literalExpectedType'],compilerStatus='pending',transitiveAxiomStatus='pending',independentVerifierStatus='pending',auditsEmbedded=True),'scope':'n<2^15360, every legalNatj>11<=n/2, actualsamePrime>=11 divides fulltwochoose; unionwithAbove exhaustsi11, completeS unchanged','changes':changes,'sharedPacking':'same15 namespace/realglobalrw-def mechanism as successfully tested Above64, retainingtrueCoverBundle structure and removingknownorphandepthprefix','sourceDeclarationCount':report['selectedDeclarations'],'sourcePolicy':'analysis/source-policy.json','dataRoundtrip':'analysis/data-roundtrip.json','originalNumericDataRegenerated':False,'CRTRecomputed':False,'nativeLeanExecuted':False,'oldSevenSourcesUnmodified':True,'producerSources':[source(BASE/n) for n in ['extract.py','compress_i11.py','pack_consumer.py','repair_below_runtime.py']]}
 (R/'FREEZE.json').write_text(json.dumps(freeze,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'sourceSHA256':sha(p),'bytes':p.stat().st_size,'root':root,'declarations':report['selectedDeclarations'],'rwdefs':len(report['rewriteDefinitionsKeptGlobal']),'compile':'pending'}))

if __name__=='__main__':main()
