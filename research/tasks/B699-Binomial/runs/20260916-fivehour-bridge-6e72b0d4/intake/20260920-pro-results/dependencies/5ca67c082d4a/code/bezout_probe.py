import sys,json,pathlib,collections
p=pathlib.Path(sys.argv[1]);sys.path.insert(0,str(p/'code'));from ledger import states,OFF,DIAG
fams=[]
for q,fn in [(11,'nf65_signatures.json'),(12,'nf71_signatures.json')]:
 for f in json.loads((p/'evidence'/fn).read_text())['families']:
  if q==12 and f['index'] in [2673,2830]:continue
  fams.append((q,f['index'],{(r,v):m for r,v,m in f['ordinary_multiplicities']}))
viol=collections.Counter();marg={};ex=[]
for h,vs,ds,ps,E in states():
 M={}
 for i,r in enumerate(range(3,9)):
  for j,mm in enumerate(OFF[i]):M[r,j*(r-j)]=max(mm-vs[i],0)
  if DIAG[i]:M[r,r*r//4]=(max(DIAG[i]-vs[i],0)+1)//2
 for q,idx,mm in fams:
  dot=sum(m*M[k] for k,m in mm.items()); gap=q*(305-sum(vs))-dot
  marg[q,idx]=min(gap,marg.get((q,idx),999999))
  if gap<0:viol[q,idx]+=1;ex.append([h,list(vs),q,idx,gap])
print('min gaps',marg,'viol',viol,'examples',ex[:3])
