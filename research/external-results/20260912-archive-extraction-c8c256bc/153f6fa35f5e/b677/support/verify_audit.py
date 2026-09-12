#!/usr/bin/env python3
"""Compile only scratch sources; consume pinned dependency cache read-only."""
from pathlib import Path
import hashlib
import json
import os
import subprocess
import sys
from datetime import datetime, timezone

root = Path(__file__).resolve().parents[1]
run = root / 'verification' / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
run.mkdir(parents=True)
reference = Path('/workspace/scratch/75a17f226d3b/lean-math-lab')
compiler = Path('/root/.elan/toolchains/leanprover--lean4---v4.33.1/bin/lean')
manifest = json.loads((root / 'support/lake-manifest.json').read_text())
objects = run / 'olean'
dep_paths = []
pins = []
read_git_env = dict(os.environ, GIT_OPTIONAL_LOCKS='0')
for package in manifest['packages']:
    path = reference / '.lake/packages' / package['name']
    rev = subprocess.check_output(['git', '-C', str(path), 'rev-parse', 'HEAD'], env=read_git_env, text=True).strip()
    assert rev == package['rev'], (package['name'], rev, package['rev'])
    status = subprocess.check_output(['git', '-C', str(path), 'status', '--porcelain', '--untracked-files=no'], env=read_git_env, text=True)
    assert not status, (package['name'], status)
    pins.append({'name': package['name'], 'rev': rev, 'tracked_clean': True})
    build = path / '.lake/build/lib/lean'
    if build.exists():
        dep_paths.append(str(build))
env = dict(os.environ, LD_PRELOAD=str(root / 'support/proc-self.so'),
           LEAN_PATH=':'.join([str(objects)] + dep_paths))
version = subprocess.check_output([str(compiler), '--version'], env=env, text=True).strip()
assert '4.33.1' in version, version
records = []
for relative in ['Math/B677/IntervalLcm.lean', 'DivisorRunAudit.lean']:
    source = root / 'lean' / relative
    out = objects / Path(relative).with_suffix('.olean')
    out.parent.mkdir(parents=True, exist_ok=True)
    command = [str(compiler), '-o', str(out), relative]
    result = subprocess.run(command, cwd=root / 'lean', env=env, text=True, capture_output=True)
    log = result.stdout + result.stderr
    (run / (Path(relative).stem + '.log')).write_text(log)
    record = {'file': relative, 'sha256': hashlib.sha256(source.read_bytes()).hexdigest(),
              'command': command, 'exit_code': result.returncode}
    records.append(record)
    print(relative, result.returncode)
    print(log)
    if result.returncode:
        break
success = len(records) == 2 and all(r['exit_code'] == 0 for r in records)
if success:
    for theorem in ['divisor_run_iff_lcm_dvd', 'equality_iff_run_and_reverse', 'run_end_le',
                    'collision_end_le', 'collision_iff_divisor_candidate',
                    'exclude_all_m_of_divisor_checks', 'exclude_all_m_of_missing_divisor']:
        assert f"'B677Audit.{theorem}' depends on axioms: [propext, Classical.choice, Quot.sound]" in log
    assert 'sorryAx' not in log
evidence = {'success': success, 'version': version, 'pins': pins, 'records': records,
            'dependency_objects': 'existing fixed package caches; no package rebuild',
            'project_objects': 'scratch compilation from exact copied baseline; no prebuilt project imports',
            'second_independent_kernel': False}
(run / 'evidence.json').write_text(json.dumps(evidence, indent=2) + '\n')
print('evidence:', run / 'evidence.json')
sys.exit(0 if success else 1)
