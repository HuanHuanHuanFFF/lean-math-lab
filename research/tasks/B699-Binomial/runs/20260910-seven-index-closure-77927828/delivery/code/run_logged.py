#!/usr/bin/env python3
"""Run one local evidence command with real status, output and before/after hashes."""
from __future__ import annotations
import argparse,datetime,hashlib,json,subprocess,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def stamp():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--name',required=True);ap.add_argument('--timeout',type=float,default=600)
    ap.add_argument('command',nargs=argparse.REMAINDER);a=ap.parse_args()
    command=a.command[1:] if a.command and a.command[0]=='--' else a.command
    if not command:raise SystemExit('No command')
    files=sorted((ROOT/'code').glob('*.py'))+sorted((ROOT/'inputs').glob('*.json'))
    before={str(p.relative_to(ROOT)):digest(p) for p in files}
    begin=stamp();t=time.monotonic();stdout=ROOT/'replay'/f'{a.name}.stdout.txt';stderr=ROOT/'replay'/f'{a.name}.stderr.txt'
    with stdout.open('w') as out,stderr.open('w') as err:
        try:
            run=subprocess.run(command,cwd=ROOT,stdout=out,stderr=err,timeout=a.timeout,check=False)
            status=run.returncode;timed_out=False
        except subprocess.TimeoutExpired:
            status=None;timed_out=True
    record={'argv':command,'cwd':str(ROOT),'started_utc':begin,'ended_utc':stamp(),
        'wall_seconds':time.monotonic()-t,'returncode':status,'timed_out':timed_out,
        'source_hashes_before':before,'source_hashes_after':{str(p.relative_to(ROOT)):digest(p) for p in files},
        'stdout_sha256':digest(stdout),'stderr_sha256':digest(stderr)}
    (ROOT/'replay'/f'{a.name}.json').write_text(json.dumps(record,indent=2)+'\n')
    raise SystemExit(status if status is not None else 124)
if __name__=='__main__':main()
