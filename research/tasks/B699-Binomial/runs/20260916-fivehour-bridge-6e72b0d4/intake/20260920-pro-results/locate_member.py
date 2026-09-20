"""Find an old member path in the complete plain-file mapping; read-only."""

import argparse
import json
from pathlib import Path


parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('query', help='Case-insensitive part of an original member path')
parser.add_argument('--limit', type=int, default=10)
args = parser.parse_args()
if not 1 <= args.limit <= 50:
    parser.error('--limit must be between 1 and 50')
here = Path(__file__).resolve().parent
data = json.loads((here / 'MEMBERS.json').read_text(encoding='utf-8'))
matches = []
for a in data['archives'].values():
    for m in a['members']:
        if args.query.casefold() in m['original_path'].casefold():
            matches.append({'archive_sha256': a['sha256'], **m})
print(json.dumps({'total_matches': len(matches), 'shown': matches[:args.limit]}, ensure_ascii=False, indent=2))
