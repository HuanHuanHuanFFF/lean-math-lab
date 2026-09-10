"""Floating-point falsification/route-selection only; not an acceptance certificate."""
from math import lgamma, log

def bound(i,n,r,s):
 L=i-r-1; lam=2*s-r
 if lam<=0:return -1e300
 a=n//2;b=n-a
 lz=sum(lgamma(a+1)-lgamma(h+1)-lgamma(a-h+1)+lgamma(b+1)-lgamma(h+1)-lgamma(b-h+1) for h in range(1,s+1))
 lz+=sum(lgamma(n-i+h+1)-lgamma(h+1)-lgamma(n-i+1) for h in range(1,L+1))
 return (lgamma(n+1)-lgamma(i+1)-lgamma(n-i+1)-lz/lam)/i

i=3000
for X in [2.001,3,4,5,6,8,10,12,16,24,32,64,128]:
 r=i//3;s=(2*i)//3
 ans=bound(i,int(X*i),r,s)
 print(f'X={X} logU_lower/i={ans:.9f} vs log4={log(4):.9f}')
