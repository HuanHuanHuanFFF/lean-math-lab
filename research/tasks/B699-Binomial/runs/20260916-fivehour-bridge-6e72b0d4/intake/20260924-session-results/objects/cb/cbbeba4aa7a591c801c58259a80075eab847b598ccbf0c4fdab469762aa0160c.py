#!/usr/bin/env python3
"""Exact construction from the original mixed equation; no finite-field lifting."""
from pathlib import Path
import sympy as sp,json,time,sys,argparse
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
import upstream_derive as old
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
R,w,u,y,La,aa=ring('w,u,y,La,aa',QQ)
def serial(f):return [[list(m),int(c.numerator),int(c.denominator)] for m,c in sorted(f.items())]
def cf(f,var,i):
 idx=R.index(var);return R.from_dict({mo[:idx]+(0,)+mo[idx+1:]:v for mo,v in f.items() if mo[idx]==i})
def rs(f,var,nu,de):
 deg=f.degree(var);return sum((cf(f,var,i)*nu**i*de**(deg-i) for i in range(deg+1)),R.zero)
def raw_regular():
 E=old.original();h,j,k,l,m,n,a=old.h,old.j,old.k,old.l,old.m,old.n,old.a
 js=(4*a*k-6*a)/3+h*(m*m-2*m)-k*l-m*m+2*(m-1)*n
 vals={j:js,k:l*k,m:l*(h+m),n:l*(js+h*m+n),a:l*a}
 eq=[old.divide(f.compose(vals),2,l) for f in E];assert not eq[0];fs=eq[1:]
 G=6*m*m*(m-1)**2;vn=m+m*(m-1)*j
 hn=j*j-2*m*j-1+l*(6*k*(m-1)**2-1)-a*(8*k*m*m-12*m*m+12*m-4)
 sub={h:hn,n:vn,l:G*l,a:G*a};assert not fs[0].compose(sub)
 ans=[]
 for f,p,q in zip(fs[1:],[2,2,2,2,2,3,4,4],[2,2,2,2,2,2,3,4]):
  f=old.divide(old.divide(f.compose(sub),p,m),q,m-1)
  assert all(all(mo[i]==0 for i in [0,5,7]) for mo in f)
  ans.append(R.from_dict({(mo[2],mo[4],mo[1],mo[3],mo[6]):c for mo,c in f.items()}))
 return ans

def strip(f,nz):
 unit,factors=f.factor_list();keep=R.one;dropped=[]
 for g,e in factors:
  q,r=nz.div(g)
  if not r:dropped.append({'factor':serial(g),'power':int(e),'witness':serial(q)})
  else:keep*=g**e
 prod=keep*unit
 for d in dropped:
  g=R.from_dict({tuple(m):QQ(a,b) for m,a,b in d['factor']});prod*=g**d['power']
 assert prod==f
 return keep,{'retained':serial(keep),'unit':[int(unit.numerator),int(unit.denominator)],'dropped':dropped,'nonzero_product':serial(nz)}

def ycase(fs,y0):
 ff=[f.compose(y,y0) for f in fs];var=aa if y0==0 else La;scale=La if y0==0 else aa
 de=cf(ff[0],var,1);nu=-cf(ff[0],var,0);assert rs(ff[0],var,nu,de)==0
 nz1=scale*u*(u-1)*nu;st1=[];st2=[];vals=[]
 for f in ff[1:]:
  g,rec=strip(rs(f,var,nu,de),nz1);st1.append(rec)
  if y0==0:
   g=g.compose(u,u+1);g=rs(g,w,w-3*u-1,6*u*u);nz2=u*(u+1)*w*scale
  else:g=rs(g,w,w+1,2*u);nz2=u*(u-1)*w*scale
  g,rec=strip(g,nz2);st2.append(rec);vals.append(g)
 N=-cf(vals[0],scale,0);D=cf(vals[0],scale,1)
 assert rs(vals[0],scale,N,D)==0
 nz3=w*u*(u+1 if y0==0 else u-1)*N*D
 st3=[];end=[]
 for f in vals[1:]:
  g,rec=strip(rs(f,scale,N,D),nz3);st3.append(rec);end.append(g)
 return {'y_value':y0,'stage1':st1,'stage2':st2,'stage3':st3,'N':serial(N),'D':serial(D),'inputs':list(map(serial,end)),'target':serial(nz3)},end,nz3

