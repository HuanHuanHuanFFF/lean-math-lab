"""True bounded prime-gap prefix, then necessary accepted physical imports and4885."""
import importlib.util,json,os,re,shutil,sys,time
from pathlib import Path
HERE=Path(__file__).resolve().parent
SPEC=json.loads((HERE/'localized-stage-spec.json').read_text())
COLD=json.loads((HERE/'cold-stage-spec.json').read_text())
l=importlib.util.spec_from_file_location('localized_helpers',HERE/'terminal-stage-v2.py');f=importlib.util.module_from_spec(l);l.loader.exec_module(f);b=f.b
b.ROOT=b.REPO/SPEC['toolRoot'];b.EVIDENCE=b.ROOT/'evidence';b.OBJECTS=b.EVIDENCE/'objects'
def emit(r,label):
 print('LOCALIZED_RECEIPT '+json.dumps(r),flush=True)
 for key in ['stdout','stderr']:
  if r.get(key):print(label+' '+key+' first2048bytes '+Path(r[key]).read_bytes()[:2048].decode(errors='replace'),flush=True)
def check_source(s):
 p=b.REPO/s['path']
 if b.sha(p)!=s['sha256']:raise RuntimeError('Fixed source byte drift '+s['path'])
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
 b.write('localized-stage-spec.json',SPEC);shutil.copyfile(__file__,b.EVIDENCE/'localized-stage.py')
 for n in ['cold-stage-spec.json','terminal-stage-v2-spec.json']:shutil.copyfile(HERE/n,b.EVIDENCE/n)
 b.SPEC['mathlibImports']=f.SPEC['cacheRoots'];old=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'cache']
 try:b.main()
 finally:sys.argv=old
 env=b.lean_env();tc=json.loads((b.EVIDENCE/'toolchain.json').read_text());done=set()
 core=COLD['bootstrapSupport'][0];f.compile(core,'prefix-Core',env);done.add(core)
 f.compile(SPEC['pilotPath'],'prefix-Pilot64-physical-supplier',env);done.add(SPEC['pilotPath'])
 gen=check_source(SPEC['generator']);check_source(SPEC['localizedConsumer'])
 gr=b.launch(['python3',str(gen),'--blocks',str(SPEC['blocks']),'--edges-per-block',str(SPEC['edgesPerBlock']),'--target',str(SPEC['targetUpperExclusive']),'--accepted-cost-receipt',str(b.REPO/SPEC['costPath']),'--source-deadline',SPEC['sourceDeadline']],'generate-true-prefix',env,max_seconds=60)
 gr.update(source=str(gen),sourceSha256=b.sha(gen));b.write('generate-true-prefix/receipt.json',gr)
 current=gen.parent/'generation-current.json';data=json.loads(current.read_text());shutil.copyfile(current,b.EVIDENCE/'generation-current.json')
 if data['actualPrefixUpperExclusive']<SPEC['targetUpperExclusive']:raise RuntimeError('Generated finite prefix below4885 threshold')
 all_generated=data['blocks']+[data['prefix']]+([data['originalConsumer']] if data.get('originalConsumer') else [])
 for s in all_generated:
  p=check_source(s);target=b.EVIDENCE/'generated-sources'/s['path'];target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(p,target)
 for i,s in enumerate(data['blocks']):
  r=f.compile(s['path'],f'gap-block-{i:03d}',env);emit(r,'gap-block')
  b.write(f'gap-block-{i:03d}-closed.json',{'utc':b.utc(),'path':s['path'],'roots':s['roots'],'actualCompileExit':0,'actualAxiomAuditPassed':True,'normalKernelChecker':'deferred to transitive prefix module','mathematicalAcceptance':'pending independent S'})
 prefix=data['prefix'];r=f.compile(prefix['path'],'gap-prefix-final',env);emit(r,'gap-prefix')
 cr=b.launch([tc['leanchecker'],'-v',prefix['module']],'gap-prefix-normal-checker',env,max_seconds=300);emit(cr,'gap-prefix-checker')
 b.write('true-finite-gap-closed.json',{'utc':b.utc(),'source':prefix,'actualCompilerExit':0,'actualCheckerExit':0,'actualStandardAxiomAudit':True,'scope':'actualNatPrime strict ygap [10M,20004075); no unboundedGap','mathematicalAcceptance':'pending independent S'})
 # Seal the real new prefix before accepted import recovery; later failure preserves this phase.
 previous=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'manifest']
 try:b.main()
 finally:sys.argv=previous
 shutil.copyfile(b.EVIDENCE/'byte-manifest.json',b.ROOT/'prefix-sealed-manifest.json')
 remaining=b.DEADLINE-time.time();b.write('physical-recovery-budget.json',{'remainingSeconds':remaining,'priorColdSeconds':SPEC['oldColdEstimatedSeconds'],'sourceScope':'accepted import restoration, math increment0'})
 if remaining<60:raise RuntimeError('Absolute remaining budget rejects old physical recovery')
 for i,path in enumerate(COLD['bootstrapSupport']):
  if path not in done:f.compile(path,f'physical-bootstrap-{i:02d}',env);done.add(path)
 for i,s in enumerate(COLD['fixedAcceptedSources']):compile_fixed(s,f'physical-full-{i:02d}',env)
 supplier=COLD['finiteSupplier'];f.compile(supplier,'physical-finite-supplier',env);done.add(supplier)
 for i,s in enumerate(f.SPEC['sources']):
  if s['path'] in done:continue
  f.compile(s['path'],f'physical-terminal-{i:03d}-{Path(s["path"]).stem}',env);done.add(s['path'])
 helper=SPEC['localizedConsumer'];f.compile(helper['path'],'localized-LocalizedConsumerLegacy',env)
 original=data.get('originalConsumer')
 if not original:raise RuntimeError('No generated original4885 consumer')
 r=f.compile(original['path'],'localized-OriginalPrefix',env);emit(r,'original4885')
 types=b.ROOT/'LocalizedActualTypes.lean';types.write_text('import '+original['module']+'\n'+'\n'.join('#print '+x+'\n#print axioms '+x for x in original['roots'])+'\n')
 tr=b.compile_source(types,'localized-final-types',env,b.OBJECTS,b.ROOT);f.audited(tr,original['roots'])
 print('ORIGINAL4885_ACTUAL_TYPES '+Path(tr['stdout']).read_text(),flush=True)
 cr=b.launch([tc['leanchecker'],'-v',original['module']],'localized-original-normal-checker',env,max_seconds=300);emit(cr,'original4885-checker')
 b.write('original4885-closed.json',{'utc':b.utc(),'requiredRoots':original['roots'],'target':original,'actualTypesReceipt':'localized-final-types/receipt.json','actualCheckerExit':0,'mathematicalAcceptance':'pending independent S complete member/source/object/raw binding'})
def main():
 b.EVIDENCE.mkdir(parents=True,exist_ok=True);start=float(os.environ.get('B699_JOB_START_EPOCH',str(time.time())));b.DEADLINE=min(b.DEADLINE,start+(SPEC['jobMinutes']-1)*60)
 mode=sys.argv[1] if len(sys.argv)>1 else 'run'
 if mode=='manifest':sys.argv=[str(HERE/'linux-runner-v2.py'),'manifest'];b.main();return
 with f.locked():
  if mode=='preflight':
   check_source(SPEC['generator']);check_source(SPEC['localizedConsumer']);sys.argv=[str(HERE/'linux-runner-v2.py'),'preflight'];b.main();return
  if mode!='run':raise RuntimeError('Unknown stage')
  run()
if __name__=='__main__':
 try:main()
 except BaseException as e:
  for p in sorted(b.EVIDENCE.glob('*/receipt.json'),key=lambda p:p.stat().st_mtime,reverse=True):
   r=json.loads(p.read_text())
   if r.get('status') in ['failed','preflight_rejected']:emit(r,'FAILED');break
  b.write('localized-failure.json',{'utc':b.utc(),'class':type(e).__name__,'failure':str(e)});print(str(e),file=sys.stderr);sys.exit(1)
