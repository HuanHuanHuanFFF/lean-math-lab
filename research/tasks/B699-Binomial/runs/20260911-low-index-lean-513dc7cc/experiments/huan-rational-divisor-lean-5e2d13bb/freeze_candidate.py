"""Static evidence only. This script never invokes Lean or mutates source inputs."""
from pathlib import Path
from hashlib import sha256
from datetime import datetime, timezone
import json
import re

HERE = Path(__file__).resolve().parent
RUN = HERE.parent.parent
MATHLIB = Path('D:/CodingProject/Math/.lake/packages/mathlib')
PREFIX = 'Math.B699.RationalFactorialDivisor.'


def digest(path):
    data = path.read_bytes()
    return {'sha256': sha256(data).hexdigest(), 'bytes': len(data)}


small = json.loads((HERE / 'small-checks.json').read_text(encoding='utf-8'))
for rel, expected in small['source_hashes'].items():
    assert digest(RUN / rel) == expected, f'Input changed: {rel}'

modules = []
for filename in ['FloorLayers.lean', 'FactorialDivisibility.lean',
                 'Coefficients.lean', 'Content.lean']:
    path = HERE / filename
    text = path.read_text(encoding='utf-8')
    assert 'UNCOMPILED CANDIDATE' in text
    assert not re.search(r'\b(sorry|admit|native_decide)\b|^\s*axiom\s', text, re.M)
    declarations = []
    for line, row in enumerate(text.splitlines(), 1):
        match = re.match(r'(def|theorem)\s+([\w]+)', row)
        if match:
            declarations.append({'kind': match[1], 'name': PREFIX + match[2], 'line': line})
    audits = re.findall(r'^#print axioms (\S+)', text, re.M)
    assert sorted(audits) == sorted(item['name'] for item in declarations)
    imports = re.findall(r'^import (\S+)', text, re.M)
    cache = {}
    for mod in imports:
        if mod.startswith('Mathlib.'):
            olean = MATHLIB / '.lake/build/lib/lean' / (mod.replace('.', '/') + '.olean')
            assert olean.is_file(), f'Missing pre-existing cache: {mod}'
            cache[mod] = True
    modules.append({'file': filename, **digest(path), 'declarations': declarations,
                    'audit_roots': audits, 'imports': imports,
                    'mathlib_imports_cached': cache})

static = {'utc': datetime.now(timezone.utc).isoformat(),
          'status': 'static source/hash/cache/audit-directive checks only; Lean never invoked',
          'source_inputs_unchanged': small['source_hashes'],
          'module_order': [m['file'] for m in modules],
          'total_declarations_and_audit_roots': sum(len(m['declarations']) for m in modules),
          'modules': modules}
(HERE / 'candidate-static-checks.json').write_text(
    json.dumps(static, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')

report = HERE / 'REPORT.md'
text = report.read_text(encoding='utf-8')
text = text.replace('记录耗时 0.011620 秒',
                    f"最终记录耗时 {small['elapsed_seconds']:.6f} 秒")
text = text.replace('2026-09-11 10:22 UTC', '2026-09-11 10:23 UTC')
report.write_text(text, encoding='utf-8', newline='\n')

manifest = {'utc': datetime.now(timezone.utc).isoformat(),
            'status': 'frozen uncompiled candidates; parent performs actual Lean acceptance',
            'owner': '/root/i18_downstream_review',
            'writable_scope': str(HERE),
            'input_hashes': small['source_hashes'],
            'files': {p.name: digest(p) for p in sorted(HERE.iterdir())
                      if p.is_file() and p.name != 'FREEZE_V1.json'}}
(HERE / 'FREEZE_V1.json').write_text(
    json.dumps(manifest, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(json.dumps({'status': static['status'],
                  'declarations': static['total_declarations_and_audit_roots'],
                  'modules': {m['file']: m['sha256'] for m in modules},
                  'freeze': digest(HERE / 'FREEZE_V1.json')}, ensure_ascii=False))
