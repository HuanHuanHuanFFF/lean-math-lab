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
def run():
 b.write('transfer-stage-spec.json',SPEC);shutil.copyfile(__file__,b.EVIDENCE/'transfer-stage.py')
 for n in ['cold-stage-spec.json','terminal-stage-v2-spec.json']:shutil.copyfile(HERE/n,b.EVIDENCE/n)
 b.SPEC['mathlibImports']=f.SPEC['cacheRoots'];old=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'cache']
 try:b.main()
 finally:sys.argv=old
 env=b.lean_env();tc=json.loads((b.EVIDENCE/'toolchain.json').read_text());done=set()
 for i,path in enumerate(COLD['bootstrapSupport']):f.compile(path,f'physical-bootstrap-{i:02d}-{Path(path).stem}',env);done.add(path)
 for i,s in enumerate(COLD['fixedAcceptedSources']):compile_fixed(s,f'physical-full-{i:02d}',env)
 supplier=COLD['finiteSupplier'];f.compile(supplier,'physical-finite-supplier',env);done.add(supplier)
 for i,s in enumerate(f.SPEC['sources']):
  if s['path'] in done:continue
  f.compile(s['path'],f'physical-terminal-{i:03d}-{Path(s["path"]).stem}',env);done.add(s['path'])
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
  if mode!='run':raise RuntimeError('Unknown transfer stage')
  run()
if __name__=='__main__':
 try:main()
 except BaseException as e:
  for p in sorted(b.EVIDENCE.glob('*/receipt.json'),key=lambda p:p.stat().st_mtime,reverse=True):
   r=json.loads(p.read_text())
   if r.get('status') in ['failed','preflight_rejected']:emit(r,'FAILED');break
  b.write('transfer-failure.json',{'utc':b.utc(),'class':type(e).__name__,'failure':str(e)});print(str(e),file=sys.stderr);sys.exit(1)
