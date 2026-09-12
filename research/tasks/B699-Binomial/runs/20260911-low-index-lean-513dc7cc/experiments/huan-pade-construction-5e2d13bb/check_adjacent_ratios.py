from fractions import Fraction as F
from math import comb
from datetime import datetime,timezone
from hashlib import sha256
from pathlib import Path
import json

def mag(kind,u,v,r):
    if r<0 or r>u:return 0
    return comb(2*u-r,u)*(comb(2*u+v+1,r) if kind=='P' else comb(v+r,r))

checks=0
for u in range(2,16):
    for v in range(13):
        for r in range(u+1):
            L=2*u-r;N=2*u+v+1
            assert L>=2 and N>1 and v+1>0
            qp=[F(u*(u-r)*(v+r+1),L*(L-1)*(v+1)),F(u*r,L*(v+1)),F(u*(u-1)*r*(r-1),L*(L-1)*(v+1)*(v+2))]
            pp=[F(u*(u-r)*(N-r),N*L*(L-1)),F(u*r,N*L),F(u*(u-1)*r*(r-1),N*(N-1)*L*(L-1))]
            for kind,ratios in [('P',pp),('Q',qp)]:
                h=mag(kind,u,v,r)
                actual=[F(mag(kind,u-1,v+1,r),h),F(mag(kind,u-1,v+1,r-1),h),F(mag(kind,u-2,v+2,r-2),h)]
                assert actual==ratios
                sign=1 if kind=='P' else -1
                a,b,c=ratios
                assert u*(u-1)==(u-1)*(2*u-1)*(2*a+sign*b)+(v+2)*(2*u+v)*c
                checks+=3
            assert L*(L-1)*(v+1)==(2*u-1)*(2*(u-r)*(v+r+1)-r*(L-1))+(2*u+v)*r*(r-1)
            assert N*L*(L-1)==(2*u-1)*(2*(u-r)*(N-r)+r*(L-1))+(v+2)*r*(r-1)
record={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),'range':'u=2..15; v=0..12; every r=0..u including r=0,1,u','exact_ratio_checks':checks,'scope':'bounded checks of the six proposed universal coefficient-ratio identities and their scalar recurrence algebra; no Lean acceptance','script_sha256':sha256(Path(__file__).read_bytes()).hexdigest()}
Path(__file__).with_name('adjacent-ratio-check.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record))
