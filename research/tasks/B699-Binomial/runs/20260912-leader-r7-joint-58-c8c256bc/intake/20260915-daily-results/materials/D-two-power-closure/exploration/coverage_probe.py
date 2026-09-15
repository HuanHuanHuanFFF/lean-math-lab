import sys,json,math
from pathlib import Path
D=Path('/mnt/data/B699-ProD-next-work');sys.path.insert(0,str(D/'code'))
from generate import power,maxima,valuation_choose

def small(n,ps):return math.prod(power(n,p) for p in ps)
def qig(n,ps):
 T=math.prod(small(n-r,ps) for r in range(4))
 return T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3

def six(n,ps):
 T=math.prod(small(n-r,ps) for r in range(6))
 return T**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2

def eight(n):
 T=math.prod(small(n-r,[2,3,5,7]) for r in range(8));R=6*n**4-89*n**3+462*n*n-1072*n+960
 return T**6*(n-6)**2*R<5*3**8*2**47*(n-1)**6*(n-3)**6*(n-5)**4*(n-7)**3
rows=json.loads((D/'evidence/row_covers.json').read_text())['rows']
out=[]
for m,n,iv in rows:
 if m!=8:continue
 ps=[2,3,5,7];positions=[tuple(r for r in range(8) if power(n-r,p)==maxima(n,8,[p])[0]) for p in ps]
 if all(len(x)==1 for x in positions) and len(set(x[0] for x in positions))==4 and not(qig(n,ps) or six(n,ps) or eight(n)):
  out.append({'n':n,'positions':[z[0] for z in positions],'QIG':False,'SIXG':False,'EIGHTG':False})
print('four-position outside old three scalar tests:',len(out),out[:20])
(D/'exploration/coverage_probe.json').write_text(json.dumps(out,indent=2))
