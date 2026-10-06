"""Exact signed-row representation comparison against original CRT source.
This is a Python roundtrip/comparison, not a Lean or mathematical acceptance.
"""
import hashlib, json, pickle, re
from extract import REPO, OUT, Tree
from compress_i11 import SCRATCH, PAIRS

STAGES=[(2**109,118703030,{2:108,3:68,5:46,7:38}),
 (1458309064184540964,92731,{2:60,3:38,5:25,7:21}),
 (304531636235,3550,{2:38,3:24,5:16,7:13}),
 (207734386,757,{2:27,3:17,5:11,7:9}),
 (29294603,500,{2:24,3:15,5:10,7:8})]

def main():
 with (SCRATCH/'i11-slice.pickle').open('rb') as f:tree,_,_=pickle.load(f)
 checked={};sources={};tuples=0;digest=hashlib.sha256()
 for d in tree.decls.values():
  cell=re.fullmatch(r'cellA(\d+)B(\d+)',d['name'])
  if not cell:continue
  ns=d['namespace']
  match=re.search(r'CRTStage([0-3])Pair([2357])([2357])\.',ns)
  terminal=re.search(r'I11TerminalMembership.Pair([2357])([2357])$',ns)
  if match:stage,p,q=map(int,match.groups())
  elif terminal:stage=4;p,q=map(int,terminal.groups())
  else:continue
  a,b=map(int,cell.groups());H,M,ranges=STAGES[stage]
  assert (p,q) in PAIRS and 1<=a<=ranges[p] and 1<=b<=ranges[q]
  P,Q=p**a,q**b;inverse=pow(P,-1,Q)
  supplied=int(re.search(r'inverse := (\d+)',d['text'])[1]);assert supplied==inverse,(d['full'],supplied,inverse)
  exceptions={int(v):tuple(map(int,(lo,hi))) for v,lo,hi in re.findall(r'if d = \((-?\d+) : ℤ\) then ⟨(-?\d+),\s*(-?\d+)⟩',d['text'])}
  fallback=re.findall(r'⟨(-?\d+),\s*(-?\d+)⟩',d['text'])[-1];default=tuple(map(int,fallback))
  capA=min(M,(H-1)//P);capC=min(M,(H-1)//Q)
  values=[]
  for displacement in range(-10,11):
   z=displacement*inverse%Q;rho=z or Q;c0=(P*rho-displacement)//Q
   calculated=(max(0,(1-c0+P-1)//P),min((capA-rho)//Q,(capC-c0)//P))
   original=exceptions.get(displacement,default)
   assert calculated==original,(d['full'],displacement,calculated,original)
   values.append(calculated);tuples+=1
  key=(stage,p,q,a,b)
  if key in checked:assert checked[key]==values
  checked[key]=values;sources[d['module']]=tree.mods[d['module']]['sha256']
  digest.update(json.dumps([key,inverse,values],separators=(',',':')).encode()+b'\n')
 expected={(stage,p,q,a,b) for stage,(_,_,r) in enumerate(STAGES) for p,q in PAIRS for a in range(1,r[p]+1) for b in range(1,r[q]+1)}
 assert set(checked)==expected,(len(checked),len(expected),len(expected-set(checked)))
 report={'status':'exact_source_representation_comparison_only','cells':len(checked),'signedRowComparisons':tuples,'shifts':[-10,10],'allThirtyStagePairRectanglesComplete':True,'sourceTableSHA256':digest.hexdigest(),'sources':sources,'note':'Python modular inverse and Euclidean-division formulas match every source inverse and signed bounds; Lean gcdA implementation and original checker soundness still require independent kernel compilation.'}
 (OUT/'analysis/crt-reencoding-roundtrip.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({k:v for k,v in report.items() if k!='sources'},ensure_ascii=False))

if __name__=='__main__':main()
