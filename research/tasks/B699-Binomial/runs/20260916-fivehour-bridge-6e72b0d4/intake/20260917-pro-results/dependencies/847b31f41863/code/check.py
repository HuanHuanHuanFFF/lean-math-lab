#!/usr/bin/env python3
"""Independent standard-library checker of new finite algebra (no generator import)."""
from pathlib import Path
from math import comb
import json,hashlib,time
ROOT=Path(__file__).resolve().parents[1]
def add(a,b):
    d=a.copy()
    for k,v in b.items():d[k]=d.get(k,0)+v
    return {k:v for k,v in d.items() if v}
def scale(a,c):return {k:v*c for k,v in a.items() if v*c}
def mul(a,b):
    d={}
    for k,v in a.items():
        for l,w in b.items():
            e=tuple(x+y for x,y in zip(k,l));d[e]=d.get(e,0)+v*w
    return {k:v for k,v in d.items() if v}
def power(a,n):
    d={tuple(0 for _ in next(iter(a))):1}
    for _ in range(n):d=mul(d,a)
    return d
def encoded(a):return [list(k)+[v] for k,v in sorted(a.items())]
def compose(f,xx,yy):
    out={}
    for (a,b),c in f.items():out=add(out,scale(mul(power(xx,a),power(yy,b)),c))
    return out

def stripped(z,i):
    v=1
    for p in [2,3,5,7]:
        if p<i:
            while z%p==0:z//=p;v*=p
    if i in [5,7] and z%i==0 and z%(i*i)!=0:v*=i
    return v

def verify(c):
    if c['schema']!='B699-D-ROW4-THREE-GROUPS-v1':raise ValueError('schema')
    one={(0,0):1};x={(1,0):1};y={(0,1):1};N=add(x,y);X=mul(x,y)
    F=mul(X,add(add(power(N,2),scale(X,-3)),scale(N,-1)))
    assert c['F']==encoded(F)
    assert c['origin_order']==min(sum(e) for e in F)==3
    divided={(a+b-3,a,b):z for (a,b),z in F.items()}
    assert c['divided_origin']==encoded(divided)
    xx=add(scale(one,6),x);yy=add(xx,y)
    positive=compose(F,xx,yy)
    assert c['legal_positive']==encoded(positive)
    assert positive[(0,0)]>0 and all(z>0 for z in positive.values())
    zeros=[]
    for r,bs,w in [(1,[0,1],2),(3,list(range(4)),1),(4,[0,2,4],1)]:
        for b in bs:
            for u in range(w):
                for v in range(w-u):
                    val=sum(z*comb(a,u)*comb(bb,v)*b**(a-u)*(r-b)**(bb-v)
                            for (a,bb),z in F.items() if a>=u and bb>=v)
                    assert val==0
                    zeros.append([r,b,u,v,val])
    assert c['taylor_zeros']==zeros
    # Here x denotes n, y denotes the independent variable X=jk.
    upper=add(add(power(x,4),scale(mul(y,add(add(power(x,2),scale(y,-3)),scale(x,-1))),-12)),
              scale(add(power(add(power(x,2),scale(y,-6)),2),scale(mul(x,y),12)),-1))
    assert not upper and c['upper_identity']==[]
    def offset(k):return add(x,scale(one,-k))
    D=mul(mul(power(offset(1),2),offset(3)),offset(4))
    for name,z,base in [('tail_54D_25n4',add(scale(D,54),scale(power(x,4),-25)),18),
                        ('tail_2D_n4',add(scale(D,2),scale(power(x,4),-1)),18),
                        ('tail_10D_9n4',add(scale(D,10),scale(power(x,4),-9)),90)]:
        translated=compose(z,add(x,scale(one,base)),y)
        as_one={(a,):v for (a,b),v in translated.items() if b==0}
        assert all(b==0 for a,b in translated)
        assert encoded(as_one)==c[name] and all(v>0 for v in as_one.values())
    table=[]
    for i in [5,6]:
        for n in range(1800):
            if n%72 not in [18,56] or (i==6 and n%5 not in [0,2]):continue
            ss=[stripped(n-r,i) for r in [1,3,4]];A=ss[0]**2*ss[1]*ss[2]
            assert A<=(150 if i==5 else 6)
            if i==5 and n%5==0:assert A<=6
            table.append({'i':i,'residue':n,'s134':ss,'A':A})
    assert table==c['costs'] and len(table)==70
    expect={str(m):{'7^12':pow(7,12,m),'13^12':pow(13,12,m),'13^60':pow(13,60,m)} for m in [18,5,25]}
    assert expect==c['family_periods']
    assert pow(7,12,18)==pow(13,12,18)==1
    assert (4*pow(7,3,18)*pow(13,1,18)+4)%72==56
    assert pow(7,12,5)==pow(13,12,5)==1 and (4*pow(7,3,5)*13+4)%5==0
    assert pow(7,12,25)==pow(13,60,25)==1 and (4*pow(7,3,25)*pow(13,25,25)+4)%25==0
    return {'status':'PASS_NEW_ALGEBRA','taylor_zero_conditions':len(zeros),
            'positive_legal_coefficients':len(positive),'positive_tail_coefficients':15,
            'complete_cost_classes':len(table),'finite_high_exponent_scan':False}

def sources():
    vals=json.loads((ROOT/'sources/SOURCE_MAP.json').read_text())
    for x in vals:
        b=(ROOT/x['file']).read_bytes()
        assert len(b)==x['bytes'] and hashlib.sha256(b).hexdigest()==x['sha256']
    return len(vals)
if __name__=='__main__':
    t=time.monotonic();c=json.loads((ROOT/'evidence/new-certificate.json').read_text());out=verify(c)
    out['frozen_files_hash_checked']=sources();out['seconds']=time.monotonic()-t
    (ROOT/'evidence/check.json').write_text(json.dumps(out,sort_keys=True,indent=2)+'\n');print(json.dumps(out))
