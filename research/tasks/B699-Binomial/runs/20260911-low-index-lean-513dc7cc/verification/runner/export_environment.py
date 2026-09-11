#!/usr/bin/env python3
"""Export fixed Lean, shallow dependency sources, caches and this source snapshot.

Only task-specific checkouts and toolchain directories enter the archive. No
global settings, credentials, home directories or unrelated workspaces enter it.
Archives stream into 256 MiB files for the supported artifact transfer channel.
"""
from __future__ import annotations

import hashlib
import json
import os
import shutil
import subprocess
from datetime import datetime, timezone
from pathlib import Path


def run(args: list[str], cwd: Path | None = None) -> str:
  return subprocess.check_output(args, cwd=cwd, text=True).strip()


def link_or_copy(src: str, dst: str) -> str:
  try:
    os.link(src, dst)
  except OSError:
    shutil.copy2(src, dst)
  return dst


def main() -> None:
  repo = Path.cwd().resolve()
  task_run = Path(os.environ['B699_RUN'])
  output = repo / '.tools' / 'b699-environment-transfer'
  stage = repo / '.tools' / 'b699-environment-stage'
  output.mkdir(parents=True, exist_ok=False)
  stage.mkdir(parents=True, exist_ok=False)
  for name in ['memory.max', 'memory.current', 'cpu.max']:
    path = Path('/sys/fs/cgroup') / name
    print(name, path.read_text().strip() if path.exists() else 'unavailable', flush=True)
  print('disk_before', shutil.disk_usage(repo), flush=True)
  lean = Path(run(['elan', 'which', 'lean'], repo))
  toolchain = lean.parent.parent
  observed = run([str(lean), '--version'])
  if '4.33.1' not in observed or '819816b2e0a3bf405af45ae5c7af2491d8f5bee6' not in observed:
    raise RuntimeError('Unexpected toolchain: ' + observed)
  (stage / 'toolchain').symlink_to(toolchain, target_is_directory=True)
  packages = json.loads((repo / 'lake-manifest.json').read_text())['packages']
  for package in packages:
    name, rev = package['name'], package['rev']
    source = repo / '.lake/packages' / name
    if run(['git', 'rev-parse', 'HEAD'], source) != rev:
      raise RuntimeError('Dependency pin mismatch: ' + name)
    target = stage / 'packages' / name
    target.mkdir(parents=True)
    run(['git', 'init', '--quiet'], target)
    run(['git', 'remote', 'add', 'origin', package['url']], target)
    # A local shallow transport preserves the real commit/tree while omitting
    # prior history. It never copies an existing checkout's Git configuration.
    run(['git', 'fetch', '--quiet', '--no-tags', '--depth=1',
         source.as_uri(), rev], target)
    run(['git', 'checkout', '--quiet', '--detach', 'FETCH_HEAD'], target)
    build = source / '.lake/build'
    if build.is_dir():
      shutil.copytree(build, target / '.lake/build', copy_function=link_or_copy,
                      symlinks=True)
    print('exported_package', name, rev, flush=True)
  target_repo = stage / 'repository'
  run(['git', 'clone', '--quiet', '--no-local', '--depth=1',
       '--no-checkout', str(repo), str(target_repo)])
  commit = run(['git', 'rev-parse', 'HEAD'], repo)
  run(['git', 'checkout', '--quiet', '--detach', commit], target_repo)
  run(['git', 'remote', 'set-url', 'origin',
       'https://github.com/HuanHuanHuanFFF/lean-math-lab.git'], target_repo)
  # Preserve newly produced evidence and its exact fresh objects, even after
  # a failed compile. Consumers must inspect evidence.success before reuse.
  raw = repo / '.tools' / task_run.name
  if raw.is_dir():
    shutil.copytree(raw, target_repo / '.tools' / task_run.name,
                    copy_function=link_or_copy)
  verification = repo / task_run / 'verification'
  for record in verification.glob('20*'):
    if record.is_dir():
      shutil.copytree(record, target_repo / task_run / 'verification' / record.name,
                      copy_function=link_or_copy)
  smoke = repo / task_run / 'lean/EnvironmentSmoke.lean'
  if smoke.is_file():
    destination = target_repo / task_run / 'lean/EnvironmentSmoke.lean'
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(smoke, destination)
  metadata = {'source_commit': commit, 'lean_version': observed,
              'toolchain_pin': (repo / 'lean-toolchain').read_text().strip(),
              'package_pins': [{'name': p['name'], 'rev': p['rev']} for p in packages],
              'created_utc': datetime.now(timezone.utc).isoformat(),
              'run_dir': str(task_run), 'part_size': 256 * 1024 * 1024}
  (stage / 'environment.json').write_text(json.dumps(metadata, indent=2) + '\n')
  tar = subprocess.Popen(['tar', '--dereference', '-cf', '-', '-C', str(stage),
                          'toolchain', 'packages', 'repository', 'environment.json'],
                         stdout=subprocess.PIPE)
  assert tar.stdout
  compressor = subprocess.Popen(['zstd', '-T1', '-3', '-q'],
                                stdin=tar.stdout, stdout=subprocess.PIPE)
  tar.stdout.close()
  assert compressor.stdout
  parts = []
  overall = hashlib.sha256()
  part_index = 0
  while True:
    data = compressor.stdout.read(1024 * 1024)
    if not data:
      break
    path = output / f'environment.tar.zst.part{part_index:03d}'
    size, digest = 0, hashlib.sha256()
    with path.open('wb') as stream:
      while data:
        stream.write(data)
        size += len(data)
        digest.update(data)
        overall.update(data)
        if size == metadata['part_size']:
          break
        data = compressor.stdout.read(min(1024 * 1024, metadata['part_size'] - size))
    parts.append({'file': path.name, 'size': size, 'sha256': digest.hexdigest()})
    print('part_ready', parts[-1], flush=True)
    part_index += 1
  if compressor.wait() != 0 or tar.wait() != 0:
    raise RuntimeError('Environment archive process failed')
  if len(parts) > 12:
    raise RuntimeError('More than 12 parts; adjust upload entries using actual size')
  metadata.update(parts=parts, archive_sha256=overall.hexdigest())
  (output / 'manifest.json').write_text(json.dumps(metadata, indent=2) + '\n')
  print('export_complete', len(parts), 'parts', 'disk_after', shutil.disk_usage(repo), flush=True)


if __name__ == '__main__':
  main()
