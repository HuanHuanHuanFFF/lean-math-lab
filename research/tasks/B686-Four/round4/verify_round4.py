"""Rebuild the round-4 Lean dependency graph and record bounded kernel evidence.

Run from any directory. This verifies research modules, not the unsolved bounty.
No toolchain install, remote write, or repository commit is performed.
"""
import argparse
import hashlib
import json
import os
import re
import subprocess
import sys
import time
from datetime import datetime, timezone
from pathlib import Path

ROUND = Path(__file__).resolve().parent
REPO = ROUND.parents[3]
PREFIX = 'research.tasks.«B686-Four».round4.'
RESEARCH_PREFIX = 'research.'
ALLOWED_AXIOMS = {'propext', 'Classical.choice', 'Quot.sound'}


def now():
    return datetime.now(timezone.utc).isoformat()


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def without_comments(source):
    out, i, depth = [], 0, 0
    while i < len(source):
        if source.startswith('/-', i):
            depth += 1
            i += 2
        elif depth and source.startswith('-/', i):
            depth -= 1
            i += 2
        elif depth:
            out.append('\n' if source[i] == '\n' else ' ')
            i += 1
        elif source.startswith('--', i):
            end = source.find('\n', i)
            i = len(source) if end == -1 else end
        else:
            out.append(source[i])
            i += 1
    return ''.join(out)


def discover():
    paths = sorted(ROUND.rglob('*.lean'))
    modules = {PREFIX + '.'.join(p.relative_to(ROUND).with_suffix('').parts): p for p in paths}
    deps, external, audits = {}, set(), {}
    pending = list(modules)
    while pending:
        module = pending.pop(0)
        path = modules[module]
        source = path.read_text()
        imports = re.findall(r'^import\s+(\S+)\s*$', source, re.M)
        deps[module] = [i for i in imports if i.startswith(RESEARCH_PREFIX)]
        for dependency in deps[module]:
            if dependency not in modules:
                dependency_path = REPO.joinpath(*dependency.replace('«', '').replace('»', '').split('.')).with_suffix('.lean')
                if not dependency_path.is_file():
                    raise RuntimeError(f'Missing research source: {dependency}')
                modules[dependency] = dependency_path
                pending.append(dependency)
        external.update(i for i in imports if i.startswith('Mathlib.'))
        clean = without_comments(source)
        forbidden = re.findall(r'\b(?:sorry|admit|native_decide|sorryAx)\b', clean)
        declarations = re.findall(r'^\s*(?:axiom|constant)\s+\S+', clean, re.M)
        expected = re.findall(r'depends on axioms: \[([^\]]*)\]', source)
        axiom_sets = [set(filter(None, (x.strip() for x in item.split(',')))) for item in expected]
        guards = re.findall(r'^#print axioms\s+(\S+)', clean, re.M)
        audits[module] = dict(source_sha256=digest(path), guarded_declarations=guards,
                              expected_axiom_sets=[sorted(s) for s in axiom_sets],
                              forbidden_hits=forbidden + declarations)
        if forbidden or declarations or not guards or len(expected) != len(guards):
            raise RuntimeError(f'Explicit source/guard review required: {path.relative_to(REPO)}')
        if any(not a.issubset(ALLOWED_AXIOMS) for a in axiom_sets):
            raise RuntimeError(f'Nonstandard axiom expected in {path.relative_to(REPO)}')
    order, visiting, complete = [], set(), set()

    def visit(module):
        if module in complete:
            return
        if module in visiting:
            raise RuntimeError(f'Import cycle: {module}')
        if module not in modules:
            raise RuntimeError(f'Missing local import: {module}')
        visiting.add(module)
        for dependency in deps[module]:
            visit(dependency)
        visiting.remove(module)
        complete.add(module)
        order.append(module)

    for module in modules:
        visit(module)
    return modules, order, sorted(external), audits


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--skip-dependencies', action='store_true')
    parser.add_argument('--per-file-seconds', type=int, default=180)
    parser.add_argument('--max-total-seconds', type=int, default=600)
    args = parser.parse_args()
    started, stamp = time.monotonic(), now()
    evidence = ROUND / 'verification'
    evidence.mkdir(exist_ok=True)
    report_path = ROUND / 'lean-verification.json'
    report = dict(started_utc=stamp, full_bounty_proved=False, results=[])
    env = dict(os.environ)
    env['LEAN_PATH'] = str(REPO) + (os.pathsep + env['LEAN_PATH'] if env.get('LEAN_PATH') else '')

    def save():
        report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2)+'\n')

    def run(label, command, limit):
        remaining = args.max_total_seconds - (time.monotonic() - started)
        if remaining <= 0:
            raise RuntimeError('Total verification budget exhausted; no success claimed.')
        log = evidence / (label + '.log')
        begin = time.monotonic()
        with log.open('w') as output:
            try:
                result = subprocess.run(command, cwd=REPO, env=env, stdout=output,
                                        stderr=subprocess.STDOUT, timeout=min(limit, remaining))
                code = result.returncode
            except subprocess.TimeoutExpired:
                code = 124
        entry = dict(label=label, command=command, exit_code=code,
                     seconds=round(time.monotonic()-begin, 3),
                     log=str(log.relative_to(REPO)))
        report['results'].append(entry)
        save()
        print(f'{label}: exit {code}, {entry["seconds"]}s', flush=True)
        if code:
            raise RuntimeError(f'{label} failed; see {log.relative_to(REPO)}')

    try:
        modules, order, external, audits = discover()
        report['source_audit'] = audits
        report['dependency_order'] = order
        run('lean-version', ['bash', 'scripts/lean-work.sh', 'lake', 'env', 'lean', '--version'], 30)
        if not args.skip_dependencies:
            run('mathlib-dependencies', ['bash', 'scripts/lean-work.sh', 'lake', 'build', *external], 360)
        for module in order:
            path = modules[module]
            relative = str(path.relative_to(REPO))
            # Rebuild every imported research object before its dependents. Never
            # accept a dependent theorem merely against an old research olean.
            run('-'.join(path.relative_to(REPO).with_suffix('').parts),
                ['bash', 'scripts/lean-work.sh', 'lake', 'env', 'lean',
                 '-o', str(path.with_suffix('.olean').relative_to(REPO)), relative],
                args.per_file_seconds)
        changed = [m for m,p in modules.items() if digest(p) != audits[m]['source_sha256']]
        if changed:
            raise RuntimeError('Sources changed during verification: '+', '.join(changed))
        report['success'] = True
    except Exception as error:
        report['success'] = False
        report['error'] = str(error)
    report['finished_utc'] = now()
    report['elapsed_seconds'] = round(time.monotonic()-started, 3)
    save()
    print(json.dumps({k:report[k] for k in ('success','finished_utc','elapsed_seconds')}), flush=True)
    return 0 if report['success'] else 1


if __name__ == '__main__':
    sys.exit(main())
