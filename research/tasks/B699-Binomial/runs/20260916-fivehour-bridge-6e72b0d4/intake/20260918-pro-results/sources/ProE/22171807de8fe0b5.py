"""Auxiliary exact polynomial checks; not a substitute for the paper proof."""
from pathlib import Path
import json,argparse
import sympy as s
j,k,p,h,X,Y=s.symbols('j k p h X Y')
n=j+k;r=(j-1)*(j-2)/k;N=j+r
expr={
 'new_n_minus_one':(N-1)-(j-1)*(n-2)/k,
 'new_n_minus_two':(N-2)-(j-2)*(n-1)/k,
 'same_ratio':(N-1)*(N-2)*j*k-(n-1)*(n-2)*j*r,
 'sum_decrease_identity':(j-r)*k-((k-j)*j+3*j-2),
 'sharp_source_n':(p*p*h-2*p+1)+(p*h-2)*(p*(p*h-2)-1)/2-(p**3*h*h-p*(2*p+1)*h+4)/2,
 'sharp_source_n_minus_two':(p**3*h*h-p*(2*p+1)*h)/2-p*h*(p*p*h-2*p-1)/2,
 'sharp_reflection':(p*p*h-2*p)*(p*p*h-2*p-1)-2*p*((p*h-2)*(p*(p*h-2)-1)/2),
 'sharp_target':p*p*h-2*p+1+2*p-(p*p*h+1),
 'norm_preserved':(41*X+420*Y)**2-105*(4*X+41*Y)**2-(X*X-105*Y*Y),
 'positive_j_growth':(41*X+420*Y)-7*(4*X+41*Y)-(X-7*Y)-(12*X+140*Y),
 'weak_ratio_from_norm':2*((X-12)/7-1)*((X-12)/7-2)-15*(((X-12)/7-Y)/2)*(((X-12)/7+Y)/2)+(X*X-105*Y*Y-256)/28,
}
out={}
for name,v in expr.items():
 q=s.factor(s.together(v));out[name]=str(q)
 if q!=0:raise AssertionError((name,q))
if __name__=='__main__':
 a=argparse.ArgumentParser();a.add_argument('--output',type=Path,required=True);args=a.parse_args()
 args.output.write_text(json.dumps({'status':'PASS','identities':out,'count':len(out)},indent=2,sort_keys=True)+'\n')
 print('PASS',len(out))
