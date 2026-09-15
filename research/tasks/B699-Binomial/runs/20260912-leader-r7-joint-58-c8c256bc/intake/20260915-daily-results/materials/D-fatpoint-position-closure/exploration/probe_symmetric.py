exec(open(__file__.replace('probe_symmetric.py','probe_fat_degrees.py')).read().split('out=[]\nfor H in ')[0])
out=[]
for H in [(0,2,4),(0,2,3)]:
 rs=[r for r in range(7)if r not in H];print('H',H,flush=True);t0=time.time()
 for D in range(32,81):
  ws=weights(rs,D);exps=[(a,b)for a in range(D+1)for b in range(min(a,D-a)+1)];rows=[]
  for rr,w in zip(rs,ws):
   for x in range(rr//2+1):
    y=rr-x
    for i in range(w):
     for t in range(w-i):
      if x==y and i>t:continue
      rows.append([((math.comb(a,i)*math.comb(b,t)*pow(x,a-i,p)*pow(y,b-t,p)if a>=i and b>=t else 0)+(math.comb(b,i)*math.comb(a,t)*pow(x,b-i,p)*pow(y,a-t,p)if a!=b and b>=i and a>=t else 0))%p for a,b in exps])
  rk=rank_mod(rows)
  if rk<len(exps):
   rec=dict(H=H,D=D,rs=rs,weights=ws,rank=rk,ncols=len(exps),nrows=len(rows),symmetric=True);out.append(rec);print('FOUND',rec,'secs',time.time()-t0,flush=True);break
  if D%5==0:print(' no symmetric kernel thru',D,'secs',round(time.time()-t0,1),flush=True)
 (root/'symmetric_degree_probe.json').write_text(json.dumps(out,indent=2))
