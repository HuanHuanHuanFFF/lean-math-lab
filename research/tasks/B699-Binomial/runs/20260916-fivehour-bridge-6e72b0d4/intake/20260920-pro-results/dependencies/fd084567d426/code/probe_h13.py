import mpmath as mp
import sympy as sp
from fractions import Fraction
mp.mp.dps=160
T=sorted(mp.polyroots([1,0,-10,10]))
a=[-18+11*t+5*t*t for t in T]
e=[ [1-t for t in T], [1+2*t-t*t for t in T]]
print('alpha roots indexed by theta:',*[mp.nstr(x,35) for x in a])
print('log matrices',[[mp.nstr(mp.log(abs(y)),20) for y in x] for x in e])
x=sp.Symbol('x')
for u in [1-x,1+2*x-x*x]:print('inv',sp.invert(u,x**3-10*x+10))
# wide unit box
def mul(u,v):
 r=[0]*5
 for i in range(3):
  for j in range(3):r[i+j]+=u[i]*v[j]
 for k in [4,3]:r[k-2]+=10*r[k];r[k-3]-=10*r[k]
 return tuple(r[:3])
def norm(u):
 a,b,c=u
 return a**3+20*a*a*c-10*a*b*b+30*a*b*c+100*a*c*c-10*b**3+100*b*c*c+100*c**3
M=[10,4,8]
coef=[sum(abs([t*t-10,t,1][k]/(3*t*t-10))*z for t,z in zip(T,M)) for k in range(3)]
print('wide coefficient box bounds',*[mp.nstr(z,25) for z in coef])
box=[int(mp.floor(z)) for z in coef]
un=[]
for A in range(-box[0],box[0]+1):
 for B in range(-box[1],box[1]+1):
  for C in range(-box[2],box[2]+1):
   if abs(norm((A,B,C)))==1 and all(abs(A+B*t+C*t*t)<m for t,m in zip(T,M)):un.append((A,B,C))
print('wide units',un)
# lattice target distance calculations
M=10**120
for near,i,j in [(2,0,1),(0,1,2),(1,0,2)]:
 di=a[near]-a[i];dj=a[near]-a[j]
 A=mp.log(abs(e[0][i]/e[0][j]));B=mp.log(abs(e[1][i]/e[1][j]));C=mp.log(abs(dj/di))
 bars=[int(mp.floor(M*t+mp.mpf('.5'))) for t in [A,B,C]]
 U=[1,bars[0]];W=[0,bars[1]]
 u=[1,0];w=[0,1]
 dot=lambda x,y:sum(i*j for i,j in zip(x,y))
 for loop in range(1000):
  if dot(U,U)>dot(W,W):U,W=W,U;u,w=w,u
  m=(2*dot(U,W)+dot(U,U))//(2*dot(U,U))
  if m==0:break
  W=[b-m*a for a,b in zip(U,W)];w=[b-m*a for a,b in zip(u,w)]
 det=U[0]*W[1]-U[1]*W[0]
 target=[0,-bars[2]]
 # rows inverse basis and distance squared lower
 distances=[]
 for r in [[W[1],-W[0]],[-U[1],U[0]]]:
  num=dot(r,target);dist=min(num%abs(det),(-num)%abs(det))
  sq=Fraction(dist*dist,dot(r,r))
  distances.append(sq)
 print('case',near,'bars',bars,'basis',[U,W],'transform',[u,w],'distance exponents',[mp.nstr(mp.log10(mp.mpf(s.numerator)/s.denominator)/2,10) for s in distances])
 # finite solutions
powers=[]
for u,iv in [((1,-1,0),(-9,1,1)),((1,2,-1),(21,-12,-5))]:
 assert mul(u,iv)==(1,0,0),(u,iv,mul(u,iv))
 d={0:(1,0,0)}
 for z in range(1,201):d[z]=mul(d[z-1],u);d[-z]=mul(d[-z+1],iv)
 powers.append(d)
sol=[]
for i,ui in powers[0].items():
 for j,uj in powers[1].items():
  A,B,C=mul(ui,uj)
  if 5*B==11*C and C%5==0:
   V=-C//5;Q=A-18*V
   sol.append([i,j,Q,V])
print('solutions exponents<=200',sorted(sol))
