"""Freeze independent bounded diagnosis probes from exact source prefixes.

No Lean execution, numerical regeneration, full-range claim or proof oracle.
The complete S contribution artifacts remain unchanged. Prefix roots are True
only to close the profiling file; they cannot certify the original conclusion.
"""
import hashlib, json, re
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO

BASE=Path(__file__).resolve().parent
DEST=BASE/'profiling/20261007-ci7-timeouts'
INTAKE=Path('D:/ResearchArtifacts/b699-contribution-validation-20261006/37488807936')
SOURCES={
 'a151':BASE/'repairs/20261006-ci6-a151/A151Packed.lean',
 'above':BASE/'v2/candidates/I11AboveFinalCandidate.lean',
 'below':BASE/'repairs/20261007-i11-below-options/I11BelowFinalCandidate.lean'}
EXPECTED={'a151':'b24753cd36ceb3a69ddd35dbf09a855b39d3317728cb2e0df709f5845a73d841','above':'e7a4d9858e3e0e6af66fc44fd17035ec009c08dd14483db7af64111b305ddc78','below':'b67a9b440efa7c506bb5169ac7f640ed8799aa1728984a467da06d57bbf50a8b'}

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def source(p):return {'path':str(p.relative_to(REPO).as_posix()),'bytes':p.stat().st_size,'sha256':sha(p)}
def closures(text):
 stack=[]
 for line in text.splitlines():
  m=re.match(r'^(namespace|section)\s*([^\n]*)$',line)
  if m:stack.append((m.group(1),m.group(2).strip()))
  elif re.match(r'^end(?:\s|$)',line):
   assert stack,'unmatched end'
   kind,name=stack.pop();end=line[3:].strip()
   assert not end or end==name,('scope mismatch',name,end)
 return '\n'.join('end'+(' '+name if name else '') for _,name in reversed(stack))+'\n'

def finish(stem,prefix,body,original,details):
 own=re.search(r'^namespace (Contribution\.[^\n]+)$',prefix,re.M).group(1)
 newown='Contribution.B699Profiling'+stem
 combined=prefix+body
 content=combined+closures(combined)
 content=content.replace(own,newown)
 assert content.count('set_option maxHeartbeats 10000000\n')==1
 content=content.replace('set_option maxHeartbeats 10000000\n','set_option maxHeartbeats 400000\n',1)
 assert not re.search(r'(?m)^\s*set_option maxHeartbeats (?!400000\b)',content)
 content=content.replace('namespace '+newown+'\n','namespace '+newown+'\nset_option profiler true\nset_option profiler.threshold 100\n',1)
 root=newown+'.'+details.pop('relativeRoot')
 content+=f'\n#check {root}\n#print axioms {root}\n'
 assert not re.search(r'^\s+(?:structure|inductive|class|namespace)\b',content,re.M)
 assert not re.search(r'(?m)^set_option .* in\n(?=end )',content)
 p=DEST/'probes'/f'{stem}.lean';p.write_text(content,encoding='utf-8',newline='\n')
 assert p.stat().st_size<1048576
 return dict(source(p),id=stem,root=root,originalSource=source(original),wallTimeoutSeconds=180,heartbeatLimit=400000,effectiveSourceHeartbeatLimit=400000,diagnosticSubstitutions=['unique Contribution namespace','profiler true/threshold100','source global maxHeartbeats10000000 changed to400000; no scoped override'],threads=1,memoryPolicy='same actual available cgroup-derived budget as official guard; never above16GiB',purpose='diagnosis only; no full-range acceptance',details=details)

def a151(stem,take):
 p=SOURCES['a151'];text=p.read_text(encoding='utf-8')
 cut=text.index('theorem d58:\n');prefix=text[:cut]
 assert text[:cut].count('\n')+1==802
 if take==0:
  body='theorem profilingPrelude : True := by\n  exact True.intro\n'
  extra={'relativeRoot':'N5.profilingPrelude','claim':'True, solely closes the prelude diagnosis file','includedGlobalSourceLines':[1,801],'heightRowsInSource':151,'heightRowsChecked':0,'originalAll151HeightCheckExcluded':True}
 else:
  body=f'theorem profilingHeight : List.all (d57.take {take}) d61 = true := by\n  decide +kernel\n'
  extra={'relativeRoot':'N5.profilingHeight','claim':f'the exact original HeightValid Boolean checker succeeds on the first {take} original rows only','includedGlobalSourceLines':[1,801],'heightRowsInSource':151,'heightRowsChecked':take,'algorithm':'unchanged d8/d61/Decidable, original n0 getter and all numeric input data; original decide +kernel','originalAll151HeightCheckExcluded':True}
 return finish(stem,prefix,body,p,extra)

