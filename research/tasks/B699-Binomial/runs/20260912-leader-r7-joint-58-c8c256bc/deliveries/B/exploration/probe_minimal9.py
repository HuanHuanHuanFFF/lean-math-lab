from math import gcd,isqrt

def prime(p):return p>1 and all(p%q for q in range(2,isqrt(p)+1))
for period in [54,108,216,540,1080]:
 mods=[p for p in range(3,2500,2) if prime(p) and pow(2,period,p)==1]
 squares={p:{9*y*y%p for y in range(p)} for p in mods}
 for mode in ['outer','middle']:
  states=[]
  for h in [1,2,4,5,7,8]:
   if mode=='middle' and 2*h>=9:continue
   for g in range(1,(isqrt(2*h) if mode=='middle' else 2*h)+1):
    if 2*h%(g*g if mode=='middle' else g) or gcd(g,9)>1:continue
    for s in range(period):
     n=g*pow(2,s,81)%81
     if n%9!=2 or (h*(n-1)*(n-2)-18)%81:continue
     rhsfun=lambda m: ((9-2*h)*(g*pow(2,s,m))**2+6*h*(g*pow(2,s,m))-4*h)%m if mode=='middle' else (4*h*((g*pow(2,s,m))-1)*((g*pow(2,s,m))-2)+9)%m
     bad=[m for m in mods if rhsfun(m) not in squares[m]]
     states.append(((h,g,s),bad))
  rem=[x for x,bad in states if not bad]
  print(period,mode,'mods',mods,'states',len(states),'surv',len(rem),rem[:3])
  if not rem:
   pool=states[:];sel=[]
   while pool:
    m=max(mods,key=lambda m:sum(m in bad for x,bad in pool))
    sel.append(m);pool=[z for z in pool if m not in z[1]]
   print('greedy',sel)
