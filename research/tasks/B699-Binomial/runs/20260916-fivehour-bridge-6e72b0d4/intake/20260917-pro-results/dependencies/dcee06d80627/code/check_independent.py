"""Independent exact checker. Does not import the generating implementation."""
import argparse,json,hashlib
from pathlib import Path
from fractions import Fraction as F
from math import gcd,isqrt,comb
from itertools import product

def sparse(a):return {i:F(c) for i,c in enumerate(a) if c}
def plus(a,b):
    c=a.copy()
    for i,v in b.items():
        c[i]=c.get(i,F(0))+v
        if not c[i]:del c[i]
    return c

def times(a,b):
    c={}
    for i,x in a.items():
        for j,y in b.items():c[i+j]=c.get(i+j,F(0))+x*y
    return {i:x for i,x in c.items() if x}
def rem(a,b):
    r=a.copy();q={};db=max(b);lc=b[db]
    while r and max(r)>=db:
        i=max(r)-db;c=r[max(r)]/lc;q[i]=q.get(i,0)+c
        r=plus(r,{j+i:-c*x for j,x in b.items()})
    return q,r

def dense(a):return [a.get(i,F(0)) for i in range(max(a,default=0)+1)]
def det_fraction(a):
    a=[list(map(F,row)) for row in a];z=F(1)
    for i in range(len(a)):
        r=next((r for r in range(i,len(a)) if a[r][i]),None)
        if r is None:return 0
        if r!=i:a[r],a[i]=a[i],a[r];z=-z
        c=a[i][i];z*=c
        for r in range(i+1,len(a)):
            if not a[r][i]:continue
            q=a[r][i]/c
            for s in range(i,len(a)):a[r][s]-=q*a[i][s]
    assert z.denominator==1
    return z.numerator

def resultant(a,b):
    a=sparse(a);b=sparse(b)
    if not a or not b:return 0
    m=max(a);n=max(b);N=m+n
    # Linear map columns X^i*a (i<n), X^i*b (i<m).
    cols=[]
    for h in range(n):cols.append([a.get(r-h,0) for r in range(N)])
    for h in range(m):cols.append([b.get(r-h,0) for r in range(N)])
    # This convention differs by (-1)^(m*n) from the descending-row convention.
    return (-1)**(m*n)*det_fraction(list(map(list,zip(*cols)))) if N else 1

def value(a,x):return sum(v*pow(x,i) for i,v in enumerate(a))
def val(a,p):
    a=F(a);z=0;n=abs(a.numerator);d=a.denominator
    if not n:raise ValueError('zero valuation')
    while n%p==0:n//=p;z+=1
    while d%p==0:d//=p;z-=1
    return z

def extremes(a,p,k,f):
    ww={i:k*val(v,p)-f*i for i,v in a.items()}
    z=min(ww.values());ii=[i for i,v in ww.items() if v==z]
    return [z,min(ii),max(ii)]
