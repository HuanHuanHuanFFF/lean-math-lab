"""Continuous orthant covers, all collisions, and exact height/cube constants.
Adapted from frozen Pro-A cover code, with an i10-specific constant cube bridge.
"""
from pathlib import Path
from itertools import combinations,product
import math,json,sys
R=Path(__file__).resolve().parents[1];sys.path.insert(0,str(R/'code/vendor'))
from probe_weighted_asymmetric import solve,nondominated
Q=10000

def obj(kind,args,z):
 if kind=='weighted':return sum(w*v for w,v in zip(args,sorted(z)))
 a,b=args;return sum(z)+max(0,Q-z[a]-z[b])
def cover(ps,edges,kind,args,target):
 index={p:k for k,p in enumerate(ps)};es=[(index[p],index[q],a,b) for p,q,a,b,*_ in edges]
 nodes=[];seen={}
 def visit(z):
  if z in seen:return seen[z]
  idx=len(nodes);seen[z]=idx;nodes.append(None);v=obj(kind,args,z)
  if v>=target:row=dict(z=list(z),leaf=True,value=v)
  else:
   bad=next((k for k,(p,q,a,b) in enumerate(es) if z[p]<a and z[q]<b),None)
   assert bad is not None,'feasible point refutes target'
   p,q,a,b=es[bad];zz=list(z);zz[p]=a;left=visit(tuple(zz));zz=list(z);zz[q]=b;right=visit(tuple(zz));row=dict(z=list(z),edge=bad,children=[left,right])
  nodes[idx]=row;return idx
 assert visit((0,)*len(ps))==0
 return dict(kind=kind,params=args,target=target,edges=[list(x) for x in es],nodes=nodes)
def check_cover(cert):
 ns=cert['nodes'];es=cert['edges'];seen=set()
 def rec(k,z):
  assert 0<=k<len(ns);r=ns[k];assert r['z']==z
  if k in seen:return
  seen.add(k);v=obj(cert['kind'],cert['params'],z)
  if r.get('leaf'):assert r['value']==v and v>=cert['target'];return
  p,q,a,b=es[r['edge']];assert z[p]<a and z[q]<b and len(r['children'])==2
  for pos,val,ch in zip([p,q],[a,b],r['children']):
   zz=z[:];zz[pos]=val;assert sum(zz)>sum(z);rec(ch,zz)
 rec(0,[0]*len(ns[0]['z']));assert len(seen)==len(ns)
def params(i,r,s):
 ell=i-1-r;lam=2*s-r;E=s*(s+1)+ell*(ell+1)//2
 K=(1<<(s*(s+1)))*math.prod(math.factorial(k)**2 for k in range(1,s+1))*math.prod(math.factorial(k) for k in range(1,ell+1))
 return lam,E,K

def main():
 inp=json.loads((R/'input/cuts.json').read_text());assert inp['denominator']==Q and inp['D']==9
 i=10;ps=[2,3,5,7];t=len(ps);s0=6;ws=[2*s0-a for a in range(i)];es=nondominated(inp['cuts'])
 assert len(es)==15 and all(p in ps and q in ps for p,q,*_ in es)
 graphdir=R/'evidence/graph';graphdir.mkdir(exist_ok=True)
 ans=solve(ps,es,lambda z:obj('weighted',ws[:t],z));tau=ans['min'];c=cover(ps,es,'weighted',ws[:t],tau);check_cover(c)
 (graphdir/'distinct.json').write_text(json.dumps(c,separators=(',',':'))+'\n');nodes=len(c['nodes']);cases=[]
 for a,b in combinations(range(t),2):
  res=solve(ps,es,lambda z:obj('collision',[a,b],z));c=cover(ps,es,'collision',[a,b],res['min']);check_cover(c)
  f=f'collision_{ps[a]}_{ps[b]}.json';(graphdir/f).write_text(json.dumps(c,separators=(',',':'))+'\n');nodes+=len(c['nodes'])
  cases.append(dict(pair=[ps[a],ps[b]],minimum=res['min'],witness=res['witness'],file=f,nodes=len(c['nodes'])))
 chi=min(r['minimum'] for r in cases);S=sum(ws);T=sum(ws[:t]);gamma=Q*(S-s0*(s0+1)-T)+tau
 candidates=[]
 for r in range(i):
  for s in range(1,i):
   lam,E,K=params(i,r,s)
   if lam>0:candidates.append((Q*(lam*(i-t)-E)+lam*chi,r,s,lam,E,K))
 delta,r,s,lam,E,K=max(candidates);assert gamma>0 and delta>0
 H=inp['height_Y_bits']+1;fb=math.factorial(i).bit_length();rhs1=2*s0*Q*fb+Q*S+tau;rhs2=lam*Q*fb+lam*(Q+chi)
 assert H*gamma>rhs1 and H*delta>rhs2 and (1<<20)>i*(i-1)
 for a in range(i):
  for b in range(a+1):
   c=a-b
   assert max(a-r,0)+max(s-b,0)+max(s-c,0)>=lam
   assert max(s0-b,0)+max(s0-c,0)>=2*s0-a
 # Constant cube bridge, not the previous unit-cube claim.
 cr,cs=2,6;cl,cE,cK=params(i,cr,cs)
 assert (cl,cE)==(10,70) and t==4
 # At most one x_p >= n^(2/3)/C gives U <= n^3/C^3.
 C=1
 while cK*C**(3*cl)<=(2*math.factorial(i))**cl:C+=1
 assert C==11
 # For n>=90, n-a >= n/2. Ap^3 <= C^3*n <= 2*C^3*(n-a).
 cube_factor=2*C**3
 p=dict(i=i,primes=ps,height_bits=H,cut_height_bits=H-1,denominator=Q,cut_count=len(es),cut_inputs=[x[4] for x in es],position_s=s0,weighted_min=tau,weighted_witness=ans['witness'],position_sum=S,top_weight_sum=T,distinct_gamma=gamma,distinct_rhs_log2_upper=rhs1,collision_min=chi,collision_cases=cases,collision_delta=delta,collision_rhs_log2_upper=rhs2,r=r,s=s,lambda_=lam,E=E,K=str(K),graph_nodes=nodes,cube_bridge=dict(r=cr,s=cs,lambda_=cl,E=cE,K=str(cK),large_prime_power_constant=C,cube_factor=cube_factor,start_n=90,integer_lhs=str(cK*C**(3*cl)),integer_rhs=str((2*math.factorial(i))**cl)))
 (R/'input/i10_target.json').write_text(json.dumps(p,indent=2)+'\n')
 (R/'evidence/height_check.json').write_text(json.dumps(dict(status='PASS_EXACT_HEIGHT_AND_CONSTANT_CUBE',target=p),indent=2)+'\n')
 print('HEIGHT i10 n<2^',H,'gamma',gamma,'collision_delta',delta,'chi',chi,'nodes',nodes,flush=True)
 print('CONSTANT CUBE',cube_factor,'start n>=90','r,s',cr,cs,flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()
