#!/usr/bin/env python3
"""Reconstruct the STILL OPEN five-parameter regular mixed chart. No search here."""
from derive import R,h,j,k,l,m,n,a,x,original,divide,writepoly
from pathlib import Path
import argparse,json

def main():
 pa=argparse.ArgumentParser();pa.add_argument('--output-dir',required=True,type=Path);args=pa.parse_args();args.output_dir.mkdir(parents=True,exist_ok=False)
 E=original()
 js=(4*a*k-6*a)/3+h*(m*m-2*m)-k*l-m*m+2*(m-1)*n
 vals={j:js,k:l*k,m:l*(h+m),n:l*(js+h*m+n),a:l*a}
 eq=[divide(f.compose(vals),2,l) for f in E];assert not eq[0];fs=eq[1:]
 G=6*m*m*(m-1)**2
 vn=m+m*(m-1)*j
 hn=j*j-2*m*j-1+l*(6*k*(m-1)**2-1)-a*(8*k*m*m-12*m*m+12*m-4)
 sub={h:hn,n:vn,l:G*l,a:G*a}
 assert not fs[0].compose(sub)
 out=[]
 for f,p,q in zip(fs[1:],[2,2,2,2,2,3,4,4],[2,2,2,2,2,2,3,4]):out.append(divide(divide(f.compose(sub),p,m),q,m-1))
 idx=[2,4,1,3,6]
 with (args.output_dir/'regular5.in').open('w') as o:
  o.write('5 8 4\n1 1 1 1 1\nw u y Lambda alpha\n')
  for f in out:writepoly(o,f,idx)
 coef=out[0].diff(k)
 expected=R.domain(3,4)*(8*a*m*m*j*j-6*l*(m-1)**2*(j-1)**2)
 assert coef==expected
 (args.output_dir/'scope.json').write_text(json.dumps({'status':'OPEN_EXPLORATORY_EQUATIONS_ONLY','parameters':['w','u','y','Lambda','alpha'],'equations':8,'terms':[len(f) for f in out],'nonzero':['Lambda','alpha','u','u-1','2w-3','original t'],'highest_two_residuals_eliminated_exactly':True,'nonzero_w_coefficient_not_proved':True},indent=2,sort_keys=True)+'\n')
 print('REGULAR_CHART_IDENTITIES=PASS; REGULAR_CHART_CLOSURE=NOT_PROVED',flush=True)
if __name__=='__main__':main()
