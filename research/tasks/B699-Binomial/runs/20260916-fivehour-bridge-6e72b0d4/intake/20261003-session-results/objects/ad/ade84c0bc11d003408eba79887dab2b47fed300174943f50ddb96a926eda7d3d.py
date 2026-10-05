import sys,time,subprocess,pathlib,json,math,hashlib
from sympy import nextprime,QQ
from sympy.polys.rings import ring
W=pathlib.Path('/mnt/data/r4_work');src=W/'adopted_r3/B699-ProB-REG3-COMPAT-20261002-R3';g=json.loads((src/'certificates/generic.json').read_text())
i=int(sys.argv[1]);f=g['B5'];q=g['low'][str(i)]['stripped'];degf=[max(m[j] for m,c in f) for j in range(3)];degg=[max(m[j] for m,c in q) for j in range(3)];du=degg[2]*degf[0]+degf[2]*degg[0];dy=degg[2]*degf[1]+degf[2]*degg[1]
H=math.factorial(degf[2]+degg[2])*sum(abs(int(c)) for m,c in f)**degg[2]*sum(abs(int(c)) for m,c in q)**degf[2]
print('bounds',du,dy,H.bit_length(),flush=True);M=1;p=1000000007;out={};primes=[];t=time.time()
while M<=2*H:
 p=int(nextprime(p));primes.append(p);outfile=W/f'E{i}_{p}.txt'
 if not outfile.exists():
  with (W/f'res{i}.in').open('r') as inp,outfile.open('w') as op:
   subprocess.run([str(W/'grid_resultant'),str(p),str(du),str(dy)],stdin=inp,stdout=op,stderr=subprocess.DEVNULL,check=True)
 data={}
 for line in outfile.read_text().splitlines():
  a,b,c=map(int,line.split());data[(a,b)]=c
 inv=pow(M,-1,p)
 for k in set(out)|set(data):
  v=out.get(k,0);out[k]=v+M*((data.get(k,0)-v)%p*inv%p)
 M*=p
 print('prime',len(primes),p,'Mbits',M.bit_length(),'secs',round(time.time()-t,2),flush=True)
coeffs={k:v-M if v>M//2 else v for k,v in out.items()};coeffs={k:v for k,v in coeffs.items() if v}
assert max(abs(v) for v in coeffs.values())<=H
(W/f'E{i}_exact.json').write_text(json.dumps({'variables':['u','y'],'terms':[[list(k),str(v)] for k,v in sorted(coeffs.items())],'primes':primes,'CRT_modulus':str(M),'coefficient_abs_bound':str(H),'degree_bounds':[du,dy]},separators=(',',':')))

from functools import reduce
sc=reduce(math.gcd,(abs(v) for v in coeffs.values()));E={k:v//sc for k,v in coeffs.items()}
factors=[]
for axis,name in [(0,'u'),(1,'y')]:
 e=min(k[axis] for k in E);E={tuple(k[j]-(e if j==axis else 0) for j in range(2)):v for k,v in E.items()};factors.append((name,e))
 print('removed',name,e,'left',len(E),flush=True)
for axis,name in [(0,'u-1'),(1,'y-1')]:
 e=0
 while True:
  groups={}
  for k,v in E.items():groups.setdefault(k[1-axis],{})[k[axis]]=v
  q={};ok=True
  for other,ps in groups.items():
   acc=0
   for d in range(max(ps),0,-1):
    acc+=ps.get(d,0)
    if acc:q[(d-1,other) if axis==0 else (other,d-1)]=acc
   if acc+ps.get(0,0):ok=False;break
  if not ok:break
  E=q;e+=1
 factors.append((name,e));print('removed',name,e,'left',len(E),flush=True)
(W/f'E{i}_core.json').write_text(json.dumps({'scalar':str(sc),'known_factors':factors,'terms':[[list(k),str(v)] for k,v in sorted(E.items())]},separators=(',',':')))
print('DONE',i,len(coeffs),'coeff max bits',max(abs(v).bit_length() for v in coeffs.values()),'seconds',time.time()-t,flush=True)
