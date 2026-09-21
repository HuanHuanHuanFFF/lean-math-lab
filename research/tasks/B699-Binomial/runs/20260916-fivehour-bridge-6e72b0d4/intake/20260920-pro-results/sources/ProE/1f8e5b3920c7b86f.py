#!/usr/bin/env python3
"""Independent checker: fixed-degree value grids and direct integer trial division.
Does not import the coefficient checker or its arithmetic implementation.
"""
from __future__ import annotations
import argparse, hashlib, itertools, json
from pathlib import Path

def terms_ok(rows,bounds):
    seen=set()
    if not isinstance(rows,list):raise ValueError('terms must be a list')
    for item in rows:
        if not isinstance(item,list) or len(item)!=2:raise ValueError('bad term')
        es,c=item
        if len(es)!=len(bounds) or any(type(e)!=int or not 0<=e<=b for e,b in zip(es,bounds)):raise ValueError('degree bound')
        if type(c)!=int or c==0 or tuple(es) in seen:raise ValueError('coefficient or duplicate')
        seen.add(tuple(es))

def evaluate(rows,point):
    result=0
    for es,c in rows:
        v=c
        for x,e in zip(point,es):v*=x**e
        result+=v
    return result

def core(name,t):
    a,b,p,q,h,z=t
    f=p-a*q-h*b;g=h*q-p-2*a*z;j=a*b*z*z-p*q*q+1
    k=p*(q-b)-a*q*q-2*a*b*z
    if name=='e1':return f
    if name=='e2':return g
    if name=='e3':return j
    if name=='K':return q*f+b*g
    if name=='R':return -q*z*f-b*z*g-2*j
    if name=='N':return k*k+4*a*b*z*k+4*a*b*j
    if name=='size':return p*p*q*q*j
    raise ValueError(name)

def uni(name,x):
    if name=='capacity_gap':return x*(x-3)*(x+1)**2
    if name=='quotient_gap':return x*(x-1)*(x-3)
    if name=='barrier':return (x-4)*(9*x-4)
    if name=='block_minus':return (x-1)*(x+3)
    if name=='block_plus':return (x+1)*(x-3)
    raise ValueError(name)

def factor_direct(n):
    result=[];d=2
    while d*d<=n:
        e=0
        while n%d==0:n//=d;e+=1
        if e:result.append([d,e])
        d+=1
    if n>1:result.append([n,1])
    return result

def verify(c):
    assert set(c)=={'schema','contract','polynomials','positive_translates','parity_states','endpoint','diagnostic','generalization_guard'}
    assert c['schema']=='B699-SQUARE-SOURCE-v1'
    assert c['contract']=={'same_original_input':True,'scope':'omega(t3)=2;g=lambda=w=1;b=2r','source_minimum':11,'root_even':True,'ratio_scale':4,'orders':[-1,1]}
    limits={
       'e1':[1,1,1,1,1,0],'e2':[1,0,1,1,1,1],'e3':[1,1,1,2,0,2],
       'K':[1,1,1,2,1,1],'R':[1,1,1,2,1,2],
       'N':[2,2,2,4,0,2],'size':[1,1,3,4,0,2],
       'capacity_gap':[4],'quotient_gap':[3],'barrier':[2],
       'block_minus':[2],'block_plus':[2],
    }
    assert set(c['polynomials'])==set(limits)
    point_count=0
    for name,bounds in limits.items():
        rows=c['polynomials'][name];terms_ok(rows,bounds)
        for pt in itertools.product(*(range(b+1) for b in bounds)):
            target=core(name,pt) if len(bounds)==6 else uni(name,pt[0])
            assert evaluate(rows,pt)==target,(name,pt)
            point_count+=1
    positives={'capacity_gap_at4':('capacity_gap',4),'quotient_gap_at4':('quotient_gap',3),'barrier_at4':('barrier',2)}
    assert set(c['positive_translates'])==set(positives)
    for label,(name,degree) in positives.items():
        rows=c['positive_translates'][label];terms_ok(rows,[degree])
        assert all(co>0 for _,co in rows)
        # Missing constant means zero; barrier is nonnegative, not strictly positive at r=4.
        if name!='barrier':assert evaluate(rows,[0])>0
        else:assert evaluate(rows,[0])==0
        for y in range(degree+1):assert evaluate(rows,[y])==uni(name,y+4)
    assert c['parity_states']==[[0,1,1,1],[1,1,1,1]]
    for a,u,v,expected in c['parity_states']:assert (4*a*u-v)%2==expected==1
    e=c['endpoint'];assert e=={'X':2,'M':3,'qualifying_prime_powers':[]}
    fs=factor_direct(e['X']**2-1);assert [p**k for p,k in fs if p**k>=11]==[]
    d=c['diagnostic'];s=23;X=2**11;M=X*X-1;p=683;q=89;T=M//(p*q)
    rebuilt={'s':s,'X':X,'M':M,'factorization':factor_direct(M),'P':p,'Q':q,'T':T,
             'U':(X+1)//p,'V':(X-1)//q,'M_squared':M*M,'PQ_cubed':(p*q)**3,
             'source_remainder':(q*q*T-1)%p,'nu_square_remainder':(p*q*q-1)%(2*T)**2}
    assert d==rebuilt and M*M<(p*q)**3 and p>4*q
    assert ((4*d['U']-d['V'])-(q*q*T-1)*d['V'])%p==0
    t=c['generalization_guard']
    assert t=={'Axi':19,'Bzeta':36,'P':28657,'Q':55,'h0':767,'nu0':356,'wrong_unscaled_remainder':16589,'correct_remainder':0}
    a,b,p,q,h,z=(t[k] for k in ('Axi','Bzeta','P','Q','h0','nu0'))
    assert (p-a*q)//b==h and (p+2*a*z)//q==h
    assert p-a*q==h*b and p+2*a*z==h*q
    assert (a*b*z*z+1)==p*q*q
    assert (q*q*z-2)%p==16589 and (a*q*q*z-2)%p==0
    return point_count,hashlib.sha256(json.dumps(rebuilt,sort_keys=True).encode()).hexdigest()

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',nargs='?',default=str(Path(__file__).with_name('certificate.json')));args=ap.parse_args()
    n,h=verify(json.loads(Path(args.certificate).read_text()))
    print('PASS_INDEPENDENT_GRID_AND_INTEGER_CHECKS');print('GRID_POINT_COUNT='+str(n));print('DIAGNOSTIC_SHA256='+h)
if __name__=='__main__':main()
