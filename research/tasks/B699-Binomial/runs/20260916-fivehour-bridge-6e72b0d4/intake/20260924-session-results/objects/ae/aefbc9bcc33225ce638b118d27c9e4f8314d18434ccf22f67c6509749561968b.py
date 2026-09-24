"""Record exact arithmetic-circuit ideal-membership certificates.
The pair-selection algorithm is obtained from the installed SymPy (BSD) implementation;
only sound polynomial linear-combination steps, not its pair criteria, are trusted by checker.
"""
import inspect, json, time, sys
if not __debug__:
    raise RuntimeError('Certificate validation requires assertions: do not use python -O.')
sys.set_int_max_str_digits(0)
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
from sympy.polys import groebnertools

class Found(Exception):pass

def serialize(p):
 return [[list(m),int(c.numerator),int(c.denominator)] for m,c in sorted(p.items())]

class Trace:
 def __init__(self,R,fs,target):
  self.R=R;self.nodes=[];self.ids={};self.target=target;self.target_id=None
  for i,p in enumerate(fs):
   self.ids[p]=len(self.nodes);self.nodes.append({'poly':p,'input':i})
 def add(self,p,terms):
  if not p: return None
  if p in self.ids:return self.ids[p]
  ni=len(self.nodes);self.ids[p]=ni
  self.nodes.append({'poly':p,'terms':[(f,self.ids[q]) for f,q in terms if f and q]})
  if len(p)==1:
   mon,coeff=next(iter(p.items()))
   if all(e==0 for i,e in enumerate(mon) if i!=self.target) and mon[self.target]>0:
    self.target_id=ni;raise Found()
  return ni
 def monic_rem(self,g,divisors):
  qs,h=g.div(divisors)
  if h:
   c=h.LC; hh=h/c
   self.add(hh,[(self.R.one/c,g)]+[(-q/c,f) for q,f in zip(qs,divisors) if q])
   return hh
  return h
 def sp(self,a,b):
  L=self.R.monomial_lcm(a.LM,b.LM)
  aa=self.R.term_new(self.R.monomial_div(L,a.LM),QQ.one/a.LC)
  bb=self.R.term_new(self.R.monomial_div(L,b.LM),-QQ.one/b.LC)
  p=aa*a+bb*b
  self.add(p,[(aa,a),(bb,b)])
  return p
 def dump(self,path,meta):
  assert self.target_id is not None
  keep=set()
  def rec(i):
   if i in keep:return
   keep.add(i)
   for _,j in self.nodes[i].get('terms',[]):rec(j)
  rec(self.target_id);keep.update(i for i,n in enumerate(self.nodes) if 'input' in n)
  selected=sorted(keep);reindex={v:i for i,v in enumerate(selected)}
  data=[]
  for i in selected:
   nd=self.nodes[i];out={'poly':serialize(nd['poly'])}
   if 'input' in nd:out['input']=nd['input']
   else:out['terms']=[{'factor':serialize(p),'node':reindex[j]} for p,j in nd['terms']]
   data.append(out)
  meta.update({'variables':[str(v) for v in self.R.symbols], 'target':reindex[self.target_id],
    'nodes':data,'raw_nodes':len(self.nodes),'saved_nodes':len(data)})
  open(path,'w').write(json.dumps(meta,sort_keys=True,separators=(',',':'))+'\n')

def certificate(exprs,vars_,path,name):
 R,*_=ring(','.join(map(str,vars_)),QQ,order='grevlex')
 fs=[R.from_expr(e) for e in exprs if e!=0]
 tr=Trace(R,fs,len(vars_)-1)
 src=inspect.getsource(groebnertools._buchberger)
 src=src.replace('def _buchberger(f, ring):','def traced_buchberger(f, ring):')
 old='''        h = g.rem([ f[j] for j in J ])'''
 assert src.count(old)==1, 'Unsupported SymPy _buchberger normal() source'
 src=src.replace(old,'''        h = TRACE.monic_rem(g, [f[j] for j in J])''')
 assert src.count('''            r = p.rem(f[:i])''')==1, 'Unsupported SymPy initialization source'
 src=src.replace('''            r = p.rem(f[:i])''','''            r = TRACE.monic_rem(p, f[:i])''')
 assert src.count('''        h = spoly(f[ig1], f[ig2], ring)''')==1, 'Unsupported SymPy critical-pair source'
 src=src.replace('''        h = spoly(f[ig1], f[ig2], ring)''','''        h = TRACE.sp(f[ig1], f[ig2])''')
 ns={'TRACE':tr,'spoly':groebnertools.spoly};exec(src,ns)
 st=time.time()
 try:ns['traced_buchberger'](fs,R)
 except Found:pass
 elapsed=time.time()-st
 tr.dump(path,{'name':name,'coefficient_field':'QQ','method':'exact ideal-membership DAG','input_count':len(fs)})
 print(name,'PASS', 'raw',len(tr.nodes),'target',tr.nodes[tr.target_id]['poly'],'time',elapsed,flush=True)
 return tr

