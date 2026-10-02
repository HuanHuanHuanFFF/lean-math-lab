"""Administrative source/graph preparation only; never invokes Lean."""
import ast, hashlib, json, re, subprocess, zipfile
from pathlib import Path
REPO=Path.cwd().resolve()
BASE='research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/'
OLD=REPO/(BASE+'20261002-finite-full-onehour/runtime')
HERE=Path(__file__).resolve().parent
PREFIX=BASE+'20261002-terminal-gap-twohour/runtime'
DEADLINE='2026-10-02T15:45:10Z'
def digest(data): return hashlib.sha256(data).hexdigest()
def write(name,obj): (HERE/name).write_text(json.dumps(obj,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
def module(path): return '.'.join('«'+x+'»' if '-' in x or x[:1].isdigit() else x for x in path[:-5].split('/'))
def path_of(name): return name.replace('«','').replace('»','').replace('.','/')+'.lean'
def imports(data):
    return re.findall(r'(?m)^\s*(?:(?:public|meta)\s+)?import(?:\s+all)?\s+(\S+)',data.decode('utf-8-sig'))
def main():
    old=json.loads((OLD/'terminal-stage-spec.json').read_text(encoding='utf-8-sig'))
    manifest=json.loads((OLD/'linux-source-manifest.json').read_text(encoding='utf-8-sig'))
    sources=[];adoption=[];content={}
    for s in old['sources']:
        p=s['path'].replace('\\','/');actual=(REPO/p).read_bytes()
        blob=subprocess.run(['git','cat-file','blob','HEAD:'+p],capture_output=True,check=True).stdout
        if digest(actual)!=s['sha256'] or len(actual)!=s['bytes']: raise RuntimeError('Frozen local source differs: '+p)
        if actual!=blob: raise RuntimeError('Local source differs from Git blob: '+p)
        sources.append({'path':p,'bytes':len(blob),'sha256':digest(blob),'module':module(p)})
        adoption.append({'path':p,'oldManifestSha256':s['sha256'],'canonicalGitBlobSha256':digest(blob),'localEqualsGitBlob':True})
        content[p]=blob
    if len(sources)!=95 or len({s['path'] for s in sources})!=95:raise RuntimeError('Expected 94 known project sources plus one typed source')
    final=sources[-2:];support=sources[:-2]
    if {s['path'] for s in final}&{s['path'] for s in support}:raise RuntimeError('Support/final overlap')
    archive=Path('D:/ResearchArtifacts/b699-finite-full-onehour/b699-full-onehour-37007287888.zip')
    generated=[]
    with zipfile.ZipFile(archive) as z:
        for n in z.namelist():
            if n.startswith('generated-sources/') and n.endswith('.lean'):
                p=n[len('generated-sources/'):];data=z.read(n);content[p]=data
                generated.append({'path':p,'bytes':len(data),'sha256':digest(data)})
    # Existing generated sources arrive from the exact old proof ZIP, never regenerated.
    supplied=set(s['path'] for s in generated);rows=[]
    for s in sources:
        deps=[]
        for name in imports(content[s['path']]):
            p=path_of(name)
            if name.startswith(('Mathlib.','Lean.','Std.','Init.')) or name in ['Lean','Std','Init']:
                deps.append({'module':name,'supplier':'pinned-package-or-toolchain'})
            else:
                if p not in supplied: raise RuntimeError('Unavailable or late source dependency: '+s['path']+' -> '+p)
                deps.append({'module':name,'supplier':p})
        rows.append({'path':s['path'],'imports':deps});supplied.add(s['path'])
    spec={'hardDeadline':DEADLINE,'jobMinutes':70,'lastJobStart':'2026-10-02T14:34:10Z',
          'toolRoot':'.tools/b699-lean-20261001-01a0f779/20261002-terminal-gap-twohour/runtime/terminal',
          'cacheRoots':old['cacheRoots'],'sources':sources,'supportSources':[s['path'] for s in support],
          'finalSources':[s['path'] for s in final],'checkerModule':old['checkerModule'],
          'requiredFinalRoots':['B699FiniteFull20261002.original_tail_of_gap','B699FiniteFull20261002.common_indices_4883_4884',
          'B699FiniteFullSemantic.all_tail_only_gap_exact','B699FiniteFullSemantic.complete_indices_4883_4884_exact'],
          'proofStartupMiB':3072,'proofTreeMiB':3072,'physicalReserveMiB':900,
          'transport':{k:v for k,v in old['transport'].items() if k in ['sourceCommit','run','artifact','zipSha256']}}
    spec['transport'].update(zipBytes=323173525,inputChannel='workflow-dispatch-input; no tracked bearer URL',scope='one proof ZIP read capability only; no account token')
    manifest.update(hardDeadline=DEADLINE,taskSources=sources,mathlibImports=old['cacheRoots'])
    write('terminal-stage-spec.json',spec);write('linux-source-manifest.json',manifest)
    write('source-adoption-map.json',{'scope':'exact-byte administrative adoption; no mathematical acceptance','sources':adoption})
    write('preflight-graph.json',{'executedLean':False,'knownProjectSources':94,'typedSources':1,'orderedTotal':95,
          'supportCount':93,'finalCount':2,'supportFinalDisjoint':True,'generatedProvidedByFixedArtifact':generated,
          'rows':rows,'importParser':'public/meta import and import all; exact module-to-source mapping'})
    base=(OLD/'linux-runner.py').read_text(encoding='utf-8-sig').replace('20261002-finite-full-onehour/runtime','20261002-terminal-gap-twohour/runtime')
    (HERE/'linux-runner.py').write_text(base,encoding='utf-8')
    for name in ['resources.ps1','check-owned-processes.ps1','invoke-task.ps1','invoke-checker.ps1','audit-axiom-output.ps1']:
        data=(OLD/name).read_text(encoding='utf-8-sig').replace('20261002-finite-full-onehour','20261002-terminal-gap-twohour').replace('2026-10-02T13:04:45Z',DEADLINE)
        (HERE/name).write_text(data,encoding='utf-8')
    for name in ['linux-runner.py','terminal-stage.py']:
        ast.parse((HERE/name).read_text(encoding='utf-8-sig'))
    write('execution-ready.json',{'executedLean':False,'status':'static-source-graph-ready; transport capability not yet attached',
          'files':[{'path':PREFIX+'/'+n,'bytes':(HERE/n).stat().st_size,'sha256':digest((HERE/n).read_bytes())}
                   for n in ['terminal-stage.py','terminal-stage-spec.json','linux-runner.py','linux-source-manifest.json','preflight-graph.json']],
          'jobMinutes':70,'latestStart':spec['lastJobStart'],'absoluteDeadline':DEADLINE,
          'sourceCount':95,'coldTerminalCost':'unknown until actual CI; job ceiling is not an estimate'})
    print(json.dumps({'sources':95,'support':93,'final':2,'generatedSourcesReused':len(generated),'importsTopological':True,'LeanExecuted':False}))
if __name__=='__main__':main()
