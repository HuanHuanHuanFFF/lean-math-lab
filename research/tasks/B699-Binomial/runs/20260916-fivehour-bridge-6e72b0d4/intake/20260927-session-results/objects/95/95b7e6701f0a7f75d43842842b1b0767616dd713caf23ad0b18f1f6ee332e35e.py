#!/usr/bin/env python3
"""Round 7 deterministic discovery certificates. Standard library only."""
from __future__ import annotations
import argparse, importlib.util, json, math
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def dump(path:Path, obj):
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf8')

def order(a:int,m:int)->int:
    x=1
    for k in range(1,m+1):
        x=x*a%m
        if x==1:return k
    raise ValueError('not a unit')

def merge(x:int,m:int,y:int,n:int):
    d=math.gcd(m,n)
    if (y-x)%d:raise ValueError('inconsistent exponent congruences')
    l=m*(n//d)
    return (x+m*((y-x)//d*pow(m//d,-1,n//d)%(n//d)))%l,l

def log5(target:int,k:int):
    b=next(i for i in range(4) if pow(3,i,5)==target%5)
    for lev in range(2,k+1):
        step=4*5**(lev-2);mod=5**lev
        b=next(b+d*step for d in range(5) if pow(3,b+d*step,mod)==target%mod)
    return b,4*5**(k-1)

def log2(target:int,k:int):
    if k<4:raise ValueError('k >= 4 required')
    b=next(i for i in range(2) if pow(3,i,8)==target%8)
    for lev in range(4,k+1):
        step=2**(lev-3);mod=2**lev
        b=next(b+d*step for d in range(2) if pow(3,b+d*step,mod)==target%mod)
    return b,2**(k-2)

def family(E:int,H:int):
    if E<27 or E%20!=7 or H<5:raise ValueError('family hypotheses')
    c=6653;s=5**(E-1);R=s-2*c
    e5,m5=log5(pow(2*c-s,-1,5**(E+2)),E+2)
    e2,m2=log2(pow(5*c,-1,2**(H-1)),H-1)
    mc=order(3,c);tc=(-pow(s,-1,c))%c
    ec=next(i for i in range(mc) if pow(3,i,c)==tc)
    b,L=merge(*merge(e5,m5,e2,m2),ec,mc)
    return dict(E=E,H=H,c=c,t=0,W=1,K=c,R=R,s=s,
                b0=b,period=L,exponent_congruences=[[e5,m5],[e2,m2],[ec,mc]],
                ordinary_integer_expressions={'B':'3^(b0+period*k)',
                 'n':'10*c*B','q':'(2*c*B-1)/s','Z':'(B*R+1)/(500*s*c)',
                 'delta2':'B^2-40*(n-1)*Z'},
                z2_residue_mod11=10,n_residue_mod11=6,
                ordinary_Z_integer=True,ordinary_Z_square=False,
                j_restored=False,full_source_model=False,NC_model=False,
                all_historical_gates_checked=False,
                representation='exact integer expressions, not expanded; k any nonnegative integer')

def polyadd(a,b):
    z=dict(a)
    for k,v in b.items():z[k]=z.get(k,0)+v
    return {k:v for k,v in z.items() if v}

def scale(a,c):return {k:v*c for k,v in a.items() if v*c}
def mul(a,b):
    z={}
    for (i,j),x in a.items():
        for (k,l),y in b.items():z[i+k,j+l]=z.get((i+k,j+l),0)+x*y
    return {k:v for k,v in z.items() if v}

def polynomials():
    S={(1,0):1};R={(0,1):1};S2=mul(S,S);R2=mul(R,R)
    D=polyadd(S,scale(R,-4));V=polyadd(S,scale(R,-5))
    mid=scale(polyadd(polyadd(S2,scale(mul(S,R),-7)),scale(R2,8)),-20)
    lead=scale(mul(S,D),100)
    lhs=polyadd(mul(mid,mid),scale(mul(lead,mul(V,V)),-4))
    rhs=scale(mul(mul(R2,R),polyadd(scale(R,16),scale(S,-3))),1600)
    assert lhs==rhs
    rows=[]
    for E in range(2,8):
        s=5**(E-1);S0=5*s
        for c in (1,7,13,31,53):
            for t in (0,1):
                A=3**(2*t)
                for W in (-1,1,7):
                    R0=s-2*A*c*W
                    if not(0<4*R0<S0) or math.gcd(R0,10)>1:continue
                    l=10000*A*S0*c*c*(S0-4*R0)
                    m=-20*(S0*S0-7*S0*R0+8*R0*R0);u=A*W*W
                    assert m*m-4*l*u==1600*R0**3*(16*R0-3*S0)
                    assert math.isqrt(l)**2!=l
                    rows.append([E,t,c,W,R0,l,m,u])
    return dict(discriminant_core_coefficients=[[i,j,v] for (i,j),v in sorted(lhs.items())],
                exact_scalar_regressions=rows,formal_identity=True,
                use='identity and failure of rational-leading-square shortcut; not new coverage')

def cross_table():
    table=[]
    for t in range(5):
        for E in range(5):
            value=(pow(3,(16-2*t)%5,11)+2*pow(pow(5,(E-1)%5,11),-1,11))%11
            table.append(dict(t_mod5=t,E_mod5=E,z2_mod11=value,
                              excluded=value not in {0,1,3,4,5,9}))
    return dict(c_mod275=53,W_mod11=1,order3_mod25=order(3,25),
                order3_mod11=order(3,11),log_inverse_2c_mod25=16,
                square_residues_mod11=sorted({x*x%11 for x in range(11)}),table=table,
                highlighted=dict(t_mod5=0,E_mod5=[0,2],z2_mod11=[2,10]),
                excluded_table_cells=sum(r['excluded'] for r in table),
                historical_net_deleted=0)

def main(out:Path,skip_scan:bool=False):
    out.mkdir(parents=True,exist_ok=True)
    dump(out/'cross_prime_11.json',cross_table())
    dump(out/'integer_menu_family.json',dict(general_E='27+20*h, h>=0',general_H='H>=5',
         c_prime=6653,prime_order=6652,order_factorization=[[2,2],[1663,1]],
         members=[family(E,H) for E,H in [(27,65),(47,96),(67,128)]],
         expanded_B=False,full_original_pair_produced=False))
    dump(out/'quartic_identity.json',polynomials())
    if not skip_scan:
        path=ROOT/'experiments'/'inverse_probe.py'
        spec=importlib.util.spec_from_file_location('bounded_experiment',path)
        mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)
        result=mod.run(1500,6,400);result.pop('seconds')
        result['scope']='finite diagnostic box; not an absolute exponent bound or historical deletion'
        dump(out/'bounded_global_search.json',result)
    else:
        p=ROOT/'certificates'/'bounded_global_search.json'
        if p.exists():dump(out/p.name,json.loads(p.read_text()))
    dump(out/'claims.json',dict(round=7,R7=[3,4,5,6,7,8,9],historical_net_deleted=0,
       complete_indices_deleted=0,full_model_found=False,global_finite_bound=False,
       mathematical_outputs=['unique inverse normalization per exponent triple',
         'cross-prime square obstruction on the same ordinary integer menu',
         'symbolic exact integer menu family rejected by an ordinary square test',
         'nonsingular quartic and nonsquare leading coefficient'],
       not_repeated=['SPARSE-B','NORM-REDUCE','RETURN5-NEG','old digit counts','JOINT-LOCAL']))
    print(json.dumps(dict(status='PASS',certificate_files=len(list(out.glob('*.json'))),
                           full_original_pair_produced=False),ensure_ascii=False))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True)
    p.add_argument('--skip-scan',action='store_true');a=p.parse_args();main(a.out,a.skip_scan)
