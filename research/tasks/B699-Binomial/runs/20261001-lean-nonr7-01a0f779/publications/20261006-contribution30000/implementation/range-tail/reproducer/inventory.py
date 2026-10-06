from pathlib import Path
import re, json, hashlib

ROOT = next(p for p in Path(__file__).resolve().parents if (p / 'lean-toolchain').is_file() and (p / 'research/tasks/B699-Binomial').is_dir())
OUT = ROOT / 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/publications/20261006-contribution30000/implementation/range-tail'
ROOTS = {
 'middle': 'research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/lean/ExtendedComplete.lean',
 'large': 'research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91/lean/Complete.lean',
 'tail': 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261004-tail-twohour-finish/supply/Tail30000Legacy.lean',
}

def imports(text):
 for line in text.splitlines():
  m = re.match(r'\s*(?:public\s+)?import\s+(?:all\s+)?(.*)', line)
  if m:
   yield from m[1].split()

def module_path(name):
 return ROOT / (name.replace('«', '').replace('»', '').replace('.', '/') + '.lean')

def closure(relative):
 seen, ordered = set(), []
 def visit(path):
  if path in seen: return
  seen.add(path)
  source = path.read_text(encoding='utf-8-sig')
  for imp in imports(source):
   child = module_path(imp)
   if child.is_file(): visit(child)
  ordered.append(path)
 visit(ROOT / relative)
 return ordered

if __name__ == '__main__':
 OUT.mkdir(parents=True, exist_ok=True)
 report = {}
 for key, relative in ROOTS.items():
  paths = closure(relative)
  entries = [{'path':str(p.relative_to(ROOT)).replace('\\','/'), 'bytes':p.stat().st_size,
    'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in paths]
  report[key] = {'root':relative, 'count':len(entries), 'bytes':sum(e['bytes'] for e in entries), 'entries':entries}
  print(key, report[key]['count'], report[key]['bytes'])
  for e in sorted(entries, key=lambda e:e['bytes'], reverse=True)[:14]: print(e['bytes'],e['path'])
 (OUT / 'SOURCE-CLOSURES.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
