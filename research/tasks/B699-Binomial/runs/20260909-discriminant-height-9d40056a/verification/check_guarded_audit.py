#!/usr/bin/env python3
"""Bounded rejection checks for the added guard adapter; no Lean execution.

Synthetic messages test only the verifier, never the mathematical assertions.
The actual companion output is separately retained by fresh verification.
"""
import copy
import hashlib
import importlib.util
import json
from pathlib import Path
import sys
import tempfile
from datetime import datetime, timezone

HERE = Path(__file__).resolve()
REPO = HERE.parents[6]


def load(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


def main():
    helper = HERE.parent / 'guarded_axioms.py'
    frozen = REPO / 'research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/verification/verify.py'
    g = load('height_guard_checks_support', helper)
    v = load('height_guard_checks_frozen', frozen)
    checks = []

    def check(name, result):
        checks.append({'name': name, 'passed': bool(result)})
        if not result:
            raise AssertionError(name)

    with tempfile.TemporaryDirectory(prefix='height-guard-checks-', dir=REPO / '.tools') as tmp:
        scratch = Path(tmp)
        source = scratch / 'companion.lean'
        source.write_text(g.companion_source())
        lines = [f"'{n}' depends on axioms: [propext, Classical.choice, Quot.sound]"
                 for n in g.GUARDED_PRINT_NAMES]
        evaluate = lambda output: g.audit_companion(source, output, v.audit_axioms)
        check('four_allowed_actual_messages', not evaluate('\n'.join(lines)).get('error'))
        check('missing_all_messages_rejected', bool(evaluate('').get('error')))
        check('missing_one_message_rejected', bool(evaluate('\n'.join(lines[:3])).get('error')))
        check('extra_message_rejected', bool(evaluate('\n'.join(lines + lines[:1])).get('error')))
        bad = '\n'.join(lines).replace('Quot.sound', 'untrusted_project_axiom', 1)
        check('unexpected_axiom_rejected', bool(evaluate(bad).get('unexpected_axioms')))

        error = '#print axioms output count mismatch: source=4 actual=0'
        old = {'declared_print_axioms': 4, 'actual_printed': 0,
               'guard_msgs_in_source': 4, 'unexpected_axioms': [], 'error': error}
        check('exact_guarded_failure_supported', g.is_exact_guarded_source_audit(old, error))
        mixed = copy.deepcopy(old)
        mixed['unexpected_axioms'] = ['untrusted_project_axiom']
        check('mixed_mismatch_and_axiom_rejected', not g.is_exact_guarded_source_audit(mixed, error))
        check('unrelated_compile_failure_preserved', not g.is_exact_guarded_source_audit(old, error + '; compile timeout'))
        check('missing_error_is_not_repaired', not g.is_exact_guarded_source_audit(old, None))
        actual = REPO / g.GUARDED_SOURCE
        check('fixed_source_supported', g.is_supported_source(actual, REPO))
        alternate = scratch / g.GUARDED_SOURCE
        alternate.parent.mkdir(parents=True)
        alternate.write_bytes(actual.read_bytes() + b'\n-- changed bytes\n')
        check('changed_source_hash_rejected', not g.is_supported_source(alternate, scratch))
        source.write_bytes(actual.read_bytes())
        check('same_bytes_wrong_path_rejected', not g.is_supported_source(source, scratch))

    report = {'kind': 'synthetic verifier rejection checks, not Lean proof evidence',
              'utc': datetime.now(timezone.utc).isoformat(),
              'helper_sha256': hashlib.sha256(helper.read_bytes()).hexdigest(),
              'frozen_sha256': hashlib.sha256(frozen.read_bytes()).hexdigest(),
              'checks': checks, 'success': True}
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    output = HERE.parent / ('guard-checks-' + stamp + '.json')
    output.write_text(json.dumps(report, indent=2) + '\n')
    print(output.relative_to(REPO))
    print(f'{len(checks)} checks passed; no Lean process run')


if __name__ == '__main__':
    main()
