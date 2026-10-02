exec(open('/mnt/data/r6_work/reverse_scale.py').read().split('results=[]')[0])
lin=load(w/'reverse_linears.json');Dgate=unpack(sca['D']);um=u-1;ym=y-1
rho={4:-um**2/16,3:um**2/16,2:-u*um**2/16,1:um/16,0:um**2/16}
records=[]
def ser(p):return [[list(e),str(co)]for e,co in sorted(p.items())]
for i in [4,3,2,1,0]:
 st=time.monotonic();item=next(x for x in lin if x['i']==i);d=item['d'];qs=[unpack(ts)for ts in item['quotient']];assert d==4
 qh=sum((ff*K**j*N**(2-j)for j,ff in enumerate(qs)),R.zero)
 vrec=load(w/f'rev_{i}.json');V=unpack(vrec['poly']);powers=[v for name,v in vrec['stripped']];assert powers[-1]==4
 Cmult=u**powers[0]*y**powers[1]*r**powers[2]*um**powers[3]*ym**powers[4]
 Amult=c**3*rho[i];Bmult=-(qh*um**2).exquo(4*Dgate**2)
 # all basic factors in Cmult are units; seek common exact cancellation
 cancelled=[]
 for name,h in [('u',u),('y',y),('r',r),('u-1',um),('y-1',ym)]:
  n=0
  while not Cmult.rem(h) and not Amult.rem(h) and not Bmult.rem(h):Cmult=Cmult.exquo(h);Amult=Amult.exquo(h);Bmult=Bmult.exquo(h);n+=1
  cancelled.append([name,n])
 # normalize V to primitive integer
 den=sp.ilcm(*[co.denominator for co in V.values()]);con=sp.igcd(*[int(co*den)for co in V.values()]);unit=QQ(con,den);V=V/unit;Cmult*=unit
 # normalize entire identity to common coefficient denominator
 denall=sp.ilcm(*[co.denominator for ff in [Amult,Bmult,Cmult]for co in ff.values()]);Amult*=denall;Bmult*=denall;Cmult*=denall
 contall=sp.igcd(*[int(co)for ff in [Amult,Bmult,Cmult]for co in ff.values()]);Amult/=contall;Bmult/=contall;Cmult/=contall
 G=unpack(gen['low'][str(i)]['stripped'])
 # full characteristic zero identity verification
 err=Amult*G+Bmult*P-Cmult*N**3*V
 assert err==0, (i,'identity failed',len(err))
 rec={'i':i,'power_N':3,'A':ser(Amult),'B':ser(Bmult),'C':ser(Cmult),'V':ser(V),'cancelled_units':cancelled}
 json.dump(rec,open(w/f'colon_{i}.json','w'));records.append(rec)
 print(i,'A B C V',[len(ff)for ff in (Amult,Bmult,Cmult,V)],'degB',max(sum(e)for e in Bmult),'C',Cmult,'seconds',round(time.monotonic()-st,3),flush=True)
json.dump(records,open(w/'colon_identities.json','w'))
