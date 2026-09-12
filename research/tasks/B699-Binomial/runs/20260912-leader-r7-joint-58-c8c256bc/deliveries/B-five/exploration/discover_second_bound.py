import mpmath as mp,json
from pathlib import Path
mp.mp.dps=180
D=mp.sqrt(195);eta=14+D; tau=mp.log(eta)/mp.log(2); mus=[mp.log((x+y*D)/26)/mp.log(2) for x,y in [(16,1),(29,2)]]
f=tau;p0,p1=0,1;q0,q1=1,0
M=2**96
for k in range(130):
 a=int(mp.floor(f));p=a*p1+p0;q=a*q1+q0
 p0,p1=p1,p;q0,q1=q1,q
 er=abs(q*tau-p);dd=[abs(q*m-mp.nint(q*m)) for m in mus]
 if min(dd)-M*er>mp.mpf('0.25'):
  cutoff=0
  while mp.mpf(q)*mp.power(27,-cutoff)>=mp.mpf('.25'):cutoff+=1
  out={'p':str(p),'q':str(q),'nearest_mu':[str(int(mp.nint(q*m))) for m in mus], 'error':str(er),'distances':[str(v) for v in dd],'gaps':[str(v-M*er) for v in dd],'cutoff':cutoff,'index':k,'M_bits':96}
  Path(__file__).with_suffix('.json').write_text(json.dumps(out,indent=2));print(out);break
 f=1/(f-a)
print('coefficient',384*96**11, 'less2^82',384*96**11<2**82)
