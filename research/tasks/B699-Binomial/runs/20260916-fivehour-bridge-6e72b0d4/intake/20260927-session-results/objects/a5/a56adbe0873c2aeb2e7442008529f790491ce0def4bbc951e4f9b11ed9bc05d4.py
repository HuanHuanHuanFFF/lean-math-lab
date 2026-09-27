from math import gcd
import sympy as sy

def log5(target,k):
 b=next(i for i in range(4) if pow(3,i,5)==target%5)
 for lev in range(2,k+1):
  m=5**lev;o=4*5**(lev-2)
  b=next(b+d*o for d in range(5) if pow(3,b+d*o,m)==target%m)
 return b,4*5**(k-1)
def log2(target,k):
 vals=[i for i in range(2) if pow(3,i,8)==target%8]
 if not vals:return None
 b=vals[0]
 for lev in range(4,k+1):
  m=2**lev;o=2**(lev-3)
  b=next(b+d*o for d in range(2) if pow(3,b+d*o,m)==target%m)
 return b,2**(k-2)
def crt(a,m,b,n):
 g=gcd(m,n)
 if (b-a)%g:return None
 v=((b-a)//g*pow(m//g,-1,n//g))%(n//g)
 return (a+m*v)%(m*(n//g)),m*(n//g)
if __name__=='__main__':
 E=27;s=5**26;S=5*s
 for c in range(2253,200000,4400):
  if not sy.isprime(c):continue
  R=s-2*c
  b5,p5=log5((-pow(R,-1,5**29))%5**29,29)
  b2,p2=log2(pow(5*c,-1,2**64),64)
  combined=crt(b5,p5,b2,p2)
  try:bc=int(sy.discrete_log(c,(-pow(s,-1,c))%c,3));pc=int(sy.n_order(3,c))
  except ValueError:
   print(c,'no log');continue
  combined=crt(*combined,bc,pc)
  if combined is None:
   print(c,'inconsistent');continue
  b,L=combined
  print('FOUND',c,'b',b,'L',L,'b5',b5,'b2',b2,'bc',bc,'pc',pc)
  print('zmod11',((pow(3,b,11)*R+1)*pow(500*s*c,-1,11))%11)
  print('check', (pow(3,b,500*s*c)*R+1)%(500*s*c), (5*c*pow(3,b,2**64)-1)%2**64)
  break
