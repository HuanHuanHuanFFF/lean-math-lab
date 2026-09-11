#!/usr/bin/env python3
"""Prepare or reproduce the frozen FiniteCover environment; no new row proof.

The PR #8 merge gate was satisfied at source baseline aafecac7192f.
Actual acceptance is recorded only by subsequent successful compile/audit evidence.
"""
from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import shutil
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path


def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument('--repo', type=Path, required=True)
  parser.add_argument('--mode', choices=['check-inputs', 'cache', 'verify'], required=True)
  parser.add_argument('--run-dir', type=Path)
  parser.add_argument('--memory-mb', type=int, default=1536)
  parser.add_argument('--command-timeout', type=int, default=900,
                      help='Diagnostic bound for one subprocess, never a task deadline')
  args = parser.parse_args()
  repo = args.repo.resolve()
  frozen = json.loads(Path(__file__).with_name('finitecover-inputs.json').read_text())
  sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
  checks = [(repo / r['source'], r['expected_sha256'])
            for r in [*frozen['source_closure'], *frozen.get('support_files', [])]]
  checks += [(repo / 'lake-manifest.json', frozen['manifest_sha256']),
             (repo / frozen['source_evidence'], frozen['source_evidence_sha256'])]
  bad = [str(path.relative_to(repo)) for path, expected in checks
         if not path.is_file() or sha(path) != expected]
  if (repo / 'lean-toolchain').read_text().strip() != frozen['toolchain']:
    bad.append('lean-toolchain')
  if bad:
    raise RuntimeError('Fixed input mismatch: ' + ', '.join(bad))
  print(json.dumps({'source_files_matched': len(frozen['source_closure']),
                    'manifest_matched': True, 'lean_compiled': False}))
  if args.mode == 'check-inputs':
    return 0
  for name in ['memory.max', 'memory.current', 'cpu.max']:
    path = Path('/sys/fs/cgroup') / name
    print(name, path.read_text().strip() if path.exists() else 'unavailable')
  print('disk', shutil.disk_usage(repo))
  print(subprocess.check_output(['ps', '-eo', 'pid,ppid,rss,comm', '--sort=-rss'], text=True)[:1500])
  if args.mode == 'cache':
    return subprocess.run(['lake', 'exe', 'cache', 'get', *frozen['package_imports']],
                          cwd=repo).returncode
  if not args.run_dir or args.run_dir.is_absolute() or '..' in args.run_dir.parts:
    parser.error('--run-dir must be a repository-relative new task run')
  run = (repo / args.run_dir).resolve()
  if not run.is_relative_to(repo / 'research/tasks/B699-Binomial/runs'):
    parser.error('--run-dir must be below the B699 runs directory')
  lean = shutil.which('lean')
  if shutil.which('elan'):
    actual = subprocess.run(['elan', 'which', 'lean'], cwd=repo,
                            capture_output=True, text=True)
    if actual.returncode == 0:
      lean = actual.stdout.strip()
  if lean is None:
    raise RuntimeError('Lean is missing; no Lean acceptance can be claimed')
  runner = repo / 'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/verification/runner/verify_repo_relative.py'
  spec = importlib.util.spec_from_file_location('frozen_environment_runner', runner)
  assert spec and spec.loader
  adapter = importlib.util.module_from_spec(spec)
  spec.loader.exec_module(adapter)
  verifier = adapter.load_verifier()
  verifier.FORBIDDEN_TOKENS += ('Lean.ofReduceBool', 'ofReduceBool')
  verifier.build_source_index = lambda root: adapter.repo_relative_source_index(verifier, root)

  def allocate(root: Path, _old_run: Path):
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    public = run / 'verification' / stamp
    raw = root / '.tools' / run.name / stamp
    for path in [public, raw]:
      path.mkdir(parents=True, exist_ok=False)
      (path / 'logs').mkdir()
    (raw / 'tmp').mkdir()
    (raw / 'olean').mkdir()
    return public, raw, stamp

  verifier.allocate_outputs = allocate
  smoke = run / 'lean' / 'EnvironmentSmoke.lean'
  smoke.parent.mkdir(parents=True, exist_ok=True)
  smoke_text = 'import Mathlib.Data.Nat.Prime.Basic\n\n#check Nat.Prime\n#print axioms Nat.prime_two\n'
  if smoke.exists() and smoke.read_text() != smoke_text:
    raise RuntimeError('Existing smoke source differs; preserve and inspect it')
  if not smoke.exists():
    smoke.write_text(smoke_text)
  base = ['--lean', lean, '--package-root', str(repo / '.lake/packages'),
          '--project-root', str(repo), '--memory-mb', str(args.memory_mb),
          '--timeout', str(args.command_timeout)]
  status = verifier.main([*base, '--root', str(smoke.relative_to(repo))])
  if status:
    return status
  roots = [arg for root in frozen['root_sources'] for arg in ['--root', root]]
  return verifier.main([*base, *roots])


if __name__ == '__main__':
  raise SystemExit(main())
