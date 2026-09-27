#!/usr/bin/env python3
"""Generate exact certificates for A4-MOD97 and CORE-TRI4.
All searches below are over explicitly complete finite residue domains.
Finite integer samples are tagged as diagnostics, not infinite proofs.
"""
from __future__ import annotations
import argparse,json,hashlib,sys
from pathlib import Path
from math import gcd,isqrt
from poly import Poly
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def dump(path,obj):
    path.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')

def multiply(z,w,m=None):
    a,b=z;c,d=w
    out=(a*c+3*b*d,a*d+b*c)
    return out if m is None else tuple(x%m for x in out)
def alpha_power(k,m=None):
    out=(1,0);base=(2,1)
    while k:
        if k&1:out=multiply(out,base,m)
        base=multiply(base,base,m);k//=2
    return out

def pell_row(q):
    V,X=alpha_power(4*q);U=2*V+3*X
    return {'q':q,'V':V,'X':X,'U':U,'d':1+3*U*X,'y':U*V-1}

def step(z,m):
    d,y=z
    return ((18817*d+32592*y+9408)%m,(10864*d+18817*y+5432)%m)
def cycle(m):
    z=(1,1);states=[]
    while not states or z!=(1,1):
        if z in states: raise AssertionError('unexpected preperiod')
        states.append(z);z=step(z,m)
        if len(states)>m*m:raise AssertionError('cycle overflow')
    return states

def square_target(d,y,A,B,m=None):
    v=A*y;W=B*y
    S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*W
    return S if m is None else S%m

def local_entry(p,d,y,a):
    qr={z*z%p for z in range(p)}
    if a==0:
        if 3*(d-1)%p:return {'A':a,'allowed':False,'B':None,'S':None,'reason':'allocation-impossible'}
        bs=[b for b in range(p) if square_target(d,y,a,b,p) in qr]
        return {'A':a,'allowed':bool(bs),'B':bs[0] if bs else None,'S':square_target(d,y,a,bs[0],p) if bs else None,'reason':'singular-existential-B'}
    b=3*(d-1)*pow(a,-1,p)%p;s=square_target(d,y,a,b,p)
    return {'A':a,'allowed':s in qr,'B':b,'S':s,'reason':'unique-B'}

