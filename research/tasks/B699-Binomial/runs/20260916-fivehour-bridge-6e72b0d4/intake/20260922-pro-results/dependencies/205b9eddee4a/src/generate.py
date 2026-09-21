#!/usr/bin/env python3
"""Generate exact certificates. SymPy is used only here, not by check_a/check_b."""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction
from math import comb, gcd
import json
import sympy as sp

ROOT = Path(__file__).resolve().parents[1]

def terms(expr, variables):
    p = sp.Poly(sp.expand(expr), *variables)
    ans = []
    for powers, coeff in sorted(p.terms()):
        q = sp.Rational(coeff)
        ans.append([list(powers), [int(q.p), int(q.q)]])
    return ans

def bernstein(expr, variables, degrees):
    p = sp.Poly(sp.expand(expr), *variables)
    rows = []
    for i in range(degrees[0]+1):
        row = []
        for j in range(degrees[1]+1):
            value=sp.Rational(0)
            for (k,l), coeff in p.terms():
                if k<=i and l<=j:
                    value += coeff*sp.Rational(comb(i,k),comb(degrees[0],k))*sp.Rational(comb(j,l),comb(degrees[1],l))
            row.append([int(value.p),int(value.q)])
        rows.append(row)
    return rows


def uniform():
    m,P,a,b,c=sp.symbols('m P a b c')
    zd=m*b-2*a; wd=2*m*m*c-a
    Rd=4*m*zd*(wd-m*m-2*zd)
    Sd=wd*(wd-2*m*m)-2*zd**2
    A,B=sp.symbols('A B')
    u=A*b-B*a; w=A*c-a
    R=A*u*(2*w-A)-B*u*u
    S=A*w*(w-A)-u*u
    x,y,t=sp.symbols('x y t')
    K=A+B*B; T=16*A*K*(A+B+1)
    expressions={
        'plus_R':(Rd,[m,a,b,c]),
        'plus_S':(Sd,[m,a,b,c]),
        'general_R':(R,[A,B,a,b,c]),
        'general_S':(S,[A,B,a,b,c]),
        'plus_small_margin':((2*m*m*P*P-176*m**5*P-44*m**4).subs(P,128*m**3+t).subs(m,1+x),[x,t]),
        'plus_nonzero_margin':((P-11*m**3).subs(P,128*m**3+t).subs(m,1+x),[x,t]),
        'plus_digits_margin':((128*m**3-2*m*m-4*m-2).subs(m,1+x),[x]),
        'general_small_margin':((A*P*P-9*A*A*B*K*P-6*A*A*K).subs(P,T+t).subs({A:1+x,B:1+y}),[x,y,t]),
        'general_nonzero_margin':((T-2*A*A*K).subs({A:1+x,B:1+y}),[x,y]),
        'general_digits_margin':((T-A-B-2).subs({A:1+x,B:1+y}),[x,y]),
        'all_compat_margin':((64*A*A*K**3-T).subs({A:1+x,B:1+y}),[x,y]),
        'all_second_margin':((A*(64*A*A*K**3+t)+B-48*A**3*K**3).subs({A:1+x,B:1+y}),[x,y,t]),
    }
    polys={k:{'vars':[str(v) for v in vs], 'terms':terms(ex,vs)} for k,(ex,vs) in expressions.items()}
    for k,vv in polys.items():
        if k.endswith('margin'):
            assert all(Fraction(*co)>0 for _,co in vv['terms'])
    aa,bb=sp.symbols('aa bb')
    boxes=[]
    for cc in [0,1,2]:
        zz=4*bb-2*aa; ww=2*cc-aa
        rr=4*zz*(ww-1-2*zz); ss=ww*(ww-2)-2*zz*zz
        for label,ex in [('R_lower',176+rr),('R_upper',176-rr),('S_lower',44+ss),('S_upper',44-ss)]:
            coeff=bernstein(ex,[aa,bb],[2,2])
            assert all(Fraction(*q)>=0 for row in coeff for q in row)
            boxes.append({'c':cc,'bound':label,'degrees':[2,2],'coefficients':coeff})
    return {'schema':'B699.round4.uniform.v1','plus_threshold':128,
            'general_threshold':16,'all_threshold':64,'polynomials':polys,'plus_box_bounds':boxes,
            'degree_bounds':{'plus_identity':[8,4,2,2,2],'general_identity':[4,4,4,2,2,2]}}


