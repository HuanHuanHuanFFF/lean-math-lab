from math import gcd,isqrt
import json,time,argparse

def run(Bmax=100,Tmax=3,Emax=130):
 st=time.time(); count=dict(triples=0,inverse_divisible=0,c_primitive=0,size_pass=0,tail_pass=0,exact_E=0,w_slots=0,primitive_W=0,z_integer=0,z_square=0,delta_positive=0,delta_square=0)
 found=[]; first_z=[]
 for b in range(1,Bmax+1):
  B=3**b
  old_s=1; inv=0; inv_mod5=pow(B,-1,5)
  for E in range(2,Emax+1):
   # Lift the same inverse from old_s to 5*old_s exactly; no repeated large Euclidean inverse.
   correction=((1-B*inv)//old_s*inv_mod5)%5
   inv+=correction*old_s
   s=5*old_s;old_s=s;S=5*s
   for t in range(Tmax+1):
    count['triples']+=1; A=3**(2*t); r=inv
    if r%(2*A):continue
    count['inverse_divisible']+=1; c=r//(2*A)
    if gcd(c,30)!=1: continue
    count['c_primitive']+=1
    if B<=10*c:continue
    count['size_pass']+=1
    n=10*A*c*B
    if n%8!=2:continue
    count['tail_pass']+=1
    q=(r*B-1)//s
    if q%5==0:continue
    count['exact_E']+=1
    maxpos=(s-1)//r; maxneg=(s-1)//(4*r)
    for W in list(range(1,maxpos+1))+list(range(-maxneg,0)):
     count['w_slots']+=1; R=s-r*W
     if gcd(abs(W),30*c*R)!=1:continue
     count['primitive_W']+=1
     znum=B-q*W; zden=500*c
     if znum<=0 or znum%zden:continue
     count['z_integer']+=1; z2=znum//zden; z=isqrt(z2)
     if z*z!=z2 or z%3==0:continue
     count['z_square']+=1
     d2=A*B*B-40*(n-1)*z2
     row=dict(b=b,t=t,E=E,A=A,B=B,c=c,r=r,W=W,R=R,S=S,q=q,z=z,delta2=d2,n=n)
     first_z.append(row)
     if d2<=0:continue
     count['delta_positive']+=1; d=isqrt(d2)
     if d*d!=d2:continue
     count['delta_square']+=1; alpha=3**t*B; g=10*3**t*c; beta=(alpha-d)//2; j=g*beta
     row.update(delta=d,g=g,beta=beta,j=j)
     found.append(row)
 return dict(limits=dict(b_max=Bmax,t_max=Tmax,E_max=Emax),counts=count,z_square_rows=first_z,full_norm_rows=found,seconds=time.time()-st)
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--b',type=int,default=100);p.add_argument('--t',type=int,default=3);p.add_argument('--E',type=int,default=130);p.add_argument('--output',required=True);a=p.parse_args()
 out=run(a.b,a.t,a.E);open(a.output,'w').write(json.dumps(out,indent=2)+'\n');print(out['counts']);print('seconds',out['seconds']);print('z rows',len(out['z_square_rows']))
