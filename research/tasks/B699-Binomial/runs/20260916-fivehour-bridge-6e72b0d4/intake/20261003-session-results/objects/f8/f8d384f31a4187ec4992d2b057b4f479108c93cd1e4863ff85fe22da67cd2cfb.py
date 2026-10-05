from common import *
from enumerate_types import enumerate_types
import collections,hashlib
cat={(a['q'],*a['fee']):a['mask'] for a in json.loads((ROOT/'sources/catalog106.json').read_text())}
def alltypes(idx,cm=cat,lic=0):
 z=STATES[idx];C=z['C'];h=z['h'];old=calc(C,RAW);ty=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fs=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not fs:continue
  u=h-int(old[7][tuple(b-a for a,b in zip(c,C))])
  for q in range(min(fs),u+1):
   if (q,*c) in cm and not cm[q,*c]&~lic:continue
   ty.append((q,*c))
 return sorted(ty)
def enum(idx,types,name):
 z=STATES[idx];rows,lower=enumerate_types(types,z['C'],z['h']);stem=ROOT/f'certificates/{name}'
 stem.with_suffix('.types.tsv').write_text(''.join(' '.join(map(str,t))+'\n' for t in types))
 blob=''.join(' '.join(map(str,a))+'\n' for a,d,B in rows);stem.with_suffix('.multisets.tsv').write_text(blob)
 supports={t:sum(t in [types[i] for i in a] for a,d,B in rows) for t in types}
 rec={'state':idx,'h':z['h'],'C':z['C'],'types':len(types),'multisets':len(rows),'lower':lower,'degree_counts':dict(collections.Counter(d for a,d,B in rows)),'saturated':sum(not any(B) for a,d,B in rows),'supports':[(t,k) for t,k in supports.items() if k],'common':[t for t,k in supports.items() if k==len(rows) and k],'first':[[types[i] for i in a] for a,d,B in rows[:5]]}
 stem.with_suffix('.json').write_text(json.dumps(rec,indent=2)+'\n')
 print(name,{k:v for k,v in rec.items() if k not in ['supports','first']},flush=True)
 return rec,rows
if __name__=='__main__':
 idx=1972;z=STATES[idx]
 for name,proxy in [('A',(5,0,1,0,0,0,4)),('B',(14,0,0,0,0,0,4))]:
  pr=low(z['C'],z['h'],RAW,proxy,z['h']);rec={'state':idx,'proxy':proxy,'preimages':pr,'histogram':[{'fee':c,'q':[a[0] for a in pr if a[1:7]==c]} for c in sorted(set(a[1:7] for a in pr))]}
  (ROOT/f'certificates/preimages1972_{name}.json').write_text(json.dumps(rec,indent=2)+'\n');(ROOT/f'certificates/preimages1972_{name}.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in pr))
  print('PREIMAGES',name,'count',len(pr),rec['histogram'],flush=True)
 ty=alltypes(idx);rec,rows=enum(idx,ty,'s1972_before106')
 targets=[(5,0,1,0,0,0,4),(14,0,0,0,0,0,4)]
 tc={k:0 for k in targets}
 for k in targets: print('TARGET',k,'support',sum(k in [ty[i] for i in a] for a,d,B in rows),flush=True)
 notcovered=[(a,d,B) for a,d,B in rows if not any(k in [ty[i] for i in a] for k in targets)]
 print('UNCOVERED',len(notcovered),'first',[[ty[i] for i in a] for a,d,B in notcovered[:3]],flush=True)
 enum(idx,alltypes(idx,{**cat,**tc}),'s1972_hyp_targets')
