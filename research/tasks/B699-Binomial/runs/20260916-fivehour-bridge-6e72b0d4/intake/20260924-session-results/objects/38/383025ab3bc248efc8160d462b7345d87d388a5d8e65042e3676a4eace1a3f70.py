"""Generate a characteristic-zero ideal-membership DAG for the full zero slot.
The verification uses only explicit rational polynomial linear combinations.
"""
import sys,inspect,json,time,argparse
from pathlib import Path
import sympy as sp
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
from sympy.polys import groebnertools
from proof_trace import Trace,Found

def derive():
 R,b,h,u,v,r,t,x=ring('b,h,u,v,r,t,x',QQ)
 M=x*x+b; H=(x+h)*M+u*x+v
 V=(x+h)**2*M+2*(x+h)*(u*x+v)+u*u+r
 D=r*M-2*u*v*x+t+b*u*u-v*v
 assert M*V+t==H*H+D
 P=(M*V+t)**3+3*t*t*V+4*t*M*V*V
 B0=H**3+3*H*D/2
 c1=3*r*r/8+2*t
 c0=-3*h*r*r/8+2*h*t-3*u*v*r/2
 B=B0+c1*x+c0
 residual=P-B*B
 assert all(mon[-1]<=8 for mon in residual)
 eq=[]
 for deg in range(8,-1,-1):
  eq.append(sum(c*sp.prod(s**e for s,e in zip(R.symbols[:-1],mon[:-1])) for mon,c in residual.items() if mon[-1]==deg))
 return eq,list(R.symbols[:-1])

def main():
 p=argparse.ArgumentParser();p.add_argument('--out',required=True,type=Path);args=p.parse_args()
 if args.out.exists():raise FileExistsError('Use a new output file; frozen certificates are not overwritten')
 E,vs=derive();weights=(2,1,2,3,4,6)
 def order(m):return (sum(a*b for a,b in zip(weights,m)),tuple(-e for e in m[::-1]))
 R,*_=ring(','.join(map(str,vs)),QQ,order=order)
 fs=[R.from_expr(e) for e in E];tr=Trace(R,fs,5)
 src=inspect.getsource(groebnertools._buchberger).replace('def _buchberger(f, ring):','def traced(f, ring):')
 a='        h = g.rem([ f[j] for j in J ])';assert src.count(a)==1;src=src.replace(a,'        h = TRACE.monic_rem(g, [f[j] for j in J])')
 a='            r = p.rem(f[:i])';assert src.count(a)==1;src=src.replace(a,'            r = TRACE.monic_rem(p, f[:i])')
 a='        h = spoly(f[ig1], f[ig2], ring)';assert src.count(a)==1;src=src.replace(a,'        h = TRACE.sp(f[ig1], f[ig2])')
 ns={'TRACE':tr,'spoly':groebnertools.spoly};exec(src,ns);st=time.time()
 try:
  gb=ns['traced'](fs,R)
  for power in range(1,13):
   f=R.gens[-1]**power;qs,rem=f.div(gb)
   if not rem:tr.add(f,[(q,g) for q,g in zip(qs,gb) if q])
 except Found:pass
 if tr.target_id is None:raise RuntimeError('No characteristic-zero target certificate generated')
 args.out.parent.mkdir(parents=True,exist_ok=True)
 tr.dump(str(args.out),{'name':'zero20','weights':weights,'coefficient_field':'QQ','method':'exact ideal-membership DAG','input_count':len(fs)})
 print('PURE_TARGET',tr.nodes[tr.target_id]['poly'],'raw_nodes',len(tr.nodes),'seconds',time.time()-st)
 print('FULL_ZERO_SLOT_QQ_CERTIFICATE=PASS')
if __name__=='__main__':main()
