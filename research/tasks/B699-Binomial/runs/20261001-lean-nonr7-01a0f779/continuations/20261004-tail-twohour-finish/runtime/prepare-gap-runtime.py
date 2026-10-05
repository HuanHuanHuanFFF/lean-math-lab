"""Freeze optional Gap stages only after the actual main15000 origin is supplied."""
import argparse
import ast
import datetime as dt
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = Path.cwd()

def sha(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()

def main():
    p = argparse.ArgumentParser()
    p.add_argument('--artifact', required=True, type=int)
    p.add_argument('--bytes', required=True, type=int)
    p.add_argument('--sha256', required=True)
    args = p.parse_args()
    ready = json.loads((HERE.parent / 'reviews/FORWARD-SOURCE-READY.json').read_text())
    sources = ready['sources']
    s = json.loads((HERE / 'stage-spec.json').read_text())
    s.update(schema='b699-tail-twohour-finite-forward-v1',
             toolRoot='.tools/b699-lean-20261001-01a0f779/20261004-tail-twohour-finish/gap-runtime',
             lastJobStart='2026-10-04T14:05:00Z')
    s['reusedPrerequisiteArtifacts'].append({
       'sourceCommit':'3a8b9ff6c5cb8db16112235ca6a0969e36affcbe', 'run':37205771908,
       'artifact':args.artifact, 'zipBytes':args.bytes, 'zipSha256':args.sha256,
       'packageName':'accepted-main15000', 'stageName':'stage15000', 'sourceCount':32})
    groups = [sources[:5], sources[5:7], sources[7:9]]
    # The source review table is ordered old wrappers, A generic/lower,
    # then A/S per endpoint. Select by basename so table order is immaterial.
    byname = {Path(x['path']).name:x for x in sources}
    groups = [[byname[n] for n in ['RatioForward.lean','Gap10000Legacy.lean',
         'FixedForward.lean','GapLowerLegacy.lean','GapLowerExactLegacy.lean']],
         [byname[n] for n in ['Gap13000Legacy.lean','Gap13000ExactLegacy.lean']],
         [byname[n] for n in ['Gap15000Legacy.lean','Gap15000ExactLegacy.lean']]]
    s['stages'] = []
    for name, rows, prior in zip(['gaplower','gap13000','gap15000'], groups,
         ['stage15000','gaplower','gap13000']):
        s['stages'].append({'name':name, 'enabled':True,
            'sources': [{**x, 'largeConsumer': 'Legacy' in x['path']} for x in rows],
            'prerequisites':[prior], 'predictedCompleteSeconds':[180,120,120][len(s['stages'])],
            'packagingReserveSeconds':60,
            'predictionBasis':'Prior finite forward wrappers cost seconds; unknown new generic proof conservatively reserves ten minutes per complete stage',
            'finiteGapOnly':True})
    initial = json.loads((HERE.parent/'reviews/INITIAL-SOURCE-READY.json').read_text())
    all_initial = initial['sources'] + initial['literalSources']
    initnames = {Path(x['path']).name:x for x in all_initial}
    lower = ['SeedInitial.lean'] + [f'LowerBlock{i:03d}.lean' for i in range(45)] + ['LowerChain.lean','InitialLowerExactLegacy.lean']
    upper = [f'UpperBlock{i:03d}.lean' for i in range(45)] + ['UpperChain.lean','InitialUpperExactLegacy.lean']
    for name, names, prior, prediction in [
        ('lowerinitial',lower,'gap15000',1200),
        ('upperinitial',upper,'lowerinitial',1700),
        ('fullinitial',['FullInitialGapLegacy.lean','ThetaInitialExactLegacy.lean'],'upperinitial',360),
        ('tail30000',['Tail30000Legacy.lean','Tail30000ExactLegacy.lean'],'fullinitial',360)]:
        s['stages'].append({'name':name,'enabled':True,
            'sources':[{**initnames[n],'largeConsumer': 'Block' not in n and n!='SeedInitial.lean'} for n in names],
            'prerequisites':[prior], 'predictedCompleteSeconds':prediction,
            'packagingReserveSeconds':90,
            'predictionBasis':'Actual17 blocks20.815-23.957s each at41-53M; lower45 conservative20min, upper45 at61-123M conservative28.3min; actual complete-stage admission required',
            'completeUpperCandidate':30000 if name=='tail30000' else None,
            'finiteGapOnly':name!='tail30000'})
    sources += all_initial
    task = {x['path']:x for x in s['taskSources']}
    for x in sources:
        task[x['path']] = x
    s['taskSources'] = list(task.values())
    driver = (HERE / 'tail-stage.py').read_text().replace("HERE / 'stage-spec.json'", "HERE / 'gap-stage-spec.json'")
    driver = driver.replace("['stage10001', 'stage13000', 'stage15000']", "['gaplower', 'gap13000', 'gap15000', 'lowerinitial', 'upperinitial', 'fullinitial', 'tail30000']")
    driver = driver.replace("    if label.startswith('composite-') and '-M3132' in argv:",
        "    if 'Block' in label and 'strict-axioms' not in label:\n"
        "        kwargs['max_seconds'] = min(kwargs.get('max_seconds',300),180)\n"
        "    if label.startswith('composite-') and not label.startswith('composite-gap') and 'strict-axioms' not in label:\n"
        "        argv = ['-M6144' if x in ['-M3132','-M4096'] else x for x in argv]\n"
        "        kwargs.update(startup_mib=10240,tree_mib=8192)\n"
        "    if label.startswith('composite-') and '-M3132' in argv:")
    target = HERE / 'gap-stage.py'
    target.write_text(driver)
    ast.parse(driver)
    s['fixedRuntimeSources'].append({'path':target.relative_to(ROOT).as_posix(),
        'bytes':target.stat().st_size, 'sha256':sha(target), 'roots':[]})
    for x in s['taskSources'] + s['fixedRuntimeSources']:
        fixed = ROOT / x['path']
        if not fixed.is_file() or sha(fixed) != x['sha256'] or fixed.stat().st_size != x['bytes']:
            raise RuntimeError('Frozen optional-stage source differs: ' + x['path'])
    spec = HERE / 'gap-stage-spec.json'
    spec.write_text(json.dumps(s,indent=2)+'\n')
    draft = HERE/'gap-workflow-draft.yml'
    workflow = draft.read_text().split('# Larger finite stages appended')[0].replace('13:55:00 UTC','14:05:00 UTC')
    workflow += '# Larger finite stages appended\n'
    for name in ['lowerinitial','upperinitial','fullinitial','tail30000']:
        workflow += f'''      - name: Complete {name} finite verification unit
        if: success() && steps.plan.outputs.{name}_enabled == 'true'
        run: python3 "$B699_RUNTIME/gap-stage.py" {name}
      - name: Preserve {name} cumulative checkpoint
        if: always() && steps.plan.outputs.{name}_enabled == 'true'
        run: python3 "$B699_RUNTIME/gap-stage.py" package-{name}
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always() && steps.plan.outputs.{name}_enabled == 'true'
        with:
          name: b699-tail2h-{name}-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: .tools/b699-lean-20261001-01a0f779/20261004-tail-twohour-finish/gap-runtime/{name}-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
    draft.write_text(workflow)
    out = {'utc':dt.datetime.now(dt.timezone.utc).isoformat(), 'status':'READY-FROZEN',
      'fixedMainOrigin':s['reusedPrerequisiteArtifacts'][-1],
      'exactReusedSourceCount':227, 'freshSourceCount':108, 'old195SourceCompileIncrement':0,
      'new26PrimeCompileIncrement':0,
      'smallWrapperRecompile':['RatioForward.lean','Gap10000Legacy.lean'],
      'presenceAndBytes':'pass', 'pythonAst':'pass', 'gapStageSpecSha256':sha(spec),
      'driverSha256':sha(target), 'finiteGapOnly':True,
      'workflowDraftSha256':sha(draft),
      'stageCounts':{x['name']:len(x['sources']) for x in s['stages']},
      'largeConsumerResources':'after9small: -M6144/tree8192/start10240; each child fresh resource gate',
      'transportPolicy':'9small gap15000 original then final cumulative original only locally intaked; intermediate large checkpoints server-retained pending intake',
      'deadlines':{k:s[k] for k in ['lastJobStart','proofStopUtc','finalDeadlineUtc']}}
    (HERE/'GAP-READY.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out))

if __name__ == '__main__':
    main()
