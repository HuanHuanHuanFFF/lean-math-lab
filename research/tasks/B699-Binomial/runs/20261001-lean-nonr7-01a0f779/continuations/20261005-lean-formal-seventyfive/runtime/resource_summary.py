"""Bounded actual resource/cost summaries for already saved receipts."""
import argparse
import datetime as dt
import json
import hashlib
from pathlib import Path
import shutil

HERE = Path(__file__).resolve().parent

def main():
    p = argparse.ArgumentParser()
    p.add_argument('intake', type=Path)
    a = p.parse_args()
    raw = json.loads((a.intake/'RAW_INTAKE.json').read_text())
    # Direct native receipt members only. Carried historical receipts are not fresh.
    receipts = []
    for row in raw['members']:
        member = row['member']
        if member.endswith('/receipt.json') and len(member.split('/')) == 2:
            path = Path(row['storedPath'])
            data = path.read_bytes()
            if len(data) != row['bytes'] or hashlib.sha256(data).hexdigest() != row['sha256']:
                raise RuntimeError('Receipt byte mismatch: ' + member)
            receipts.append((member.split('/')[0], json.loads(data)))
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
      'newStoredBinaryBytes':sum(x['bytes'] for x in raw['members'] if x['binaryOutsideGit'] and 'reusedExactBytesFrom' not in x),
      'reusedBinaryBytes':sum(x['bytes'] for x in raw['members'] if x['binaryOutsideGit'] and 'reusedExactBytesFrom' in x),
      'reusedExactMemberCount':raw['reusedExactMemberCount'], 'reusedExactBytes':raw['reusedExactBytes'],
      'freshCompileSources':len(fresh),
      'costGroups':groups, 'lastChildEndUtc':max((r.get('endUtc','') for _,r in receipts),default=''),
      'DfreeBytes':shutil.disk_usage('D:/').free, 'nativeLeanChildrenLaunched':0,
      'actualProfiles':[dict(zip(['cpus','nice','startupMemoryMiB','treeMemoryMiB'], p)) for p in sorted(
          { (tuple(r.get('cpus',[])),r.get('nice'),r.get('startupMemoryMiB'),r.get('treeMemoryMiB'))
          for _,r in receipts if r.get('childStarted')}, key=str)],
      'consumerDetail':[{ 'source':r.get('source'), 'wallSeconds':r.get('wallSeconds'),
          'peakTreeBytes':r.get('peakTreeWorkingSetBytes'), 'arguments':r.get('arguments'),
          'startupMemoryMiB':r.get('startupMemoryMiB'),'treeMemoryMiB':r.get('treeMemoryMiB'),
          'resourceBefore':r.get('resourceBefore'),'executableSha256':r.get('executableSha256')}
          for label,r in receipts if r.get('mode')=='Lean' and 'Block' not in label]}
    (a.intake/'RESOURCE_SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({k:v for k,v in summary.items() if k!='consumerDetail'}))

if __name__ == '__main__':
    main()