def isprime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def validate_row(row):
    p,f,k=row['p'],row['f'],row['k'];a=row['a'];T=p**f;X=p**row['e']
    if not(isprime(p) and p%2 and f>=1 and k>=1 and len(a)==k+1):raise ValueError('prime/degree')
    if not(all(type(z) is int and 0<=z<T for z in a) and a[0] and a[-1] and a[0]%p and a[-1]%p):raise ValueError('block constraints')
    if not(p>=5 or f>=2):raise ValueError('isolated-three cannot use this row map')
    S=sum(a);S2=sum(z*z for z in a)
    if row['route']=='fast':
        if gcd(k,f)!=1:raise ValueError('fast requires coprime height and degree')
        cutoff=(3*T*T*S2*S2+1)//2
    elif row['route']=='general':cutoff=6*S*(T*S+1)*(T*S)**(k+1)
    else:raise ValueError('route')
    if int(row['cutoff'])!=cutoff or X<cutoff:raise ValueError('gap bound')
    n=T*value(a,X)
    if n!=int(row['n']):raise ValueError('n reconstruction')
    fp=plus({i:T*z for i,z in enumerate(a) if z},{0:-1});fd=dense(fp)
    for item in row['records']:
        b=item['b']
        if len(b)!=len(a) or not all(0<=v<=u for v,u in zip(b,a)) or not any(b) or b==a:raise ValueError('proper block choice')
        j=T*value(b,X)
        if j!=int(item['j']) or not(0<j<n):raise ValueError('j reconstruction')
        r=3*j*(j-1)%(n-1)
        if r!=int(item['first_remainder']) or r==0:raise ValueError('first window')
        if row['route']=='fast':
            R=3**k*resultant(fd,b)*resultant(fd,[u-v for u,v in zip(a,b)])
            if R!=int(item['resultant_product']) or not(0<abs(R)<n-1):raise ValueError('resultant')
            if 2**k*abs(R)>(3*T*T*S2*S2)**k:raise ValueError('norm')
        else:
            bp=sparse(b);G={i:3*v for i,v in times(bp,plus({i:T*v for i,v in bp.items()},{0:-1})).items()}
            _,rpoly=rem(G,fp);fac=(T*a[-1])**(k+1)
            want=dense({i:fac*v for i,v in rpoly.items()})
            if want!=item['pseudo_remainder'] or not rpoly:raise ValueError('pseudo remainder')
            if not(0<abs(value(want,X))<n-1):raise ValueError('small integer')
        if item['odd_divisor_Z1'] is not None:
            jj=min(j,n-j);Z=(n-1)//gcd(n-1,3*jj*(jj-1))
            if int(item['odd_divisor_Z1'])!=Z or Z<=1 or Z%2==0 or (n*(n-1)*(n-2)//6)%Z:raise ValueError('complete divisor')
    return len(row['records'])

def main(inputs,out):
    out.mkdir(parents=True,exist_ok=True)
    rows=json.loads((inputs/'row-examples.json').read_text());count=sum(validate_row(r) for r in rows)
    ws=json.loads((inputs/'weighted-products.json').read_text())
    for w in ws:
        a=sparse(list(map(F,w['a'])));b=sparse(list(map(F,w['b'])));p,k,f=w['p'],w['k'],w['f']
        ea=extremes(a,p,k,f);eb=extremes(b,p,k,f);ec=extremes(times(a,b),p,k,f)
        assert ec==w['extremal_product']==[ea[i]+eb[i] for i in range(3)]
    ntemp=0;nparts=0;digest=hashlib.sha256()
    for p,f in [(3,1),(3,2),(5,1)]:
        T=p**f
        for k in range(1,4):
            for aa in product(range(3),repeat=k+1):
                if not aa[0] or not aa[-1] or aa[-1]%p==0:continue
                ntemp+=1;fp=plus({i:T*c for i,c in enumerate(aa) if c},{0:-1})
                for bb in product(*(range(c+1) for c in aa)):
                    if not any(bb) or bb==aa:continue
                    nparts+=1;bp=sparse(bb)
                    G={i:3*v for i,v in times(bp,plus({i:T*v for i,v in bp.items()},{0:-1})).items()}
                    _,r=rem(G,fp)
                    assert r
                    ir=dense({i:v*(T*aa[-1])**(k+1) for i,v in r.items()})
                    assert all(v.denominator==1 for v in ir)
                    ints=[int(v) for v in ir]
                    digest.update(str((p,f,aa,bb,ints)).encode())
    old=json.loads((inputs/'template-regression.json').read_text())
    assert ntemp==old['exhaustive_templates'] and nparts==old['proper_partitions']
    assert digest.hexdigest()==old['transcript_sha256']
    # Rebuild original odd common-divisor check via floor factorial valuations.
    nn=0;pv=0
    for n in range(8,401,4):
        c3=comb(n,3)
        for j in range(4,n//2+1):
            Z=(n-1)//gcd(n-1,3*j*(j-1));nn+=1
            assert c3%Z==0 and comb(n,j)%Z==0
            for p in range(3,100,2):
                if not isprime(p) or c3%p:continue
                v=0;q=p
                while q<=n:v+=n//q-j//q-(n-j)//q;q*=p
                cc=comb(n,j);vv=0
                while cc%p==0:cc//=p;vv+=1
                assert v==vv;pv+=1
    bez=json.loads((inputs/'bezout-certificates.json').read_text())
    for c in bez:
        lhs=plus(times(sparse(c['U']),sparse(c['F'])),times(sparse(c['V']),sparse(c['Q'])))
        assert lhs=={0:F(int(c['R']))}
        assert resultant(c['F'],c['Q'])==int(c['R'])
    result={'bezout_identities':len(bez),'status':'PASS','rows':len(rows),'partition_records':count,'weighted_products':len(ws),
      'templates':ntemp,'proper_partitions':nparts,'template_digest':digest.hexdigest(),
      'binomial_pairs':nn,'prime_valuations_p_le_97':pv,
      'independence':'Different exact algorithms by the same session, not external review.'}
    (out/'independent.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps(result,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--inputs',type=Path,required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args();main(a.inputs,a.out)
