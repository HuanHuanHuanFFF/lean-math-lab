"""Reconstruct the official patched source tree without committing project changes."""
from pathlib import Path
import datetime, hashlib, json, os, shutil, subprocess
ROOT = Path(__file__).resolve().parents[2]
RECORD = Path(__file__).resolve().parent
SRC = ROOT / '.tools/platform/formal-conjectures'
TASKS = ROOT / '.tools/platform/conjectures-tasks'
def git(directory, *args, data=None):
    p = subprocess.run(['git','-c','core.autocrlf=false','-C',str(directory),*args], input=data, capture_output=True)
    if p.returncode:
        raise RuntimeError(p.stderr.decode(errors='replace'))
    return p.stdout.decode().strip()
pins = json.loads((RECORD/'pins.lock.json').read_text())
assert git(TASKS,'rev-parse','HEAD') == pins['tasks']['commit']
source_head_before = git(SRC,'rev-parse','HEAD')
assert source_head_before in (pins['formal_conjectures']['base_commit'], pins['formal_conjectures']['commit'])
patch = RECORD/'formal-conjectures-audit-fixes.patch'
assert hashlib.sha256(patch.read_bytes()).hexdigest() == pins['formal_conjectures']['patch_sha256']
# Reruns accept only the same applied patch, without resetting or discarding anything.
if source_head_before == pins['formal_conjectures']['base_commit']:
    if not git(SRC,'status','--porcelain'):
        git(SRC,'apply','--check',str(patch))
        git(SRC,'apply',str(patch))
    git(SRC,'diff','--check')
    git(SRC,'add','--all')
    tree = git(SRC,'write-tree')
else:
    assert not git(SRC,'status','--porcelain'), 'Pinned dependency contains edits; inspect manually.'
    tree = git(SRC,'rev-parse','HEAD^{tree}')
epoch = int(datetime.datetime(2026,8,3,tzinfo=datetime.timezone.utc).timestamp())
identity = f'Conjectures Pool Builder <pool@conjectures.io> {epoch} +0000'
body = f'tree {tree}\nparent {pins["formal_conjectures"]["base_commit"]}\nauthor {identity}\ncommitter {identity}\n\nfix(ErdosProblems): correct audited candidate statements\n'.encode()
derived = hashlib.sha1(f'commit {len(body)}\0'.encode()+body).hexdigest()
assert derived == pins['formal_conjectures']['commit'], (derived,pins['formal_conjectures']['commit'])
# Recreate the official dependency object, not a new research contribution.
written = git(SRC,'hash-object','-t','commit','-w','--stdin',data=body)
assert written == derived
git(SRC,'checkout','--detach',derived)
assert not git(SRC,'status','--porcelain')
bundles = []
for number in (677,699):
    for mode in ('formalized','counterexample'):
        name = f'erdos-{number}-{mode}'
        bundle = TASKS/'pool/tier-1'/name
        manifest = json.loads((bundle/'manifest.json').read_text())
        for file, expected in manifest['trusted_file_hashes'].items():
            assert 'sha256:'+hashlib.sha256((bundle/file).read_bytes()).hexdigest() == expected, (name,file)
        assert manifest['repository_commit'] == derived
        dest=RECORD/'bundles'/name
        dest.mkdir(parents=True, exist_ok=True)
        for file in bundle.iterdir():
            if file.is_file(): shutil.copyfile(file,dest/file.name)
        bundles.append({k:manifest[k] for k in ('task_id','source_type_hash','generated_target_type_hash','permitted_axioms','forbidden_dependencies')})
report = {'checked_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(), 'source_base_commit':pins['formal_conjectures']['base_commit'], 'source_head':git(SRC,'rev-parse','HEAD'), 'source_tree':tree, 'derived_commit_sha1':derived, 'expected_commit':pins['formal_conjectures']['commit'], 'official_dependency_commit_recreated':True, 'research_contribution_commit_created':False, 'tasks_commit':git(TASKS,'rev-parse','HEAD'), 'patch_sha256':hashlib.sha256(patch.read_bytes()).hexdigest(), 'bundles':bundles, 'scope':'Source tree, canonical synthetic commit hash and four bundle file hashes checked. No Lean solution or production validator acceptance claimed.'}
(RECORD/'source-reconstruction.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf8')
print(json.dumps(report,indent=2))
