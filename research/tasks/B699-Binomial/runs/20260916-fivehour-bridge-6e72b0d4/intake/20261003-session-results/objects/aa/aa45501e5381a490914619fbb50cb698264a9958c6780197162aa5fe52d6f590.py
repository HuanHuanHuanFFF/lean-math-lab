from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
OFF=[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]]
DIAG=[0,56,0,41,0,52]
S5_OFF=[[2,2],[1,2],[1,1,1],[1,1,1],[1,1,1,1],[1,1,1,1]]
S5_DIAG=[0,2,0,1,0,0]
v=[12,10,9,8,6,6];h=127
for divisor in [False,True]:
 pts=[]
 for k,r in enumerate(range(3,9)):
  for s,a in enumerate(OFF[k]):pts.append([r,s,1,max(0,a-v[k]-(S5_OFF[k][s] if divisor else 0))])
  if r%2==0:pts.append([r,r//2,2,max(0,DIAG[k]-v[k]-(S5_DIAG[k] if divisor else 0))])
 for prime in [257,263]:
  for mode in [0,1]:
   e=h-(4 if divisor else 0);L=2*e
   name=f's1825_{"S5quot" if divisor else "full"}_p{prime}_m{mode}'
   f=ROOT/'certificates'/f'{name}.input'
   f.write_text(f'{e} {L} {prime} {mode} 21\n'+''.join(' '.join(map(str,x))+'\n' for x in pts))
print('capacity', [2*h-2*sum(max(a-v[k],0) for a in OFF[k])-max(DIAG[k]-v[k],0) for k in range(6)])
