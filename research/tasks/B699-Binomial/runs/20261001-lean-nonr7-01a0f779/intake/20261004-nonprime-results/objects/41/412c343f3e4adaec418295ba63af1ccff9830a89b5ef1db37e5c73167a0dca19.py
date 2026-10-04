#!/usr/bin/env python3
"""Record a real command. Never represent a failed launch as child execution."""
from __future__ import annotations
import argparse, datetime, hashlib, json, os, subprocess, time
from pathlib import Path

def record(argv: list[str], cwd: Path, out: Path, env=None, timeout=120) -> dict:
    out.mkdir(parents=True, exist_ok=False)
    receipt = {'argv': argv, 'cwd': str(cwd.resolve()),
        'start_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'child_started': False, 'exit_code': None, 'wall_seconds': None,
        'peak_memory_bytes': None, 'status': 'not_started'}
    stdout = stderr = b''
    start = time.perf_counter()
    try:
        proc = subprocess.Popen(argv, cwd=cwd, env=env, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        receipt['child_started'] = True
        try:
            stdout, stderr = proc.communicate(timeout=timeout)
            receipt['status'] = 'exited'
        except subprocess.TimeoutExpired:
            proc.kill()
            stdout, stderr = proc.communicate()
            receipt['status'] = 'timeout'
        receipt['exit_code'] = proc.returncode
        receipt['wall_seconds'] = time.perf_counter() - start
    except OSError as exc:
        receipt.update(status='launch_failed', exception_type=type(exc).__name__, exception=str(exc))
        (out / 'launch-error.log').write_text(f'{type(exc).__name__}: {exc}\n')
    for name, data in [('stdout.log', stdout), ('stderr.log', stderr)]:
        (out / name).write_bytes(data)
        receipt[name + '_sha256'] = hashlib.sha256(data).hexdigest()
    (out / 'receipt.json').write_text(json.dumps(receipt, ensure_ascii=False, indent=2)+'\n')
    return receipt

if __name__ == '__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--cwd',type=Path,required=True);p.add_argument('--out',type=Path,required=True)
    p.add_argument('--timeout',type=int,default=120);p.add_argument('command',nargs=argparse.REMAINDER)
    args=p.parse_args();cmd=args.command
    if cmd and cmd[0]=='--':cmd=cmd[1:]
    if not cmd:p.error('A command is required after --')
    r=record(cmd,args.cwd,args.out,timeout=args.timeout)
    print(json.dumps(r,ensure_ascii=False,indent=2))
    raise SystemExit(r['exit_code'] if r['child_started'] and r['status']=='exited' else 127)
