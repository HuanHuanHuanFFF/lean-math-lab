"""Discovery/build only. Uses SymPy to construct algebra quotients and witnesses.
Run only in a writable work copy. verify.py requires no SymPy.
"""
from __future__ import annotations
from pathlib import Path
import json,hashlib,math
import sympy as sp
from exact_poly import Poly
from algebra_spec import specs
from arith import *
from root_candidates import *
ROOT=Path(__file__).resolve().parents[1]

def save(name,value):
    (ROOT/'certificates'/name).write_text(json.dumps(value,indent=2,ensure_ascii=False)+'\n')

def build_algebra():
    out=[]
    for item in specs():
        names=item['names'];vs=sp.symbols(' '.join(names));vs=(vs,) if len(names)==1 else vs
        def expr(p):return sum(c*math.prod(v**i for v,i in zip(vs,e)) for e,c in p.t.items())
        R=expr(item['residual'])
        if item['relation'] is None:
            assert sp.expand(R)==0
            Q=[]
        else:
            q,rem=sp.div(R,expr(item['relation']),*vs)
            assert rem==0
            Q=[[list(e),int(c)] for e,c in sp.Poly(q,*vs).terms() if c]
        out.append(dict(id=item['id'],names=names,quotient=Q))
    save('algebra.json',out)

def build_regression():
    # Deliberately disjoint from old 7<=k<=22,z<=48 diagnostic.
    pairs=[]
    for k in range(23,181):
        for d in range(max(7,k//2+1),257):
            try:coefficient_data(k,d)
            except ValueError:continue
            key=hashlib.sha256(f'T0R2:{k}:{d}'.encode()).hexdigest()
            pairs.append((key,k,d))
    pairs=sorted(pairs)[:256]
    chosen={(k,d) for _,k,d in pairs}|{(44,35),(64,71),(123,236)}
    records=[];brute_count=0
    for k,d in sorted(chosen):
        r=root_data(k,d);M=r['M'];lo=r['P_min'];hi=r['P_max']
        direct=[P for P in range(lo,hi+1) if (k*P*P+d*P+1)%M==0]
        assert direct==r['P_roots'];brute_count+=hi-lo+1
        records.append({'k':k,'d':d,'root_data':r,'direct_root_list':direct})
    save('root_regression.json',{'description':'Bounded algorithm regression, not a complete k terminal.',
         'k_range':[23,180],'d_max':256,'pairs':len(records),
         'brute_P_evaluations':brute_count,'records':records})

def witness(n,j,src,p):
    E=valuation(n-src,p)
    assert prime(p) and E>0 and p>=3 and not(p==3 and E==1)
    r=j%(p**E)
    assert r>src
    v1=choose_v(n,3,p);v2=choose_v(n,j,p)
    assert v1>0 and v2>0
    return dict(source=src,p=p,E=E,modulus=p**E,j_residue=r,v_choose3=v1,v_choose_j=v2)

def factor_meta(N):
    fac={str(int(p)):int(e) for p,e in sp.factorint(N).items()}
    return fac

def case_record(r,label,fp,fq,wps):
    n,j=r['n'],r['j'];T0=source0(n);T2=source2(n)
    cert={'label':label,'params':{x:r[x] for x in ('k','u','z','a','epsilon')},
          'restored':r,'factorP':fp,'factorQ':fq,
          'source0':T0,'source2':T2,'T0_divides_j':j%T0==0,
          'T0_divides_H0':(r['k']*r['a']+r['epsilon']*(r['k']-r['u'])*r['z']+(1-r['epsilon'])//2)%T0==0,
          'all_complete_T2_slots':j*(j-1)*(j-2)%T2==0,
          'factor_Lucas_P':{p:lucas(n,j,int(p)) for p in fp},
          'factor_Lucas_Q':{p:lucas(n,j,int(p)) for p in fq},
          'witnesses':[witness(n,j,src,p) for src,p in wps]}
    return cert

def build_cases():
    actual=[]
    inp=[(91,1,91,4140,1,{'34279291':1},{'3119423761':1},[(0,23),(2,41)]),
         (211,1,211,22260,1,{'991015411':1},{'209104296241':1},[(0,29)]),
         (28,13,20,23,-1,{'31':2},{'26951':1},[(0,3),(2,2589991)]),
         (71,13,11,38,-1,{'47':2},{'156899':1},[(0,11),(2,43)])]
    for idx,(k,u,z,a,e,fp,fq,ws) in enumerate(inp):
        r=restore(k,u,z,a,e);assert domain(r)
        actual.append(case_record(r,'ACTUAL-'+str(idx+1),fp,fq,ws))
    save('actual_cases.json',actual)
    weak=[]
    for k,d,P in [(64,71,3273),(123,236,34805),(853,490,225037)]:
        rows=original_from_P(coefficient_data(k,d),P);assert len(rows)==1
        row=rows[0];r=restore(k,row['u'],row['z'],row['a'],row['epsilon'])
        fp=factor_meta(P);fq=factor_meta(r['Q'])
        w=None
        for p in sp.factorint(source0(r['n'])):
            if r['j']%int(p)**valuation(r['n'],int(p))!=0:w=int(p);break
        obj=case_record(r,'HIGH-DYADIC-WEAK',fp,fq,[(0,w)])
        obj['root_recovery']=recover(k,d)
        obj['precise_low2_pass']=3*d*(1<<valuation(r['n'],2))>P*P
        obj['missing']='At least one P/Q has multiple prime bases; actual T0|j fails; not NC3.'
        weak.append(obj)
    save('high_dyadic_weak.json',weak)
    pure=[]
    for t in [3,4,5,8]:
        x=1<<t;P=(x+1)*(x*x+1);Q=(x-1)*(x**4+1);n=x**8
        k=(x-1)**2;d=2*(x-1);Y=x*(3*x*x+2*x+1)//8;j=Q*Y
        X=(j-1)//P;u,x0=divmod(X,P);z=(d*Y-1)//P
        T2=source2(n)
        pure.append(dict(t=t,x=x,P=P,Q=Q,n=n,j=j,k=k,d=d,u=u,z=z,x0=x0,
            T0=source0(n),T0_divides_j=j%source0(n)==0,T2=T2,
            T2_slots_pass=j*(j-1)*(j-2)%T2==0,
            carry=k*z-d*u,first_band=P<d*max(d,k)<2*P,
            height=n<10**7*k**13,P_single_base=False,Q_single_base=False,
            original_top_pass=x0<=d,original_k_lt_2d=k<2*d))
    save('weak_source0_family.json',pure)

if __name__=='__main__':
    build_algebra();build_regression();build_cases()
    print('Certificates constructed; receiver must independently recompute them.')
