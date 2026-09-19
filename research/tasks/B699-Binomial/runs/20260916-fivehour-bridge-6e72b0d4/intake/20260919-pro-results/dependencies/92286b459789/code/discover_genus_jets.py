#!/usr/bin/env python3
"""New saturation remainder discovery after genus pruning; no old run replay."""
import json,argparse,time,math
from pathlib import Path
from collections import Counter
import numpy as np
from discover_nf import Model,RS
R=Path(__file__).resolve().parents[1];P=1000003

def witness(mat):
 a=np.array([[v%P for v in row] for row in mat],dtype=np.int64);ids=list(range(len(mat)));rr=0;rs=[];cs=[]
 for c in range(a.shape[1]):
  nz=np.flatnonzero(a[rr:,c])
  if not len(nz):continue
  i=rr+int(nz[0]);rs.append(ids[i]);cs.append(c)
  if i!=rr:a[[i,rr]]=a[[rr,i]];ids[i],ids[rr]=ids[rr],ids[i]
  iv=pow(int(a[rr,c]),-1,P);a[rr,c:]=a[rr,c:]*iv%P
  if rr+1<len(a):
   factors=a[rr+1:,c].copy();a[rr+1:,c:]=(a[rr+1:,c:]-factors[:,None]*a[rr,c:])%P
  rr+=1
  if rr==len(a):break
 return rs,cs

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--q',type=int,required=True);ar=ap.parse_args();q=ar.q;t=time.monotonic()
 inp=json.loads((R/f'evidence/sat{6*q}_genus_diagnostic.json').read_text());todo=inp['records_not_excluded_by_test'];m=Model(q);out=[];bad=[];maxrows=0
 for ii,rec in enumerate(todo):
  roots=tuple(tuple(rt) for rt in rec['roots']);h0=m.h0(roots);labels=[];A=[]
  for r,rt in zip(RS,roots):
   for v,e in sorted(Counter(rt).items()):
    for i in range(1,e):
     for j in range(e-i):
      k=(r,v,i,j);labels.append(k)
      if k not in m.cache:m.cache[k]=tuple(m.jet(b,k) for b in m.bas)
      A.append(list(m.cache[k])+[-m.jet(h0,k)])
  rs,cs=witness(A);maxrows=max(maxrows,len(A))
  if cs!=list(range(m.nc+1)):bad.append(ii);print('PENDING',q,ii,len(cs),cs[-4:],flush=True)
  out.append({**rec,'pivot_rows':rs,'pivot_columns':cs})
  if (ii+1)%25==0:print('GENUS_JETS',q,ii+1,'of',len(todo),'seconds',round(time.monotonic()-t,3),flush=True)
 (R/f'evidence/sat{6*q}_genus_jet_certificate.json').write_text(json.dumps(out,separators=(',',':'))+'\n')
 ans={'q':q,'processed':len(todo),'parameters':m.nc,'maxrows':maxrows,'pending':bad,'seconds':round(time.monotonic()-t,3)}
 (R/f'evidence/sat{6*q}_genus_jet_discovery_summary.json').write_text(json.dumps(ans,indent=2)+'\n');print('SUMMARY',ans,flush=True)
if __name__=='__main__':main()
