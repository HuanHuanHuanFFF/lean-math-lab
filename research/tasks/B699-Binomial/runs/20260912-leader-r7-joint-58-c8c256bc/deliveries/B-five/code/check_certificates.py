"""Check finite coverage from scratch, without generator imports.
Alternate outer enumeration uses g|2h rather than divisors of h's odd part.
Pell coordinates are computed by binary quadratic-ring exponentiation.
"""
from math import gcd,isqrt,comb
from pathlib import Path
import argparse,json

def strip2(n):
    while n%2==0:n//=2
    return n

def primetest(n):
    if n<2:return False
    return all(n%d for d in range(2,isqrt(n)+1))

def ell_exact(n):
    def iso3(a):return a%3==0 and a%9!=0
    return (3 if iso3(n-1) else 1)*(3 if iso3((n-2)//2) else 1)

def quadratic_mul(u,v):return (u[0]*v[0]+195*u[1]*v[1],u[0]*v[1]+u[1]*v[0])
def quadratic_power(t):
    a=(1,0);b=(14,1)
    while t:
        if t&1:a=quadratic_mul(a,b)
        b=quadratic_mul(b,b);t//=2
    return a

def check(root):
    outer=json.loads((root/'outer.json').read_text());middle=json.loads((root/'middle.json').read_text());pell=json.loads((root/'pell.json').read_text())
    assert outer['period']==60
    expected=set()
    for ell in [1,3]:
        for h in range(1,5*ell):
            if gcd(h,5)!=1:continue
            for g in range(1,2*h+1):
                if (2*h)%g:continue
                for c in [1,3]:
                    if c==3 and (ell!=1 or g%3==0):continue
                    m=strip2(c*g)
                    for r in range(60):
                        v=r if r>=2 else r+60;n=m*2**v
                        if ell_exact(n)!=ell or (n-2)%5:continue
                        if (h*(n-1)*(n-2)-10*ell)%25:continue
                        expected.add((ell,h,m,r))
    found=set();root_checks=0
    for row in outer['rows']:
        ell,h,m,r,p=[row[x] for x in ('ell','h','odd_part','v_mod_60','modulus')]
        key=(ell,h,m,r);assert key in expected and key not in found;found.add(key)
        assert primetest(p) and pow(2,60,p)==1
        assert pow(2,60,9)==1 and pow(2,60,25)==1
        n=m*pow(2,r,p)%p;w=5*ell
        for y in range(p):
            assert (w*y*y-4*h*(n-1)*(n-2)-w)%p
            root_checks+=1
    assert found==expected and len(found)==48
    # Full low n verification by original binomials; projections separately checked.
    low_count=0;projection_solutions=[]
    for n in range(8,256,4):
        M=(n-2)//2;la=3 if (n-1)%3==0 and(n-1)%9 else 1
        mu=3 if M%3==0 and M%9 else 1
        N=(n-1)//la;K=M//mu
        for j in range(4,n//2+1):
            low_count+=1
            common=gcd(comb(n,3),comb(n,j))
            assert strip2(common)>1
            if j<n//2 and j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0:
                projection_solutions.append([n,j])
    assert not projection_solutions
    # Low modulus middle filter checked on original square equation.
    table=[]
    for ell in [1,3]:
        for h in range(1,(5*ell-1)//2+1):
            if h%5==0:continue
            table.append({'ell':ell,'h':h,'roots_mod64':[y for y in range(64) if (5*ell*y*y+h)%64==0]})
    assert middle['threshold']==256 and table==middle['mod64']
    assert [(r['ell'],r['h']) for r in table if r['roots_mod64']]==[(3,1),(3,4)]
    exp_h4={r for r in range(36) if r%4==1 and r%6 in (3,5)};seen=set()
    for row in middle['h4_exclusions']:
        r,p=row['v_mod36'],row['modulus'];assert r in exp_h4 and r not in seen;seen.add(r)
        assert pow(2,36,p)==1
        n=pow(2,r,p)
        assert all((15*d*d-7*n*n-24*n+16)%p for d in range(p))
    assert seen==exp_h4 and middle['h4_period']==36
    assert pell['norm']==61 and pell['discriminant']==195 and pell['index_bound_exclusive']==22
    seeds=[]
    # In the fundamental interval, 0<=y<sqrt61 implies 0<=y<=7.
    for x in range(1,100):
        for y in range(8):
            if x*x-195*y*y==61:seeds.append([x,y])
    assert seeds==[[16,1],[29,2]]==pell['seeds']
    expected_terms=[];dyadic=[]
    for seed in seeds:
        for t in range(22):
            x,y=quadratic_mul(tuple(seed),quadratic_power(t))
            assert x*x-195*y*y==61
            n=(x-3)//13;assert 13*n+3==x
            power=1;v=0
            while power<n:power*=2;v+=1
            b=power==n
            expected_terms.append({'seed':seed,'t':t,'x':str(x),'y':str(y),'n':str(n),'dyadic':b})
            if b:
                assert 15*y*y==13*n*n+6*n-4
                dyadic.append({'seed':seed,'t':t,'v':v,'n':n,'abs_d':y})
                for d in [y,-y]:
                    if (n-d)%2==0:
                        j=(n-d)//2
                        assert not 4<=j<=n//2
    assert expected_terms==pell['terms'] and dyadic==pell['dyadic']
    return {'outer_states':len(found),'outer_raw_root_checks':root_checks,'middle_h4_states':len(seen),
            'low_original_pairs':low_count,'pell_seeds':seeds,'pell_terms':len(expected_terms),'dyadic_solutions':dyadic,
            'status':'PASS'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certdir');ap.add_argument('output');a=ap.parse_args()
    result=check(Path(a.certdir));Path(a.output).write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print('PASS independent coverage:',{k:v for k,v in result.items() if k not in ('dyadic_solutions','pell_seeds')})
if __name__=='__main__':main()
