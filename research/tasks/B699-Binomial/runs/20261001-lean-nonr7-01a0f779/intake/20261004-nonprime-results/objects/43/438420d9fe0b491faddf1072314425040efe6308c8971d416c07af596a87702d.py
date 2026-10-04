#!/usr/bin/env python3
"""Capture an explicit command; no installer, shell, checker inference or acceptance claim."""
from pathlib import Path
import argparse, datetime, hashlib, json, os, re, signal, subprocess, time


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def capture(argv: list[str], cwd: Path, out: Path, label: str,
            sources: list[Path], timeout: float = 120,
            env: dict[str, str] | None = None) -> dict:
    if not re.fullmatch(r'[A-Za-z0-9_.-]+', label) or not argv or timeout <= 0:
        raise ValueError('Invalid label, command, or timeout')
    out.mkdir(parents=True, exist_ok=True)
    paths = {k: out/f'{label}.{k}' for k in ['stdout.log','stderr.log','receipt.json']}
    if any(p.exists() for p in paths.values()):
        raise FileExistsError('Refusing to overwrite command evidence')
    source_info = [{'path':str(p.resolve()),'sha256':digest(p.read_bytes())} for p in sources]
    start_utc = datetime.datetime.now(datetime.timezone.utc).isoformat()
    start = time.monotonic()
    started, timed_out, code, launch_error = False, False, None, None
    with paths['stdout.log'].open('xb') as stdout, paths['stderr.log'].open('xb') as stderr:
        try:
            proc = subprocess.Popen(argv, cwd=cwd, env=env, stdin=subprocess.DEVNULL,
                                    stdout=stdout, stderr=stderr, start_new_session=True)
            started = True
            try:
                code = proc.wait(timeout=timeout)
            except subprocess.TimeoutExpired:
                timed_out = True
                os.killpg(proc.pid, signal.SIGKILL)
                code = proc.wait()
        except OSError as exc:
            launch_error = repr(exc)
    elapsed = time.monotonic() - start
    result = {
        'started_utc':start_utc, 'argv':argv, 'cwd':str(cwd.resolve()),
        'process_started':started, 'exit_code':code, 'timed_out':timed_out,
        'launch_error':launch_error, 'command_wall_seconds':elapsed,
        'timing_scope':'whole command including startup/import/output, not isolated theorem cost',
        'peak_memory_bytes':None, 'peak_memory_reason':'not measured by this recorder',
        'sources':source_info,
        'stdout_file':paths['stdout.log'].name,
        'stdout_sha256':digest(paths['stdout.log'].read_bytes()),
        'stderr_file':paths['stderr.log'].name,
        'stderr_sha256':digest(paths['stderr.log'].read_bytes()),
        'proof_acceptance':None,
    }
    paths['receipt.json'].write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    return result


def main() -> int:
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--cwd',type=Path,required=True)
    p.add_argument('--out',type=Path,required=True)
    p.add_argument('--label',required=True)
    p.add_argument('--source',type=Path,action='append',default=[])
    p.add_argument('--timeout',type=float,default=120)
    p.add_argument('command',nargs=argparse.REMAINDER)
    a=p.parse_args()
    argv=a.command[1:] if a.command[:1]==['--'] else a.command
    r=capture(argv,a.cwd,a.out,a.label,a.source,a.timeout)
    print(json.dumps(r,ensure_ascii=False,indent=2))
    if not r['process_started']:return 127
    if r['timed_out']:return 124
    code=r['exit_code']
    return code if 0 <= code <= 255 else 1


if __name__=='__main__':
    raise SystemExit(main())
