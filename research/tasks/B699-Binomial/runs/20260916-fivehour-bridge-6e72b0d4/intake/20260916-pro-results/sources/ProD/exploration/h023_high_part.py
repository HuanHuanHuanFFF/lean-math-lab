import sys,json,math,time,itertools
from pathlib import Path
root=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(root/'sources/frozen/two-power/code'))
import generate as old
p,q=map(int,sys.argv[1:3]);E=int(sys.argv[3])if len(sys.argv)>3 else 886
N=1<<E;T=1<<18;H=[0,2,3];mask=old.residues(6,H)
tab={}
for z in [p,q]:
 ls=[];P=z
 while P<N:
  if z!=2 or P>=4:ls.append(P)
  P*=z
 tab[z]=ls
st=time.time();counts={'pairs':0,'position_cases':0,'range':0,'cover':0,'exact':0,'mass':0};ns=set()
start=int(sys.argv[4]) if len(sys.argv)>4 else 0
end=int(sys.argv[5]) if len(sys.argv)>5 else len(tab[p])
for P in tab[p][start:end]:
 for Q in tab[q]:
  counts['pairs']+=1;inv=pow(P,-1,Q)
  for r,s in itertools.permutations(H,2):
   counts['position_cases']+=1;n=r+P*((s-r)*inv%Q)
   if not T<=n<N:continue
   counts['range']+=1
   if not mask[n%1800]:continue
   counts['cover']+=1
   if (n-r)%(P*p)==0 or(n-s)%(Q*q)==0:continue
   if P<=5 and max(old.power(n-h,p)for h in range(6))!=P:continue
   if Q<=5 and max(old.power(n-h,q)for h in range(6))!=Q:continue
   counts['exact']+=1
   M=math.prod(old.maxima(n,6,[2,3,5]))
   if M*M>n**3:counts['mass']+=1;ns.add(n)
out={'p':p,'q':q,'N_power_of_two':E,'index_start':start,'index_end':min(end,len(tab[p])),'outer_length':len(tab[p]),'stats':counts,'candidates':sorted(ns),'seconds':time.time()-st}
(root/f'exploration/H023_high_{p}_{q}_{E}_{start}_{end}.json').write_text(json.dumps(out,indent=2));print(out)
