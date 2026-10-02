#!/usr/bin/env python3
"""D08: exact source-order restrictions and adoption-aware phase projection.
Standard library only. Does not run Lean, access the network or write a repository.
"""
from __future__ import annotations
import argparse, hashlib, json, math, zipfile
from pathlib import Path

PARENT_SHA='cf315c42bdf034c29001c35042cbd2c70ce844df2f79480aebb28d4797ea7a24'
PRIMES=(3,5,7,11,13,17,19,23,29,31,41,73)
PAIRS=((5,11),(5,13),(5,29))

def dump(x): return json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
def trim(a,p=13):
    a=[x%p for x in a]
    while a and not a[-1]:a.pop()
    return a

def add(a,b,p=13):return trim([(a[i] if i<len(a) else 0)+(b[i] if i<len(b) else 0) for i in range(max(len(a),len(b)))],p)
def neg(a,p=13):return trim([-x for x in a],p)
def mul(a,b,p=13):
    c=[0]*(len(a)+len(b)-1) if a and b else []
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]=(c[i+j]+x*y)%p
    return trim(c,p)
def scale(a,n,p=13):return trim([n*x for x in a],p)
def power(a,e,p=13):
    z=[1]
    while e:
        if e&1:z=mul(z,a,p)
        a=mul(a,a,p);e//=2
    return z

def divmod_poly(a,b,p=13):
    a=trim(a,p);b=trim(b,p)
    if not b:raise ValueError('zero polynomial divisor')
    q=[0]*max(0,len(a)-len(b)+1)
    while a and len(a)>=len(b):
        k=len(a)-len(b);c=a[-1]*pow(b[-1],-1,p)%p;q[k]=c
        a=add(a,neg([0]*k+scale(b,c,p),p),p)
    return trim(q,p),a

def bezout(a,b,p=13):
    u0,u1,v0,v1=[1],[],[],[1]
    while b:
        q,r=divmod_poly(a,b,p);a,b=b,r
        u0,u1=u1,add(u0,neg(mul(q,u1,p),p),p)
        v0,v1=v1,add(v0,neg(mul(q,v1,p),p),p)
    if len(a)!=1:raise ValueError('polynomials are not coprime')
    inv=pow(a[0],-1,p)
    return scale(u0,inv,p),scale(v0,inv,p)

def norm_polynomials():
    x=[0,1];Q=[1,1]
    R=power(Q,10)
    for c,e in [(-12,7),(15,6),(-4,5),(-4,3),(12,2),(-12,1)]:R=add(R,scale(power(Q,e),c))
    R=add(R,[4]);L=add(mul([3,4],power(Q,5)),[0,-2])
    cert=[];fermat=[-1]+[0]*11+[1]
    for n in (4,10):
        target=add(R,neg(scale(mul(x,add([n],neg(scale(L,2)))),n)))
        assert target[0]==0
        G=trim(target[1:]);u,w=bezout(G,fermat)
        assert add(mul(u,G),mul(w,fermat))==[1]
        cert.append({'n_mod_13':n,'G_ascending_mod_13':G,'U_ascending_mod_13':u,'W_ascending_mod_13':w,
                     'identity':'U*G+W*(v^12-1)=1 over F_13'})
    return {'R_ascending_mod_13':R,'L_ascending_mod_13':L,'certificates':cert,
            'v_zero_recoveries':[{'n':4,'H':1,'Z':1,'B_times_y':9},{'n':10,'H':4,'Z':7,'B_times_y':5}]}

def cycles(p):
    z=1;out=[]
    while z not in out:out.append(z);z=2*z%p
    assert z==1
    return out

