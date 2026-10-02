"""Fixed API repair and legacy consumer adoption; no Lean execution."""
import ast,hashlib,json,re
from pathlib import Path
HERE=Path(__file__).resolve().parent;REPO=Path.cwd().resolve()
BASE='research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-terminal-gap-twohour/'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def write(n,o):(HERE/n).write_text(json.dumps(o,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
def has_module(raw):
    i=0;n=len(raw)
    while i<n:
        if raw[i].isspace():i+=1;continue
        if raw.startswith('--',i):i=raw.find('\n',i);i=n if i<0 else i+1;continue
        if raw.startswith('/-',i):
            depth=1;i+=2
            while depth and i<n:
                if raw.startswith('/-',i):depth+=1;i+=2
                elif raw.startswith('-/',i):depth-=1;i+=2
                else:i+=1
            continue
        return raw.startswith('module',i) and (i+6==n or raw[i+6].isspace())
    return False
def main():
    term=json.loads((HERE/'terminal-stage-spec.json').read_text());cold=json.loads((HERE/'cold-stage-spec.json').read_text())
    replacements={term['sources'][-2]['path']:BASE+'terminal/FiniteConsumerLegacy.lean',term['sources'][-1]['path']:BASE+'reviews/FinalConsumersTypedLegacy.lean'}
    for s in term['sources']:
        if s['path'] in replacements:
            s['path']=replacements[s['path']];p=REPO/s['path'];s.update(bytes=p.stat().st_size,sha256=sha(p),module='.'.join('«'+x+'»' if '-' in x or x[:1].isdigit() else x for x in s['path'][:-5].split('/')))
    for spec in [term,cold]:spec.update(jobMinutes=30,lastJobStart='2026-10-02T15:14:10Z',toolRoot='.tools/b699-lean-20261001-01a0f779/20261002-terminal-gap-twohour/runtime/cold-terminal-v2')
    term['supportSources']=[s['path'] for s in term['sources'][:-2]];term['finalSources']=[s['path'] for s in term['sources'][-2:]];term['checkerModule']=term['sources'][-1]['module'];cold['checkerModule']=term['checkerModule']
    cold['directoryValidator']={'path':BASE+'reviews/check_terminal_legacy_directory.py','sha256':sha(REPO/(BASE+'reviews/check_terminal_legacy_directory.py'))}
    write('terminal-stage-v2-spec.json',term);write('cold-stage-v2-spec.json',cold)
    manifest=json.loads((HERE/'linux-source-manifest.json').read_text());manifest.update(lastJobStart=term['lastJobStart'],taskSources=term['sources']+cold['fixedAcceptedSources']+cold['optionalGapProbe']['sources']);write('linux-source-manifest-v2.json',manifest)
    linux=(HERE/'linux-runner.py').read_text().replace("'linux-source-manifest.json'","'linux-source-manifest-v2.json'")
    (HERE/'linux-runner-v2.py').write_text(linux)
    helper=(HERE/'terminal-stage.py').read_text().replace("'terminal-stage-spec.json'","'terminal-stage-v2-spec.json'").replace("'linux-runner.py'","'linux-runner-v2.py'")
    header='''def audit_header(source,module_name):
    raw=Path(source).read_text(encoding='utf-8-sig')
    # Mode is part of Lean's import ABI; legacy modules cannot enter module mode.
    modern=has_module_header(raw)
    text=('module\\nimport all ' if modern else 'import ')+module_name+'\\n'
    for key in ['maxRecDepth','maxHeartbeats']:
        values=re.findall(r'(?m)^set_option\\s+'+key+r'\\s+(\\d+)\\s*$',raw)
        if values:text+='set_option '+key+' '+values[-1]+'\\n'
    return text
'''
    # Copy the small lexical header classifier, rather than a substring heuristic.
    own=ast.parse(Path(__file__).read_text());node=next(n for n in own.body if isinstance(n,ast.FunctionDef) and n.name=='has_module')
    classifier=ast.unparse(node).replace('def has_module(', 'def has_module_header(')+'\n'
    helper=helper.replace('def compile(path,label,env):',classifier+header+'def compile(path,label,env):')
    old="p.write_text('module\\npublic import '+mod(path)+'\\n'+'\\n'.join('#print axioms '+x for x in roots)+'\\n')"
    new="p.write_text(audit_header(b.REPO/path,mod(path))+'\\n'.join('#print axioms '+x for x in roots)+'\\n')"
    if old not in helper:raise RuntimeError('Frozen audit template not found')
    helper=helper.replace(old,new);(HERE/'terminal-stage-v2.py').write_text(helper)
    driver=(HERE/'cold-stage.py').read_text().replace("HERE/'cold-stage-spec.json'","HERE/'cold-stage-v2-spec.json'").replace("HERE/'terminal-stage.py'","HERE/'terminal-stage-v2.py'").replace("HERE/'linux-runner.py'","HERE/'linux-runner-v2.py'")
    driver=driver.replace("audit.write_text('module\\npublic import '+f.mod(s['modulePath'])+'\\n'+'\\n'.join('#print axioms '+x for x in roots)+'\\n')","audit.write_text(f.audit_header(p,f.mod(s['modulePath']))+'\\n'.join('#print axioms '+x for x in roots)+'\\n')")
    seal='''    previous=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'manifest']
    try:b.main()
    finally:sys.argv=previous
    proof_evidence=b.EVIDENCE;validation=b.ROOT/'validation';validation.mkdir(parents=True,exist_ok=True)
    validator=b.REPO/SPEC['directoryValidator']['path']
    if b.sha(validator)!=SPEC['directoryValidator']['sha256']:raise RuntimeError('Independent reader bytes differ')
    manifest_sha=b.sha(proof_evidence/'byte-manifest.json')
    shutil.copyfile(proof_evidence/'byte-manifest.json',validation/'terminal-sealed-byte-manifest.json')
    b.EVIDENCE=validation
    try:
        vr=b.launch(['python3',str(validator),str(proof_evidence),manifest_sha,os.environ['GITHUB_SHA'],os.environ['GITHUB_RUN_ID'],str(validation/'independent-procedure.json')],'independent-directory-reader',env,max_seconds=300)
        vr.update(source=str(validator),sourceSha256=b.sha(validator))
        b.write('independent-directory-reader/receipt.json',vr)
        print('INDEPENDENT_READER_RECEIPT '+json.dumps(vr),flush=True)
        print(Path(vr['stdout']).read_text(),flush=True)
        print('ACTUAL_TOOLCHAIN_JSON '+(proof_evidence/'toolchain.json').read_text(),flush=True)
        print('ACTUAL_TOOLCHAIN_VERSION '+(proof_evidence/'toolchain-version/stdout.log').read_text(),flush=True)
    finally:b.EVIDENCE=proof_evidence
'''
    driver=driver.replace("    probe=SPEC.get('optionalGapProbe')",seal+"    probe=SPEC.get('optionalGapProbe')")
    (HERE/'cold-stage-v2.py').write_text(driver)
    supplied={s['modulePath']:REPO/s['path'] for s in cold['fixedAcceptedSources']};supplied.update({s['path']:REPO/s['path'] for s in term['sources']});edges=[]
    for name,p in supplied.items():
        raw=p.read_text(encoding='utf-8-sig');modern=has_module(raw)
        for imp in re.findall(r'(?m)^\s*(?:(?:public|private|meta)\s+)?import(?:\s+all)?\s+(\S+)',raw):
            target=imp.replace('«','').replace('»','').replace('.','/')+'.lean'
            if target not in supplied:continue
            target_modern=has_module(supplied[target].read_text(encoding='utf-8-sig'))
            if modern and not target_modern:raise RuntimeError('Remaining project module ABI mismatch: '+name+' -> '+target)
            edges.append({'source':name,'target':target,'sourceModule':modern,'targetModule':target_modern})
    write('v2-source-abi-check.json',{'executedLean':False,'checkedEdges':len(edges),'moduleAbiCompatible':True,'edges':edges,'legacyFinalSources':term['sources'][-2:]})
    names=['cold-stage-v2.py','cold-stage-v2-spec.json','terminal-stage-v2.py','terminal-stage-v2-spec.json','linux-runner-v2.py','linux-source-manifest-v2.json']
    for n in names:
        if n.endswith('.py'):ast.parse((HERE/n).read_text())
    write('v2-execution-ready.json',{'executedLean':False,'jobMinutes':30,'latestStart':term['lastJobStart'],'absoluteDeadline':term['hardDeadline'],'files':[{'file':n,'bytes':(HERE/n).stat().st_size,'sha256':sha(HERE/n)} for n in names],'independentReader':cold['directoryValidator']})
    print(json.dumps({'sourceModuleAbiEdges':len(edges),'compatible':True,'AST':True,'LeanExecuted':False}))
if __name__=='__main__':main()
