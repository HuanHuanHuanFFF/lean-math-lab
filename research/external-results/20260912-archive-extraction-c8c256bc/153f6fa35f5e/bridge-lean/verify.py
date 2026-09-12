#!/usr/bin/env python3
"""Small independent compile; all existing project/dependency inputs remain read-only."""
from pathlib import Path
from datetime import datetime, timezone
import os, json, subprocess, hashlib, re, sys

root = Path(__file__).resolve().parent
reference = Path('/workspace/scratch/75a17f226d3b/lean-math-lab')
support = root.parent / 'b677/support'
compiler = Path('/root/.elan/toolchains/leanprover--lean4---v4.33.1/bin/lean')
run = root / 'verification' / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
run.mkdir(parents=True)
env = dict(os.environ, GIT_OPTIONAL_LOCKS='0', LD_PRELOAD=str(support / 'proc-self.so'))
paths, pins = [], []
for p in json.loads((support / 'lake-manifest.json').read_text())['packages']:
    folder = reference / '.lake/packages' / p['name']
    rev = subprocess.check_output(['git', '-C', str(folder), 'rev-parse', 'HEAD'], env=env, text=True).strip()
    assert rev == p['rev'], p['name']
    status = subprocess.check_output(['git', '-C', str(folder), 'status', '--porcelain', '--untracked-files=no'], env=env, text=True)
    assert not status, p['name']
    pins.append({'name':p['name'], 'rev':rev, 'tracked_clean':True})
    folder = folder / '.lake/build/lib/lean'
    if folder.is_dir(): paths.append(str(folder))
env['LEAN_PATH'] = ':'.join(paths)
version = subprocess.check_output([str(compiler), '--version'], env=env, text=True).strip()
assert '4.33.1' in version
command = [str(compiler), '-o', str(run / 'DivisorTransfer.olean'), 'DivisorTransfer.lean']
r = subprocess.run(command, cwd=root, env=env, capture_output=True, text=True)
log = r.stdout + r.stderr
(run / 'compile.log').write_text(log)
axioms = {}
for name in ['divisor_transfer','prime_part_dvd','prime_part_coprime_of_no_common','actual_prime_part_transfer']:
    match = re.search(r"'B699BridgeAudit\." + name + r"' depends on axioms: \[(.*?)\]", log)
    if match:
        axioms[name] = [x.strip() for x in match.group(1).split(',') if x.strip()]
success = r.returncode == 0 and len(axioms) == 4 and all(set(a) <= {'propext','Classical.choice','Quot.sound'} for a in axioms.values())
evidence = {'success':success,'version':version,'command':command,'exit_code':r.returncode,'axioms':axioms,
            'source_sha256':hashlib.sha256((root/'DivisorTransfer.lean').read_bytes()).hexdigest(),
            'pins':pins,'dependencies':'read-only fixed package caches; no project olean imports',
            'second_independent_kernel':False}
(run / 'evidence.json').write_text(json.dumps(evidence, indent=2)+'\n')
print(log)
print(run / 'evidence.json')
sys.exit(0 if success else 1)
