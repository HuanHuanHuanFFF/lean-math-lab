from __future__ import annotations
from pathlib import Path
import hashlib, json, re

REPO = Path('/workspace/scratch/c6b148d48b6d/external-research/repos/lean-proofs')
MATHLIB = REPO/'.lake/packages/mathlib'
OUT = Path('/workspace/scratch/c6b148d48b6d/external-research/b686-verify')
ROOTS = [
  'ErdosProblems.Erdos686CenterComponentLogStrip',
  'ErdosProblems.Erdos686EvenTailSupply',
  'ErdosProblems.Erdos686CanonicalOwnerMatrix',
]
TOKEN_RE = re.compile(r'\b(?:sorry|admit|native_decide|axiom|constant)\b')
IMPORT_RE = re.compile(r'^\s*(?:(?:public|private)\s+)?import\s+([^\s-]+)')

def sha256(p: Path) -> str:
  h=hashlib.sha256()
  with p.open('rb') as f:
    for b in iter(lambda:f.read(1<<20),b''): h.update(b)
  return h.hexdigest()

def module_path(m: str) -> Path|None:
  rel=Path(*m.split('.')).with_suffix('.lean')
  for b in (REPO,MATHLIB):
    p=b/rel
    if p.is_file(): return p
  return None

def masked_text(s: str) -> str:
  # Preserve newlines and token positions while blanking Lean line/block comments
  # (nested) and ordinary quoted strings. This is a lexical policy check, not a parser.
  out=[]; i=0; n=len(s); block=0; string=False; char=False
  while i<n:
    c=s[i]; d=s[i+1] if i+1<n else ''
    if block:
      if c=='/' and d=='-': block+=1; out.extend('  '); i+=2; continue
      if c=='-' and d=='/': block-=1; out.extend('  '); i+=2; continue
      out.append('\n' if c=='\n' else ' '); i+=1; continue
    if string:
      if c=='\\' and i+1<n:
        out.extend('  '); i+=2; continue
      if c=='"': string=False
      out.append('\n' if c=='\n' else ' '); i+=1; continue
    if char:
      if c=='\\' and i+1<n:
        out.extend('  '); i+=2; continue
      if c=="'": char=False
      out.append('\n' if c=='\n' else ' '); i+=1; continue
    if c=='-' and d=='-':
      while i<n and s[i]!='\n': out.append(' '); i+=1
      continue
    if c=='/' and d=='-': block=1; out.extend('  '); i+=2; continue
    if c=='"': string=True; out.append(' '); i+=1; continue
    # Mask a character literal only at a token boundary. A bare apostrophe after
    # an identifier is part of a Lean identifier (for example `map'`) and must
    # remain visible; treating every apostrophe as a quote would hide the rest
    # of the file after the first such identifier.
    if c=="'" and (i == 0 or not (s[i-1].isalnum() or s[i-1] == '_')):
      j=i+1
      escaped=False
      while j<n and s[j] != '\n':
        if escaped:
          escaped=False
        elif s[j]=='\\':
          escaped=True
        elif s[j]=="'":
          break
        j+=1
      if j<n and s[j]=="'":
        char=True; out.append(' '); i+=1; continue
    out.append(c); i+=1
  return ''.join(out)

def imports(p: Path) -> list[str]:
  return [m.group(1) for line in p.read_text(errors='replace').splitlines() if (m:=IMPORT_RE.match(line))]

seen: dict[str,dict] = {}; missing=set(); stack=list(ROOTS)
while stack:
  m=stack.pop()
  if m in seen or m in missing: continue
  p=module_path(m)
  if p is None: missing.add(m); continue
  ims=imports(p); seen[m]={'path':str(p.relative_to(REPO)), 'imports':ims}; stack.extend(ims)

root_closures={}
for r in ROOTS:
  s=[]; q=[r]; got=set()
  while q:
    m=q.pop()
    if m in got or m in missing: continue
    got.add(m); s.append(m); q.extend(seen[m]['imports'])
  root_closures[r]=sorted(s)

# Scan every source file in the reachable source graph. External unresolved package
# modules are explicitly listed as missing rather than silently omitted.
findings=[]
for m,rec in seen.items():
  p=REPO/rec['path']
  masked=masked_text(p.read_text(errors='replace'))
  hits=[]
  for hit in TOKEN_RE.finditer(masked):
    line=masked.count('\n',0,hit.start())+1
    # These are deliberate audit commands, not declarations introducing an
    # axiom. Keep them in the source but exclude them from the forbidden-token
    # policy result.
    if re.match(r'^\s*#print\s+axioms\b', p.read_text(errors='replace').splitlines()[line-1]):
      continue
    hits.append({'token':hit.group(0),'line':line})
  if hits: findings.append({'module':m,'path':rec['path'],'sha256':sha256(p),'hits':hits})

project_modules=sorted(m for m,r in seen.items() if not r['path'].startswith('.lake/packages/mathlib/'))
mathlib_modules=sorted(m for m,r in seen.items() if r['path'].startswith('.lake/packages/mathlib/'))
report={
 'source_repo':str(REPO),
 'head':'aff1d30b3b1c6bd705810fa4d588b03940fb31df',
 'roots':ROOTS,
 'closure_counts':{r:{'total':len(v),'project':sum(m in project_modules for m in v),'mathlib':sum(m in mathlib_modules for m in v)} for r,v in root_closures.items()},
 'all_seen_source_modules':len(seen),
 'project_modules':len(project_modules),
 'mathlib_modules':len(mathlib_modules),
 'unresolved_external_modules':sorted(missing),
 'forbidden_token_regex':TOKEN_RE.pattern,
 'forbidden_findings':findings,
 'forbidden_clean':not findings,
 'source_sha256':{m:sha256(REPO/r['path']) for m,r in seen.items()},
}
(OUT/'static-closure.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:report[k] for k in ('closure_counts','all_seen_source_modules','project_modules','mathlib_modules','unresolved_external_modules','forbidden_clean','forbidden_findings')},indent=2))
