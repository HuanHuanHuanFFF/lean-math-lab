"""Necessary accepted physical suppliers followed by new complete composite indices."""
import importlib.util,json,os,re,shutil,sys,time
from pathlib import Path
HERE=Path(__file__).resolve().parent
SPEC=json.loads((HERE/'transfer-stage-spec.json').read_text())
COLD=json.loads((HERE/'cold-stage-spec.json').read_text())
l=importlib.util.spec_from_file_location('transfer_helpers',HERE/'terminal-stage-v2.py');f=importlib.util.module_from_spec(l);l.loader.exec_module(f);b=f.b
b.ROOT=b.REPO/SPEC['toolRoot'];b.EVIDENCE=b.ROOT/'evidence';b.OBJECTS=b.EVIDENCE/'objects'
def emit(r,label):
 print('TRANSFER_RECEIPT '+json.dumps(r),flush=True)
 for key in ['stdout','stderr']:
  if r.get(key):print(label+' '+key+' first2048bytes '+Path(r[key]).read_bytes()[:2048].decode(errors='replace'),flush=True)
def check_source(s):
 p=b.REPO/s['path']
 if b.sha(p)!=s['sha256']:raise RuntimeError('Fixed source drift '+s['path'])
 return p
def compile_fixed(s,label,env):
 p=check_source(s);root=b.REPO/s['sourceRoot'];r=b.compile_source(p,label,env,b.OBJECTS,root);roots=f.declared(p)
 emitted=set(re.findall(r"'([^']+)' (?:depends on axioms:|does not depend on any axioms)",Path(r['stdout']).read_text()))
 if set(roots)-emitted:
  audit=b.ROOT/(label.replace('-','_')+'_Audit.lean');audit.write_text(f.audit_header(p,f.mod(s['modulePath']))+'\n'.join('#print axioms '+x for x in roots)+'\n')
  ar=b.compile_source(audit,label+'-audit',env,b.OBJECTS,b.ROOT);f.audited(ar,roots)
 else:f.audited(r,roots)
 r.update(originalModulePath=s['modulePath'],acceptedOriginPath=s['originPath'],explicitSourceRoot=str(root),physicalRecoveryNotNewMath=True);b.write(label+'/receipt.json',r)
 return r
def generic():
 b.EVIDENCE=b.ROOT/'generic-evidence';b.OBJECTS=b.EVIDENCE/'objects';b.EVIDENCE.mkdir(parents=True,exist_ok=True)
 b.SPEC['mathlibImports']=['Mathlib.Data.Nat.Choose.Dvd','Mathlib.Data.Nat.Prime.Defs'];b.SPEC['skipUnusedNormNumLeafBuild']=True
 old=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'cache']
 try:b.main()
 finally:sys.argv=old
 env=b.lean_env();p=check_source(SPEC['genericSource']);r=f.compile(SPEC['genericSource']['path'],'generic-CompositeCore',env);emit(r,'generic')
 tc=json.loads((b.EVIDENCE/'toolchain.json').read_text());cr=b.launch([tc['leanchecker'],'-v',f.mod(SPEC['genericSource']['path'])],'generic-normal-checker',env,max_seconds=120);emit(cr,'generic-checker')
 print('GENERIC_ACTUAL_TYPE_RAW '+Path(r['stdout']).read_text(),flush=True)
 old=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'manifest']
 try:b.main()
 finally:sys.argv=old