def dwcase(fs):
 an=3*(u-1)**2*(y-1)**2;ad=4*u*u*y*y
 first=rs(fs[0],aa,an*La,ad)
 J=cf(first,La,1)/(-3);K0=cf(first,La,0)/(-3)
 assert first==-3*(La*J+K0)
 assert K0==u*u*y**4*(y-1)**2
 Jm=rs(rs(J,u,R.one,1-u),y,R.one,1-y)
 nz0=u*y*(u-1)*(y-1)*J;nzm=u*y*(u-1)*(y-1)*Jm
 stages=[];polys=[]
 for f in fs[1:4]:
  g=rs(rs(f,aa,an*La,ad),La,-K0,J)
  g,r0=strip(g,nz0)
  g=rs(rs(g,u,R.one,1-u),y,R.one,1-y)
  g,r1=strip(g,nzm)
  g=rs(g,w,w,u*u*y*y)
  g,r2=strip(g,nzm)
  stages.append([r0,r1,r2]);polys.append(g)
 bivrecs=[];biv=[]
 for g in polys[1:]:
  res=R.from_expr(sp.resultant(polys[0].as_expr(),g.as_expr(),sp.Symbol('w')))
  z,rec=strip(res,nzm);rec['resultant']=serial(res);bivrecs.append(rec);biv.append(z)
 st=time.time();result=R.from_expr(sp.resultant(biv[0].as_expr(),biv[1].as_expr(),sp.Symbol('u')))
 print('FINAL_RESULTANT_REBUILT',time.time()-st,flush=True)
 factors=json.loads((ROOT/'certificates/univariate_factors.json').read_text())
 scalar=QQ(-53340421415511726979445759505806131200)
 prod=scalar*y**214*(y-1)**28
 for rec in factors:
  cs=rec['coefficients_high_first'];p=sum((QQ(c)*y**(len(cs)-1-i) for i,c in enumerate(cs)),R.zero);prod*=p
 assert prod==result
 return {'J_original':serial(J),'K0':serial(K0),'J_mobius':serial(Jm),'stages':stages,'W_polys':list(map(serial,polys)),'resultants_W':bivrecs,'resultant_U':serial(result),'factor_scalar':int(scalar),'factor_y':214,'factor_yminus1':28,'factors':factors}

def writepoly(o,f,idx):
 o.write(str(len(f))+'\n')
 for mo,c in f.items():o.write(f'{c.numerator} {c.denominator} '+' '.join(str(mo[i]) for i in idx)+'\n')
def main():
 pa=argparse.ArgumentParser();pa.add_argument('--output-dir',type=Path,required=True);args=pa.parse_args();args.output_dir.mkdir(parents=True,exist_ok=False)
 fs=raw_regular();data={'source_regular':list(map(serial,fs)),'y_charts':[]}
 print('RAW_TO_REG5_REBUILT=PASS',flush=True)
 for y0 in [0,1]:
  d,eq,target=ycase(fs,y0);data['y_charts'].append(d)
  with (args.output_dir/f'y{y0}.in').open('w') as o:
   o.write('2 6 0\n2 1\nw u\n')
   for f in eq:writepoly(o,f,[0,1])
  with (args.output_dir/f'y{y0}.target').open('w') as o:writepoly(o,target,[0,1])
  print('Y_CHART_REBUILT',y0,flush=True)
 data['dw0']=dwcase(fs)
 (args.output_dir/'algebra.json').write_text(json.dumps(data,sort_keys=True,separators=(',',':'))+'\n')
 print('EXACT_DW0_AND_Y_CHARTS=PASS',flush=True)
if __name__=='__main__':main()
