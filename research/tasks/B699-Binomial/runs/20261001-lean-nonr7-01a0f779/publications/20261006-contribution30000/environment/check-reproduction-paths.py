"""Administrative Git/source-path inventory only; never execute proof producers."""
from pathlib import Path
import ast
import hashlib
import json
import re
import subprocess

here = Path(__file__).resolve().parent
pub = here.parent
repo = next(p for p in here.parents if (p / 'AGENTS.md').is_file())
impl = pub / 'implementation'
repair = impl / 'range-tail/repairs/20261007-ci7'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def tracked_paths(paths):
    tracked = set()
    # Windows command length is bounded by small batches.
    for start in range(0, len(paths), 20):
        tracked.update(subprocess.check_output(['git', 'ls-tree', '-r', '--name-only', 'HEAD', '--',
            *paths[start:start + 20]], cwd=repo, text=True, timeout=15).splitlines())
    return tracked

minimal = json.loads((impl / 'MINIMAL-STAGE-20261007.json').read_text())
adoption = json.loads((repair / 'full-factorial/FINAL3-ADOPTION.json').read_text())
files = [impl / e['path'] for e in minimal['files']] + [repair / p for p in adoption['minimalStageRelativeToRepairDirectory']]
relative = [p.relative_to(repo).as_posix() for p in files]
tracked = tracked_paths(relative)
assert all(p.is_file() for p in files) and all(p in tracked for p in relative)
assert all(sha(impl / e['path']) == e['sha256'] for e in minimal['files'])

# Reuse only the producer's comment lexer, not its tree/proof extraction logic.
tree = ast.parse((impl / 'extract.py').read_text())
lexer = next(n for n in tree.body if isinstance(n, ast.FunctionDef) and n.name == 'strip_comments')
namespace = {}
exec(compile(ast.Module(body=[lexer], type_ignores=[]), '<administrative header lexer>', 'exec'), namespace)
entries = json.loads((pub / 'SOURCE-ENTRIES.json').read_text())['entries']
stack = [repo / e['path'] for e in entries]
seen = {}
external = set()
while stack:
    source = stack.pop()
    rel = source.relative_to(repo).as_posix()
    if rel in seen:
        continue
    with source.open('rb') as stream:
        header = stream.read(65536)
    # A prefix may end within one UTF-8 codepoint in a proof far after imports.
    text = namespace['strip_comments'](header.decode('utf-8-sig', errors='ignore'))
    seen[rel] = {'bytes': source.stat().st_size, 'headerBytesInspected': len(header)}
    for line in text.splitlines():
        match = re.match(r'^(?:(?:public|meta)\s+)*import\s+(.+)$', line)
        if not match:
            continue
        for name in match[1].split():
            if name in ('all', 'public', 'meta'):
                continue
            target = repo / (name.replace('«', '').replace('»', '').replace('.', '/') + '.lean')
            if target.is_file():
                stack.append(target)
            else:
                external.add(name)
project_tracked = tracked_paths(list(seen))
nonstandard = sorted(n for n in external if n.split('.')[0] not in
    ('Mathlib', 'Init', 'Lean', 'Std', 'Batteries', 'Aesop', 'Qq', 'Plausible', 'ProofWidgets', 'ImportGraph'))
report = {
    'head': subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=repo, text=True).strip(),
    'scope': 'administrative bounded source headers and Git paths; not a proof check',
    'minimal30PlusRange10Files': len(files), 'allSelectedFilesTracked': True,
    'minimal30ShaBindingsMatch': True, 'sourceEntriesSha256': sha(pub / 'SOURCE-ENTRIES.json'),
    'allSixSourceEntryByteBindingsMatch': all(sha(repo / e['path']) == e['sha256'] for e in entries),
    'projectSourceHeaderImportClosureFiles': len(seen),
    'projectSourceBytes': sum(v['bytes'] for v in seen.values()),
    'missingFromHEAD': [p for p in seen if p not in project_tracked],
    'externalImportPrefixes': sorted(set(n.split('.')[0] for n in external)),
    'unmappedNonstandardImports': nonstandard, 'headerLimitBytes': 65536,
    'limitation': 'bounded header/import inventory only; no full-body import or proof verification',
    'nativeLeanExecuted': False, 'proofAccepted': False,
    'headerPathInventorySha256': hashlib.sha256(json.dumps(seen, sort_keys=True).encode()).hexdigest(),
}
(here / 'ADMIN-REPRODUCTION-IMPORT-PATHS-R8.json').write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8', newline='\n')
print(json.dumps(report))
