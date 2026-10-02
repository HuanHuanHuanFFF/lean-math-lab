#!/usr/bin/env python3
"""Regenerate exact R6 identities with SymPy. Discovery only; verify.py is independent.
Usage: python -B code/generate.py --output-dir /tmp/r6-generated
The output directory must be outside the immutable evidence directory.
"""
from pathlib import Path
import argparse,json,math,time
from sympy import QQ
from sympy.polys.rings import ring
ROOT=Path(__file__).resolve().parents[1]
def load(p):return json.loads((ROOT/p).read_text())
def main():
 ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--output-dir',required=True);args=ap.parse_args();out=Path(args.output_dir).resolve()
 if out==ROOT or ROOT in out.parents:ap.error('Output must be outside the evidence directory.')
 out.mkdir(parents=True,exist_ok=True)
 R,u,y,r,L=ring('u,y,r,L',QQ)
 def up(ts):return R.from_dict({tuple(e) if len(e)==4 else tuple(e)+(0,):QQ(c)for e,c in ts})
 def ser(p):return [[list(e[:3]),str(v)]for e,v in sorted(p.items())]
 def content(p):
  den=math.lcm(*[int(c.denominator)for c in p.values()]);num=math.gcd(*[int(c*den)for c in p.values()]);return QQ(num,den)
 s=load('inputs/R1_scale.json');g=load('inputs/generic.json');reg=load('inputs/R1_regular.json')['R']
 D,F,C=[up(s[k])for k in ['D','F','C']];a,b,c=[up(s[k])for k in ['a','b','c']];N,K,P=[up(g[k])for k in ['N','K','B5']]
 um=u-1;ym=y-1;NN=L*F+C;DD=L*D
 rho={4:-um**2/16,3:um**2/16,2:-u*um**2/16,1:um/16,0:um**2/16};expected_scalar={4:3,3:6,2:3,1:6,0:3}
 for i in [4,3,2,1,0]:
  st=time.monotonic();ts=reg[str(i)]['terms'];dw=max(e[0]for e,v in ts);assert dw==4
  z=R.zero
  np=[NN**k for k in range(dw+1)];dp=[DD**k for k in range(dw+1)]
  for (ww,uu,yy,ll,al),co in ts:z+=QQ(co)*np[ww]*dp[dw-ww]*u**uu*y**yy*L**(ll+al)*r**al
  z=z.exquo(L**dw);sc=content(z);assert sc==expected_scalar[i];H=z/sc
  cs=[R.from_dict({e[:3]+(0,):v for e,v in H.items()if e[3]==j})for j in range(5)]
  ff=cs[::-1];quot=[R.zero]*3
  for j in range(4,1,-1):
   lc=ff[j];ff=[v*c for v in ff];quot=[v*c for v in quot];quot[j-2]+=lc
   ff[j]-=lc*c;ff[j-1]-=lc*b;ff[j-2]-=lc*a
  assert all(v==0 for v in ff[2:]);raw=ff[1]*K+ff[0]*N;V=raw;exp=[]
  for div in [u,y,r,um,ym,N,K,D]:
   k=0
   while V and not V.rem(div):V=V.exquo(div);k+=1
   exp.append(k)
  assert exp[5:]==[0,0,4]
  cm=u**exp[0]*y**exp[1]*r**exp[2]*um**exp[3]*ym**exp[4]
  qh=sum((q*K**j*N**(2-j)for j,q in enumerate(quot)),R.zero)
  am=c**3*rho[i];bm=-(qh*um**2).exquo(4*D**2)
  cancelled=[]
  for name,div in [('u',u),('y',y),('r',r),('u-1',um),('y-1',ym)]:
   k=0
   while not cm.rem(div)and not am.rem(div)and not bm.rem(div):cm=cm.exquo(div);am=am.exquo(div);bm=bm.exquo(div);k+=1
   cancelled.append([name,k])
  cv=content(V);V/=cv;cm*=cv
  allco=[co for pp in [am,bm,cm]for co in pp.values()];den=math.lcm(*[int(co.denominator)for co in allco]);con=math.gcd(*[int(co*den)for co in allco]);sc=QQ(den,con)
  am*=sc;bm*=sc;cm*=sc;G=up(g['low'][str(i)]['stripped'])
  assert cm==1 and am*G+bm*P==N**3*V
  cert={'i':i,'power_N':3,'A':ser(am),'B':ser(bm),'C':ser(cm),'V':ser(V),'cancelled_units':cancelled}
  old=load(f'certificates/colon_{i}.json')
  assert all(cert[k]==old[k]for k in ['i','power_N','A','B','C','V'])
  (out/f'colon_{i}.json').write_text(json.dumps(cert,sort_keys=True,indent=2)+'\n')
  print(json.dumps({'i':i,'status':'PASS','matches_existing_integer_polynomials':True,'seconds':round(time.monotonic()-st,3)}),flush=True)
if __name__=='__main__':main()
