"""Second check: degree-complete grids, sieve factorization and base-prime carries.
This module does not import the first implementation or its polynomial kernel.
"""
import argparse,hashlib,itertools,json
from pathlib import Path

def need(b,msg):
    if not b: raise ValueError(msg)

def evaluate(rows,point,caps):
    used=set(); ans=0
    for e,a in rows:
        need(len(e)==5 and all(type(x)is int and 0<=x<=cap for x,cap in zip(e,caps)),'polynomial degree')
        need(type(a)is int and a!=0 and tuple(e)not in used,'canonical polynomial')
        used.add(tuple(e)); term=a
        for x,d in zip(point,e): term*=x**d
        ans+=term
    return ans

def carry_count(n,j,p):
    a,b=j,n-j; carry=0; total=0
    while a or b or carry:
        s=a%p+b%p+carry
        carry=int(s>=p); total+=carry
        a//=p; b//=p
    return total

def check(cert):
    need(cert['format']=='B699-PLUS-SQUARE-v1','format')
    expected_scope={'i':3,'n':'2*(m*p**h+1)**2','p':'odd prime','h_min':1,'m_min':1,
        'coprime_m_p':True,'all_legal_j':True,'two_base_assumption':False}
    need(cert['scope']==expected_scope,'scope')
    need(cert['bounds']=={'general_threshold':72,'threshold_power_m':3,'r1_abs':144,'r0_abs':89,
        'r1_nonzero_multiple':4,'small_cofactor_tail':71,'small_r0_abs':32},'bounds')
    need(cert['polynomial_variables']==['P','m','u','v','c'],'variables')
    ps=cert['polynomials']; need(set(ps)=={'N','j','quotient','r1','r0'},'names')
    caps_by={'N':(2,2,0,0,0),'j':(2,0,1,1,1),'quotient':(2,2,2,2,1),
             'r1':(0,5,2,2,1),'r0':(0,4,2,2,2)}
    # Identity degrees: P<=4, m<=5, u,v,c<=2. Use the full tensor grid.
    points=0
    for pt in itertools.product(range(5),range(6),range(3),range(3),range(3)):
        P,m,u,v,c=pt
        N=2*(m*P+1)**2-1; j=u*P**2+v*P+c
        vals={k:evaluate(ps[k],pt,caps_by[k]) for k in ps}
        need(vals['N']==N and vals['j']==j,'direct input values')
        need(4*m**4*j*(j-1)==N*vals['quotient']+P*vals['r1']+vals['r0'],'full-degree identity grid')
        need(vals['r1']==-4*m*(2*u-v*m)*(3*u-2*v*m+(2*c-1)*m*m),'slope factorization')
        need(vals['r0']==-7*u*u+8*u*v*m-4*u*c*m*m+2*u*m*m-2*v*v*m*m+4*c*(c-1)*m**4,'constant value')
        points+=1
    # Exact interval endpoints, not an empirical large-m bound.
    f=[2*x-y for x in (0,1) for y in (0,4)]
    h=[3*x-2*y+2*c-1 for x in (0,1) for y in (0,4) for c in (0,1,2)]
    need((min(f),max(f),min(h),max(h))==(-4,2,-9,6),'affine ranges')
    need(4*max(abs(x) for x in f)*max(abs(y) for y in h)==144,'slope envelope')
    need(7+32+8+2+32+8==89 and 4*72>89,'constant and nonvanishing envelope')
    # Verify positive-tail polynomial on its complete bidegree grid.
    for m,t in itertools.product(range(9),range(3)):
        P=72*m**3+t
        gap=2*m*m*P*P+4*m*P+1-144*m**5*P-89*m**4
        need(gap==2*m*m*t*t+144*m**5*t+4*m*t+199*m**4+1,'tail grid identity')
    templates=cert['small_cofactor_templates']
    need([(x['u'],x['v'],x['c']) for x in templates]==list(itertools.product(range(2),range(5),range(3))),'template coverage')
    # Divide at five integer points without using polynomial coefficient routines.
    for row in templates:
        u,v,c=row['u'],row['v'],row['c']; a,b=row['remainder']
        need(type(a)is int and type(b)is int,'integer remainders')
        for P in range(5):
            N=2*(P+1)**2-1; j=u*P*P+v*P+c
            L=2*P*P*u*u+4*P*u*v-4*P*u*u+4*c*u-2*u+2*v*v-8*u*v+7*u*u
            need(4*j*(j-1)-N*L==a*P+b,'small-template identity grid')
        need(abs(a)<=144 and abs(b)<=32,'small template envelope')
        need((a,b)!=(0,0) or (u,v,c)in((0,0,0),(0,0,1)),'zero template')
        if a: need(abs(a)>=4,'slope gap')
    for t in (0,1,2):
        P=71+t
        need(2*P*P-140*P-31==2*t*t+144*t+111,'small tail')
    # Independently sieve all primes that can divide the finite input factorial quotient.
    bound=10000; sieve=[True]*(bound+1); sieve[0]=sieve[1]=False
    for p in range(2,101):
        if sieve[p]:
            for z in range(p*p,bound+1,p): sieve[z]=False
    primes=[p for p in range(2,bound+1) if sieve[p]]
    expected=[]
    for p in primes:
        if p==2 or p>=71: continue
        P=p; h=1
        while P<71:
            expected.append((P,p,h)); P*=p; h+=1
    expected.sort()
    rows=cert['endpoints']; need([(x['P'],x['p'],x['h'])for x in rows]==expected,'endpoint coverage')
    alltext=[]; total=0
    for row in rows:
        P=row['P']; n=2*(P+1)**2
        need(row['n']==n and row['first_j']==4 and row['last_j']==n//2,'range')
        fs={}
        for z in (n,n-1,n-2):
            for p in primes:
                if p*p>z: break
                while z%p==0: fs[p]=fs.get(p,0)+1; z//=p
            if z>1: fs[z]=fs.get(z,0)+1
        fs[2]-=1; fs[3]=fs.get(3,0)-1
        qs=sorted(p for p,e in fs.items()if p>=3 and e>0)
        need(row['odd_primes_Cn3']==qs,'independent factorization')
        need(len(row['witnesses'])==n//2-3,'complete j range')
        got=[]
        for j in range(4,n//2+1):
            w=next((p for p in qs if carry_count(n,j,p)>0),None)
            need(w is not None,'uncovered pair by independent carries')
            got.append(w)
        need(got==row['witnesses'],'independent witness list')
        text=''.join(f'{j}:{q}\n' for j,q in enumerate(got,4))
        need(hashlib.sha256(text.encode()).hexdigest()==row['witness_sha256'],'row hash')
        alltext.append(f'P={P}\n'+text); total+=len(got)
    need(total==30106==cert['endpoint_pairs'],'pair count')
    digest=hashlib.sha256(''.join(alltext).encode()).hexdigest()
    print('PASS_INDEPENDENT_FULL_DEGREE_GRIDS_AND_PRIME_CARRIES')
    print(f'grid_points={points} rows={len(rows)} legal_pairs={total} witness_sha256={digest}')
if __name__=='__main__':
    ap=argparse.ArgumentParser(); ap.add_argument('--certificate',type=Path,default=Path(__file__).parent/'certificates/certificate.json')
    args=ap.parse_args(); check(json.loads(args.certificate.read_text()))
