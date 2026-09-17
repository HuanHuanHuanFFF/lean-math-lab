import math,json,time
from sympy import factorint,divisors

def ud(n):
    out=[1]
    for p,e in factorint(n).items():
        w=int(p)**int(e);out += [v*w for v in out[:]]
    return out
start=time.time(); hits=[]; stats={'d':0,'states':0,'squares':0,'integer_V':0,'primitive':0,'rows':0}
for kap in (1,3):
 for d in range(3 if kap==1 else 5,3001,2):
    if kap==3 and d%3==0:continue
    M=d*d+2*kap*d-2*kap*kap;B=d*d+kap*d-3*kap*kap
    qa=list(map(int,divisors((3 if kap==1 else 1)*B)))
    for a in ud(d):
     for m in ud(M):
      E=a*m;v=M//m
      for Q0 in qa:
       if 512*B*B*a**6 >=27*kap**4*d*M*Q0**2:continue
       stats['states']+=1
       D=4*Q0*M*m-a*a*(3*d*d+4*kap*d-12*kap*kap)
       if D<0:continue
       rt=math.isqrt(D)
       if rt*rt!=D:continue
       stats['squares']+=1
       for sign in (-1,1):
        num=(d+2*kap)*a+sign*rt
        if num%(2*v):continue
        V=num//(2*v);W=kap*V
        if W<=E or W%2==0:continue
        stats['integer_V']+=1
        if math.gcd(V,E)!=1:continue
        stats['primitive']+=1
        L0=(d*V+E)//a**3;n=2*L0*Q0
        ev=(n&-n).bit_length()-1;odd=n>>ev
        possible=[]
        for c in (1,3) if kap==1 else (1,):
         if odd%c or (c==3 and odd%9==0):continue
         for e in range(max(0,ev-2)):
          g=(odd//c)*2**e
          if (W-E)%(2*g*g)==0:
           possible.append((c,g))
        if possible:stats['rows']+=1
        if len(hits)<40 or possible:
         hits.append({'kap':kap,'d':d,'a':a,'m':m,'Q0':Q0,'V':V,'W':W,'E':E,'n':n,'odd_n':odd,'row_c_g':possible})
    stats['d']+=1
result={'range':3000,'stats':stats,'hits':hits,'seconds':time.time()-start}
json.dump(result,open('/mnt/data/b699-next-exploration/probe_negative.json','w'),indent=2)
print(json.dumps({'stats':stats,'hits':hits[:5],'seconds':result['seconds']}))
