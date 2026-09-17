"""Read-only integrity checks; --record adds a timestamped administrative receipt.

This verifies bytes/provenance, not mathematical or Lean acceptance.
"""
from __future__ import annotations

import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> None:
    here = Path(__file__).resolve().parent
    run = here.parent.parent
    repo = run.parents[4]
    notes = run / 'notes' / 'nc3'
    canonical = (repo / 'research/tasks/B699-Binomial/runs/'
                 '20260912-leader-r7-joint-58-c8c256bc')
    frozen = {
        notes / 'PROOFS.md': 'adb2ed7ffe63850b8ea2ee89158563017fabfd9b0c2b7106b4651002c1f481bb',
        notes / 'BLOCK_EXTENSION.md': 'f7c221bb263cec2c356d174b58077b9ffe05d962dc62240a53cfa0b78aeae3a0',
        notes / 'FINITE_TEST_BARRIER.md': 'de5467e777289cc95165b5afdf55e2a11b4e9ef0487636b8f3f09f9560a1bd15',
        canonical / 'intake/20260915-daily-results/materials/B-prime-radix-two-digit-row/notes/PROOFS.md':
            'f0a9e8d3f8d404f49e3efa87cbbb1e0e23e247731d5054cd8c67d0431f28200c',
        canonical / 'intake/20260915-daily-results/materials/B-normalized-three-neighbor-and-square-rows/notes/PROOFS.md':
            '4b89f4b0d23e62b6d5524ca00545780dbd93a06c889531cfd6849c90850087c8',
        canonical / 'intake/20260915-daily-results/materials/B-periodic-block-and-double-run-closure/REPORT.md':
            '961e8ea77ece3f7b1f68c186e5a8770666732616b5ca0a1269a3b38b806b9b0b',
        canonical / 'deliveries/B-cubic/notes/PROOFS.md':
            '76decab2fc8a6267830aae84a46e3064efecea5cf71317a3e2a5da160691ddbe',
    }
    for path, expected in frozen.items():
        assert digest(path) == expected, f'frozen source changed: {path}'
    bindings = [
        ('check_repdigit.py', 'repdigit-check-20260915T170101Z.json', 'python_script_sha256'),
        ('check_blocks.py', 'block-check-20260915T170658Z.json', 'script_sha256'),
        ('check_finite_barrier.py', 'finite-barrier-20260915T171512Z.json', 'script_sha256'),
    ]
    for script, output, field in bindings:
        data = json.loads((here / output).read_text(encoding='utf-8'))
        assert data['status'] == 'PASS'
        assert data[field] == digest(here / script), f'experiment source changed: {script}'
    required = ['REPORT.md', 'HANDOFF.md', 'SOURCES.md', 'OVERLAP.md', 'ROUTES.md']
    assert all((notes / name).is_file() for name in required)
    artifacts = sorted(p for folder in (notes, here) for p in folder.iterdir()
                       if p.is_file() and not p.name.startswith('delivery-receipt-'))
    assert not any(p.suffix.lower() in ('.zip', '.lean', '.olean') for p in artifacts)
    result = {
        'status': 'PASS', 'utc': datetime.now(timezone.utc).isoformat(),
        'scope': 'administrative source bytes and experiment provenance, not mathematical acceptance',
        'frozen_sources_checked': len(frozen), 'experiment_source_bindings_checked': len(bindings),
        'artifacts': [{'path': p.relative_to(run).as_posix(), 'bytes': p.stat().st_size,
                       'sha256': digest(p)} for p in artifacts],
    }
    if '--record' in sys.argv:
        stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
        target = here / f'delivery-receipt-{stamp}.json'
        with target.open('x', encoding='utf-8', newline='\n') as stream:
            json.dump(result, stream, ensure_ascii=False, indent=2)
            stream.write('\n')
        print('saved:', target.name)
    print(json.dumps({k: v for k, v in result.items() if k != 'artifacts'},
                     ensure_ascii=False, separators=(',', ':')))
    print('artifact_count:', len(artifacts))


if __name__ == '__main__':
    main()
