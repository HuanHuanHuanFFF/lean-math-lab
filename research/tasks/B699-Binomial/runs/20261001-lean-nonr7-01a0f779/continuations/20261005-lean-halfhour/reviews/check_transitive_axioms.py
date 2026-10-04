"""Reject incomplete/extra transitive axiom outputs from actual Lean stdout.

Usage: python check_transitive_axioms.py SOURCE STDOUT OUTPUT_JSON
This checks raw AX output only; it is not compilation or full provenance acceptance.
"""
import hashlib
import json
import re
import sys
from pathlib import Path

ALLOWED = {'propext', 'Classical.choice', 'Quot.sound'}


def check(source: bytes, stdout: bytes) -> dict:
    roots = re.findall(r'^#print axioms (\S+)\s*$', source.decode('utf-8-sig'), re.M)
    if not roots or len(roots) != len(set(roots)):
        raise ValueError('Missing or duplicate expected AX roots')
    actual = {}
    for match in re.finditer(
            r"'([^']+)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)",
            stdout.decode('utf-8-sig'), re.S):
        axes = [v.strip() for v in (match[2] or '').split(',') if v.strip()]
        if match[1] in actual or len(axes) != len(set(axes)):
            raise ValueError('Duplicate actual AX output')
        if not set(axes) <= ALLOWED:
            raise ValueError('Forbidden transitive axiom: ' + match[1])
        actual[match[1]] = axes
    if set(actual) != set(roots):
        raise ValueError('Actual AX root inventory differs from source')
    return {'status': 'accepted-standard-axioms', 'roots': roots,
            'actualAxioms': actual,
            'sourceSha256': hashlib.sha256(source).hexdigest(),
            'stdoutSha256': hashlib.sha256(stdout).hexdigest()}


if __name__ == '__main__':
    if len(sys.argv) != 4:
        raise SystemExit(__doc__)
    result = check(Path(sys.argv[1]).read_bytes(), Path(sys.argv[2]).read_bytes())
    Path(sys.argv[3]).write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n',
                                encoding='utf-8')
    print('AX gate passed: ' + str(len(result['roots'])) + ' exact roots')