def i11(part,count):
 p=SOURCES[part];text=p.read_text(encoding='utf-8')
 root='d9' if part=='above' else 'd15';namespace='Math.B699.N4' if part=='above' else 'Math.B699.N8'
 start=text.index('theorem '+root+' {n j:ℕ}')
 proof=text.index(':= by\n',start)+len(':= by\n')
 signature=text[start:proof]
 goal=signature.index('\n    ∃ p:ℕ')
 head=signature[:goal].rstrip()+' True := by\n'
 steps=list(re.finditer(r'^  (?:have|let) (u\d+)\b',text[proof:],re.M))
 assert len(steps)>count
 end=proof+steps[count].start()
 copied=text[proof:end]
 mapping=json.loads((BASE/'v2/analysis'/f'i11-{part}-local-proof.json').read_text(encoding='utf-8')) if part=='above' else json.loads((BASE/'repairs/20261007-i11-below-options/analysis/i11-below-local-proof.json').read_text(encoding='utf-8'))
 originals={x['localName']:x['original'] for x in mapping['localSourceMap']}
 stem=('Above' if part=='above' else 'Below')+f'Prefix{count:03}'
 details={'relativeRoot':namespace+'.'+root,'claim':'same original root binders/domain hypotheses, conclusion True solely to stop after complete typed local steps','localTypedSteps':count,'lastIncludedLocal':steps[count-1].group(1) if count else None,'lastIncludedOriginal':originals[steps[count-1].group(1)] if count else None,'firstExcludedLocal':steps[count].group(1),'firstExcludedOriginal':originals[steps[count].group(1)],'copiedSourceLines':[text[:proof].count('\n')+1,text[:end].count('\n')],'copiedProofPrefixSHA256':hashlib.sha256(copied.encode()).hexdigest(),'prefixSourceBytesCopied':len(copied.encode()),'sameRootDomainHypotheses':True,'remainingProofAndFinalCombinationExcluded':True,'noCertificateInputRegeneration':True}
 return finish(stem,text[:start],head+copied+'  exact True.intro\n',p,details)

def main():
 (DEST/'probes').mkdir(parents=True,exist_ok=True)
 for key,p in SOURCES.items():assert sha(p)==EXPECTED[key],key
 probes=[a151('A151Prelude',0),a151('A151Height001',1),a151('A151Height016',16),i11('above',64),i11('above',256),i11('below',64)]
 assert sum(x['bytes'] for x in probes)<4194304
 evidence=[]
 for name in ['raw-A151Packed.log','raw-I11AboveFinalCandidate.log','raw-I11BelowFinalCandidate.log','raw-A151Packed-CONTAINER-LIFECYCLE.json','raw-I11AboveFinalCandidate-CONTAINER-LIFECYCLE.json','raw-I11BelowFinalCandidate-CONTAINER-LIFECYCLE.json','STAGES.json']:
  p=INTAKE/name;evidence.append({'path':str(p),'bytes':p.stat().st_size,'sha256':sha(p)})
 request={'status':'frozen diagnosis inputs, not executed; not a contribution or proof acceptance','timeUTC':datetime.now(timezone.utc).isoformat(),'fullContractUnchanged':'S={1,2,11,29} union [35,30000], all legal Nat n/i/j; same actual Prime p>=i divides both complete choose','officialProductionCommit':'6a786f997e18e8f095762a2830d191b7e25e505e','officialPolicyCommit':'be220ff2519ecfd61b28ba9e477321e4287ef6b4','fixedLeanCommit':'819816b2e0a3bf405af45ae5c7af2491d8f5bee6','sameRuntimeAndCachePinsRequired':True,'nativeLeanExecuted':False,'proofAccepted':False,'why':'CI7 three whole leaves reached ~917..919s shell timeout kill without JSON diagnostics or success objects; concrete hotspot unknown, not an axiom/math rejection','actualCI7Evidence':evidence,'timingAndMemoryLimit':'each probe serial180s plus cleanup, same official cgroup guard and available budget, no concurrency or larger final900s limit','profiler':{'options':['profiler true','profiler.threshold 100'],'primaryFixedSource':'https://github.com/leanprover/lean4/blob/819816b2e0a3bf405af45ae5c7af2491d8f5bee6/src/Lean/Util/Profile.lean','verifiedBy':'environment worker; no unverified trace.profiler option','logContract':'capture stdout and stderr; duration, exit, explicit JSON errors, source/object SHA and object existence; collect per-container CPU/memory current/peak and confirm fresh owned-container cleanup'},'probes':probes,'selectedBytes':sum(x['bytes'] for x in probes),'executionOrder':[p['id'] for p in probes],'continuationRules':['If A151Prelude fails, diagnose its first actual error before interpreting any numeric timings.','If Prelude succeeds and Height001 or Height016 times out, isolate the numeric height checker; do not infer all151 success from subsets.','If AbovePrefix064 passes but256 times out, bisect that copied local-step interval and inspect profiler component output.','If Above/Below64 both stall, compare the shared generic proof/typeclass prefix before investigating CRT data.','If Below64 passes, next targeted prefix reaches the first actual CRT certification block; never jump straight to the wholeleaf.','Successful probes diagnose only the named prefixes/subsets; complete contribution source, runtime900s, literal root and transitive axioms still require fresh official validation.'],'sourceOnlyPolicy':'source-policy.json','producer':source(Path(__file__).resolve())}
 request['effectiveDiagnosticBudget']={'wallSeconds':180,'sourceMaxHeartbeats':400000,'cliHeartbeats':400000,'scopedHeartbeatOverrides':[],'scope':'source header diagnostic substitution only; complete contribution seven artifacts retain their original options'}
 historical=DEST/'revisions/heartbeat10M/PROBE-REQUEST.json'
 if historical.is_file():
  request['supersededBudgetMismatch']={'request':source(historical),'reason':'old manifest/CLI400000 was overridden by old source global10000000; old sources/receipt preserved; no actual run or proof acceptance'}
 (DEST/'PROBE-REQUEST.json').write_text(json.dumps(request,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'probes':len(probes),'bytes':request['selectedBytes'],'ids':request['executionOrder'],'nativeLeanExecuted':False,'proofAccepted':False},ensure_ascii=False))

if __name__=='__main__':main()
