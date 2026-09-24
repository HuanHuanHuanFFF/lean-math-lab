from math import gcd, lcm
import json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def coarse(x):
    for p in (2,3,5):
        while x%p==0: x//=p
    return x

def vp(x,p):
    e=0
    while x%p==0:
        e+=1;x//=p
    return e

def source_pass(n,j):
    k=n-j;N=n-1
    if (j*k)%N: return False
    U=j*k//N
    q2,q3,q4=(coarse(n-r) for r in (2,3,4))
    z4=(j-2)*(k-2)
    return ((U*U*(U-1))%(q2*q2)==0 and
            (U*(U-1))%q3==0 and
            (U*U*(U-1)*(U-1)*z4)%(q4*q4)==0)

rows=[]
for t in range(24):
    n=1530+1800*t;b=vp(n-2,2)
    ss=[(n-r)//coarse(n-r) for r in (1,2,3,4)]
    assert ss==[1,2**b,3,2] and b>=3
    rows.append({'tail':'B','n':n,'b2':b,'smallparts':ss})
for t in range(24):
    n=1280+1800*t;b=vp(n-2,3)
    ss=[(n-r)//coarse(n-r) for r in (1,2,3,4)]
    assert ss==[1,2*(3**b),1,4] and b>=2
    rows.append({'tail':'A','n':n,'b3':b,'smallparts':ss})

# Exact inequality polynomials at entrances.
assert 5*1530**2-105*1530+126>0   # B b<=4 => ratio<7
assert 1280**2-35*1280+42>0       # A b<=3 => ratio<7
# Nearside stronger maxima b=7 (B), b=4 (A).
assert 147*(1530-2)*(1530-3)-128*1530**2>0
assert 441*(1280-2)*(1280-3)-162*1280**2>0

# CRT residuals.
B_general=[x for x in range(lcm(1800,32)) if x%1800==1530 and x%32==2]
A_general=[x for x in range(lcm(1800,81)) if x%1800==1280 and x%81==2]
B_near=[x for x in range(lcm(1800,256)) if x%1800==1530 and x%256==2]
RES10=[x for x in range(lcm(9000,57600)) if x%9000==5130 and x%57600==3330]
assert B_general==[3330]
assert A_general==[3080]
assert B_near==[3330]
assert RES10==[176130]

# Center-position contradictions once q4=C.
for n in (1530,3330,5130,6930):
    N=n-1;j=n//2
    assert gcd(N,j)==1 and (j*j)%N!=0
for n in (1280,3080,4880,6680):
    N=n-1;j=n//2
    assert gcd(N,j)==1 and (j*j)%N!=0
    j=(n+4)//4;k=n-j
    assert (16*j*k+5)%N==0 and (j*k)%N!=0

# Bounded sanity in ranges actually claimed closed by sources1-4.
checkedA=checkedB=0;survA=[];survB=[]
for t in range(12):
    n=1530+1800*t
    if vp(n-2,2)>4: continue
    for j in range(7,n//2+1):
        checkedB+=1
        if source_pass(n,j):survB.append((n,j))
for t in range(14):
    n=1280+1800*t
    if vp(n-2,3)>3: continue
    for j in range(7,n//2+1):
        checkedA+=1
        if source_pass(n,j):survA.append((n,j))
assert not survA and not survB

out={
 'status':'PASS','smallpart_rows_checked':len(rows),
 'B_general_residual_mod7200':3330,
 'A_general_residual_mod16200':3080,
 'B_nearside_residual_mod57600':3330,
 'RES10_nearside_residual_mod288000':176130,
 'bounded_A_pairs_checked':checkedA,'bounded_B_pairs_checked':checkedB,
 'bounded_survivors_A':survA,'bounded_survivors_B':survB,
 'meaning':'Finite sanity only; infinite claims are proved symbolically in PROOFS.md.'
}
(ROOT/'outputs/replay_summary.json').write_text(json.dumps(out,indent=2),encoding='utf-8')
print(json.dumps(out,indent=2))
