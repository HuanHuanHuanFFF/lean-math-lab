from pathlib import Path
from fractions import Fraction as F
from math import comb,lcm
import json,hashlib
OUT=Path(__file__).resolve().parent
if (OUT/'FREEZE.json').exists():raise RuntimeError('frozen candidate package')
def mul(a,b):
 c=[F(0)]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]+=x*y
 return c
def lp(a,b,n):return [comb(n,k)*a**(n-k)*b**k for k in range(n+1)]
def core(kind):
 z=F(1,243);exps=[2,5,5] if kind=='Q' else [5,5,2]
 factors=[(F(0),F(1)),(F(1),F(-1)),(F(1),z-1 if kind=='Q' else -z)]
 p=[F(1)]
 for f,n in zip(factors,exps):p=mul(p,lp(*f,n))
 return p,exps
def bern(p):
 n=len(p)-1
 return [sum((p[k]*F(comb(i,k),comb(n,k)) for k in range(i+1)),F()) for i in range(n+1)]
def half(bs):
 left=[bs[0]];right=[bs[-1]]
 while len(bs)>1:
  bs=[(a+b)/2 for a,b in zip(bs,bs[1:])];left.append(bs[0]);right.append(bs[-1])
 return left,right[::-1]
def generate(kind,lam):
 pol,exps=core(kind);stack=[(F(0),F(1),0,bern(pol))];leaves=[];nodes=0
 while stack:
  a,b,d,bs=stack.pop();nodes+=1
  assert d<=14 and len(leaves)<128
  if max(bs)<lam:
   den=lcm(*(x.denominator for x in bs));nums=[str(x.numerator*(den//x.denominator)) for x in bs]
   leaves.append({'a':str(a),'b':str(b),'depth':d,'bernstein_denominator':str(den),'bernstein_numerators':nums,'strict_gap':str(lam-max(bs))})
  else:
   l,r=half(bs);mid=(a+b)/2;stack.append((mid,b,d+1,r));stack.append((a,mid,d+1,l))
 assert leaves[0]['a']=='0' and leaves[-1]['b']=='1'
 for p,q in zip(leaves,leaves[1:]):assert p['b']==q['a']
 return {'kind':kind,'degree':12,'lambda':str(lam),'core_exponents':exps,'leaves':leaves,'nodes_visited':nodes,'max_depth':max(x['depth'] for x in leaves),'weights':{'delta0':[1,5,5] if kind=='Q' else [5,5,1],'delta1':[2,4,4] if kind=='Q' else [4,4,2]}}
a={'schema':'actual-c7d5-exact-dyadic-Bernstein-v1','row':{'p':3,'q':11,'P':243,'Q':121,'a':1,'b':2,'D0':1,'c':7,'d':5,'wp':321,'wq':407},'z':'1/243','Q':generate('Q',F(451,100000)),'E':generate('E',F(973,1000000)),'status':'exact-data-not-Lean','generation':'fixed rational lambdas; exact power-to-Bernstein plus deCasteljau; no point value used as a leaf certificate'}
(OUT/'tree-data.json').write_bytes((json.dumps(a,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
print(json.dumps({k:{'leaves':len(a[k]['leaves']),'depth':a[k]['max_depth']} for k in ['Q','E']}))
