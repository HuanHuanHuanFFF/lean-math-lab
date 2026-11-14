"""Source-level theorem slice. Candidate only: Lean re-elaboration is mandatory.
Conservative lexical name resolution. No binary proof object is exported.
"""
from __future__ import annotations
import argparse, collections, hashlib, json, re, pickle, os
from pathlib import Path

REPO = Path(__file__).resolve().parents[8]
OUT = Path(os.environ.get('B699_CONTRIBUTION_OUT',str(Path(__file__).resolve().parent))).resolve()
RUNS = 'research/tasks/B699-Binomial/runs/'
LOW = RUNS + '20260911-low-index-lean-513dc7cc/lean/'
ROOTS = {
 'small': RUNS+'20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean',
 'i11': LOW+'HuanI11.lean',
 'a151': LOW+'HuanAllA.lean',
 'middle':RUNS+'20260909-middle-index-cert-1a78f8cd/lean/ExtendedComplete.lean',
 'large':RUNS+'20260910-large-index-lean-7c4e2a91/lean/Acceptance.lean',
 'tail':RUNS+'20261001-lean-nonr7-01a0f779/continuations/20261004-tail-twohour-finish/supply/Tail30000Legacy.lean',
}
TARGETS = {
 'small': ['B699LargePrimeStructure.common_small_index'],
 'i11': ['Math.B699.HuanI11.original'],
 'a151': ['B699LowIndex.LowIndexLean513dc7cc.HuanAllA.original_i'+str(i).zfill(3) for i in [29,*range(35,185)]],
 'middle':['B699Middle.common_185_999'],
 'large':['B699LargeIndex.original_statement'],
 'tail':['B699TailFinish20261004.FullInitial.common_upto_30000'],
}
ID = r'[^\W\d]\w*\'?(?:\.[^\W\d]\w*\'?)*'
DECL = re.compile(r'^(?:(?:private|protected|noncomputable|partial|unsafe)\s+)*(def|abbrev|theorem|lemma|structure|inductive|class|instance)\s+('+ID+r')\b')

def strip_comments(s):
 out=[]; i=0; depth=0; string=False
 while i<len(s):
  if depth:
   if s[i:i+2]=='/-': depth+=1; i+=2
   elif s[i:i+2]=='-/': depth-=1; i+=2
   else:
    if s[i]=='\n':out.append('\n')
    i+=1
  elif not string and s[i:i+2]=='/-':depth=1;i+=2
  elif not string and s[i:i+2]=='--':
   j=s.find('\n',i); i=len(s) if j<0 else j
  else:
   c=s[i];out.append(c)
   if c=='"' and (i==0 or s[i-1]!='\\'):string=not string
   i+=1
 return ''.join(out)

def module_path(name):
 return REPO / (name.replace('«','').replace('»','').replace('.','/')+'.lean')

