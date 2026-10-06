from inventory import ROOT, OUT, ROOTS, closure, imports, module_path
import re, json, hashlib

def strip_comments(s):
 out=[]; i=0; level=0; string=False
 while i<len(s):
  if level:
   if s.startswith('/-',i): level+=1; i+=2
   elif s.startswith('-/',i): level-=1; i+=2
   else:
    if s[i]=='\n': out.append('\n')
    i+=1
  elif not string and s.startswith('/-',i): level=1; i+=2
  elif not string and s.startswith('--',i):
   n=s.find('\n',i); i=len(s) if n<0 else n
  else:
   c=s[i]; out.append(c); i+=1
   if string and c=='\\' and i<len(s):out.append(s[i]);i+=1
   elif c=='"':string=not string
 return ''.join(out)

DECL=re.compile(r'^(?:@\[[^\n]*?\]\s*)?(?:(?:private|protected|public|noncomputable|partial)\s+)*(def|abbrev|theorem|lemma|structure|inductive|class|instance)\b(?:\s+([^\s:{(]+))?')
DIRECTIVE=re.compile(r'^(?:namespace|section|end|open|variable|variables|include|omit|local|scoped|notation|set_option|attribute|universe|noncomputable section|public section|@\[|module|public import|import|#)\b')
TOKENS=re.compile(r'[A-Za-z_][A-Za-z_0-9\'.]*(?:\.[A-Za-z_][A-Za-z_0-9\']*)*')

def parse(path):
 text=strip_comments(path.read_text(encoding='utf-8-sig'))
 lines=text.splitlines(keepends=True); chunks=[]; start=None
 for i,line in enumerate(lines):
  if DECL.match(line) or DIRECTIVE.match(line):
   if start is not None: chunks.append(''.join(lines[start:i]))
   start=i
 if start is not None: chunks.append(''.join(lines[start:]))
 ns=[]; stack=[]; opens=[]; declarations=[]; commands=[]
 for c in chunks:
  first=c.splitlines()[0]
  dm=DECL.match(first)
  if dm:
   kind,name=dm.groups()
   if name is None or name.startswith(('(',':','{')): name='_instance_'+str(len(declarations))
   fqn='.'.join(ns+[name]); d={'fqn':fqn,'name':name,'kind':kind,'ns':list(ns),'opens':list(opens),'text':c,'path':path}
   declarations.append(d);commands.append(('decl',d));continue
  nm=re.match(r'^namespace\s+(\S+)',first)
  if nm: stack.append(('ns',len(nm[1].split('.'))));ns+=nm[1].split('.')
  elif re.match(r'^(?:noncomputable |public )?section\b',first):stack.append(('section',0))
  elif re.match(r'^end\b',first) and stack:
   kind,n=stack.pop()
   if n:ns=ns[:-n]
  elif re.match(r'^open\s+',first):
   if not first.startswith('open scoped '):opens += first.split()[1:]
  commands.append(('directive',c))
 return declarations,commands

def slice_for(rootkey, targets):
 paths=closure(ROOTS[rootkey]);decls=[];files={}
 for p in paths:
  ds,cs=parse(p);decls+=ds;files[p]=cs
 byname={d['fqn']:d for d in decls}
 def resolve(token,d):
  if token in byname:return token
  for n in range(len(d['ns']),-1,-1):
   name='.'.join(d['ns'][:n]+[token])
   if name in byname:return name
  for op in d['opens']:
   name=op+'.'+token
   if name in byname:return name
  return None
 selected=set();q=list(targets)
 while q:
  name=q.pop()
  if name in selected:continue
  if name not in byname:raise KeyError(name)
  selected.add(name);d=byname[name]
  for token in TOKENS.findall(d['text']):
   dest=resolve(token.strip('.'),d)
   if dest and dest not in selected:q.append(dest)
  for e in decls:
   if e['path']==d['path'] and (e['kind']=='instance' or '@[simp]' in e['text'].splitlines()[0]):
    if e['fqn'] not in selected:q.append(e['fqn'])
 snippets=[];externals=set();provenance=[]
 for p in paths:
  chosen=[d for d in decls if d['path']==p and d['fqn'] in selected]
  if not chosen:continue
  provenance.append({'path':str(p.relative_to(ROOT)).replace('\\','/'),'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'selectedDeclarations':[d['fqn'] for d in chosen]})
  for imp in imports(p.read_text(encoding='utf-8-sig')):
   if not module_path(imp).is_file():externals.add(imp)
  parts=[]
  for kind,c in files[p]:
   if kind=='decl':
    if c['fqn'] in selected:parts.append(c['text'])
   else:
    if re.match(r'^(?:module|public import|import|#|public section|@\[expose\] public section)',c):continue
    if c.startswith('set_option'):continue
    parts.append(c)
  snippets.append('\n'.join(parts))
 body='\n'.join(snippets)
 # Each retained source declaration has been selected by source-level references.
 # This is an approximation pending Lean's actual elaboration and axiom audit.
 header='\n'.join('import '+x for x in sorted(externals))+'\n\nset_option autoImplicit false\nset_option relaxedAutoImplicit false\nset_option Elab.async false\nset_option maxHeartbeats 1000000\nset_option maxRecDepth 20000\n'
 (OUT/(rootkey+'-core.lean')).write_text(header+body,encoding='utf-8',newline='\n')
 (OUT/(rootkey+'-core-provenance.json')).write_text(json.dumps({'sourceBaseline':'a5f7afff0766bf5fee2d72aa9e8ee6a5eb7bda99','targets':targets,'selected':len(selected),'totalDeclarations':len(decls),'sources':provenance,'externalImports':sorted(externals),'status':'static lexical slice pending elaboration'},indent=2)+'\n',encoding='utf-8')
 print(rootkey,len(selected),len(decls),len(body.encode()),'imports',len(externals))

if __name__=='__main__':
 slice_for('tail',[
  'B699ContinuationIC.row_common',
  'B699TailGap.common_of_top_prime',
  'B699ModernSieve.primeCounting_sieve_upper',
  'B699ModernSieve.survivors_card_floor_formula',
  'B699ModernPrunedSieve.count_eq_floorSum',
 ])
