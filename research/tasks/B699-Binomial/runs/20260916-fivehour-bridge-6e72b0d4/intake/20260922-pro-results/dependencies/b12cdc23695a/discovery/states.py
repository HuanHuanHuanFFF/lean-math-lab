from itertools import product
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
def lower(r,v):return sum(max(a-v,0) for a in OFF[r])+(max(DIAG[r]-v,0)+1)//2

def comp_le(n,k):
 if k==0:yield ();return
 for a in range(n+1):
  for b in comp_le(n-a,k-1):yield(a,)+b

def states():
 for h in range(153):
  a=[next(v for v in range(306) if lower(r,v)<=h) for r in range(6)]
  budget=305-2*h-sum(a)
  if budget<0:continue
  for u in comp_le(budget,6):
   v=[x+y for x,y in zip(a,u)];E=305-2*h-sum(v)
   d=[h-lower(r,v[r]) for r in range(6)]
   p=[max(DIAG[r]-v[r],0)%2 if DIAG[r] else 0 for r in range(6)]
   yield dict(h=h,v=v,E=E,d=d,p=p)
if __name__=='__main__':
 st=list(states());print(len(st),'E0',sum(x['E']==0 for x in st))
 for h in (97,107,127,145,152):
  print(h,[x for x in st if x['h']==h and x['E']==0])
