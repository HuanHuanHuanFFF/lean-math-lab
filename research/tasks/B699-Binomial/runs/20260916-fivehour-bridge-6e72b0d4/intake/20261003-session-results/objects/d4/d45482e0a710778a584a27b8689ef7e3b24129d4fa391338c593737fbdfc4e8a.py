exec(open('/mnt/data/r6_work/reverse_scale.py').read().split('results=[]')[0])
Dgate=unpack(sca['D']);basic=[('u',u),('y',y),('r',r),('u-1',u-1),('y-1',y-1),('D',Dgate)]
res=[]
for src in lift:
 if src['i']==6:continue
 st=time.monotonic();qs=coeffs(src['poly'])[::-1];d=len(qs)-1;f=qs.copy();q=[R.zero for _ in range(d-1)]
 for j in range(d,1,-1):
  lc=f[j];f=[ff*c for ff in f];q=[qq*c for qq in q];q[j-2]+=lc;f[j]-=lc*c;f[j-1]-=lc*b;f[j-2]-=lc*a
 A,B=f[1],f[0];fac=R.one;hist=[]
 for name,g in basic:
  count=0
  while not A.rem(g) and not B.rem(g):
   A=A.exquo(g);B=B.exquo(g);fac*=g;count+=1
  hist.append([name,count])
 den=sp.ilcm(*[cc.denominator for ff in (A,B) for cc in ff.values()]);num=sp.igcd(*[int(cc*den)for ff in(A,B)for cc in ff.values()]);unit=QQ(num,den);A=A/unit;B=B/unit;fac*=unit
 def ser(F):return [[list(e),str(v)]for e,v in F.items()]
 item={'i':src['i'],'d':d,'c_power':d-1,'A':ser(A),'B':ser(B),'factor':ser(fac),'gates':hist,'unit':str(unit),'quotient':[ser(v)for v in q]}
 res.append(item)
 print(src['i'],len(A),len(B),max(sum(e)for e in A),max(sum(e)for e in B),hist,'unit',unit,time.monotonic()-st,flush=True)
 (w/f'lin_{src["i"]}.json').write_text(json.dumps(item))
(w/'reverse_linears.json').write_text(json.dumps(res))
# 4vars z=t,r,u,y
polys=[]
polys.append({(2,e[2],e[0],e[1]):int(v) for e,v in c.items()} | {(1,e[2],e[0],e[1]):int(v) for e,v in b.items()} | {(0,e[2],e[0],e[1]):int(v)for e,v in a.items()})
for item in res:
 polys.append({(1,e[2],e[0],e[1]):int(QQ(v))for e,v in item['A']} | {(0,e[2],e[0],e[1]):int(QQ(v))for e,v in item['B']})
# add tN-K optional. t=1/L
extra={(1,e[2],e[0],e[1]):int(v)for e,v in N.items()}|{(0,e[2],e[0],e[1]):-int(v)for e,v in K.items()}
for tag,pp in [('revl6',polys),('revl7', [extra]+polys)]:
 with open(w/(tag+'.txt'),'w') as f:
  f.write(str(len(pp))+'\n')
  for p in pp:
   f.write(str(len(p))+'\n')
   for e,v in p.items():f.write(' '.join(map(str,e))+' '+str(v)+'\n')
