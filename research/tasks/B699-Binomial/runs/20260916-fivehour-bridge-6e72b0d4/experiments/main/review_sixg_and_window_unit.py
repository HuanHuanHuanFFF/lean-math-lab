"""Parent's exact sextic invariant and original i7 interval checks."""
from math import comb,prod as iprod
from pathlib import Path
import hashlib,json
from review_fixed_cofactor import add,mul,prod,power,scale,con,minus,binval
from review_shifted_families import prime

ROOT=Path(__file__).resolve().parent
ARITH=ROOT.parent/'arithmetic'


def sextic():
    j,k={(1,0):1},{(0,1):1}
    n,x=add(j,k),mul(j,k)
    fall=lambda z,t:prod(*(add(z,con(-i)) for i in range(t)))
    a=[scale(mul(fall(j,t),fall(k,6-t)),comb(6,t)) for t in range(7)]
    aa=add(scale(power(a[3],2),3),scale(mul(a[2],a[4]),-8),
           scale(mul(a[1],a[5]),20),scale(mul(a[0],a[6]),-120))
    b0=add(scale(mul(a[0],a[4]),10),scale(mul(a[1],a[3]),-5),scale(power(a[2],2),2))
    b1=add(scale(mul(a[0],a[5]),50),scale(mul(a[1],a[4]),-10),scale(mul(a[2],a[3]),2))
    b2=add(scale(mul(a[0],a[6]),150),scale(mul(a[2],a[4]),-6),scale(power(a[3],2),3))
    b3=add(scale(mul(a[1],a[6]),50),scale(mul(a[2],a[5]),-10),scale(mul(a[3],a[4]),2))
    b4=add(scale(mul(a[2],a[6]),10),scale(mul(a[3],a[5]),-5),scale(power(a[4],2),2))
    bb=add(scale(mul(b0,b4),12),scale(mul(b1,b3),-3),power(b2,2))
    gap=minus(scale(power(aa,2),11),scale(bb,8))
    rhs=prod(power(x,2),power(add(x,scale(n,-1),con(1)),2),add(x,scale(n,-2),con(4)),
             power(add(n,con(-5)),2),power(add(n,con(-4)),2),add(n,con(-3)),
             minus(mul(add(n,con(-2)),add(n,con(-3))),x))
    assert 720**4%1728==0
    assert gap==scale(rhs,720**4//1728)
    assert max(sum(m) for m in gap)==17
    # Positivity of center factor and monotonicity for n=16+j.
    nn=add(j,con(16))
    f=add(scale(power(nn,2),3),scale(nn,-20),con(24))
    g=add(scale(power(nn,2),5),scale(nn,-40),con(48))
    assert all(v>0 for v in f.values()) and all(v>0 for v in g.values())
    return {'scaled_sextic_identity':True,'degree':17,'expanded_terms':len(gap),
            'positive_center_and_derivative_coefficients':True}


def intervals(name,expected_i=7):
    path=ARITH/name
    data=json.loads(path.read_text())
    pairs=count=0
    for row in data['rows']:
        n,i=row['n'],row['i']
        assert i==expected_i if expected_i is not None else i in (4,5)
        pairs+=max(0,n//2-i)
        assert row['pairs']==max(0,n//2-i)
        for r,fac in enumerate(row.get('factorizations',row.get('window_factorizations',[]))):
            assert iprod(int(p)**e for p,e in fac.items())==n-r
            assert all(prime(int(p)) for p in fac)
        cursor=i+1
        for seg in sorted(row['intervals'],key=lambda x:x['first']):
            lo,hi,p,q=seg['first'],seg['last'],seg['p'],seg['q']
            assert prime(p) and p>=i and binval(n,i,p)>0
            assert q==p**seg['power'] and seg['power']>=1
            assert i+1<=lo<=hi<=n//2 and lo<=cursor
            assert lo//q==hi//q and lo%q>n%q
            cursor=max(cursor,hi+1);count+=1
        assert cursor>n//2
    assert pairs==data['pairs']
    return {'file':name,'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
            'rows':len(data['rows']),'pairs':pairs,'intervals':count}


def gauss_stops():
    path=ARITH/'i6_two_high_lattice_probe.json'
    source=json.loads(path.read_text())
    result=[]
    for trace in source['traces']:
        q,P,R=trace['q'],trace['P'],trace['R']
        previous=None
        for rec in trace['levels']:
            v,Q,order,L=rec['v'],rec['prime_power'],rec['order'],rec['logarithm']
            assert Q==q**v
            assert order==q**(v-(3 if q==2 else 1))
            assert 0<=L<order and pow(P,L,Q)==R%Q and pow(P,order,Q)==1
            if order>1:assert pow(P,order//q,Q)!=1
            b1,b2=rec['basis']
            assert (b1[0]+L*b1[1])%order==0 and (b2[0]+L*b2[1])%order==0
            assert abs(b1[0]*b2[1]-b1[1]*b2[0])==order
            n1=sum(x*x for x in b1);n2=sum(x*x for x in b2)
            dot=sum(x*y for x,y in zip(b1,b2))
            assert 0<n1<=n2 and 2*abs(dot)<=n1 and n1==rec['shortest_squared']
            if previous:
                assert v==previous['v']+1 and L%previous['order']==previous['logarithm']
            previous=rec
        assert previous['shortest_squared']>=10**18
        result.append({'q':q,'levels':len(trace['levels']),'stop_v':previous['v'],
                       'shortest_squared':previous['shortest_squared']})
    return {'source_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'stops':result}


def main():
    output={'status':'PASS','scope':'Parent exact invariant and full finite original certificates; cap/lifting proof reviewed separately',
            'invariant':sextic(),'certificates':[intervals('i7_d7_certificate.json'),intervals('i7_window_unit_certificate.json'),intervals('i6_window_unit_certificate.json',6),intervals('i5_window_unit_certificate.json',None)],
            'independent_Gauss_lattices':gauss_stops(),
            'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    (ROOT/'review_sixg_and_window_unit.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(output))


if __name__=='__main__':main()
