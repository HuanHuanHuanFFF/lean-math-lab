"""Exact constants for new LOW ORDINARY MULTIPLICITY consumers.
No unknown-H matrix is allocated. This instantiates frozen LEDGER/ESC,
not a replay of its historical proof or any original NC9 search.
"""
from math import factorial
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
def ceildiv(a,b):return (a+b-1)//b
def dim(d):return sum(d-2*b+1 for b in range(d//2+1)) if d>=0 else 0

def parameters(D,x,mu,m,h,c,a):
 d=6*m-1;f=dim(d);k=dim(d-D);Cmax=(m-1)*mu+21;s=f-k-Cmax
 tau=lambda q:q*(q+1)//2
 R=21*tau(m);Lmax=21*tau(m-1);U=f+Lmax
 lr=R.bit_length();ch=ceildiv((tau(m)*9**(2*D)).bit_length(),2)
 Sd=sum(i+2*j for j in range(d//2+1) for i in range(d-2*j+1))
 A=ceildiv(2*lr*f+13*Sd,4)+ch*Lmax+ceildiv(U,2)
 v=ceildiv(f*f.bit_length(),2);eta=D+x;l1=ceildiv(f.bit_length(),2)
 assert c*s>A+v+eta*k
 assert 21*tau(m)+(a-1)*Cmax <= a*(f-k)+k
 B=c+l1+a*h;e=d//2;fb=factorial(e+x).bit_length()
 value=B+66*m+7*m*(h+3*D);res=e*h+x*B+fb
 assert max(value,res)<14000001
 return dict(D=D,Xdegree=x,mu_max=mu,m=m,h=h,c=c,a=a,d=d,f=f,k=k,Cmax=Cmax,s_min=s,
 Rmax=R,Lmax=Lmax,Umax=U,ell_R=lr,c_H=ch,S_d=Sd,A=A,v=v,eta=eta,l1_bits=l1,
 escape_left=c*s,escape_right=A+v+eta*k,F_norm_exponent=B,value_exponent=value,resultant_exponent=res,factorial_bits=fb)

def main():
 out=[parameters(8,4,22,11,100000,20000,25),parameters(10,5,28,13,75000,28000,28)]
 (ROOT/'evidence/height_consumers.json').write_text(json.dumps(out,indent=2))
 for q in out: print(q,flush=True)
if __name__=='__main__':main()
