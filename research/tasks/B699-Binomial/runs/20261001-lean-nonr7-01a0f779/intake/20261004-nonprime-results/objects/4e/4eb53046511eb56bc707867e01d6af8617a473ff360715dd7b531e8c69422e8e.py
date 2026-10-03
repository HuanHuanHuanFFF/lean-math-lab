#!/usr/bin/env python3
"""Check delivery bytes and the five integer factorizations. This is NOT Lean validation."""
from __future__ import annotations
import hashlib
import json
from pathlib import Path
import re
from datetime import datetime, timezone

ROOT = Path(__file__).resolve().parent.parent
EXPECTED = {4884: (2, 2442), 4885: (5, 977), 4886: (2, 2443),
            4887: (3, 1629), 4888: (2, 2444)}


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def main() -> None:
    source = (ROOT / 'NonprimeCertificates.lean').read_text()
    require(source.splitlines()[0] == 'import Mathlib.Data.Nat.Prime.Basic', 'Unexpected import')
    require(source.count('\nimport ') == 0, 'More than one import')
    pattern = (r'theorem not_prime_(\d+) : ¬ Nat\.Prime (\d+) :=\n'
               r'  Nat\.not_prime_of_mul_eq \(a := (\d+)\) \(b := (\d+)\) rfl\n'
               r'    \(Nat\.succ_succ_ne_one (\d+)\) \(Nat\.succ_succ_ne_one (\d+)\)')
    matches = re.findall(pattern, source)
    require(len(matches) == 5, 'Expected exactly five explicit certificate declarations')
    require(source.count('theorem ') == 5, 'Unexpected extra theorem declaration')
    checks = []
    seen = set()
    for item in matches:
        name_n, target_n, a, b, ka, kb = map(int, item)
        require(name_n == target_n and target_n in EXPECTED, 'Name/type mismatch')
        require(target_n not in seen, 'Duplicate declaration')
        seen.add(target_n)
        require((a, b) == EXPECTED[target_n], 'Wrong supplied factors')
        require(a * b == target_n, 'Incorrect factor equality')
        require(a == ka + 2 and b == kb + 2, 'Incorrect successor witnesses')
        require(a != 1 and b != 1, 'Trivial factor')
        checks.append({'declared_name': f'B699NonprimeCertificates.not_prime_{target_n}',
                       'declared_type': f'¬ Nat.Prime {target_n}',
                       'a': a, 'b': b, 'ka': ka, 'kb': kb,
                       'integer_factor_equality': True, 'successor_witness_values': True})
    require(seen == set(EXPECTED), 'Incomplete target set')
    forbidden = r'\b(?:sorry|admit|axiom|unsafe|native_decide|decide|norm_num)\b|ofReduceBool|maxRecDepth'
    require(re.search(forbidden, source) is None, 'Unexpected token in minimal source')
    audit = (ROOT / 'AuditNonprimeCertificates.lean').read_bytes()
    tail = (ROOT / 'audit/AuditCommands.lean.inc').read_bytes()
    require(audit == (ROOT / 'NonprimeCertificates.lean').read_bytes() + tail,
            'Audit harness is not exact source followed by commands')
    original = (ROOT / 'input/source/CompositeTransferLegacy.lean').read_bytes()
    old = original.decode('utf-8')
    candidate = (ROOT / 'integration/CompositeTransferLegacy.candidate.lean').read_text()
    expected = old.replace('\n\n/-! Transfers', '\nimport NonprimeCertificates\n\n/-! Transfers', 1)
    for n in range(4884, 4888):
        expected = expected.replace(
            f'  exact common_succ_of_nonprime (i := {n}) (by decide) (by decide)',
            f'  exact common_succ_of_nonprime (i := {n})\n'
            f'    B699NonprimeCertificates.not_prime_{n}\n'
            f'    B699NonprimeCertificates.not_prime_{n+1}', 1)
    require(candidate == expected, 'Consumer candidate contains an unexpected change')
    core_start = 'theorem common_succ_of_nonprime'
    core_end = '\ntheorem complete_4885 '
    def core(text: str) -> str:
        return text.split(core_start, 1)[1].split(core_end, 1)[0]
    require(core(old).encode() == core(candidate).encode(), 'Generic core body changed')
    require(old.count('(by decide)') - candidate.count('(by decide)') == 8,
            'Unexpected number of replaced decide calls')
    checksum_rows = []
    for line in (ROOT / 'input/SHA256SUMS.txt').read_text().splitlines():
        digest, filename = line.split(maxsplit=1)
        filename = filename.lstrip('*')
        actual = sha(ROOT / 'input' / filename)
        require(actual == digest, f'Input checksum mismatch: {filename}')
        checksum_rows.append({'path': filename, 'sha256': actual})
    print(json.dumps({
        'utc': datetime.now(timezone.utc).isoformat(),
        'status': 'PASS: byte/source-shape/integer checks ONLY; NOT a Lean compile or kernel check',
        'source_sha256': sha(ROOT / 'NonprimeCertificates.lean'),
        'source_bytes': len((ROOT / 'NonprimeCertificates.lean').read_bytes()),
        'source_lines': len(source.splitlines()),
        'original_consumer_sha256': hashlib.sha256(original).hexdigest(),
        'certificates': checks,
        'minimal_source_has_no_forbidden_tokens': True,
        'generic_core_body_byte_equal': True,
        'only_consumer_changes': 'One import plus the eight nonprime arguments in four calls',
        'input_checksum_entries_verified': checksum_rows,
        'lean_elaboration_run': False,
        'axiom_dependency_closure_checked': False,
        'project_checker_run': False,
    }, ensure_ascii=False, indent=2))


if __name__ == '__main__':
    main()