def run():
 artifact_token=os.environ.pop('B699_ARTIFACT_TOKEN','')
 b.write('transfer-stage-spec.json',SPEC);shutil.copyfile(__file__,b.EVIDENCE/'transfer-stage.py')
 for n in ['cold-stage-spec.json','terminal-stage-v2-spec.json']:shutil.copyfile(HERE/n,b.EVIDENCE/n)
 b.SPEC['mathlibImports']=f.SPEC['cacheRoots'];old=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'cache']
 try:b.main()
 finally:sys.argv=old
 tc=json.loads((b.EVIDENCE/'toolchain.json').read_text());done=set();reused={}
 f.SPEC['transport']={'sourceCommit':SPEC['adoptedArtifact']['sourceCommit'],'run':SPEC['adoptedArtifact']['runId'],'artifact':SPEC['adoptedArtifact']['id'],'zipBytes':SPEC['adoptedArtifact']['zipBytes'],'zipSha256':SPEC['adoptedArtifact']['zipSha256']}
 try:
  os.environ['B699_ARTIFACT_TOKEN']=artifact_token;artifact_token=None
  f.transport();oldtc=json.loads((b.EVIDENCE/'accepted-proof/toolchain.json').read_text())
  for k in ['leanSha256','leancheckerSha256']:
   if oldtc[k]!=tc[k]:raise RuntimeError('Adopted proof toolchain executable differs')
  reused=f.index_reuse();b.write('adopted-source-object-index.json',{'utc':b.utc(),'adoptedZipSha256':SPEC['adoptedArtifact']['zipSha256'],'sourceObjects':reused,'oldExecutionIncrement':0})
 except BaseException as e:
  b.write('transport-fallback.json',{'utc':b.utc(),'class':type(e).__name__,'reason':str(e),'scope':'only safe source recompilation fallback, no permission/auth changes'})
 finally:os.environ.pop('B699_ARTIFACT_TOKEN',None)
 env=b.lean_env()
 def supplier(path,label):
  if path in reused:
   b.write(label+'/adopted-object.json',{'utc':b.utc(),'path':path,'sourceSha256':reused[path]['sourceSha256'],'oldReceipt':reused[path],'adoptedZipSha256':SPEC['adoptedArtifact']['zipSha256'],'actualNewCompile':False});return
  f.compile(path,label,env)

 for i,path in enumerate(COLD['bootstrapSupport']):supplier(path,f'physical-bootstrap-{i:02d}-{Path(path).stem}');done.add(path)
 for i,s in enumerate(COLD['fixedAcceptedSources']):
  if s['path'] in reused:b.write(f'physical-full-{i:02d}/adopted-object.json',{'source':s,'oldReceipt':reused[s['path']],'actualNewCompile':False,'adoptedZipSha256':SPEC['adoptedArtifact']['zipSha256']})
  else:compile_fixed(s,f'physical-full-{i:02d}',env)
 supplier_path=COLD['finiteSupplier'];
 if supplier_path in reused:b.write('physical-finite-supplier/adopted-object.json',{'path':supplier_path,'oldReceipt':reused[supplier_path],'actualNewCompile':False})
 else:f.compile(supplier_path,'physical-finite-supplier',env)
 done.add(supplier_path)
 for i,s in enumerate(f.SPEC['sources']):
  if s['path'] in done:continue
  supplier(s['path'],f'physical-terminal-{i:03d}-{Path(s["path"]).stem}');done.add(s['path'])
 source=SPEC['compositeSource'];check_source(source);r=f.compile(source['path'],'composite-CompositeTransferLegacy',env);emit(r,'new-composite-transfer')
 cr=b.launch([tc['leanchecker'],'-v',f.mod(source['path'])],'composite-transfer-normal-checker',env,max_seconds=300);emit(cr,'new-transfer-checker')
 exact=SPEC['exactSource'];check_source(exact);r=f.compile(exact['path'],'composite-CompositeExactLegacy',env)
 print('COMPOSITE_ACTUAL_TYPE_RAW '+Path(r['stdout']).read_text(),flush=True)
 for label in ['composite-CompositeTransferLegacy','composite-CompositeExactLegacy']:
  ax=json.loads((b.EVIDENCE/label/'axiom-audit.json').read_text())
  print('COMPOSITE_ACTUAL_AXIOMS '+json.dumps(ax),flush=True)
 cr=b.launch([tc['leanchecker'],'-v',f.mod(exact['path'])],'composite-final-normal-checker',env,max_seconds=300);emit(cr,'complete4885through4888-checker')
 b.write('composite-original-closed.json',{'utc':b.utc(),'requiredRoots':SPEC['requiredRoots'],'literalRoots':SPEC['literalRoots'],'actualFinalCheckerExit':0,'physicalOldProviderIncrement':0,'unconditionalGapProvided':False,'mathematicalAcceptance':'pending independent S complete source/object/raw binding'})
def main():
 b.EVIDENCE.mkdir(parents=True,exist_ok=True);start=float(os.environ.get('B699_JOB_START_EPOCH',str(time.time())));b.DEADLINE=min(b.DEADLINE,start+(SPEC['jobMinutes']-1)*60)
 mode=sys.argv[1] if len(sys.argv)>1 else 'run'
 if mode=='manifest':sys.argv=[str(HERE/'linux-runner-v2.py'),'manifest'];b.main();return
 with f.locked():
  if mode=='preflight':
   check_source(SPEC['compositeSource']);check_source(SPEC['exactSource']);sys.argv=[str(HERE/'linux-runner-v2.py'),'preflight'];b.main();return
  if mode=='generic':generic();return
  if mode!='run':raise RuntimeError('Unknown transfer stage')
  run()
if __name__=='__main__':
 try:main()
 except BaseException as e:
  for p in sorted(b.EVIDENCE.glob('*/receipt.json'),key=lambda p:p.stat().st_mtime,reverse=True):
   r=json.loads(p.read_text())
   if r.get('status') in ['failed','preflight_rejected']:emit(r,'FAILED');break
  b.write('transfer-failure.json',{'utc':b.utc(),'class':type(e).__name__,'failure':str(e)});print(str(e),file=sys.stderr);sys.exit(1)
