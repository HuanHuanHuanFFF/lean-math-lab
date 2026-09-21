import math
import mpmath as mp
mp.mp.dps=60
roots=sorted(mp.polyroots([1,0,-10,10]))
u1=[1-t for t in roots];u2=[1+2*t-t*t for t in roots]
logs=[[mp.log(abs(u)) for u in u1],[mp.log(abs(u)) for u in u2]]
M=[mp.exp((abs(logs[0][i])+abs(logs[1][i]))/2) for i in range(3)]
print('roots',*[str(r) for r in roots],sep='\n')
print('units',u1,u2,'M',M,'R',logs[0][0]*logs[1][1]-logs[0][1]*logs[1][0])
cs=[]
for k in range(3):
 tot=0
 for i,t in enumerate(roots):
  den=mp.fprod(t-s for j,s in enumerate(roots) if j!=i)
  factor=[t*t-10,t,1][k]
  tot+=abs(factor/den)*M[i]
 cs.append(tot)
print('coefficient bounds',cs)

def mul(u,v):
 r=[0]*5
 for i in range(3):
  for j in range(3):r[i+j]+=u[i]*v[j]
 for k in [4,3]:
  r[k-2]+=10*r[k];r[k-3]-=10*r[k]
 return tuple(r[:3])
def norm(u):
 a,b,c=u
 return a**3+20*a*a*c-10*a*b*b+30*a*b*c+100*a*c*c-10*b**3+100*b*c*c+100*c**3
# check norm manually resultant comparison later
units=[]
for a in range(-math.ceil(cs[0]),math.ceil(cs[0])+1):
 for b in range(-math.ceil(cs[1]),math.ceil(cs[1])+1):
  for c in range(-math.ceil(cs[2]),math.ceil(cs[2])+1):
   u=(a,b,c)
   if abs(norm(u))==1 and all(abs(a+b*t+c*t*t)<Mi*(1+mp.mpf('1e-50')) for t,Mi in zip(roots,M)):
    units.append(u)
print('box units',units)