def origin_identity_certificate():
    names=['d','v','H','P','h','n']
    d,v,H,P,h,n=[Poly.var(6,i) for i in range(6)];Q=d+v
    E1=P-Q-h*v;E2=h*d-Q-4*H;E3=4*v*H**2+1-P*Q**2;E4=2*P*Q*H+2-n
    D=d*P-Q**2-4*v*H;F=4*d*v*H**2-4*v*Q**2*H-Q**4+d;N=4*v*H**3+H+Q
    residuals={'dP_recovery':D-d*E1-v*E2,'quadratic_recovery':F-d*E3-Q**2*D,'nQ_recovery':2*N-n*Q-2*H*E3-Q*E4}
    assert all(not z.t for z in residuals.values())
    a,q=Poly.var(2,0),Poly.var(2,1)
    dd=1+16*q;vv=2*a*(1+40*q)
    G=-dd**4+4*dd**3*vv+14*dd**2*vv**2+12*dd*vv**3+dd+3*vv**4
    K=(G-16*q-8*a*(a+1)-48*a**2*(a+1)**2).div_int(64)
    audit={'A_mod64_even_values':32,'q_mod8_values':8,'H_mod64_values':64,'N_roots':0,'joint_F_N_roots':0}
    for AA in range(0,64,2):
        r=(-((AA//2)*(AA//2+1)//2))%4
        for qq in range(8):
            d0=(1+16*qq)%64;y0=(1+40*qq)%64;v0=AA*y0%64;Q0=(d0+v0)%64
            roots=[H0 for H0 in range(64) if (4*v0*H0**3+H0+Q0)%64==0]
            assert len(roots)==1
            audit['N_roots']+=len(roots)
            H0=roots[0];F0=(4*d0*v0*H0**2-4*v0*Q0**2*H0-Q0**4+d0)%64
            assert (F0==0)==(qq%4==r)
            audit['joint_F_N_roots']+=int(F0==0)
    return {'variables':names,'exact_origin_residuals':{k:v.records() for k,v in residuals.items()},
        'G_definition':'-d^4+4d^3v+14d^2v^2+12dv^3+d+3v^4',
        'quotient_variables':['a','q'],'quotient_K':K.records(),
        'identity':'G(1+16q,2a(1+40q))=16q+8a(a+1)+48a^2(a+1)^2+64K',
        'A_mod16_to_q_mod4':[[A,(-(A//2)*(A//2+1)//2)%4] for A in range(0,16,2)],'direct_mod64_audit':audit}

def make(out):
    out.mkdir(parents=True,exist_ok=True)
    cycles={str(p):{'modulus':p,'period':len(cycle(p)),'states':[list(z) for z in cycle(p)]} for p in [7,31,49,64,97,128]}
    dump(out/'pell_cycles.json',{'recurrence_matrix':[[18817,32592],[10864,18817]],'affine_shift':[9408,5432],'initial':[1,1],'cycles':cycles})
    qr97=sorted({z*z%97 for z in range(97)})
    rows=[]
    for r in range(2):
        d,y=cycle(97)[r];B=3*(d-1)*pow(4,-1,97)%97
        rows.append({'q_mod2':r,'d':d,'y':y,'v':4*y%97,'B':B,'S':square_target(d,y,4,B,97)})
    assert all(z['S']==5 for z in rows) and 5 not in qr97
    dump(out/'A4_mod97.json',{'A':4,'modulus':97,'rows':rows,'all_square_residues':qr97,'pow_5_48_mod97':pow(5,48,97),'signed_state_integer_values':[781,1945],
        'scope':'all q>=0 in exact Pell/allocation model; no P/Q prime-power or n condition needed'})
    dump(out/'core_tri4.json',origin_identity_certificate())
    tables={};allowed={}
    for p in [7,31,97]:
        tables[str(p)]={'prime':p,'quadratic_residues':sorted({z*z%p for z in range(p)}),'rows':[]}
        allowed[p]=[]
        for r in range(4):
            d,y=cycle(p)[r%len(cycle(p))]
            entries=[local_entry(p,d,y,a) for a in range(p)]
            good=[e['A'] for e in entries if e['allowed']]
            allowed[p].append(set(good))
            tables[str(p)]['rows'].append({'q_mod4':r,'d':d,'y':y,'allowed_A_residues':good,'entries':entries})
    dump(out/'local_square_tables.json',tables)
    M=16*7*31*97;surv=[]
    for A in range(0,M,2):
        a=A//2;r=(-(a*(a+1)//2))%4
        if all(A%p in allowed[p][r] for p in allowed):surv.append(A)
    count_by_r=[2*len(allowed[7][r])*len(allowed[31][r])*len(allowed[97][r]) for r in range(4)]
    assert len(surv)==sum(count_by_r)==30930
    assert [x for x in surv if x>0][0]==42
    dump(out/'joint_frontier.json',{'A_modulus':M,'even_A_classes':M//2,'surviving_classes':len(surv),'excluded_classes':M//2-len(surv),
        'count_by_q_mod4':count_by_r,'local_allowed_counts':{str(p):[len(z) for z in allowed[p]] for p in allowed},
        'surviving_A_residues':surv,'zero_residue_means_positive_multiples_not_A_zero':True,
        'candidate_status':'projection of necessary local conditions only; NOT original inputs or guaranteed models'})
    small=[]
    for A in range(4,42,2):
        r=(-(A//2)*(A//2+1)//2)%4
        fails=[]
        for p in [7,31,97]:
            e=tables[str(p)]['rows'][r]['entries'][A%p]
            if not e['allowed']:fails.append({'prime':p,'S':e['S'],'reason':e['reason']})
        assert fails
        small.append({'A':A,'forced_q_mod4':r,'obstructions':fails})
    dump(out/'small_A_closures.json',{'scope':'all Pell q, once n=c*2^s and adopted core hold','A_values':small,'least_positive_surviving_A_residue':42,'number_new_fixed_A_branches':19})
    q=5;r=pell_row(q);d=r['d'];y=r['y'];X=r['X'];A=42
    assert (d-1)%14==0
    B=(d-1)//14;v=A*y;Q=d+v;S=square_target(d,y,A,B)
    local_residues={str(p):S%p for p in [7,31,97]}
    assert local_residues=={'7':4,'31':0,'97':3}
    d128=d%128;y128=y%128;v128=v%128;Q128=Q%128
    roots=[H for H in range(128) if (4*v128*H**3+H+Q128)%128==0]
    assert roots==[45]
    F=(4*d128*v128*45**2-4*v128*Q128**2*45-Q128**4+d128)%128
    assert F==64
    rr=isqrt(S)
    assert rr*rr<S<(rr+1)*(rr+1)
    dump(out/'weak_family_A42.json',{'A':A,'q_progression':{'start':5,'step':336,'parameter':'r>=0'},'B':'(d-1)/14',
        'all_family_properties':['Pell and AB=3(d-1)','8 divides B','q>=5 and 3 does not divide 8q+1','CUBIC3 strict size inequality','HEIGHT26 necessary size inequality','CORE-TRI4 residue','square residues at 7,31,97'],
        'not_restored':['P and Q as original complete powers of distinct odd primes','exact integer square Y^2=S','integer h,nu,n,j','complete original n=c*2^s recovery'],
        'uniform_failure':{'modulus':128,'d':d128,'y':y128,'v':v128,'Q':Q128,'all_N_roots':roots,'F_at_root':F,
            'reason':'for genuine recovery n/2 is 0 mod128; N=0 forces H=45 but F=64; family is not NC3'},
        'sample_q5':{**r,'A':A,'B':B,'v':v,'Q':Q,'S':S,'isqrt_S':rr,'square':False,'S_mod_primes':local_residues},
        'uniform_size_checks':{'d_lower':60817,'threshold_d':257,'threshold_inequality':257**2>8*3*14**3,
            'X_lower':56,'height_inequality':2**26*56**25>4*21**26},
        'not_a_global_A42_exclusion':True})
    diagnostics=[]
    for q in range(1,17):
        r=pell_row(q);d=r['d'];y=r['y'];B=3*(d-1)//4
        assert 4*B==3*(d-1)
        S=square_target(d,y,4,B);k=isqrt(S)
        diagnostics.append({'q':q,'d':d,'y':y,'B':B,'Q':d+4*y,'S_mod97':S%97,'is_square':k*k==S,'S_bits':S.bit_length()})
    dump(out/'finite_diagnostics.json',{'purpose':'implementation checks, not proof over unbounded q','A4_rows':diagnostics,'count':len(diagnostics)})
    print(json.dumps({'status':'PASS','certificates':len(list(out.glob('*.json'))),'A4':'S=5 mod97, all q','CORE_TRI4':True,'least_A':42,
        'even_classes':M//2,'excluded_classes':M//2-len(surv),'surviving_classes':len(surv),'diagnostic_rows':len(diagnostics)},sort_keys=True))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args();make(args.out)
if __name__=='__main__':main()
