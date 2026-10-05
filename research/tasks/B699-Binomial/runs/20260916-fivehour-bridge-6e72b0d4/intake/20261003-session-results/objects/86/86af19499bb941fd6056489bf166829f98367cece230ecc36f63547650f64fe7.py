from common import *
from collections import Counter
z=STATES[1937];C=z['C'];h=z['h']
doc=json.loads((ROOT/'sources/ROUND3_s1937.json').read_text());types=list(map(tuple,doc['types']));old=calc(C,RAW);cur=calc(C,types);A=(19,0,0,0,0,0,3);B=(25,0,0,0,0,0,2)
print('baseline',h,C,'old',old[8][C],'current',cur[8][C]);
for tag,px in [('A',A),('B',B)]:
 pre=low(C,h,RAW,px,152); pc=low(C,h,types,px,152)
 print(tag,'OLD preimages',len(pre),'current',len(pc));print(pre)
 (ROOT/f'certificates/{tag}_raw_preimages.json').write_text(json.dumps({'state':1937,'proxy':px,'raw_M7_used':True,'preimages':pre,'current_envelope_preimages':pc},indent=2)+'\n')
for a in range(19,24):
 for b in range(25,31):
  ty=[(a,*x[1:]) if x==A else (b,*x[1:]) if x==B else x for x in types]
  m=int(calc(C,ty)[8][C]);
  if m>h:print('sufficient precise fee counterfactual',a,b,m)
print('critical single-step replacement')
for x in [A,B]:
 ty=[(152,*y[1:]) if y==x else y for y in types];print(x,int(calc(C,ty)[8][C]))