class Tree:
 def __init__(self,roots):
  self.mods={};self.order=[];self.decls={};self.byname=collections.defaultdict(list);self.vis={}
  for root in roots:self.load(root)
  for path in self.order:self.parse(path)
 def load(self,path):
  path=str(Path(path).as_posix())
  if path in self.mods:return
  p=REPO/path;b=p.read_bytes();s=strip_comments(b.decode('utf-8-sig'))
  imports=[]; external=[]
  for line in s.splitlines():
   im=re.match(r'^(?:(?:public|meta)\s+)*import\s+(.+)$',line)
   if im:
    for name in im.group(1).split():
     if name in ('all','public','meta'):continue
     mp=module_path(name)
     if mp.exists():imports.append(str(mp.relative_to(REPO).as_posix()))
     else:external.append(name)
  self.mods[path]={'text':s,'imports':imports,'external':external,'sha256':hashlib.sha256(b).hexdigest(),'bytes':len(b)}
  for imp in imports:self.load(imp)
  self.order.append(path)
 def parse(self,path):
  m=self.mods[path];lines=m['text'].splitlines(keepends=True);ns=[];opens=[];vars=[];attrs=[];decls=[]
  start=None;item=None
  def finish(end):
   if item is not None:
    item['text']=''.join(lines[start:end]).strip()+'\n'
    item['bytes']=len(item['text'].encode());self.decls[item['key']]=item
    self.byname[item['full']].append(item['key']);decls.append(item['key'])
  for idx,line in enumerate(lines):
   if not line or line[0].isspace():continue
   st=line.strip(); inline_attrs=[]
   am=re.match(r'^((?:@\[[^\]]*\]\s*)+)(.*)$',st)
   decl_text=st
   if am:
    inline_attrs=re.findall(r'@\[[^\]]*\]',am.group(1));decl_text=am.group(2)
   dm=DECL.match(decl_text)
   command = dm or re.match(r'^(namespace|section|end|open|variable|include|omit|set_option|#|attribute|notation|local|macro|syntax)\b',st)
   if not command and not st.startswith('@['):continue
   if dm:
    finish(idx)
    name=dm.group(2); prefix='.'.join(n for n in ns if n)
    full=(prefix+'.' if prefix else '')+name
    key=path+':'+str(idx+1)+':'+name
    item={'key':key,'module':path,'line':idx+1,'name':name,'full':full,'namespace':prefix,'opens':opens.copy(),'variables':vars.copy(),'attributes':attrs.copy()+inline_attrs,'kind':dm.group(1),'private':bool(re.match('private ',decl_text))}
    attrs=[];start=idx
   elif st.startswith('@['):
    finish(idx);item=None;start=None;attrs.append(st)
   else:
    finish(idx);item=None;start=None
    if st.startswith('namespace '):ns.append(st.split(None,1)[1])
    elif st.startswith('section'):ns.append('')
    elif re.match(r'^end(?:\s|$)',st):
     if ns:ns.pop()
    elif st.startswith('open '):opens.extend(st.split()[1:])
    elif st.startswith('variable '):vars.append(st)
  finish(len(lines));m['decls']=decls
 def visible(self,path):
  if path in self.vis:return self.vis[path]
  result={path}
  for q in self.mods[path]['imports']:result.update(self.visible(q))
  self.vis[path]=result;return result
 def module_order(self):
  """Imports can be extended by a generated checker after initial parsing."""
  result=[];done=set();visiting=set()
  def visit(path):
   if path in done:return
   if path in visiting:raise ValueError('module dependency cycle '+path)
   visiting.add(path)
   for child in self.mods[path]['imports']:visit(child)
   visiting.remove(path);done.add(path);result.append(path)
  for path in self.order:visit(path)
  return result
 def resolve(self,token,d):
  ns=d['namespace'].split('.') if d['namespace'] else []
  tries=['.'.join(ns[:n]+[token]) for n in range(len(ns),-1,-1)]
  tries.extend(o+'.'+token for o in d['opens'] if o not in ('scoped','in'))
  visible=self.visible(d['module'])
  for t in tries:
   candidates=[k for k in self.byname.get(t,[]) if self.decls[k]['module'] in visible]
   own=[k for k in candidates if self.decls[k]['module']==d['module']]
   if own:return own[-1]
   if candidates:return candidates[-1]
  return None
 def deps(self,key):
  d=self.decls[key];body=d['text'];found=set()
  if not hasattr(self,'method_index'):
   self.method_index=collections.defaultdict(list)
   for mk,md in self.decls.items():
    if '.' in md['name']:self.method_index[md['name'].rsplit('.',1)[1]].append(mk)
  for token in re.findall(ID,body):
   k=self.resolve(token,d)
   if k and k!=key:found.add(k)
   parts=token.split('.')
   while len(parts)>1:
    parts.pop();k=self.resolve('.'.join(parts),d)
    if k and k!=key:found.add(k)
   # Dot notation such as row.n0 is resolved by Lean from the receiver type.
   # A lexical scan cannot infer that type. Retain visible named extension
   # methods with the same final component instead of dropping the method.
   if '.' in token:
    suffix=token.rsplit('.',1)[1]
    visible=self.visible(d['module'])
    for method_key in self.method_index.get(suffix,[]):
     method=self.decls[method_key]
     if method['module'] in visible and method_key!=key:
      found.add(method_key)
  return found
 def slice(self,targets):
  pending=[]
  for t in targets:
   keys=self.byname.get(t,[])
   if not keys:raise ValueError('missing target '+t)
   pending.extend(keys)
  # Source-level tactics can use imported simp declarations implicitly. Keep
  # these explicitly rather than pretending a lexical reference scan sees them.
  pending.extend(k for k,d in self.decls.items() if d['attributes'])
  selected=set();edges={}
  while pending:
   k=pending.pop()
   if k in selected:continue
   selected.add(k);deps=self.deps(k);edges[k]=sorted(deps);pending.extend(deps-selected)
  return selected,edges

def main():
 p=argparse.ArgumentParser();p.add_argument('--root',choices=[*ROOTS,'all'],default='i11');args=p.parse_args()
 labels=list(ROOTS) if args.root=='all' else [args.root]
 tree=Tree([ROOTS[x] for x in labels])
 for label in labels:
  selected,edges=tree.slice(TARGETS[label]);counts=collections.Counter()
  for key in selected:
   d=tree.decls[key];parts=d['module'].split('/lean/');group=parts[-1].split('/')[0] if len(parts)>1 else d['module'].split('/')[-1]
   counts[group]+=d['bytes']
  report={'root':ROOTS[label],'targets':TARGETS[label],'moduleClosure':len(tree.mods),'rawClosureBytes':sum(m['bytes'] for m in tree.mods.values()),'selectedDeclarationCount':len(selected),'selectedDeclarationBytes':sum(tree.decls[k]['bytes'] for k in selected),'groups':counts.most_common(),'selectedModules':sorted({tree.decls[k]['module'] for k in selected}),'sourceFiles':[{k:v for k,v in m.items() if k in ('sha256','bytes')}|{'path':path} for path,m in tree.mods.items()]}
  (OUT/'analysis').mkdir(exist_ok=True)
  (OUT/'analysis'/f'{label}-slice.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
  scratch=REPO/'.tools/b699-contribution-implementation-20261006'
  scratch.mkdir(exist_ok=True)
  with (scratch/(label+'-slice.pickle')).open('wb') as f:pickle.dump((tree,selected,edges),f)
  summary={k:v for k,v in report.items() if k not in ('selectedModules','dependencies','sourceFiles','groups','targets')}
  summary['targetCount']=len(report['targets']);print(json.dumps(summary,ensure_ascii=False))
  print(json.dumps(counts.most_common(20),ensure_ascii=False))

if __name__=='__main__':main()