def support():
    rows=[]
    for p in PRIMES:
        assert p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
        cyc=cycles(p);m=len(cyc);log3=cyc.index(3%p) if 3%p in cyc else None
        rows.append({'p':p,'order_2':m,'power_cycle':cyc,'log_2_3':log3,
                     'c1_possible':math.gcd(6,m)==1,
                     'c3_s_residue':None if log3 is None else (1-log3)%m})
    byp={x['p']:x for x in rows};pairs=[]
    for p,l in PAIRS:
        x,y=byp[p],byp[l];g=math.gcd(x['order_2'],y['order_2'])
        pairs.append({'primes':[p,l],'c1_possible':x['c1_possible'] and y['c1_possible'],
                      'c3_orders_gcd':g,'c3_residues':[x['c3_s_residue'],y['c3_s_residue']],
                      'c3_compatible':(x['c3_s_residue']-y['c3_s_residue'])%g==0})
    return {'orders':rows,'individually_forbidden_primes':[x['p'] for x in rows if not x['c1_possible'] and x['c3_s_residue'] is None],
            'mixed_pairs':pairs}

def source3():
    rows=[]
    for A in range(3):
        for B in range(3):
            if A*B%3:continue
            for nu in range(3):
                Q=(1+A)%3;h=(2*nu+Q)%3;P=(Q+h*A)%3
                if (A*nu*nu-P*Q*Q+1)%3:continue
                DIV=(nu*nu-B-(h+3)-(2*h+3)*A-(h+1)*A*A)%3
                if DIV:continue
                n=(P*Q*nu+2)%3
                for c in (1,3):
                    if n != c%3:continue  # c=1 uses inherited 6|s, c=3 gives zero.
                    rows.append({'A':A,'B':B,'nu':nu,'h':h,'P':P,'Q':Q,'n':n,'c':c})
    return sorted(rows,key=lambda r:(r['c'],r['A'],r['B'],r['nu']))

def matmul(a,b,m):return [[sum(a[i][k]*b[k][j] for k in range(3))%m for j in range(3)] for i in range(3)]
def source_fast(q,m):
    t=[[18817,32592,9408],[10864,18817,5432],[0,0,1]]
    a=[[1,0,0],[0,1,0],[0,0,1]]
    while q:
        if q&1:a=matmul(a,t,m)
        t=matmul(t,t,m);q//=2
    return sum(a[0])%m,sum(a[1])%m

def valuation_samples():
    out=[]
    for k in range(4):
        for branch in (0,2):
            q=3*13**k if branch==0 else (9*13**k-1)//4
            a=k+1;m=13**(a+1);d,y=source_fast(q,m)
            D=(d-1)%m
            assert D%13**a==0 and D%13**(a+1)!=0
            t=q//13**k if branch==0 else (4*q+1)//13**k
            unit=D//13**a%13
            assert unit==((7 if branch==0 else 8)*t)%13
            out.append({'q':q,'q_mod_3':branch,'valuation_13_d_minus_1':a,'modulus':m,'d_residue':d,'y_residue':y,
                        'normalized_source_unit':t%13,'normalized_d_minus_1':unit})
    # Integers used in the all-exponent proof, not a finite proof surrogate.
    return {'samples':out,'constants':{'U3':26,'X3':15,'U6':1351,'X6':780,'U8':18817,'X8':10864,
                                      'U12':3650401,'X12':2107560,'X12_div_13_mod_13':10},
            'quotient_unit_rules':[
                {'A_mod_7':2,'q_mod_3':0,'B_times_y_mod_13':5,'normalized_source_multiplier':12},
                {'A_mod_7':2,'q_mod_3':2,'B_times_y_mod_13':5,'normalized_source_multiplier':9},
                {'A_mod_7':4,'q_mod_3':0,'B_times_y_mod_13':9,'normalized_source_multiplier':6},
                {'A_mod_7':4,'q_mod_3':2,'B_times_y_mod_13':9,'normalized_source_multiplier':11}]}

def load_parent(path):
    raw=path.read_bytes()
    if hashlib.sha256(raw).hexdigest()!=PARENT_SHA:raise ValueError('Parent archive SHA mismatch')
    with zipfile.ZipFile(path) as z:
        return json.loads(z.read('B699-D04-SYNC455-20261002/certificates/certificate.json'))

