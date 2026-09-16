#!/usr/bin/env python3
"""Regenerate new evidence in an empty directory; never run upstream chains."""
import argparse,datetime,hashlib,json,subprocess,sys,tempfile,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser();p.add_argument('--record',default='replay/local');a=p.parse_args()
record=ROOT/a.record;record.mkdir(parents=True,exist_ok=True)
manifest=json.loads((ROOT/'MANIFEST.json').read_text())['files']
def snapshot():
    return {e['path']:hashlib.sha256((ROOT/e['path']).read_bytes()).hexdigest() for e in manifest}
before=snapshot()
if any(before[e['path']]!=e['sha256'] for e in manifest):raise SystemExit('Initial manifest failed')
start=time.time();rows=[];matches={}
with tempfile.TemporaryDirectory(prefix='b699-ray-replay-') as td:
    for suite in ['symbolic','ray','local','regress','boundary','sources']:
        out=Path(td)/(suite+'.json')
        cmd=[sys.executable,'-S','-B','code/checks.py',suite,str(out)]
        t=time.time();proc=subprocess.run(cmd,cwd=ROOT,text=True,capture_output=True)
        (record/(suite+'.stdout.txt')).write_text(proc.stdout)
        if proc.stderr:(record/(suite+'.stderr.txt')).write_text(proc.stderr)
        row={'suite':suite,'command':cmd,'returncode':proc.returncode,'seconds':time.time()-t}
        rows.append(row)
        if proc.returncode:
            (record/'failure.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2))
            raise SystemExit(suite+' failed; inspect log')
        raw=out.read_bytes();same=raw==(ROOT/'outputs'/(suite+'.json')).read_bytes()
        matches[suite]={'identical':same,'sha256':hashlib.sha256(raw).hexdigest()}
        if not same:raise SystemExit('Frozen output mismatch '+suite)
after=snapshot();assert before==after
report={'status':'PASS','start_utc':datetime.datetime.fromtimestamp(start,datetime.timezone.utc).isoformat(),
        'seconds':time.time()-start,'commands':rows,'outputs':matches,'static_files_unchanged':before==after,
        'static_file_count':len(before),'external_theorems_reproved':False,'lean_run':False,
        'scope':'New exact checks only; no upstream full-chain rerun, no proof assistant or class-field implementation.'}
(record/'reproduction.json').write_text(json.dumps(report,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
print(json.dumps({'status':'PASS','commands':len(rows),'outputs':len(matches),'seconds':report['seconds'],'unchanged':before==after}))
