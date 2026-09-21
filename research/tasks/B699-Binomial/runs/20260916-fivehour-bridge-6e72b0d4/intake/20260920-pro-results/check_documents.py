"""Check authored intake/navigation documents only; never execute delivered code."""

import argparse
import ast
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import re
import subprocess
from urllib.parse import unquote

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / 'AGENTS.md').is_file())
RUN = HERE.parent.parent
PROBLEM = RUN.parent.parent


def digest(p):
    with p.open('rb') as stream:
        return hashlib.file_digest(stream, 'sha256').hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    docs = [HERE / n for n in ('README.md', 'SUMMARY.md', 'PACKAGE_INDEX.md')]
    docs += [HERE / 'notes' / f'{label}.md' for label in 'ADE']
    docs += [PROBLEM / 'OVERVIEW.md', RUN / 'README.md']
    docs += [ROOT / n for n in ('AUTO.md', 'AGENTS.md', 'LEADER.md')]
    links = 0
    for p in docs:
        text = p.read_text(encoding='utf-8')
        text = re.sub(r'```[\s\S]*?```', '', text)
        text = re.sub(r'`[^`\n]*`', '', text)
        for target in re.findall(r'\[[^\]]*\]\(([^\)]+)\)', text):
            target = unquote(target.strip('<>').split('#', 1)[0])
            if not target or re.match(r'^[a-zA-Z][a-zA-Z0-9+.-]*:', target):
                continue
            dest = (p.parent / target).resolve()
            assert dest.is_relative_to(ROOT), (p, target)
            assert dest.is_file() or dest.is_dir() or dest == args.out.resolve(), (p, target)
            links += 1
    scripts = [HERE / n for n in ('extract_sources.py', 'verify_intake.py',
                                  'build_index.py', 'locate_member.py', 'check_documents.py')]
    for p in scripts:
        ast.parse(p.read_text(encoding='utf-8'), filename=str(p))
    # Check ordinary authored files even before they enter the Git index.
    for p in docs + scripts + [HERE / '.gitattributes']:
        body = p.read_text(encoding='utf-8')
        assert not body.endswith('\n\n'), (p, 'extra blank line at EOF')
        assert all(line == line.rstrip() for line in body.splitlines()), (p, 'trailing whitespace')
    auto = (ROOT / 'AUTO.md').read_text(encoding='utf-8')
    assert '每 20 分钟' in auto and '30 分钟' not in auto
    git = ['git', '-c', f'safe.directory={ROOT.as_posix()}']
    own = [str(p.relative_to(ROOT).as_posix()) for p in docs + scripts]
    own += [(HERE / '.gitattributes').relative_to(ROOT).as_posix()]
    # Frozen author payload may retain historical whitespace; only authored files
    # are checked for formatting. Raw payload integrity is checked separately.
    subprocess.run(git + ['diff', '--check', 'origin/main', '--'] + own, cwd=ROOT, check=True)
    result = {'status': 'PASS', 'checked_utc': datetime.now(timezone.utc).isoformat(),
              'authored_documents': len(docs), 'local_links_checked': links,
              'administrative_python_ast_checked': [p.name for p in scripts],
              'authored_whitespace_checked': True,
              'documents': {p.relative_to(ROOT).as_posix(): digest(p) for p in docs},
              'boundary': 'Authored navigation and syntax only; raw sources checked by verify_intake.py; no mathematical or Lean verification.'}
    args.out.write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n', encoding='utf-8', newline='\n')
    print(json.dumps({k:v for k,v in result.items() if k!='documents'}, ensure_ascii=False))


if __name__ == '__main__':
    main()