def project(parent):
    old=set(parent['retained_A_residues']);post6=[]
    for f in parent['fibers']:
        if any(c==3 or s%6==0 for row in f['by_q'] for c,s in row['labels']):post6.append(f['A_mod_455'])
    retained=[];base=[];delta=[]
    for a in range(4095):
        f=parent['fibers'][a%455]
        if f['survives']:base.append(a)
        labs=[]
        for row in f['by_q']:
            for c,s in row['labels']:
                if (c==1 and s%6==0 and (a%3==1 or a%9==0)) or (c==3 and a%9==0):labs.append([row['q_mod_3'],c,s])
        if labs:retained.append({'A_mod_4095':a,'q_c_s_labels':labs})
        elif f['survives']:delta.append(a)
    rset={r['A_mod_4095'] for r in retained}
    for a in rset:
        assert a%7 not in (5,6)
        if a%5 in (1,4):assert a%9==0 and (a%7==0 or a%13==0)
    cond=[r for r in retained if r['A_mod_4095']%5 in (1,4)]
    special=[a for a in range(0,8190,2) if a%70==16]
    return {'old_A_modulus':455,'old_retained_A':sorted(old),'origin6_retained_A_mod_455':post6,
            'origin6_newly_excluded_A_mod_455':sorted(old-set(post6)),
            'joint_A_modulus':4095,'even_A_modulus':8190,'retained_fibers':retained,
            'newly_excluded_parent_lifts':delta,'special_A16_mod70':{
                'all_lifts_mod8190':len(special),'parent_surviving_lifts':[a for a in special if a%455 in old],
                'new_surviving_lifts':[a for a in special if a%4095 in rset]},
            'conditional_pm1_mod5_retained_fibers':cond,
            'counts':{'old_retained':len(old),'origin6_retained':len(post6),'origin6_excluded':len(old)-len(post6),
                      'old_lifted_to_4095':len(base),'joint_retained':len(retained),'joint_excluded_from_old_lifts':len(delta),
                      'old_lifts_pm1_mod5':sum(a%5 in (1,4) for a in base),'joint_pm1_mod5':len(cond),
                      'old_A_mod7_5':sum(a%7==5 for a in old),'old_A_mod7_6':sum(a%7==6 for a in old)}}

def build(parent_zip):
    parent=load_parent(parent_zip)
    return {'schema':'B699-D08-ORIGIN-SOURCE-v1','parent_archive_sha256':PARENT_SHA,
            'scope':'adopted canonical same-origin balanced core; full P/Q powers, true lambda=mu=1; old q>=6 and A-EXP retained',
            'origin6':'adopted old conclusion; short bridge reconstructed in PROOFS from full prime powers and explicit size inputs',
            'source3_patterns':source3(),'support':support(),'norm13':norm_polynomials(),
            'valuation13':valuation_samples(),'projection':project(parent),
            'boundary':{'historical_net_increment_certified':0,'all_history_difference_audited':False,
                        'minimum_remaining_A_certified':None,'actual_NC3_inputs_counted':False,'R7':[3,4,5,6,7,8,9]}}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--parent',type=Path,required=True);ap.add_argument('--output-dir',type=Path,required=True)
    a=ap.parse_args();cert=build(a.parent);a.output_dir.mkdir(parents=True,exist_ok=True)
    (a.output_dir/'certificate.json').write_text(dump(cert),encoding='utf-8')
    summary={'scope':cert['scope'],'counts':cert['projection']['counts'],'forbidden_source_primes':cert['support']['individually_forbidden_primes'],
             'forbidden_mixed_products':[math.prod(r['primes']) for r in cert['support']['mixed_pairs']],
             'special_progression':cert['projection']['special_A16_mod70'],'boundary':cert['boundary']}
    (a.output_dir/'summary.json').write_text(dump(summary),encoding='utf-8')
    (a.output_dir/'RETAINED_A_4095.txt').write_text('\n'.join(str(r['A_mod_4095']) for r in cert['projection']['retained_fibers'])+'\n',encoding='utf-8')
    print(dump(summary),end='')
if __name__=='__main__':main()