def prime_certificates(roots):
    certs={}
    def prove(n):
        n=int(n)
        if str(n) in certs:return
        if n==2:
            certs['2']={'n':2,'factors':[],'base':None};return
        fac={int(q):int(e) for q,e in sp.factorint(n-1).items()}
        for q in fac:prove(q)
        witness=None
        for g in range(2,10000):
            if pow(g,n-1,n)==1 and all(gcd(pow(g,(n-1)//q,n)-1,n)==1 for q in fac):
                witness=g;break
        if witness is None:raise RuntimeError(f'No primitive-order certificate found: {n}')
        certs[str(n)]={'n':n,'factors':[[q,fac[q]] for q in sorted(fac)],'base':witness}
    for n in roots:prove(n)
    return {'schema':'B699.round4.primes.v1','roots':sorted(set(int(n) for n in roots)),
            'certificates':{k:certs[k] for k in sorted(certs,key=int)}}


def f_h(h,y):
    return -2*y**3+(h-1)*y**2+2*h*y-h*h

def floor(x):return x.numerator//x.denominator

def real_shell():
    h=1033
    # Q is merely the scale in a REAL shell. We do not claim an NC3 point.
    for Q in range(h*h,h*h+200,2):
        lo,hi=Fraction(32),Fraction(33)
        target=-Fraction(h,Q**3)
        assert f_h(h,lo)<target<f_h(h,hi)
        for _ in range(190):
            mid=(lo+hi)/2
            if f_h(h,mid)<target:lo=mid
            else:hi=mid
        def nn3(y):return h*y-2*y*y+Fraction(2,Q**3)
        def ss3(y):return h-y
        n3=(nn3(lo),nn3(hi));s3=(ss3(hi),ss3(lo))
        t3=(n3[0]-s3[1],n3[1]-s3[0])
        def nn2(y):
            x=h-2*y
            return Q*y/x+Fraction(2,Q**2)/x**2
        def ss2(y):
            x=h-2*y
            return Q*(h-y)/x**2
        n2=(nn2(lo),nn2(hi));s2=(ss2(lo),ss2(hi))
        t2=(n2[0]-s2[1],n2[1]-s2[0])
        intervals=[n3,s3,t3,n2,s2,t2]
        if not all(floor(l)==floor(u) for l,u in intervals):continue
        fs=[floor(l) for l,u in intervals]
        if fs[0]-fs[1]-fs[2]==0 and fs[3]-fs[4]-fs[5]==0:
            return {'schema':'B699.round4.real-shell.v1','h':h,'Q':Q,
              'y_interval':[[lo.numerator,lo.denominator],[hi.numerator,hi.denominator]],
              'floors':dict(zip(['n_Q3','sigma_Q3','tau_Q3','n_P2','sigma_P2','tau_P2'],fs)),
              'missing_original_conditions':['integer P,nu,v,n,j','P as a true prime power','alpha=c*2^s','all original source windows','actual Psi recovery'],
              'classification':'real algebraic shell, NOT NC3 and NOT an original counterexample'}
    raise RuntimeError('No zero/zero shell in diagnostic interval')


def main(out_root=None):
    dest=Path(out_root) if out_root else ROOT
    (dest/'certificates').mkdir(parents=True,exist_ok=True)
    U=uniform()
    (dest/'certificates/uniform.json').write_text(json.dumps(U,indent=2)+'\n')
    P=57912614113275649087721
    oppos=[[3,1],[499,1],[1163,1],[2657,1],[155377,1],[13455809771,1]]
    pc=prime_certificates([P,167,101,11,37]+[q for q,e in oppos])
    (dest/'certificates/primes.json').write_text(json.dumps(pc,indent=2)+'\n')
    row={'schema':'B699.round4.row.v1','theorem':'PLUS128','m':167,'p':P,'e':1,
         'P':P,'X':2**83,'n':2**167,'threshold':128*167**3,'opposite_factorization':oppos,
         'opposite_retained_prime_count':5,
         'old_TS_ROW':{'source_side':'X+1','largest_complete_prime_power':13455809771,'cofactor':(2**83+1)//13455809771,'d3':1,'threshold':64*((2**83+1)//13455809771)**3,'gate_passes':False},'scope':'every original 4 <= j <= floor(n/2)'}
    (dest/'certificates/row_2pow167.json').write_text(json.dumps(row,indent=2)+'\n')
    (dest/'certificates/real_shell.json').write_text(json.dumps(real_shell(),indent=2)+'\n')
    print(json.dumps({'generated':4,'prime_certificate_nodes':len(pc['certificates']),
                      'uniform_polynomials':len(U['polynomials']),'bernstein_boxes':len(U['plus_box_bounds'])}))
if __name__=='__main__':
    import argparse
    ap=argparse.ArgumentParser();ap.add_argument('--out-dir')
    main(ap.parse_args().out_dir)
