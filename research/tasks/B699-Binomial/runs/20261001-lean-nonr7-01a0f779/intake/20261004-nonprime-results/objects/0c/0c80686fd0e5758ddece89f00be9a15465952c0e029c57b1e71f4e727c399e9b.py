#!/usr/bin/env python3
"""Byte/integer/text checks ONLY. Does not parse, elaborate or check Lean proofs."""
from __future__ import annotations
import difflib
import hashlib
import json
from pathlib import Path
import re
from zipfile import ZipFile

ROOT = Path(__file__).resolve().parents[1]
ARCHIVE = ROOT / 'input/B699-nonprime-4884-4888-6pro-20261003.zip'
FACTORS = [(4884, 2, 2442), (4885, 5, 977), (4886, 2, 2443),
           (4887, 3, 1629), (4888, 2, 2444)]


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def main() -> None:
    with ZipFile(ARCHIVE) as z:
        require(z.testzip() is None, 'ZIP CRC failure')
        hashes = []
        for entry in z.read('SHA256SUMS.txt').decode().splitlines():
            expected, name = entry.split(maxsplit=1)
            name = name.lstrip('*')
            actual = digest(z.read(name))
            require(actual == expected, f'Input checksum mismatch: {name}')
            hashes.append({'member': name, 'sha256': actual})
        original_bytes = z.read('source/CompositeTransferLegacy.lean')
        original = original_bytes.decode()
        require(digest(original_bytes) == '31ca5aaa79f1286caef8794e33cdf09da6528ff4b756aec9a2aeefc06175e747', 'Wrong original consumer')
        basic = z.read('reference/Prime-Basic.lean').decode()
        signature = 'theorem not_prime_of_mul_eq {a b n : ℕ} (h : a * b = n) (h₁ : a ≠ 1) (h₂ : b ≠ 1) : ¬Prime n :='
        require(signature in basic, 'Expected theorem signature absent from supplied snapshot')
        toolchain = z.read('environment/lean-toolchain').decode().strip()
        manifest = json.loads(z.read('environment/lake-manifest.json'))
        mathlib = next(x for x in manifest['packages'] if x['name'] == 'mathlib')
        require(toolchain == 'leanprover/lean4:v4.33.1', 'Unexpected requested toolchain')
        require(mathlib['rev'] == '0df444a360eaa60ab8c11dca51a86af692955474', 'Unexpected requested mathlib')
    src = (ROOT / 'NonprimeCertificates.lean').read_text()
    require(re.findall(r'^import (.+)$', src, re.M) == ['Mathlib.Data.Nat.Prime.Basic'], 'Unexpected imports')
    require(len(re.findall(r'^theorem ', src, re.M)) == 5, 'Expected five theorems')
    require(re.search(r'\b(sorry|admit|axiom|native_decide|unsafe|maxRecDepth|maxHeartbeats)\b', src) is None, 'Forbidden source token')
    require(src.count('(by decide)') == 10, 'Unexpected decide count')
    factor_checks = []
    for n, a, b in FACTORS:
        definition = (f'theorem not_prime_{n} : ¬ Nat.Prime {n} :=\n'
                      f'  Nat.not_prime_of_mul_eq (a := {a}) (b := {b}) rfl (by decide) (by decide)')
        require(src.count(definition) == 1, f'Missing exact closed declaration {n}')
        require(a * b == n and a != 1 and b != 1, f'Invalid factor certificate {n}')
        factor_checks.append({'n': n, 'a': a, 'b': b, 'product': a*b, 'a_ne_one': a!=1, 'b_ne_one': b!=1})
    lines = original.splitlines(keepends=True)
    lines.insert(1, 'import NonprimeCertificates\n')
    expected = ''.join(lines)
    calls = []
    for i in range(4884, 4888):
        before = f'  exact common_succ_of_nonprime (i := {i}) (by decide) (by decide)'
        after = f'  exact common_succ_of_nonprime (i := {i}) not_prime_{i} not_prime_{i+1}'
        require(expected.count(before) == 1, 'Original call is not unique')
        original_line = original.splitlines().index(before) + 1
        expected = expected.replace(before, after)
        calls.append({'original_line': original_line, 'i': i, 'hi': f'not_prime_{i}', 'his': f'not_prime_{i+1}'})
    candidate = (ROOT / 'integration/CompositeTransferLegacy.candidate.lean').read_text()
    require(candidate == expected, 'Unexpected changes to large consumer copy')
    generic = lambda s: s[s.index('theorem common_succ_of_nonprime'):s.index('theorem complete_4885 ')]
    require(generic(original) == generic(candidate), 'Generic transfer changed')
    patch_expected = ''.join(difflib.unified_diff(original.splitlines(keepends=True), candidate.splitlines(keepends=True), fromfile='a/CompositeTransferLegacy.lean', tofile='b/CompositeTransferLegacy.lean'))
    require((ROOT / 'integration/CompositeTransferLegacy.patch').read_text() == patch_expected, 'Patch does not match candidate')
    audit = (ROOT / 'AuditNonprimeCertificates.lean').read_text()
    for n, _, _ in FACTORS:
        require(audit.count(f'#print axioms B699CompositeTransfer20261003.not_prime_{n}') == 1, 'Audit omission')
    result = {
        'status': 'static_checks_passed_NOT_Lean_checked',
        'scope': 'Python integer arithmetic and byte/text comparisons only; no Lean parser, elaborator, kernel, or checker ran.',
        'input_archive_sha256': digest(ARCHIVE.read_bytes()),
        'input_member_hashes_verified': hashes,
        'source_sha256': digest((ROOT / 'NonprimeCertificates.lean').read_bytes()),
        'requested_toolchain': toolchain, 'requested_mathlib_commit': mathlib['rev'],
        'supplied_lemma_signature_matches': True,
        'five_closed_declarations_match_text': True,
        'factor_checks': factor_checks, 'call_replacements': calls,
        'generic_transfer_unchanged_textually': True,
        'candidate_equals_only_import_plus_four_replacements': True,
        'patch_matches_candidate': True,
        'forbidden_source_token_scan_clean': True,
        'actual_print_axioms_results': None,
        'Lean_compilation': 'not_performed_by_this_script',
        'kernel_checker': 'not_performed_by_this_script'
    }
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == '__main__':
    main()
