"""Independent exact replay of the i8/i9 affine certificate.

No import of the generator, a lattice library, or a symbolic algebra system.
Finite levels use residue progressions; the generator used basis-coordinate boxes.
The final global box uses signed linear intervals, not corner enumeration.
"""
from pathlib import Path
import hashlib
import json
import time

CAP=10**32
LOW=8


def dot(x,y):
    return sum(a*b for a,b in zip(x,y))


def interval(c,lo,hi):
    return (c*lo,c*hi) if c>=0 else (c*hi,c*lo)


def last_points(rec):
    b1,b2=rec['basis']
    offset=int(rec['T'])
    determinant=b1[0]*b2[1]-b1[1]*b2[0]
    # Two rows of the inverse basis, with the determinant made positive.
    rows=[(b2[1],-b2[0]),(-b1[1],b1[0])]
    if determinant<0:
        determinant=-determinant
        rows=[(-a,-b) for a,b in rows]
    bounds=[]
    for x,y in rows:
        l1,h1=interval(x,2-offset,CAP-1-offset)
        l2,h2=interval(y,2,CAP-1)
        bounds.extend([-((-(l1+l2))//determinant),(h1+h2)//determinant])
    assert bounds==list(map(int,rec['global_test']['coefficient_bounds']))
    m0,m1,n0,n1=bounds
    size=max(0,m1-m0+1)*max(0,n1-n0+1)
    assert size==rec['global_test']['box_size'] and size<=10000
    points=[]
    for m in range(m0,m1+1):
        for k in range(n0,n1+1):
            a=offset+m*b1[0]+k*b2[0]
            b=m*b1[1]+k*b2[1]
            if a>=2 and b>=2 and a+b<CAP:
                points.append((a,b))
    return points


def valuation(n,p):
    assert n>0
    out=0
    while n%p==0:
        n//=p
        out+=1
    return out


def exact_small(n):
    rest=n
    for p in (2,3,5,7):
        while rest%p==0:
            rest//=p
    return n//rest


def check_scalar(a,b):
    n=6*5**a*7**b
    t=1
    factors=[]
    for r in range(6):
        factor=exact_small(n-r)
        factors.append(factor)
        t*=factor
    c2=valuation(n-2,2)
    c3=valuation(n-3,3)
    assert factors==[n,1,2**c2,3**c3,2,5]
    assert t==10*n*2**c2*3**c3
    lhs=t**4*(3*n*n-20*n+24)
    rhs=2**18*27*(n-1)**4*(n-3)**3*(n-5)**2
    assert n>=16 and lhs<rhs
    return {'A':a,'B':b,'n':str(n),'C2':c2,'C3':c3,
            'strict_SIXG':True,'positive_margin':str(rhs-lhs)}


def main():
    start=time.perf_counter()
    source=Path(__file__).with_name('i8_5_7_affine_probe.json')
    data=json.loads(source.read_text(encoding='utf-8'))
    assert data['low_sum']==LOW
    assert [tr['q'] for tr in data['traces']]==[2,3]
    all_high=[]
    stops=[]
    for tr in data['traces']:
        q=tr['q']
        coeff=3 if q==2 else 2
        first=3 if q==2 else 1
        assert tr['source_coefficient']==coeff and int(tr['exponent_sum_cap'])==CAP
        expected=[]
        previous=None
        for index,rec in enumerate(tr['levels']):
            v=first+index
            assert rec['v']==v
            mod=q**v
            order=q**(v-first)
            lvalue,tvalue=int(rec['L']),int(rec['T'])
            assert int(rec['modulus'])==mod and int(rec['order'])==order
            assert 0<=lvalue<order and 0<=tvalue<order
            assert pow(25,lvalue,mod)==49%mod
            assert pow(25,tvalue,mod)*coeff**2%mod==1
            assert pow(25,order,mod)==1
            if order>1:
                assert pow(25,order//q,mod)!=1
            if previous:
                oldorder,oldl,oldt=previous
                assert lvalue%oldorder==oldl and tvalue%oldorder==oldt
            previous=(order,lvalue,tvalue)
            b1,b2=rec['basis']
            assert abs(b1[0]*b2[1]-b1[1]*b2[0])==order
            assert all((x+lvalue*y)%order==0 for x,y in (b1,b2))
            assert dot(b1,b1)<=dot(b2,b2)
            assert 2*abs(dot(b1,b2))<=dot(b1,b1)
            is_last=index==len(tr['levels'])-1
            if is_last:
                assert rec.get('stop')=='global_no_source_point'
                points=last_points(rec)
                claimed={(int(z['A']),int(z['B'])):int(z['residue'])
                         for z in rec['global_test']['points']}
                assert len(claimed)==len(points) and set(claimed)==set(points)
                for a,b in points:
                    rem=(coeff*pow(5,a,mod)*pow(7,b,mod)-1)%mod
                    assert rem==claimed[a,b] and rem!=0
                stops.append({'q':q,'v':v,'global_points':len(points),
                              'coefficient_box_size':rec['global_test']['box_size']})
            else:
                assert 'stop' not in rec
                # H<2(v+1), so H<=2v+1. Enumerate every residue progression.
                maxsum=2*v+1
                for b in range(2,maxsum-1):
                    maxa=maxsum-b
                    residue=(tvalue-lvalue*b)%order
                    firsta=2+(residue-2)%order
                    for a in range(firsta,maxa+1,order):
                        if a+b<LOW:
                            continue
                        rem=(coeff*pow(5,a,mod*q)*pow(7,b,mod*q)-1)%(mod*q)
                        if rem!=0 and rem%mod==0:
                            expected.append((a,b,q,v))
        reported=[(x['A'],x['B'],x['q'],x['v']) for x in tr['high_candidates']]
        assert sorted(expected)==sorted(reported)
        assert all(x['SIXG'] for x in tr['high_candidates'])
        all_high.extend(expected)
    low={(a,b) for a in range(2,LOW) for b in range(2,LOW) if a+b<LOW}
    assert low=={(x['A'],x['B']) for x in data['low_pairs']}
    assert all(x['SIXG'] for x in data['low_pairs'])
    pairs=low|{(a,b) for a,b,q,v in all_high}
    scalar_rows=[check_scalar(a,b) for a,b in sorted(pairs)]
    assert len(low)==10 and len(all_high)==3 and len(pairs)==13
    assert not data['non_SIXG_pairs']
    out={'status':'all exact affine and SIXG checks passed; paper/source acceptance separate',
         'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
         'scope':'i8 and i9, n=6*5^A*7^B, A,B>=2',
         'stops':stops,'low_count':len(low),'high_count':len(all_high),
         'unique_pairs':len(pairs),'high_pairs':all_high,'scalar_rows':scalar_rows,
         'seconds':time.perf_counter()-start}
    path=Path(__file__).with_name('i8_5_7_affine_verification.json')
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({k:v for k,v in out.items() if k!='scalar_rows'}))


if __name__=='__main__':
    main()
