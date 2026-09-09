#!/usr/bin/env python3
"""Check a finished finite build's immutable evidence without recompiling Lean.

This is an integrity audit of the kernel compilation records, not an alternative
checker for the mathematical certificate. In particular, Python never supplies
the truth value of the finite theorem.
"""
from datetime import datetime, timezone
import argparse
import importlib.util
import json
from pathlib import Path
import sys


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('evidence', type=Path)
    args = parser.parse_args()
    repo = next(p for p in Path(__file__).resolve().parents
                if (p / 'lake-manifest.json').is_file())
    helper_path = repo / 'scripts/verify-research-runs.py'
    spec = importlib.util.spec_from_file_location('finite_acceptance_helpers', helper_path)
    helpers = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = helpers
    spec.loader.exec_module(helpers)
    evidence = args.evidence.resolve()
    data = json.loads(evidence.read_text())
    if not data.get('success') or not data.get('finished_utc'):
        raise RuntimeError('The complete kernel build has not succeeded')
    if not data.get('fresh_project_objects'):
        raise RuntimeError('No fresh project allocation was recorded')
    closure = data['project_closure']
    accepted = data['accepted_chunks']
    if len(closure) != len(set(closure)) or set(closure) != set(accepted):
        raise RuntimeError('Accepted chunks do not exactly cover the project closure')
    attempt = data['attempts'][-1]
    if helpers.sha256(helper_path) != attempt['helper_sha256']:
        raise RuntimeError('The build helper changed after the recorded attempt')
    verifier = Path(__file__).with_name('verify_finite.py')
    if helpers.sha256(verifier) != attempt['verifier_sha256']:
        raise RuntimeError('The recoverable verifier changed after the recorded attempt')
    before, after = attempt['source_sha256_before'], attempt['source_sha256_after']
    if before != after or set(before) != set(closure):
        raise RuntimeError('The final attempt does not freeze the exact source closure')
    objects = Path(data['objects'])
    modules, direct_external = {}, set()
    for relative in closure:
        source, rec = repo / relative, accepted[relative]
        obj, log = repo / rec['object'], repo / rec['log']
        expected_object = objects / Path(relative).with_suffix('.olean')
        if obj != expected_object or obj.is_symlink():
            raise RuntimeError('Project object is not owned by the fresh allocation: ' + relative)
        if rec['exit_code'] != 0 or rec['source_sha256'] != rec['source_sha256_after']:
            raise RuntimeError('An accepted compiler record is not successful: ' + relative)
        if helpers.sha256(source) != before[relative] or before[relative] != rec['source_sha256']:
            raise RuntimeError('Source hash changed: ' + relative)
        if helpers.sha256(obj) != rec['object_sha256'] or helpers.sha256(log) != rec['log_sha256']:
            raise RuntimeError('Object or raw log hash changed: ' + relative)
        imports = helpers.imports_in(source)
        project_imports = {
            str(Path(*m.split('.')).with_suffix('.lean'))
            for m in imports if not helpers.is_package_import(m)
        }
        if set(rec['dependencies']) != project_imports:
            raise RuntimeError('Recorded imports differ from the source: ' + relative)
        if any(dep not in before or digest != before[dep]
               for dep, digest in rec['dependencies'].items()):
            raise RuntimeError('Dependency source hash differs: ' + relative)
        modules[relative] = {
            'source_sha256': before[relative], 'object_sha256': rec['object_sha256'],
            'log_sha256': rec['log_sha256'],
        }
        direct_external.update(m for m in imports if helpers.is_package_import(m))
    policy = attempt['source_policy']
    if policy['exit_code'] or policy['files'] != len(closure) or policy['violations']:
        raise RuntimeError('Source policy did not pass for this closure')
    if helpers.sha256(repo / policy['log']) != policy['log_sha256']:
        raise RuntimeError('Source-policy raw log changed')
    root = Path(data['root'])
    root_relative = str(root.relative_to(repo))
    audit = helpers.audit_root_source(root, 1,
        policy_mask=helpers.load_policy(repo)['mask_comments_and_strings'])
    if audit != attempt['root_audit'] or root_relative not in accepted:
        raise RuntimeError('The compiled root does not match its axiom audit')
    if audit['expected_axioms'] != [['propext', 'Classical.choice', 'Quot.sound']]:
        raise RuntimeError('Unexpected transitive axiom whitelist')
    manifest = helpers.load_manifest(repo)
    if helpers.sha256(repo / 'lake-manifest.json') != attempt['manifest_sha256']:
        raise RuntimeError('Pinned manifest changed')
    pins = helpers.package_pin_records(repo, manifest)
    if not all(p['matches_pin'] for p in pins):
        raise RuntimeError('A package checkout differs from its pin')
    if {p['name']: p['expected_head'] for p in pins} != {
            p['name']: p['expected_head'] for p in attempt['pins']}:
        raise RuntimeError('Package pins differ from the build')
    declared = (repo / 'lean-toolchain').read_text().strip()
    if declared != attempt['toolchain']['declared_toolchain']:
        raise RuntimeError('Lean toolchain declaration changed')
    for command in attempt['toolchain']['commands']:
        if command['exit_code'] or helpers.sha256(repo / command['log']) != command['log_sha256']:
            raise RuntimeError('Toolchain check or its raw log is invalid')
    toolchain_dir = declared.replace('/', '--').replace(':', '---')
    toolchain_library = repo / '.tools/elan/toolchains' / toolchain_dir / 'lib/lean'
    external_records = []
    for module in sorted(direct_external):
        relative = Path(*module.split('.')).with_suffix('.olean')
        obj = objects / relative
        if not obj.is_file():
            obj = toolchain_library / relative
        if not obj.is_file():
            raise RuntimeError('Direct external object missing: ' + module)
        external_records.append({'module': module, 'object': str(obj),
                                 'resolved_object': str(obj.resolve()),
                                 'object_sha256': helpers.sha256(obj)})
    result = {
        'success': True, 'checked_utc': datetime.now(timezone.utc).isoformat(),
        'evidence_sha256': helpers.sha256(evidence),
        'audit_script_sha256': helpers.sha256(Path(__file__)),
        'fresh_object_root': str(objects), 'project_count': len(closure),
        'root': root_relative, 'root_axiom_audit': audit,
        'current_pins': pins, 'modules': modules,
        'direct_external_imports': external_records,
        'scope': 'Integrity of the completed Lean kernel build; no Lean recompile or Python proof substitute',
    }
    target = evidence.parent / 'acceptance-check.json'
    temporary = target.with_suffix('.json.tmp')
    temporary.write_text(json.dumps(result, indent=2, ensure_ascii=False) + '\n')
    temporary.replace(target)
    print(json.dumps({'success': True, 'project_count': len(closure),
                      'direct_external_count': len(external_records),
                      'output': str(target)}, ensure_ascii=False))


if __name__ == '__main__':
    main()
