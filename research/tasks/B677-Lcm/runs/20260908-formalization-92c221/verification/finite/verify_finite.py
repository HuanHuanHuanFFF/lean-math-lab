#!/usr/bin/env python3
"""Fresh, recoverable dependency-closure validation of the complete finite theorem.

Only pinned package objects may be cached from before allocation. Successful
project chunks are checkpointed with source, dependency and object hashes.
--resume reuses only those exact unchanged chunks from this fresh allocation;
raw attempt logs remain immutable, including failed attempts.
"""
from concurrent.futures import ThreadPoolExecutor, wait, FIRST_COMPLETED
from datetime import datetime, timezone
import argparse
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import shlex
import subprocess
import sys
import time


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--jobs', type=int, default=4)
    ap.add_argument('--reserve-gb', type=float, default=5.0)
    ap.add_argument('--resume', type=Path)
    ap.add_argument('--root', type=Path)
    args = ap.parse_args()
    if not 1 <= args.jobs <= 4:
        raise ValueError('Concurrent compiler limit is four')
    repo = next(p for p in Path(__file__).resolve().parents if (p / 'lake-manifest.json').is_file())
    helper_path = repo / 'scripts/verify-research-runs.py'
    spec = importlib.util.spec_from_file_location('b677_finite_verify_helpers', helper_path)
    helpers = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = helpers
    spec.loader.exec_module(helpers)
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    if args.resume:
        output = args.resume.resolve()
        report = json.loads((output / 'evidence.json').read_text())
        if not report.get('fresh_project_objects'):
            raise RuntimeError('Can only resume this verifier’s fresh allocation')
        objects = Path(report['objects'])
    else:
        output = Path(__file__).resolve().parent / stamp
        output.mkdir(exist_ok=False)
        _, objects, _ = helpers.allocate_build(repo, 'b677-finite-' + stamp)
        report = {'success': False, 'started_utc': helpers.utc_now(), 'objects': str(objects),
                  'fresh_project_objects': True, 'attempts': [], 'accepted_chunks': {}}
    attempt_out = output / ('attempt-' + stamp)
    attempt_out.mkdir(exist_ok=False)
    attempt = {'started_utc': helpers.utc_now(), 'output': str(attempt_out),
               'jobs_cap': args.jobs, 'memory_reserve_gb': args.reserve_gb,
               'helper_sha256': helpers.sha256(helper_path),
               'verifier_sha256': helpers.sha256(Path(__file__)), 'compile_records': []}
    report['attempts'].append(attempt)
    report['success'] = False
    root = (args.root.resolve() if args.root else
            repo / 'research/tasks/B677-Lcm/runs/20260908-formalization-92c221/lean/finite/Consumer.lean')
    if args.resume and str(root) != report.get('root'):
        raise RuntimeError('Resume root differs from the original allocation')
    report['root'] = str(root)
    env = dict(os.environ, ELAN_HOME=str(repo / '.tools/elan'), LEAN_PATH=str(objects))
    env['PATH'] = str(repo / '.tools/elan/bin') + os.pathsep + env.get('PATH', '')
    report['lean_path'] = [str(objects)]

    def save():
        (output / 'evidence.json').write_text(json.dumps(report, indent=2, ensure_ascii=False) + '\n')

    def memory_available():
        for line in Path('/proc/meminfo').read_text().splitlines():
            if line.startswith('MemAvailable:'):
                return int(line.split()[1]) / 1024**2
        return 0

    try:
        attempt['linked_package_objects'] = helpers.overlay_package_objects(repo, objects)
        manifest = helpers.load_manifest(repo)
        attempt['manifest_sha256'] = helpers.sha256(repo / 'lake-manifest.json')
        attempt['pins'] = helpers.package_pin_records(repo, manifest)
        if not all(p.get('matches_pin') for p in attempt['pins']):
            raise RuntimeError('Pinned package source mismatch')
        attempt['toolchain'] = helpers.ensure_toolchain(repo, attempt_out, env)
        ordered, imports, dependencies, seen = [], {}, {}, set()

        def visit(source):
            source = source.resolve()
            if source in seen:
                return
            seen.add(source)
            if not source.is_file():
                raise RuntimeError(f'Missing project import: {source}')
            relative = source.relative_to(repo)
            if 'archive' in relative.parts or 'external' in relative.parts:
                raise RuntimeError(f'Unaccepted import: {relative}')
            imports[source] = helpers.imports_in(source)
            dependencies[source] = []
            for module in imports[source]:
                if not helpers.is_package_import(module):
                    dep = repo.joinpath(*module.split('.')).with_suffix('.lean').resolve()
                    dependencies[source].append(dep)
                    visit(dep)
            ordered.append(source)

        visit(root)
        source_hashes = {str(p.relative_to(repo)): helpers.sha256(p) for p in ordered}
        attempt['source_sha256_before'] = source_hashes
        report['project_closure'] = [str(p.relative_to(repo)) for p in ordered]
        policy = helpers.load_policy(repo)
        attempt['source_policy'] = helpers.policy_check(ordered, repo=repo, output=attempt_out,
                                                       policy_mask=policy['mask_comments_and_strings'])
        if attempt['source_policy']['exit_code']:
            raise RuntimeError('Exact-closure source policy failed')
        count = len(helpers.PRINT_AXIOMS_RE.findall(root.read_text()))
        if count == 0:
            raise RuntimeError('Root has no executable transitive axiom guard')
        attempt['root_audit'] = helpers.audit_root_source(
            root, count, policy_mask=policy['mask_comments_and_strings'])
        packages = sorted({m for ms in imports.values() for m in ms if helpers.is_package_import(m)})
        attempt['package_rebuilds'] = helpers.rebuild_missing_package_objects(
            packages, repo=repo, olean_root=objects, output=attempt_out, env=env)
        accepted = report['accepted_chunks']
        completed = set()
        # Invalidate a chunk if either it or any project dependency changed.
        for source in ordered:
            rel = str(source.relative_to(repo))
            prior = accepted.get(rel)
            obj = objects / source.relative_to(repo).with_suffix('.olean')
            if (prior and prior['source_sha256'] == source_hashes[rel] and obj.is_file()
                    and helpers.sha256(obj) == prior['object_sha256']
                    and all(d in completed for d in dependencies[source])):
                completed.add(source)
            else:
                accepted.pop(rel, None)
                if obj.exists():
                    obj.unlink()
        attempt['resumed_unchanged_chunks'] = len(completed)
        pending = set(ordered) - completed
        positions = {p: i for i, p in enumerate(ordered)}
        started = time.monotonic()

        def compile_one(source):
            rel = str(source.relative_to(repo))
            obj = objects / source.relative_to(repo).with_suffix('.olean')
            obj.parent.mkdir(parents=True, exist_ok=True)
            cmd = ['bash', str(repo / 'scripts/lean-work.sh'), 'lean', '-DautoImplicit=false',
                   '-DrelaxedAutoImplicit=false', '--root=' + str(repo), '-o', str(obj), str(source)]
            log = attempt_out / f'compile-{positions[source]:04d}-{source.stem}.log'
            before, begun = helpers.sha256(source), time.monotonic()
            with log.open('w') as stream:
                stream.write('# source: ' + rel + '\n# command: ' + shlex.join(cmd) + '\n')
                stream.flush()
                process = subprocess.run(cmd, cwd=repo, env=env, stdout=stream, stderr=subprocess.STDOUT)
            after = helpers.sha256(source)
            return {'source': rel, 'command': cmd, 'seconds': time.monotonic() - begun,
                    'exit_code': process.returncode, 'source_sha256': before,
                    'source_sha256_after': after, 'log': str(log.relative_to(repo)),
                    'log_sha256': helpers.sha256(log), 'object': str(obj.relative_to(repo)),
                    'object_sha256': helpers.sha256(obj) if obj.exists() else None,
                    'dependencies': {str(d.relative_to(repo)): source_hashes[str(d.relative_to(repo))]
                                     for d in dependencies[source]}}

        running = {}
        failure = None
        last_status = 0.0
        with ThreadPoolExecutor(max_workers=args.jobs) as pool:
            while pending or running:
                available = memory_available()
                can_start = args.jobs if available >= args.reserve_gb else min(1, args.jobs)
                ready = sorted((p for p in pending if all(d in completed for d in dependencies[p])),
                               key=lambda p: positions[p])
                if not failure:
                    for source in ready[:max(0, can_start - len(running))]:
                        pending.remove(source)
                        running[pool.submit(compile_one, source)] = source
                if not running:
                    if failure:
                        break
                    if pending:
                        raise RuntimeError('Dependency scheduler has no ready module')
                    break
                done, _ = wait(running, timeout=10, return_when=FIRST_COMPLETED)
                for future in done:
                    source = running.pop(future)
                    rec = future.result()
                    attempt['compile_records'].append(rec)
                    if rec['exit_code'] or rec['source_sha256'] != rec['source_sha256_after'] or not rec['object_sha256']:
                        failure = f'Compilation failed or source changed: {rec["source"]}'
                    else:
                        completed.add(source)
                        accepted[rec['source']] = rec
                    print(f'{len(completed)}/{len(ordered)} {source.name}: '
                          f'exit={rec["exit_code"]}, {rec["seconds"]:.2f}s', flush=True)
                    save()
                now = time.monotonic()
                if now - last_status >= 50:
                    status = {'elapsed_seconds': round(now - started), 'completed': len(completed),
                              'total': len(ordered), 'running': [p.name for p in running.values()],
                              'memory_available_gb': round(memory_available(), 3)}
                    attempt.setdefault('resource_checkpoints', []).append(status)
                    print('checkpoint ' + json.dumps(status), flush=True)
                    last_status = now
                    save()
        if failure:
            raise RuntimeError(failure)
        after = {str(p.relative_to(repo)): helpers.sha256(p) for p in ordered}
        attempt['source_sha256_after'] = after
        if source_hashes != after:
            raise RuntimeError('Project source changed during this attempt')
        if len(completed) != len(ordered):
            raise RuntimeError('Incomplete project closure')
        report['success'] = True
        report['finished_utc'] = helpers.utc_now()
    except Exception as exc:
        attempt['failure'] = str(exc)
        print('FAILED: ' + str(exc), flush=True)
    finally:
        attempt['finished_utc'] = helpers.utc_now()
        save()
        print('Evidence: ' + str(output), flush=True)
        print('LEAN_PATH: ' + str(objects), flush=True)
    return 0 if report['success'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
