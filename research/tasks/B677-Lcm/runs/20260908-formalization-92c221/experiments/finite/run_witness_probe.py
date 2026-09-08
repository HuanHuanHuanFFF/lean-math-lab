#!/usr/bin/env python3
"""Compile independent certificate rows, recording kernel cost and exact scope."""
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('directory', type=Path)
    ap.add_argument('--objects', type=Path, required=True)
    ap.add_argument('--timeout', type=int, default=180)
    ap.add_argument('--jobs', type=int, default=2)
    ap.add_argument('--rows', type=int, nargs='*')
    args = ap.parse_args()
    repo = next(p for p in Path(__file__).resolve().parents if (p / 'lake-manifest.json').is_file())
    out, objects = args.directory.resolve(), args.objects.resolve()
    report_path = out / 'kernel-cost.json'
    if report_path.exists():
        raise RuntimeError('Refusing to overwrite previous cost evidence')
    generation = json.loads((out / 'generation.json').read_text())
    rows = args.rows or list(range(1, generation['lengths'] + 1))
    data_rows = sorted(set(rows) | {k - 1 for k in rows if k > 1})
    env = dict(os.environ, ELAN_HOME=str(repo / '.tools/elan'), LEAN_PATH=str(objects))
    env['PATH'] = str(repo / '.tools/elan/bin') + os.pathsep + env.get('PATH', '')
    report = {'success': False, 'probe': True, 'rows': rows, 'limit': generation['limit'],
              'jobs': args.jobs, 'timeout_per_module': args.timeout,
              'scope': 'full generated consumer' if not args.rows else 'selected conditional row checks only',
              'records': []}

    def compile_one(src):
        obj = objects / src.relative_to(repo).with_suffix('.olean')
        obj.parent.mkdir(parents=True, exist_ok=True)
        cmd = ['bash', str(repo / 'scripts/lean-work.sh'), 'lean', '-DautoImplicit=false',
               '-DrelaxedAutoImplicit=false', '--root=' + str(repo), '-o', str(obj), str(src)]
        started = time.monotonic()
        try:
            result = subprocess.run(cmd, cwd=repo, env=env, stdout=subprocess.PIPE,
                                    stderr=subprocess.STDOUT, text=True, timeout=args.timeout)
            code, log = result.returncode, result.stdout
        except subprocess.TimeoutExpired as exc:
            code, log = 124, exc.stdout or ''
            if isinstance(log, bytes):
                log = log.decode(errors='replace')
            log += f'\nBounded cost probe exceeded {args.timeout} seconds.\n'
        (out / (src.stem + '.log')).write_text(log)
        return {'source': src.name, 'command': cmd, 'seconds': time.monotonic() - started,
                'exit_code': code, 'source_sha256': hashlib.sha256(src.read_bytes()).hexdigest(),
                'log_sha256': hashlib.sha256(log.encode()).hexdigest(),
                'olean_sha256': hashlib.sha256(obj.read_bytes()).hexdigest() if obj.exists() else None}

    def phase(sources):
        good = True
        with ThreadPoolExecutor(max_workers=args.jobs) as pool:
            pending = {pool.submit(compile_one, src): src for src in sources}
            for future in as_completed(pending):
                rec = future.result()
                report['records'].append(rec)
                report_path.write_text(json.dumps(report, indent=2) + '\n')
                print({k: rec[k] for k in ('source', 'seconds', 'exit_code')}, flush=True)
                if rec['exit_code']:
                    print((out / (pending[future].stem + '.log')).read_text()[-3000:], flush=True)
                    good = False
        return good

    if not phase([out / f'Data{k:02d}.lean' for k in data_rows]):
        return 1
    if not phase([out / f'Check{k:02d}.lean' for k in rows]):
        return 1
    if not args.rows and not phase([out / 'Consumer.lean']):
        return 1
    report['success'] = True
    report_path.write_text(json.dumps(report, indent=2) + '\n')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
