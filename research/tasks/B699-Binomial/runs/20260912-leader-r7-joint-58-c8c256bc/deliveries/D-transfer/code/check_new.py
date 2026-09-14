from pathlib import Path
from math import gcd, comb, factorial, isqrt
from fractions import Fraction
import json

def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def vp(n,p):
    assert n>0
    e=0
    while n%p==0:n//=p;e+=1
    return e

def vchoose(n,k,p):
    out=0;q=p
    while q<=n:
        out+=n//q-k//q-(n-k)//q;q*=p
    return out

def exponent_for(v):
    assert v>=5
    E=1
    for k in range(4,v):
        step=1<<(k-3)
        A=25*13**4;mod=1<<(k+1)
        children=[E,E+step]
        good=[x for x in children if (A*pow(7,x,mod)+1)%mod==0]
        assert len(good)==1
        if k==v-1:
            bad=next(x for x in children if x!=good[0])
            period=1<<(v-3)
            e=next(bad+t*period for t in range(3) if (bad+t*period)%3==0)
            assert e>0
            return e
        E=good[0]
    raise AssertionError('unreachable')

def main():
    output=Path(__file__).resolve().parents[1]/'evidence'
    assert 420*factorial(7)+7<2**22
    density=Fraction(1)
    for p in [2,3,5,7]:density*=Fraction(p-1,p)
    density*=sum((Fraction(1,s) for s in range(1,10)),Fraction(0))
    assert density==Fraction(7129,11025)
    bridge_checks=0
    for n in range(3,1501):
        src=comb(n,3)
        for p in [3,5,7,11,13,17,19,23,29,31,37,41,43,47]:
            if src%p:continue
            e=vp(src,p)
            cap=3 if p==3 else (4+(e>=2) if p==5 else (6+(e>=2) if p==7 else 9))
            for i in range(3,min(9,n)+1):
                assert (p>=i and comb(n,i)%p==0)==(i<=cap)
                bridge_checks+=1
    assert vp(comb(52,3),5)==2 and vp(comb(52,10),5)==1 and vp(comb(52,5),5)==1
    assert gcd(comb(244,3),comb(244,122))==324
    source_failure=[]
    for i,p in [(4,241),(5,241),(6,239),(7,239),(8,79),(9,79)]:
        assert prime(p) and p>=i and comb(244,i)%p==0 and comb(244,122)%p==0
        source_failure.append(dict(i=i,p=p,vi=vchoose(244,i,p),vj=vchoose(244,122,p)))
    lifting=[]
    for v in range(5,201):
        e=exponent_for(v);step=3*(1<<(v-3));mod=1<<(v+1)
        for t in [0,1,2,17,1000]:
            E=e+step*t
            assert (50*13**4*pow(7,E,mod)+2)%mod==1<<v
            assert (50*pow(13,4,9)*pow(7,E,9)+2)%9==4
        lifting.append(dict(v=v,e=e,step=step))
    assert exponent_for(5)==3
    assert 50*13**4>2**20 and 7**5>2**14
    assert 50*13**4*7**15+2>2**62
    for v in range(7,201):
        assert 6*(1<<(v-3))>=8*v+22
    n=46866683133952
    assert n==341*2**37==50*112289*8347511+2
    assert prime(112289) and prime(8347511) and n%9 in range(3,9)
    analytic_rows=[]
    for v in [8,37,64,128]:
        n=2**v*11**(3*v);S=2**v;j=n//2-1
        assert n>=2**22*S**8
        records=[]
        for i in range(3,10):
            a,b=vchoose(n,i,11),vchoose(n,j,11)
            assert a>0 and b>0
            records.append(dict(i=i,p=11,vi=a,vj=b))
        analytic_rows.append(dict(v=v,n=n,S=S,j=j,witnesses=records))
    free_checks=0
    for n in range(8,2001):
        ds=set()
        for d in range(1,isqrt(n)+1):
            if n%d==0:ds.update([d,n//d])
        for a in ds-{1}:
            for i in range(3,10):
                if n<2*(i+1):continue
                active=[p for p in range(2,i) if prime(p) and a%p]
                pos=[1]+active;R=max(pos)
                def acceptable(r):
                    for p in range(2,i):
                        if not prime(p):continue
                        cap=0;q=p
                        while q<=R:cap+=1;q*=p
                        if a%p==0:cap=0
                        if vp(n-r,p)>cap:return False
                    return True
                assert any(acceptable(r) for r in pos)
                free_checks+=1
    data={'status':'PASS','height_constant':2**22,'row9_density':str(density),
          'bridge_exact_checks':bridge_checks,'free_position_regressions':free_checks,
          'B50_lift_parameter_rows':len(lifting),'B50_modular_checks':len(lifting)*5,
          'source_witness_failure':source_failure,'analytic_rows':analytic_rows,
          'scope':'Regressions do not replace the infinite proofs. B50 source consumer inherited, not rerun.'}
    (output/'cross_index_checks.json').write_text(json.dumps(data,indent=2,sort_keys=True)+'\n')
    (output/'B50_lifting_examples.json').write_text(json.dumps(lifting,indent=2,sort_keys=True)+'\n')
    print(json.dumps({k:v for k,v in data.items() if k not in ['source_witness_failure','analytic_rows']},sort_keys=True))
if __name__=='__main__':main()
