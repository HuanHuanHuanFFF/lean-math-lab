"""Bounded actual resource/cost summaries for already saved receipts."""
import argparse
import datetime as dt
import json
from pathlib import Path
import shutil

HERE = Path(__file__).resolve().parent

def main():
    p = argparse.ArgumentParser()
    p.add_argument('intake', type=Path)
    a = p.parse_args()
    raw = json.loads((a.intake/'RAW_INTAKE.json').read_text())
    receipts = [(x.parent.name,json.loads(x.read_text())) for x in a.intake.glob('*/receipt.json')]
    groups = {}
    for label, r in receipts:
        if not r.get('childStarted'):
            continue
        if r.get('mode') == 'Lean':
            kind = 'compile-block' if 'Block' in label else 'compile-consumer-or-helper'
        elif label.endswith('-normal-checker'):
            kind = 'checker-block' if 'Block' in label else 'checker-consumer-or-helper'
        else:
            kind = 'tooling-or-strict-audit'
        g = groups.setdefault(kind, {'count':0, 'wallSeconds':0, 'maxWallSeconds':0,
           'maxTreeBytes':0, 'nonzeroExitCount':0})
        g['count'] += 1
        g['wallSeconds'] += r.get('wallSeconds',0)
        g['maxWallSeconds'] = max(g['maxWallSeconds'],r.get('wallSeconds',0))
        g['maxTreeBytes'] = max(g['maxTreeBytes'],r.get('peakTreeWorkingSetBytes',0))
        g['nonzeroExitCount'] += r.get('exitCode') != 0
    fresh = [r for _,r in receipts if r.get('mode') == 'Lean']
    summary = {'observedUtc':dt.datetime.now(dt.timezone.utc).isoformat(),
      'head':raw['sourceCommit'], 'run':raw['runId'], 'artifact':raw['artifactId'],
      'nativeMembers':len(raw['members']), 'zipBytes':raw['zipBytes'],
      'binaryMemberBytes':sum(x['bytes'] for x in raw['members'] if x['binaryOutsideGit']),
      'newStoredBinaryBytes':sum(x['bytes'] for x in raw['members'] if x['binaryOutsideGit'] and 'reusedExactBinaryFrom' not in x),
      'reusedBinaryBytes':raw['reusedExactBinaryBytes'], 'freshCompileSources':len(fresh),
      'costGroups':groups, 'lastChildEndUtc':max((r.get('endUtc','') for _,r in receipts),default=''),
      'DfreeBytes':shutil.disk_usage('D:/').free, 'nativeLeanChildrenLaunched':0,
      'consumerDetail':[{ 'source':r.get('source'), 'wallSeconds':r.get('wallSeconds'),
          'peakTreeBytes':r.get('peakTreeWorkingSetBytes'), 'arguments':r.get('arguments')}
          for label,r in receipts if r.get('mode')=='Lean' and 'Block' not in label]}
    (a.intake/'RESOURCE_SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({k:v for k,v in summary.items() if k!='consumerDetail'}))

if __name__ == '__main__':
    main()
