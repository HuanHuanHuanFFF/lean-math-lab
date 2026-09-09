#!/usr/bin/env python3
"""Single-process development compile; final acceptance MUST use verify.py.

Only this run's new object root is reused, keyed by source and project-import
hashes. Fixed package objects are permitted. Every attempt has a new log root.
"""
import argparse
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import subprocess
import sys
from datetime import datetime, timezone

sys.path.insert(0, str(Path(__file__).resolve().parent))
import guarded_axioms

HERE = Path(__file__).resolve()
RUN = HERE.parent.parent
REPO = HERE.parents[6]
FROZEN = REPO / 'research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/verification/verify.py'


def digest(data):
    return hashlib.sha256(data).hexdigest()


def _guarded_companion(
    *,
    ref,
    record,
    v,
    repo,
    env,
    evidence,
    raw_root,
    stamp,
    commands,
    diagnostics,
):
    """Run the fixed legacy supplement after its object exists.

    Development reuse still runs this check: an object reuse entry contains no
    old stdout, so the companion is the only actual observation for this
    module in the current evidence.
    """

    if not guarded_axioms.is_supported_source(ref.path, repo):
        return None
    if record.get("exit_code") != 0 or not record.get("output_exists", False):
        return None
    companion = guarded_axioms.run_guarded_companion(
        repo=repo,
        source=ref.path,
        lean="lean",
        package_root=repo / ".lake" / "packages",
        env=env,
        public_root=evidence,
        raw_root=raw_root,
        memory_mb=4096,
        timeout_seconds=180,
        audit_axioms=v.audit_axioms,
        label=f"guarded-{record.get('module', ref.module)}-{stamp}",
        compile_prefix=["bash", str(repo / "scripts" / "lean-work.sh"), "lean"],
        compile_flags=["--threads=1", "-M4096"],
        public_prefix=["bash", "SCRIPTS_LEAN_WORK", "lean"],
        public_flags=["--threads=1", "-M4096"],
        command_records=commands,
        diagnostic_records=diagnostics,
        sanitize_output=lambda text: text.replace(str(repo), "PROJECT_ROOT"),
    )
    record["guarded_axiom_source_audit"] = record.get("axiom_audit")
    record["guarded_axiom_companion"] = companion
    if companion.get("success"):
        old_audit = record.get("axiom_audit")
        old_error = old_audit.get("error") if isinstance(old_audit, dict) else None
        # The frozen source audit may reject only because these four prints are
        # guarded.  A different source/audit failure must remain a failure.
        mismatch_only = old_error is None or str(old_error).startswith(
            "#print axioms output count mismatch:"
        )
        if mismatch_only:
            record["axiom_audit"] = companion["axiom_audit"]
            if record.get("failure") == old_error:
                record["failure"] = None
    elif record.get("failure") is None:
        record["failure"] = "guarded axiom companion failed: " + str(
            companion.get("failure") or "unknown failure"
        )
    return companion


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', action='append', required=True)
    parser.add_argument('--timeout', type=int, default=180)
    args = parser.parse_args()
    spec = importlib.util.spec_from_file_location('b699_height_dev_frozen', FROZEN)
    v = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = v
    spec.loader.exec_module(v)
    manifest = v.load_manifest(REPO)
    roots = [(REPO / r).resolve() for r in args.root]
    closure, imports = v.build_closure(roots, repo=REPO,
        index=v.build_source_index(REPO), package_prefixes=v.package_prefixes(manifest))
    own = REPO / '.tools/b699-height-dev-9d40056a'
    objects = own / 'olean'
    objects.mkdir(parents=True, exist_ok=True)
    statefile = own / 'state.json'
    state = json.loads(statefile.read_text()) if statefile.exists() else {}
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    evidence = RUN / 'verification' / ('dev-' + stamp)
    evidence.mkdir()
    env = dict(os.environ)
    caches = [REPO / '.lake/packages' / x['name'] / '.lake/build/lib/lean'
              for x in manifest['packages']]
    env['LEAN_PATH'] = os.pathsep.join(map(str, [objects, *caches]))
    report = {'mode':'development, not fresh acceptance','stamp':stamp,
              'roots':args.root,'object_root':str(objects.relative_to(REPO)),
              'manifest_sha256':digest((REPO/'lake-manifest.json').read_bytes()),
              'records':[], 'axiom_audit':[], 'guarded_axiom_companions':[],
              'commands':[], 'diagnostic_commands':[], 'success':False}
    guarded_raw_root = own / 'guarded-axioms' / stamp
    hashes = {}
    try:
        for ref in closure:
            source = ref.path.read_bytes()
            violations = v.source_policy(ref.path, REPO)
            if violations: raise RuntimeError('\n'.join(violations))
            key = digest(source + json.dumps([hashes.get(x, 'pinned-package:' + x)
                for x in imports[ref.path]]).encode())
            hashes[ref.module] = key
            output = objects.joinpath(*ref.module.split('.')).with_suffix('.olean')
            if state.get(ref.module) == key and output.exists():
                record = {
                    'module': ref.module,
                    'source': str(ref.path.relative_to(REPO)),
                    'source_sha256_before': digest(source),
                    'source_sha256_after': digest(source),
                    'output': str(output.relative_to(REPO)),
                    'output_exists': True,
                    'exit_code': 0,
                    'timed_out': False,
                    'reused_this_run_dev_object': True,
                    'key': key,
                    'axiom_audit': None,
                    'failure': None,
                }
                report['records'].append(record)
                companion = _guarded_companion(
                    ref=ref, record=record, v=v, repo=REPO, env=env,
                    evidence=evidence, raw_root=guarded_raw_root, stamp=stamp,
                    commands=report['commands'], diagnostics=report['diagnostic_commands'],
                )
                if companion is not None:
                    report['guarded_axiom_companions'].append(companion)
                    report['axiom_audit'].append({
                        'source': record['source'], 'module': record['module'],
                        **record['axiom_audit'],
                    })
                    if record['failure']:
                        raise RuntimeError(
                            f'guarded axiom companion failed in {ref.module}: '
                            + str(record['failure'])
                        )
                continue
            output.parent.mkdir(parents=True, exist_ok=True)
            if output.exists(): output.unlink()
            cmd = ['bash', str(REPO/'scripts/lean-work.sh'), 'lean', '--threads=1',
                   '-M4096', '--root='+str(REPO), '-o', str(output), str(ref.path)]
            label = f'{len(report["records"]):03d}-' + ref.path.stem
            log = evidence / (label+'.log')
            print('COMPILE', ref.path.relative_to(REPO), flush=True)
            try:
                p = subprocess.run(cmd, cwd=REPO, env=env, text=True,
                    stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=args.timeout)
                code, text = p.returncode, p.stdout
            except subprocess.TimeoutExpired as e:
                code = 124
                text = (e.stdout or b'').decode(errors='replace') if isinstance(e.stdout,bytes) else (e.stdout or '')
                text += '\nTIMEOUT\n'
            log.write_text(text)
            audit = v.audit_axioms(ref.path, text)
            record={'module':ref.module,'source':str(ref.path.relative_to(REPO)),
                    'source_sha256':digest(source),'command':cmd,'exit_code':code,
                    'output':str(output.relative_to(REPO)),
                    'output_exists':output.is_file(),
                    'timed_out':code == 124,
                    'log':log.name,'axiom_audit':audit}
            failures = []
            if code:
                failures.append(f'Lean exit {code}')
            if not output.is_file() and code == 0:
                failures.append('Lean returned success without producing an olean')
            if audit.get('error'):
                failures.append(str(audit['error']))
            record['failure'] = '; '.join(failures) if failures else None
            report['records'].append(record)
            print(text, end='', flush=True)
            if code or audit.get('error') or ref.path.read_bytes()!=source:
                # The fixed legacy module is allowed one narrowly-scoped
                # supplementary audit before this ordinary rejection is made.
                companion = _guarded_companion(
                    ref=ref, record=record, v=v, repo=REPO, env=env,
                    evidence=evidence, raw_root=guarded_raw_root, stamp=stamp,
                    commands=report['commands'], diagnostics=report['diagnostic_commands'],
                )
                if companion is not None:
                    report['guarded_axiom_companions'].append(companion)
                    if record.get('axiom_audit'):
                        report['axiom_audit'].append({
                            'source': record['source'], 'module': record['module'],
                            **record['axiom_audit'],
                        })
                    if not record.get('failure'):
                        state[ref.module] = key
                        statefile.write_text(json.dumps(state,indent=2)+'\n')
                        continue
                (evidence/(label+'.failed-source.lean.txt')).write_bytes(source)
                state.pop(ref.module,None)
                if output.exists(): output.unlink()
                raise RuntimeError(f'compile/audit/source-stability failure in {ref.module}')
            companion = _guarded_companion(
                ref=ref, record=record, v=v, repo=REPO, env=env,
                evidence=evidence, raw_root=guarded_raw_root, stamp=stamp,
                commands=report['commands'], diagnostics=report['diagnostic_commands'],
            )
            if companion is not None:
                report['guarded_axiom_companions'].append(companion)
                report['axiom_audit'].append({
                    'source': record['source'], 'module': record['module'],
                    **record['axiom_audit'],
                })
                if record.get('failure'):
                    raise RuntimeError(
                        f'guarded axiom companion failed in {ref.module}: '
                        + str(record['failure'])
                    )
            state[ref.module] = key
            statefile.write_text(json.dumps(state,indent=2)+'\n')
        report['success']=True
    except Exception as e:
        report['failure']=str(e)
        print('DEVELOPMENT FAILURE:',e,flush=True)
    finally:
        statefile.write_text(json.dumps(state,indent=2)+'\n')
        (evidence/'evidence.json').write_text(json.dumps(report,indent=2)+'\n')
        print('EVIDENCE', evidence.relative_to(REPO), flush=True)
    return 0 if report['success'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
