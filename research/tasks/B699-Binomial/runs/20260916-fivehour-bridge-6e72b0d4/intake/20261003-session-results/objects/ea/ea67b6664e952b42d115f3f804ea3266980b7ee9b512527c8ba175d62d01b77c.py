import json,math
from fractions import Fraction as Q
from pathlib import Path
classes={352:[1,12,1],425:[2,1,60],776:[1,4,3],1026:[3,2,1],1377:[6,1,4],1450:[1,6,5]}
rows=sum([json.load(open('/mnt/data/c_r10_work/quartics_%d.json'%h))['records'] for h in (3,4,5)],[])
anal={tuple(tuple(x) for x in r['slots']):r for r in json.load(open('/mnt/data/c_r10_work/unsigned_analysis.json'))}
def coeff_bound(k):
 coef=[Q(0)]*5
 for a,b,c in k['terms']:
  if a+b==4:coef[b]=Q(c)
 bs=[]
 for t in range(8):
  lo,hi=Q(t,16),Q(t+1,16);cc=[sum(coef[b]*math.comb(b,i)*lo**(b-i)*(hi-lo)**i for b in range(i,5)) for i in range(5)]
  B=[sum(cc[i]*Q(math.comb(j,i),math.comb(4,i)) for i in range(j+1)) for j in range(5)];bs.append(B)
 rest=sum(Q(abs(c),2**b*352**(4-a-b)) for a,b,c in k['terms'] if a+b<4)
 C=max(abs(x) for arr in bs for x in arr)+rest
 order=min(a+b for a,b,c in k['terms'])
 k['C_bern']=[C.numerator,C.denominator];k['origin_order']=order
 return C/(7**(order-1))
summary={a:{'gamma':Q(0),'max_example':None} for a in classes}
for r in rows:
 for k in r['kernels']:coeff_bound(k)
 good=[(i,k) for i,k in enumerate(r['kernels']) if k['shift_sign'] and k['shift_constant']]
 if not good:
  ar=anal[tuple(tuple(x) for x in r['slots'])]
  if '3*N**3' in ar['gcd']:r['proof_kind']='exceptional_cubic';continue
  used=ar['pair'];r['proof_kind']='resultant';r['pair']=used
 else:r['proof_kind']='sign'
 r['chosen_by_class']={}
 for a,ss in classes.items():
  if good:
   i,k=min(good,key=lambda t:Q(*t[1]['C_bern'])*ss[t[1]['h']-3]/7**(t[1]['origin_order']-1));ii=[i]
   coeff=Q(*k['C_bern'])*ss[k['h']-3]/7**(k['origin_order']-1)
  else:
   ii=used;coeff=max(Q(*r['kernels'][i]['C_bern'])*ss[r['kernels'][i]['h']-3]/7**(r['kernels'][i]['origin_order']-1) for i in used)
  bd=Q(352,335)*math.prod(ss)*coeff
  r['chosen_by_class'][a]={'indices':ii,'gq1_bound':[bd.numerator,bd.denominator]}
  if bd>summary[a]['gamma']:summary[a].update(gamma=bd,max_example=[r['slots'],ii])
for a in summary:
 bd=summary[a]['gamma'];summary[a]['integer_gamma']=math.ceil(bd);summary[a]['gamma']=[bd.numerator,bd.denominator]
 print(a, 'Gamma',math.ceil(bd),'bd',float(bd),'example',summary[a]['max_example'])
Path('/mnt/data/c_r10_work/bounded_quartics.json').write_text(json.dumps(rows))
Path('/mnt/data/c_r10_work/class_bounds.json').write_text(json.dumps(summary,indent=2))
