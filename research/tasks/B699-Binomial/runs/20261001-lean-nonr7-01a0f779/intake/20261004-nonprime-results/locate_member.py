"""Read-only lookup of original archive members; never runs source programs."""
import argparse, json
from pathlib import Path

def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('query', help='Substring of original member path, or SHA-256 prefix')
    ap.add_argument('--archive', default='', help='Optional container SHA-256 prefix')
    args = ap.parse_args()
    base = Path(__file__).resolve().parent
    data = json.loads((base / 'MEMBERS.json').read_text(encoding='utf-8'))
    for row in data['members']:
        if not row['archive_sha256'].startswith(args.archive):
            continue
        if args.query not in row['name'] and not row.get('sha256', '').startswith(args.query):
            continue
        print(json.dumps({**row, 'local_file': str(base / row['retained_path']) if row.get('retained_path') else None}, ensure_ascii=False))

if __name__ == '__main__':
    main()
