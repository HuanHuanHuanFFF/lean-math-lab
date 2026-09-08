#!/usr/bin/env python3
"""Current source verification; historical runner bytes are in migration/originals."""
from pathlib import Path
import subprocess, sys
root = next(p for p in Path(__file__).resolve().parents if (p / 'lake-manifest.json').is_file())
raise SystemExit(subprocess.call([sys.executable, str(root / 'scripts/verify-research-runs.py'), '--run', 'reflected-sum', *sys.argv[1:]], cwd=root))
