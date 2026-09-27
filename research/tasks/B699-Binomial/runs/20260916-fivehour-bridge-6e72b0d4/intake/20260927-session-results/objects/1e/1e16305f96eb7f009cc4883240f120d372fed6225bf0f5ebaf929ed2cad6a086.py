"""This round's exact transcription of the frozen source-capacity formulas.
State ordering matches the adopted frozen_model.py; this is not its byte copy.
"""
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
def all_states():
 def weak(n,k):
  if not k:
   yield ();return
  for a in range(n+1):
   for rest in weak(n-a,k-1):yield (a,)+rest
 def lower(i,v):return sum(max(a-v,0)for a in OFF[i])+(max(DIAG[i]-v,0)+1)//2
 states=[]
 for h in range(153):
  minimum=[]
  for i in range(6):
   v=0
   while lower(i,v)>h:v+=1
   minimum.append(v)
  budget=305-2*h-sum(minimum)
  if budget<0:continue
  for extra in weak(budget,6):
   v=[a+b for a,b in zip(minimum,extra)]
   cap=[2*h-2*sum(max(a-v[i],0)for a in OFF[i])-max(DIAG[i]-v[i],0)for i in range(6)]
   states.append(dict(id=len(states),h=h,v=v,E=305-2*h-sum(v),cap=cap))
 assert len(states)==2035
 return states
if __name__=='__main__':
 for i in (1643,1644,1646,1650):print(all_states()[i])
