#!/usr/bin/env python3
"""Regenerate standalone audits, or --check without writing any files."""
from pathlib import Path
import argparse, json


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    root = Path(__file__).resolve().parent.parent
    main_bytes = (root / 'NonprimeCertificates.lean').read_bytes()
    alternative = (root / 'comparison/DivisorCertificates.lean').read_bytes()
    import_line = b'import Mathlib.Data.Nat.Prime.Basic\n'
    if not alternative.startswith(import_line):
        raise ValueError('Unexpected alternative import: refusing to guess concatenation')
    outputs = {
        'AuditNonprimeCertificates.lean': main_bytes + (root/'audit/ProductionCommands.lean.inc').read_bytes(),
        'AuditComparison.lean': main_bytes + b'\n' + alternative[len(import_line):] +
            (root/'audit/ComparisonCommands.lean.inc').read_bytes(),
    }
    for name, data in outputs.items():
        if args.check:
            if (root/name).read_bytes() != data:
                raise ValueError(f'Audit drift detected: {name}')
        else:
            (root/name).write_bytes(data)
    print(json.dumps({'mode': 'check' if args.check else 'write',
                      'audit_files': list(outputs), 'byte_prefixes_match': True}))
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
