from pathlib import Path
import json,hashlib,ast
base=Path('research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations');old=base/'20261003-terminal-fortymin/runtime';new=base/'20261003-gap-finite-fortymin/runtime/localized'
hard='2026-10-02T19:20:45Z';latest='2026-10-02T19:04:00Z';tool='.tools/b699-lean-20261001-01a0f779/20261003-gap-finite-fortymin/runtime/localized'
load=lambda p:json.loads(p.read_text(encoding='utf-8-sig'))
def save(p,v):p.write_text(json.dumps(v,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
c=load(old/'cold-stage-v2-spec.json');c.update(hardDeadline=hard,lastJobStart=latest,jobMinutes=25,toolRoot=tool);c.pop('directoryValidator',None);c['scope']='Necessary physical accepted full-finite and Uniform import recovery; new progress only true y prefix and original4885'
t=load(old/'terminal-stage-v2-spec.json');t.update(hardDeadline=hard,lastJobStart=latest,jobMinutes=25,toolRoot=tool,proofTreeMiB=3072,proofStartupMiB=3072);t.pop('transport',None)
t['sources']=t['sources'][:-1];t['finalSources']=[t['sources'][-1]['path']];t['requiredFinalRoots']=[];t['checkerModule']=None
save(new/'terminal-stage-v2-spec.json',t);save(new/'cold-stage-spec.json',c)
m=load(old/'linux-source-manifest-v2.json');m.update(hardDeadline=hard,lastJobStart=latest,sourceBaseline='ac6acda07c4b3b84cc5ec588da4c7f837677dac1')
# Exact source preflight uses the already independently checked cold graph.
m['taskSources']=[s for s in m['taskSources'] if not s['path'].endswith('/FinalConsumersTypedLegacy.lean')];m['roots']=[];m['requiredFinalRoots']=[];m['checkerModule']=None;save(new/'linux-source-manifest-v2.json',m)
for name in ['terminal-stage-v2.py','linux-runner-v2.py']:
 s=(old/name).read_text(encoding='utf-8-sig').replace('20261003-terminal-fortymin/runtime','20261003-gap-finite-fortymin/runtime/localized')
 s=s.replace("'terminal-original-normal-checker'", "'terminal-original-normal-checker','LocalizedConsumerLegacy','OriginalPrefix','localized-original','localized-final-types'") if name=='terminal-stage-v2.py' else s.replace("'FinalConsumersTypedLegacy'", "'FinalConsumersTypedLegacy','LocalizedConsumerLegacy','OriginalPrefix','LocalizedActualTypes'")
 (new/name).write_text(s,encoding='utf-8');ast.parse(s)
g=base/'20261003-gap-finite-fortymin/supply/generate_segments.py';helper=base/'20261003-gap-finite-fortymin/supply/LocalizedConsumerLegacy.lean';assert hashlib.sha256(g.read_bytes()).hexdigest()=='1b02870169944ba43102a935b55cd050b25e04e81b72af7de289b9d602bc59b8'
v={'hardDeadline':hard,'lastJobStart':latest,'jobMinutes':25,'toolRoot':tool,'targetUpperExclusive':20004075,'blocks':32,'edgesPerBlock':128,'sourceDeadline':'2026-10-02T19:15:45Z','generator':{'path':g.as_posix(),'sha256':hashlib.sha256(g.read_bytes()).hexdigest()},'localizedConsumer':{'path':helper.as_posix(),'sha256':hashlib.sha256(helper.read_bytes()).hexdigest()},'pilotPath':(base/'20261003-gap-halfhour/supply/Pilot64.lean').as_posix(),'costPath':(base/'20261003-gap-finite-fortymin/runtime/ci/pilot64-cost.json').as_posix(),'oldColdEstimatedSeconds':900,'coldMathIncrement':0};save(new/'localized-stage-spec.json',v)
print('Localized fixed controller/spec material copied; math body frozen; generated data deferred')
