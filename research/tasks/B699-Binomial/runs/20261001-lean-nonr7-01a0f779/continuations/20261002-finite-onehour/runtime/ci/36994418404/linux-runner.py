#!/usr/bin/env python3
"""Fixed-source, serial, deadline-bound B699 pilot verification; stdlib only."""
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import signal
import subprocess
import sys
import time

REPO = Path.cwd().resolve()
HERE = Path(__file__).resolve().parent
SPEC = json.loads((HERE / 'linux-source-manifest.json').read_text(encoding='utf-8-sig'))
DEADLINE = dt.datetime.fromisoformat(SPEC['hardDeadline'].replace('Z', '+00:00')).timestamp()
ROOT = REPO / '.tools/b699-finite-onehour-ci'
EVIDENCE = ROOT / 'evidence'
OBJECTS = EVIDENCE / 'objects'
MIB = 1024 ** 2
ALLOWED = {'propext', 'Classical.choice', 'Quot.sound'}

def sha(path):
    with Path(path).open('rb') as f:
        h = hashlib.file_digest(f, 'sha256')
    return h.hexdigest()

def utc():
    return dt.datetime.now(dt.timezone.utc).isoformat()

def write(name, value):
    p = EVIDENCE / name
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text(json.dumps(value, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')

def textfile(path):
    try:
        return Path(path).read_text().strip()
    except OSError:
        return None

def resources():
    mem = {}
    for line in Path('/proc/meminfo').read_text().splitlines():
        k, v = line.split(':', 1)
        mem[k] = int(v.strip().split()[0]) * 1024
    cg_root = Path('/sys/fs/cgroup').resolve()
    self_cgroup = textfile('/proc/self/cgroup') or ''
    v2 = next((line.split('::', 1)[1] for line in self_cgroup.splitlines()
               if line.startswith('0::')), None)
    cg = (cg_root / (v2 or '/').lstrip('/')).resolve()
    if not cg.is_relative_to(cg_root):
        raise RuntimeError('Actual cgroup location could not be resolved within its mount')
    chain = []
    effective = mem['MemAvailable']
    while True:
        limit = textfile(cg / 'memory.max')
        usage = textfile(cg / 'memory.current')
        quota = textfile(cg / 'cpu.max')
        chain.append({'path': str(cg), 'memoryMax': limit, 'memoryCurrent': usage, 'cpuMax': quota})
        if limit and limit != 'max' and usage:
            effective = min(effective, int(limit) - int(usage))
        if cg == cg_root:
            break
        cg = cg.parent
    return {'utc': utc(), 'selfCgroup': self_cgroup, 'cgroupAncestorLimits': chain,
            'hostMemAvailableBytes': mem['MemAvailable'],
            'effectiveAvailableBytes': effective, 'allowedCpuIds': sorted(os.sched_getaffinity(0)),
            'diskFreeBytes': shutil.disk_usage(REPO).free}

def child_tree(root_pid):
    rows = {}
    for p in Path('/proc').glob('[0-9]*/status'):
        try:
            values = dict(x.split(':', 1) for x in p.read_text().splitlines() if ':' in x)
            rows[int(p.parent.name)] = (int(values['PPid'].strip()),
                                      int(values.get('VmRSS', '0 kB').strip().split()[0]) * 1024)
        except (OSError, KeyError, ValueError):
            continue
    selected = {root_pid}
    while True:
        expanded = selected | {pid for pid, (parent, _) in rows.items() if parent in selected}
        if expanded == selected:
            break
        selected = expanded
    return sum(rows.get(pid, (0, 0))[1] for pid in selected)

def launch(argv, label, env=None, max_seconds=300, startup_mib=3072, tree_mib=1792):
    if time.time() >= DEADLINE:
        raise RuntimeError('Original hard deadline reached; no child launched')
    before = resources()
    if before['effectiveAvailableBytes'] < startup_mib * MIB or before['diskFreeBytes'] < 2 * 1024 ** 3:
        write(label + '/receipt.json', {'status': 'preflight_rejected', 'childStarted': False,
                                        'arguments': argv, 'resources': before, 'utc': utc()})
        raise RuntimeError('Resource gate rejected; no child launched')
    out_dir = EVIDENCE / label
    out_dir.mkdir(parents=True, exist_ok=True)
    cpus = before['allowedCpuIds'][:2]
    def contain():
        os.setsid()
        os.sched_setaffinity(0, cpus)
        os.nice(19)
    start = time.time()
    limit = min(DEADLINE - 5, start + max_seconds)
    with (out_dir / 'stdout.log').open('wb') as stdout, (out_dir / 'stderr.log').open('wb') as stderr:
        p = subprocess.Popen(argv, cwd=REPO, env=env, stdout=stdout, stderr=stderr, preexec_fn=contain)
        receipt = {'utc': utc(), 'startUtc': utc(), 'arguments': argv, 'pid': p.pid,
                   'cwd': str(REPO), 'cpus': cpus, 'nice': 19, 'resourceBefore': before,
                   'hardDeadlineUtc': SPEC['hardDeadline'], 'childStarted': True,
                   'peakTreeWorkingSetBytes': 0, 'minimumAvailableBytes': before['effectiveAvailableBytes']}
        receipt['startupMemoryMiB'] = startup_mib
        receipt['treeMemoryMiB'] = tree_mib
        receipt['effectiveLeanPath'] = (env or os.environ).get('LEAN_PATH')
        actual_exe = shutil.which(argv[0], path=(env or os.environ).get('PATH'))
        if actual_exe and Path(actual_exe).is_file():
            receipt['executable'] = str(Path(actual_exe).resolve())
            receipt['executableSha256'] = sha(actual_exe)
        write(label + '/receipt.json', {**receipt, 'status': 'running'})
        stop = None
        while p.poll() is None:
            r = resources()
            rss = child_tree(p.pid)
            receipt['peakTreeWorkingSetBytes'] = max(receipt['peakTreeWorkingSetBytes'], rss)
            receipt['minimumAvailableBytes'] = min(receipt['minimumAvailableBytes'], r['effectiveAvailableBytes'])
            if time.time() >= limit:
                stop = 'timeout_or_original_deadline'
            elif rss > tree_mib * MIB:
                stop = 'tree_working_set_limit'
            elif r['effectiveAvailableBytes'] < 900 * MIB:
                stop = 'available_memory_reserve'
            elif r['diskFreeBytes'] < 2 * 1024 ** 3:
                stop = 'disk_reserve'
            if stop:
                os.killpg(p.pid, signal.SIGKILL)
                break
            time.sleep(.15)
        code = p.wait()
    receipt.update(status='success' if code == 0 and not stop else 'failed', exitCode=code,
                   stopReason=stop, endUtc=utc(), wallSeconds=time.time() - start,
                   stdout=str(out_dir / 'stdout.log'), stderr=str(out_dir / 'stderr.log'),
                   stdoutSha256=sha(out_dir / 'stdout.log'), stderrSha256=sha(out_dir / 'stderr.log'))
    write(label + '/receipt.json', receipt)
    print(json.dumps({'label': label, 'status': receipt['status'], 'exitCode': code,
                      'peakMiB': round(receipt['peakTreeWorkingSetBytes'] / MIB, 2)}), flush=True)
    if receipt['status'] != 'success':
        raise RuntimeError('Controlled child failed: ' + label)
    return receipt

def fixed_sources():
    for s in SPEC['taskSources']:
        p = (REPO / s['path']).resolve()
        if not p.is_relative_to(REPO) or sha(p) != s['sha256']:
            raise RuntimeError('Fixed source hash differs: ' + s['path'])
    if (REPO / 'lean-toolchain').read_text().strip() != 'leanprover/lean4:v4.33.1':
        raise RuntimeError('Pinned toolchain differs')
    if sha(REPO / 'lake-manifest.json') != 'fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0':
        raise RuntimeError('Pinned nine-package manifest differs')

def lean_env():
    r = launch(['lake', 'env', 'printenv', 'LEAN_PATH'], 'lean-path-' + str(time.time_ns()), max_seconds=30)
    path = Path(r['stdout']).read_text().strip()
    env = os.environ.copy()
    env['LEAN_PATH'] = str(OBJECTS) + ':' + path
    env['LEAN_NUM_THREADS'] = '1'
    env['TMPDIR'] = str(ROOT / 'tmp')
    (ROOT / 'tmp').mkdir(parents=True, exist_ok=True)
    write('environment.json', {'utc': utc(), 'leanPath': env['LEAN_PATH'],
                               'manifestSha256': sha(REPO / 'lake-manifest.json'),
                               'runnerSha256': sha(__file__), 'sourceSpecSha256': sha(HERE / 'linux-source-manifest.json')})
    return env

def compile_source(source, label, env, out_root=OBJECTS, source_root=REPO):
    source = Path(source).resolve()
    obj = out_root / source.relative_to(source_root).with_suffix('.olean')
    obj.parent.mkdir(parents=True, exist_ok=True)
    before = sha(source)
    snapshot = EVIDENCE / label / 'source.lean'
    snapshot.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(source, snapshot)
    toolchain = json.loads((EVIDENCE / 'toolchain.json').read_text())
    r = launch([toolchain['lean'], '-j1', '-M3132', '-DElab.async=false', '-R', str(source_root),
                '-o', str(obj), str(source)], label, env)
    if sha(source) != before or sha(snapshot) != before:
        raise RuntimeError('Source changed during compile')
    r.update(mode='Lean', source=str(source), sourceSha256=before, sourceSnapshot=str(snapshot),
             sourceUnchanged=True, object=str(obj), objectSha256=sha(obj),
             objectParts=[{'path': str(p), 'bytes': p.stat().st_size, 'sha256': sha(p)}
                          for p in obj.parent.glob(obj.stem + '.*') if p.is_file()])
    write(label + '/receipt.json', r)
    return r

def build():
    fixed_sources()
    env = lean_env()
    receipts = []
    for i, s in enumerate(SPEC['taskSources']):
        receipts.append(compile_source(REPO / s['path'], f'compile-{i:02d}-{Path(s["path"]).stem}', env))
    audit = ROOT / 'B699Audit.lean'
    audit.write_text('module\n' + '\n'.join('public import ' + s['module'] for s in SPEC['taskSources']) +
                     '\n' + '\n'.join('#print axioms ' + r for r in SPEC['roots']) + '\n', encoding='utf-8')
    receipt = compile_source(audit, 'audit-all-roots', env, OBJECTS, ROOT)
    raw = Path(receipt['stdout']).read_text()
    seen = {}
    pattern = r"'([^']+)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)"
    for m in re.finditer(pattern, raw, re.S):
        name = m.group(1)
        axioms = [x.strip() for x in (m.group(2) or '').split(',') if x.strip()]
        if name in seen or len(set(axioms)) != len(axioms) or set(axioms) - ALLOWED:
            raise RuntimeError('Refused duplicate/forbidden axiom output: ' + name)
        seen[name] = axioms
    if set(SPEC['roots']) - set(seen):
        raise RuntimeError('Missing declared root audit output')
    for root in SPEC['requiredFinalRoots']:
        if root not in seen:
            raise RuntimeError('Missing complete final literal-root audit output')
        if set(seen[root]) - ALLOWED:
            raise RuntimeError('Forbidden or unexpected final-root axioms')
    write('axiom-audit.json', {'utc': utc(), 'status': 'accepted-standard-axioms', 'actualAxioms': seen,
                              'auditReceipt': 'audit-all-roots/receipt.json', 'roots': SPEC['roots']})
    toolchain = json.loads((EVIDENCE / 'toolchain.json').read_text())
    launch([toolchain['leanchecker'], '-v', SPEC['checkerModule']], 'normal-checker', env)
    write('result.json', {'utc': utc(), 'status': 'kernel-and-axiom-checks-passed',
                         'checker': 'normal pinned leanchecker, same kernel, not second implementation',
                         'checkedModule': SPEC['checkerModule'], 'sources': SPEC['taskSources'],
                         'rootCount': len(seen), 'mathematicalAcceptance': 'pending independent semantic review'})

def main():
    EVIDENCE.mkdir(parents=True, exist_ok=True)
    mode = sys.argv[1]
    if mode == 'manifest':
        members = [{'path': str(p.relative_to(EVIDENCE)), 'bytes': p.stat().st_size, 'sha256': sha(p)}
                   for p in EVIDENCE.rglob('*') if p.is_file() and p.name != 'byte-manifest.json']
        write('byte-manifest.json', {'utc': utc(), 'members': members, 'head': os.environ.get('GITHUB_SHA'),
                                     'runId': os.environ.get('GITHUB_RUN_ID')})
        return
    if time.time() >= DEADLINE:
        raise RuntimeError('Original deadline reached before phase')
    fixed_sources()
    if mode == 'preflight':
        write('resources-start.json', resources())
        write('source-manifest.json', SPEC)
        shutil.copyfile(__file__, EVIDENCE / 'linux-runner.py')
    elif mode == 'cache':
        r = launch(['lean', '--print-prefix'], 'toolchain-prefix', max_seconds=30)
        prefix = Path(Path(r['stdout']).read_text().strip())
        lean = prefix / 'bin/lean'
        checker = prefix / 'bin/leanchecker'
        v = launch([str(lean), '--version'], 'toolchain-version', max_seconds=30)
        version = Path(v['stdout']).read_text().strip()
        if '4.33.1' not in version or not checker.is_file():
            raise RuntimeError('Actual pinned toolchain or normal leanchecker is unavailable')
        write('toolchain.json', {'utc': utc(), 'lean': str(lean), 'leanchecker': str(checker),
                                'version': version, 'leanSha256': sha(lean), 'leancheckerSha256': sha(checker)})
        cache_env = os.environ.copy()
        cache_env['LEAN_NUM_THREADS'] = '1'
        launch(['lake', 'exe', 'cache', 'get'] + SPEC['mathlibImports'], 'focused-cache',
               cache_env, max_seconds=300, startup_mib=5120, tree_mib=3072)
        manifest = json.loads((REPO / 'lake-manifest.json').read_text())
        for package in manifest['packages']:
            package_dir = REPO / '.lake/packages' / package['name']
            r = launch(['git', '-C', str(package_dir), 'rev-parse', 'HEAD'], 'pin-' + package['name'], max_seconds=10)
            if Path(r['stdout']).read_text().strip() != package['rev']:
                raise RuntimeError('Actual package pin differs: ' + package['name'])
        prime_root = REPO / '.lake/packages/mathlib'
        prime_src = prime_root / 'Mathlib/Tactic/NormNum/Prime.lean'
        if sha(prime_src) != 'd49b3419be815ca4eb4cc35a38a6ca9f56769daf54fb7fcb1a0cb554ff6d4460':
            raise RuntimeError('NormNum.Prime fixed source differs')
        prime_objs = prime_root / '.lake/build/lib/lean'
        if not (prime_objs / 'Mathlib/Tactic/NormNum/Prime.olean').exists():
            leaf = compile_source(prime_src, 'single-normnum-prime-leaf', lean_env(), prime_objs, prime_root)
            for part in leaf['objectParts']:
                dest = EVIDENCE / 'single-normnum-prime-leaf/objects' / Path(part['path']).name
                dest.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(part['path'], dest)
    elif mode == 'build':
        build()
    else:
        raise RuntimeError('Unknown fixed phase')

if __name__ == '__main__':
    try:
        main()
    except BaseException as e:
        write('failure-' + sys.argv[1] + '.json', {'utc': utc(), 'failure': str(e), 'class': type(e).__name__})
        print(str(e), file=sys.stderr)
        sys.exit(1)
