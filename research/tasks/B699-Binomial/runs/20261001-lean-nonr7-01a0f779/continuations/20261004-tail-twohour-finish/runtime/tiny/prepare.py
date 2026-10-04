"""Conditional same-source four-wrapper continuation, never a dispatch."""
import argparse
import ast
import datetime as dt
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
PARENT=HERE.parent
ROOT=Path.cwd()
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()

def main():
    p=argparse.ArgumentParser()
    for n in ['artifact','bytes']: p.add_argument('--'+n,type=int,required=True)
    for n in ['sha256','last-start','proof-stop']: p.add_argument('--'+n,required=True)
    a=p.parse_args()
    s=json.loads((PARENT/'gap-stage-spec.json').read_text())
    s.update(schema='b699-tail-twohour-tiny-consumer-v1',
       toolRoot='.tools/b699-lean-20261001-01a0f779/20261004-tail-twohour-finish/tiny-runtime',
       lastJobStart=a.last_start,proofStopUtc=a.proof_stop)
    if dt.datetime.fromisoformat(a.proof_stop.replace('Z','+00:00'))>=dt.datetime.fromisoformat(s['finalDeadlineUtc'].replace('Z','+00:00')):
        raise RuntimeError('Tiny proof window must remain inside original hard deadline')
    s['reusedPrerequisiteArtifacts'].append({'sourceCommit':'d26594a69a35f42336654b8169c61b40f55a32c0',
       'run':37207871560,'artifact':a.artifact,'zipBytes':a.bytes,'zipSha256':a.sha256,
       'packageName':'carried-upperinitial','stageName':'upperinitial','sourceCount':104,
       'mathematicalAcceptance':'pending independent parent plus tiny closure binding'})
    s['stages']=[x for x in s['stages'] if x['name'] in ['fullinitial','tail30000']]
    for x in s['stages']:
        x.update(predictedCompleteSeconds=120,packagingReserveSeconds=60,
          predictionBasis='same-source wrappers; main max2.4s compiler5.0s checker; fresh resource gate retained')
    driver=(PARENT/'gap-stage.py').read_text().replace("HERE / 'gap-stage-spec.json'","HERE / 'tiny-stage-spec.json'")
    driver=driver.replace("['gaplower', 'gap13000', 'gap15000', 'lowerinitial', 'upperinitial', 'fullinitial', 'tail30000']","['fullinitial', 'tail30000']")
    dp=HERE/'tiny-stage.py'; dp.write_text(driver); ast.parse(driver)
    s['fixedRuntimeSources'].append({'path':dp.relative_to(ROOT).as_posix(),'bytes':dp.stat().st_size,'sha256':sha(dp),'roots':[]})
    for x in s['taskSources']+s['fixedRuntimeSources']:
        f=ROOT/x['path']
        if not f.is_file() or f.stat().st_size!=x['bytes'] or sha(f)!=x['sha256']:
            raise RuntimeError('Tiny source presence/byte gate failed: '+x['path'])
    sp=HERE/'tiny-stage-spec.json'; sp.write_text(json.dumps(s,indent=2)+'\n')
    ready={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'status':'SOURCE-READY-NOT-DISPATCHED',
       'parent':s['reusedPrerequisiteArtifacts'][-1],'reusedSourceCount':331,'freshSources':4,
       'freshPrimalityCount':0,'parentAllMembersMustBeIndependentlyBoundBeforeAcceptance':True,
       'originalHardUtc':s['finalDeadlineUtc'],'lastStartUtc':a.last_start,'proofStopUtc':a.proof_stop,
       'driverSha256':sha(dp),'specSha256':sha(sp),'sourcePresenceAndBytes':'pass','AST':'pass'}
    (HERE/'READY.json').write_text(json.dumps(ready,indent=2)+'\n'); print(json.dumps(ready))

if __name__=='__main__': main()
