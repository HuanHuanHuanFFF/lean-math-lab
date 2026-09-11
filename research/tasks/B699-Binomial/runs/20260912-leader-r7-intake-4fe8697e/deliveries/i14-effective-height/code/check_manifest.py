"""Check the delivered, immutable snapshot before replay rewrites audit logs.
The manifest does not list itself. Rebuildable local caches and binaries are
intentionally excluded. No third-party Python packages are needed.
"""
from pathlib import Path
import hashlib
import sys

ROOT = Path(__file__).resolve().parents[1]
EXCLUDED = {'cache', 'bin', '__pycache__'}

def excluded(path: Path) -> bool:
    rel = path.relative_to(ROOT)
    return (rel.as_posix() == 'MANIFEST.sha256' or
            any(part in EXCLUDED for part in rel.parts) or
            path.suffix in {'.pyc', '.pid'})

def digest(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b''):
            h.update(chunk)
    return h.hexdigest()

def main() -> None:
    manifest = ROOT / 'MANIFEST.sha256'
    seen = set()
    for line_number, line in enumerate(manifest.read_text().splitlines(), 1):
        expected, name = line.split('  ', 1)
        path = ROOT / name
        if (len(expected) != 64 or any(c not in '0123456789abcdef' for c in expected)
                or name in seen or not path.resolve().is_relative_to(ROOT.resolve())
                or not path.is_file() or excluded(path)):
            raise ValueError(f'Invalid manifest entry at line {line_number}: {name}')
        actual = digest(path)
        if actual != expected:
            raise ValueError(f'SHA256 mismatch: {name}')
        seen.add(name)
    actual_names = {p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*')
                    if p.is_file() and not excluded(p)}
    if seen != actual_names:
        raise ValueError(f'Unlisted files: {sorted(actual_names-seen)}; '
                         f'missing files: {sorted(seen-actual_names)}')
    print(f'PASS_SHA256_MANIFEST {len(seen)} files; no self-reference')

if __name__ == '__main__':
    try:
        main()
    except Exception as exc:
        print(f'MANIFEST_CHECK_FAILED: {exc}', file=sys.stderr)
        raise SystemExit(1)
