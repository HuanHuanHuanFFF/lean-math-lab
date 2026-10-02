from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
OFF=[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]]
DIAG=[0,56,0,41,0,52];UOFF=[[2,2],[1,2],[1,1,1],[1,1,1],[1,1,1,1],[1,1,1,1]];UD=[0,2,0,1,0,0]
v=[9,8,7,6,4,5];h=133
for div in [False,True]:
 pts=[]
 for k,r in enumerate(range(3,9)):
  for s,a in enumerate(OFF[k]):pts.append([r,s,1,max(0,a-v[k]-(UOFF[k][s] if div else 0))])
  if r%2==0:pts.append([r,r//2,2,max(0,DIAG[k]-v[k]-(UD[k] if div else 0))])
 for p in [257,263]:
  for mode in [0,1]:
   e=h-4 if div else h;L=2*e
   name=f's1874_{"S5quot" if div else "full"}_p{p}_m{mode}'
   (ROOT/'certificates'/f'{name}.input').write_text(f'{e} {L} {p} {mode} 21\n'+''.join(' '.join(map(str,x))+'\n' for x in pts))
 print('S5 quotient' if div else 'full',pts)
