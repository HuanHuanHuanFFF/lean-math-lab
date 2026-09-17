"""Independent standard-library interval/normal-vector check of the RF/LLL certificate.

Uses 1700-bit scalar endpoint propagation, exact cubic-field arithmetic for 2Q,
and a cross-product distance bound instead of the producer's Gram-Schmidt code.
"""
from fractions import Fraction as F
from math import isqrt
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,time

BITS=1700
S=1<<BITS
ITERATIONS=900


def cd(a,b): return -((-a)//b)
def fsq(n):
    r=isqrt(n)
    return r if r*r==n else r+1
def scalar(a):
    a=F(a)
    return (a.numerator*S//a.denominator,cd(a.numerator*S,a.denominator))
def plus(a,b): return (a[0]+b[0],a[1]+b[1])
def minus(a,b): return (a[0]-b[1],a[1]-b[0])
def times_integer(a,k): return (a[0]*k,a[1]*k) if k>=0 else (a[1]*k,a[0]*k)


def rf(inputs):
    lower=[p[0] for p in inputs];upper=[p[1] for p in inputs]
    assert min(lower)>=0
    for _ in range(ITERATIONS):
        lowroots=[isqrt(a*S) for a in lower]
        highroots=[fsq(a*S) for a in upper]
        ll=sum(lowroots[i]*lowroots[j]//S for i,j in ((0,1),(1,2),(2,0)))
        lh=sum(cd(highroots[i]*highroots[j],S) for i,j in ((0,1),(1,2),(2,0)))
        lower=[(a+ll)//4 for a in lower]
        upper=[cd(a+lh,4) for a in upper]
    assert min(lower)>0
    return (S*S//fsq(max(upper)*S),cd(S*S,isqrt(min(lower)*S)))


def interval_quotient(a,b):
    assert b[0]>0
    ratios=[F(x,y) for x in a for y in b]
    low,high=min(ratios),max(ratios)
    return (low.numerator*S//low.denominator,cd(high.numerator*S,high.denominator))


def rounded(a,C):
    lo=(2*a[0]*C+S)//(2*S);hi=(2*a[1]*C+S)//(2*S)
    assert lo==hi
    return lo


def fld(a):
    return tuple(map(F,a)) if isinstance(a,(tuple,list)) else (F(a),F(0),F(0))
def fa(a,b): return tuple(x+y for x,y in zip(fld(a),fld(b)))
def fn(a): return tuple(-x for x in fld(a))
def fm(a,b):
    a,b=fld(a),fld(b);out=[F(0)]*5
    for i in range(3):
        for j in range(3):out[i+j]+=a[i]*b[j]
    for k in (4,3):
        out[k-2]+=27*out[k];out[k-3]-=4*out[k];out[k]=F(0)
    return tuple(out[:3])
def fi(a):
    a=fld(a)
    columns=[fm(a,tuple(F(i==j) for i in range(3))) for j in range(3)]
    rows=[[columns[j][i] for j in range(3)]+[F(i==0)] for i in range(3)]
    for j in range(3):
        k=next(k for k in range(j,3) if rows[k][j])
        rows[j],rows[k]=rows[k],rows[j]
        pivot=rows[j][j];rows[j]=[a/pivot for a in rows[j]]
        for k in range(3):
            if k==j:continue
            q=rows[k][j];rows[k]=[a-q*b for a,b in zip(rows[k],rows[j])]
    inv=tuple(rows[i][3] for i in range(3))
    assert fm(a,inv)==fld(1)
    return inv
def fd(a,b):return fm(a,fi(b))


def double_field(x,y):
    slope=fd(fa(fa(fm(3,fm(x,x)),fm(-120,x)),-8700),fm(2,y))
    xx=fa(fa(fm(slope,slope),60),fm(-2,x))
    yy=fa(fn(y),fm(slope,fa(x,fn(xx))))
    assert fm(yy,yy)==fa(fa(fm(fm(xx,xx),xx),fm(-60,fm(xx,xx))),fm(-8700,xx))
    return xx,yy


def root_theta():
    lo=(-53*S)//10;hi=cd(-21*S,4)
    def f(a):return a*a*a-27*a*S*S+4*S*S*S
    while hi-lo>1:
        m=(lo+hi)//2
        if f(m)<0:lo=m
        else:hi=m
    assert f(lo)<0<f(hi)
    return F(lo,S),F(hi,S)


def evaluate_field_interval(a,theta):
    low=high=F(0)
    for coeff in reversed(a):
        products=[x*y for x in (low,high) for y in theta]
        low=min(products)+coeff;high=max(products)+coeff
    return (low.numerator*S//low.denominator,cd(high.numerator*S,high.denominator))


def determinant(a):
    return sum((1 if perm in ((0,1,2),(1,2,0),(2,0,1)) else -1)
               *a[0][perm[0]]*a[1][perm[1]]*a[2][perm[2]]
               for perm in ((0,1,2),(0,2,1),(1,0,2),(1,2,0),(2,0,1),(2,1,0)))
def dot(a,b):return sum(x*y for x,y in zip(a,b))
def cross(a,b):return [a[1]*b[2]-a[2]*b[1],a[2]*b[0]-a[0]*b[2],a[0]*b[1]-a[1]*b[0]]


def main():
    began=time.perf_counter();here=Path(__file__).resolve().parent
    source=here/'stage05-rf-lll-20260915T200406Z.json'
    cert=json.loads(source.read_text())
    assert cert['status']=='PASS' and cert['C']==10**465 and cert['M0']==10**150
    C,M0=cert['C'],cert['M0']
    theta=root_theta()
    root6=(isqrt(6*S*S),fsq(6*S*S))
    e1=plus(scalar(30),times_integer(root6,40));e3=minus(scalar(30),times_integer(root6,40))
    omega=times_integer(rf([scalar(0),e1,times_integer(root6,80)]),2)
    assert omega[0]>S//5 and omega[1]<S
    Af=double_field(fld(F(-290,9)),fld(F(11600,27)))
    Bf=double_field(fld(-60),fld(-300))
    Qf=double_field(fld((209,4,-9)),fld((-2171,-36,81)))
    phis={};roundings={}
    for name,point in [('A2',Af),('B2',Bf),('Q2',Qf)]:
        xx,yy=[evaluate_field_interval(a,theta) for a in point]
        args=[minus(xx,e1),xx,minus(xx,e3)]
        assert min(a[0] for a in args)>0
        ell=rf(args)
        if yy[0]>0:ell=(-ell[1],-ell[0])
        else:assert yy[1]<0
        phi=interval_quotient(ell,omega)
        phis[name]=phi;roundings[name]=rounded(phi,C)
    assert roundings=={'A2':cert['rounded_logs']['r1'],'B2':cert['rounded_logs']['r2'],'Q2':cert['rounded_logs']['r0']}
    base=[[1,0,roundings['A2']],[0,1,roundings['B2']],[0,0,C]]
    U=cert['unimodular_transform'];B=cert['reduced_basis']
    assert determinant(U) in (-1,1)
    assert B==[[sum(U[i][k]*base[k][j] for k in range(3)) for j in range(3)] for i in range(3)]
    normal=cross(B[0],B[1]);normal_square=dot(normal,normal)
    assert abs(dot(normal,B[2]))==C
    raw=roundings['Q2']*normal[2]
    remainder=raw%C;remainder=min(remainder,C-remainder)
    assert remainder*remainder>16*M0*M0*normal_square
    d2=F(remainder*remainder,normal_square)
    assert d2==F(*cert['projection_distance_squared'])
    result={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),
            'independent_methods':['1700-bit endpoint-only RF','exact cubic-field double','integer cross-product distance'],
            'source_certificate':source.name,'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
            'bits':BITS,'rf_iterations':ITERATIONS,
            'intervals':{k:list(v) for k,v in phis.items()},
            'all_unique_roundings_match':True,'unimodular_basis_verified':True,
            'strict_distance_contract':True,'distance_ratio_floor':d2//(M0*M0),
            'conditional_conclusion':'frozen analytic contract yields M<50 and s<45080',
            'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
            'elapsed_seconds':round(time.perf_counter()-began,6)}
    stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    out=here/f'stage05-rf-lll-independent-{stamp}.json'
    out.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','saved':out.name,'roundings_match':True,
                      'strict_distance_contract':True,'distance_ratio_floor':result['distance_ratio_floor'],
                      'elapsed_seconds':result['elapsed_seconds']},separators=(',',':')))


if __name__=='__main__':main()
