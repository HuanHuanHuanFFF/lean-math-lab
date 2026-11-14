"""Targeted static dependency checks of unchanged i11 CI inputs.
Read cached parse metadata only for methods/import order; no slice rebuilding,
numerical computation, Lean invocation or frozen-source mutation.
"""
import hashlib,json,pickle,re
from datetime import datetime,timezone
from pathlib import Path
from extract import REPO,Tree,ID

BASE=Path(__file__).resolve().parent
SCRATCH=REPO/'.tools/b699-contribution-implementation-20261006'

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def line(s,index):return s.count('\n',0,index)+1

def globals_for(text,path):
 t=Tree.__new__(Tree);t.mods={path:{'text':text,'imports':[],'external':[]}};t.order=[path];t.decls={};t.byname={}
 from collections import defaultdict
 t.byname=defaultdict(list);t.vis={};t.parse(path)
 return t

def check(part,cache):
 manifest=json.loads((BASE/'v2/FIRST-COMPILE-SNAPSHOT.json').read_text(encoding='utf-8'))
 entry=next(x for x in manifest['artifacts'] if Path(x['path']).name==f'I11{part}FinalCandidate.lean')
 p=REPO/entry['path'];text=p.read_text(encoding='utf-8');assert sha(p)==entry['sha256']
 parsed=globals_for(text,str(p))
 declared={d['full']:d for d in parsed.decls.values()}
 # The numeric local identifiers are unique per outer consumer (uN). Nested
 # GrowthTree vN identifiers are scoped and checked separately by uN region.
 localDefs={}
 for m in re.finditer(r'^\s*(?:have|let)\s+(u\d+)\b',text,re.M):localDefs[m.group(1)]=line(text,m.start())
 localUses={name:[] for name in localDefs};forward=[];unknownLocal={}
 for m in re.finditer(r'\bu\d+\b',text):
  name=m.group();ln=line(text,m.start())
  if name not in localDefs:unknownLocal.setdefault(name,[]).append(ln)
  elif ln<localDefs[name]:forward.append({'identifier':name,'useLine':ln,'definitionLine':localDefs[name]})
  else:localUses[name].append(ln)
 # Resolve global dN references using lexical namespaces/opens captured from
 # the exact frozen text. Constructors/structure field projections are not
 # callable declarations and are recorded below rather than guessed.
 globalForward=[];globalUnknown=[];checked=0
 for d in parsed.decls.values():
  for m in re.finditer(ID,d['text']):
   tok=m.group()
   if not re.search(r'(?:^|\.)d\d+$',tok):continue
   target=parsed.resolve(tok,d)
   ln=d['line']+d['text'][:m.start()].count('\n')
   if target:
    td=parsed.decls[target]
    if td['key']!=d['key']:
     checked+=1
     if td['line']>ln:globalForward.append({'reference':tok,'useLine':ln,'resolved':td['full'],'definitionLine':td['line']})
   elif tok.split('.')[0].startswith('u'):continue
   else:globalUnknown.append({'reference':tok,'line':ln,'owner':d['full']})
 cachePath=SCRATCH/cache
 with cachePath.open('rb') as f:tree,_,_=pickle.load(f)
 explicitMethods=[{'original':d['full'],'source':d['module'],'line':d['line']} for d in tree.decls.values() if '.' in d['name']]
 types={d['full'] for d in tree.decls.values() if d['kind'] in ('structure','inductive','class')}
 namespaceMethods=[{'original':d['full'],'source':d['module'],'line':d['line']} for d in tree.decls.values() if d['namespace'] in types]
 reordered=tree.module_order()
 differentOrder=[{'source':mod,'oldPosition':tree.order.index(mod),'currentPosition':reordered.index(mod)} for mod in reordered if tree.order.index(mod)!=reordered.index(mod)]
 # Only show bounded representative receiver projections for review. True
 # fields come from frozen structure declarations; extension methods (if any)
 # are checked against the already parsed original method set above.
 structures=[]
 for d in parsed.decls.values():
  if d['kind'] not in ('structure','inductive'):continue
  fields=[{'field':mm.group(1),'sourceLine':d['line']+d['text'][:mm.start()].count('\n')} for mm in re.finditer(r'^\s{2,}([A-Za-z][A-Za-z_0-9]*)\s*:',d['text'],re.M)]
  structures.append({'full':d['full'],'line':d['line'],'kind':d['kind'],'fields':fields})
 projectionSamples=[]
 for m in re.finditer(r'\b(?:row|datum|height|bounds|data|g|b|r)\.[A-Za-z][A-Za-z_0-9.]*',text):
  if len(projectionSamples)<35:projectionSamples.append({'expression':m.group(),'line':line(text,m.start())})
 return {'artifact':{'path':entry['path'],'bytes':p.stat().st_size,'sha256':sha(p),'root':entry['root']},'parsedFrozenGlobalDeclarations':len(declared),'localUNumericBindings':len(localDefs),'unknownLocalUReferences':unknownLocal,'localUForwardReferences':forward,'globalDReferencesResolved':checked,'globalDForwardReferences':globalForward,'globalDReferencesNotResolvedLexically':globalUnknown,'originalExplicitDottedMethods':explicitMethods,'originalMethodsInsideTypeNamespace':namespaceMethods,'importDAGOrderDifferences':differentOrder,'frozenStructuresAndFieldLines':structures,'receiverProjectionSamples':projectionSamples,'cacheRead':{'path':str(cachePath.relative_to(REPO)),'bytes':cachePath.stat().st_size,'role':'existing parser data only; not a proof object or newly computed inventory'},'nativeLeanExecuted':False,'wideInventoryRebuilt':False,'CRTRecomputed':False}

def main():
 reports=[check('Above','i11-growth-packed.pickle'),check('Below','i11-crt-compact.pickle')]
 result={'status':'static dependency precheck only; no mathematical/kernel acceptance','timeUTC':datetime.now(timezone.utc).isoformat(),'resourceObservation':{'availablePhysicalBytes':2282270720,'DfreeBytes':27158433792,'processorCount':16,'nativeLeanLakeLeantarProcesses':[],'nativeLeanPaused':True,'observation':'fresh WinAPI/drive read before this bounded check; not a permanent machine limit'},'scope':'unchanged CI7 i11 Above/Below only; same 2^15360 exhaustive n partition; full S contract unchanged','artifacts':reports,'uncertainties':['No Lean elaboration: external library names, type-class synthesis, simp/notation scopes and overloaded field receiver types cannot be established by lexical analysis.','Nested vN bindings inside GrowthTree local proof blocks are intentionally not treated as a globally shared namespace; their exact scope and implicit dependencies still need Lean.','Cohort decision/runtime/900s/Std3 acceptance remains pending actual CI; static absence of same A151 getter/order defect does not imply compilation passes.','Existing parser cache has historical provenance; the frozen artifact SHA and source line inspections are current inputs.'],'inputsUnmodified':True}
 out=BASE/'repairs/I11-STATIC-DEPENDENCY-PRECHECK.json';out.parent.mkdir(exist_ok=True)
 out.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps([{'part':Path(r['artifact']['path']).name,'explicitDotMethods':len(r['originalExplicitDottedMethods']),'typeNamespaceMethods':len(r['originalMethodsInsideTypeNamespace']),'orderDifferences':len(r['importDAGOrderDifferences']),'unknownU':len(r['unknownLocalUReferences']),'forwardU':len(r['localUForwardReferences']),'forwardD':len(r['globalDForwardReferences']),'unresolvedD':len(r['globalDReferencesNotResolvedLexically'])} for r in reports],ensure_ascii=False))

if __name__=='__main__':main()
