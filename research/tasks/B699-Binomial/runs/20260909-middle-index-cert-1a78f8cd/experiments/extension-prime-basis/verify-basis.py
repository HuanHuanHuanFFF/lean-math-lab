#!/usr/bin/env python3
"""Use the frozen strict incremental verifier, with output confined to this subtask.
This wrapper does not change checking, source policy, reuse checks, limits, or axiom audits.
"""
from __future__ import annotations
import hashlib, json, sys
from datetime import datetime, timezone
from pathlib import Path
RUN = Path(__file__).resolve().parents[2]
ROOT = Path(__file__).resolve().parents[7]
sys.path.insert(0, str(RUN / 'verification/runner'))
import extend


def allocate(repo: Path, run_dir: Path):
    public_parent = RUN / 'experiments/extension-prime-basis/verification'
    raw_parent = ROOT / '.tools/mid/extension-prime-basis'
    public_parent.mkdir(parents=True, exist_ok=True)
    raw_parent.mkdir(parents=True, exist_ok=True)
    base = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    for suffix in ['', *[f'-{index:02d}' for index in range(1, 1000)]]:
        stamp = base + suffix
        public, raw = public_parent / stamp, raw_parent / stamp
        if public.exists() or raw.exists():
            continue
        public.mkdir()
        raw.mkdir()
        for child in [public / 'logs', raw / 'logs', raw / 'tmp', raw / 'olean']:
            child.mkdir()
        wrapper = Path(__file__).resolve()
        (public / 'wrapper-source.json').write_text(json.dumps({
            'path': str(wrapper.relative_to(ROOT)),
            'sha256': hashlib.sha256(wrapper.read_bytes()).hexdigest(),
            'purpose': 'Output allocation only; all checking delegated to frozen strict verifier',
        }, indent=2) + '\n', encoding='utf8')
        return public, raw, stamp
    raise RuntimeError('No fresh verification output path')

extend.v.allocate_outputs = allocate
if __name__ == '__main__':
    raise SystemExit(extend.main())
