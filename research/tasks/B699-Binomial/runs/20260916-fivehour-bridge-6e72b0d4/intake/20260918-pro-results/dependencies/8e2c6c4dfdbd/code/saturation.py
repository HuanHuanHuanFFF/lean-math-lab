"""Exact full mu24 classification. Does not use SymPy or modular-rank assumptions."""
from itertools import product,combinations_with_replacement
from collections import Counter,defaultdict
from fractions import Fraction as Q
from exact_core import *

ROWS=[list(sorted({s*(r-s) for s in range(r//2+1)})) for r in range(3,9)]
W={(0,0):1}
for r in range(3,9):W=mul(W,{(1,0):1,(0,0):-r})
FREE=[W,mul(W,{(1,0):1}),mul(W,{(2,0):1}),mul(W,{(0,1):1})]

def patterns():
    out=[]
    for V in ROWS:
        row=[]
        for roots in combinations_with_replacement(V,4):
            p={(0,0):1}
            for v in roots:p=mul(p,{(0,1):1,(0,0):-v})
            row.append((tuple(roots),sum(roots),len(set(roots)),tuple(p.get((0,b),0) for b in range(5))))
        out.append(row)
    return out

def gate(which=0):
    pats=patterns();by=[]
    for row in pats:
        d=defaultdict(list)
        for p in row:d[p[1]].append(p)
        by.append(d)
    piv=(0,1,2) if which==0 else (0,2,5)
    others=tuple(i for i in range(6) if i not in piv)
    counts={'raw':1,'pivot_choices':0,'sum_matched':0,'z_ge14':0,'second_sum_matched':0}
    for row in pats:counts['raw']*=len(row)
    kept=[]
    for selected in product(*(pats[i] for i in piv)):
        counts['pivot_choices']+=1
        if which==0:
            y=[p[1] for p in selected];d1=y[1]-y[0];d2=y[2]-2*y[1]+y[0]
            targets={i:y[0]+i*d1+i*(i-1)//2*d2 for i in others}
        else:
            # Nonconsecutive interpolation pivots; independent of Newton extrapolation.
            ip=interpolation([(i+3,p[1]) for i,p in zip(piv,selected)])
            targets={i:evaluate(ip,i+3,0) for i in others}
        if any(Q(x).denominator!=1 for x in targets.values()):continue
        for rest in product(*(by[i].get(int(targets[i]),[]) for i in others)):
            counts['sum_matched']+=1
            allp=[None]*6
            for i,p in zip(piv,selected):allp[i]=p
            for i,p in zip(others,rest):allp[i]=p
            if sum(p[2] for p in allp)<14:continue
            counts['z_ge14']+=1
            if which==0:
                good=sum(w*p[3][2] for w,p in zip((-1,5,-10,10,-5,1),allp))==0
            else:
                coef=interpolation([(i+3,p[3][2]) for i,p in enumerate(allp)])
                good=not coef.get((5,0),0)
            if not good:continue
            counts['second_sum_matched']+=1
            kept.append(tuple(p[0] for p in allp))
    return sorted(kept),counts

def jet_system(shape):
    vals=[]
    for roots in shape:
        p={(0,0):1}
        for v in roots:p=mul(p,{(0,1):1,(0,0):-v})
        vals.append(p)
    base={}
    for b in range(5):
        a=interpolation([(i+3,p.get((0,b),0)) for i,p in enumerate(vals)])
        base=add(base,mul(a,{(0,b):1}))
    assert all(a+2*b<=8 for a,b in base)
    A=[];rhs=[];labels=[]
    for r,roots in zip(range(3,9),shape):
        for v,e in sorted(Counter(roots).items()):
            for i in range(1,e):
                for j in range(e-i):
                    A.append([taylor(p,r,v,i,j) for p in FREE]);rhs.append(-taylor(base,r,v,i,j));labels.append([r,v,i,j])
    return base,A,rhs,labels

def factor_poly(ts):
    out={(0,0):1}
    for t in ts:out=mul(out,{(0,1):1,(1,0):-t,(0,0):t*t})
    return out

def make_records(shapes):
    out=[]
    for sid,shape in enumerate(shapes):
        base,A,rhs,labels=jet_system(shape)
        rr,piv=rref([row+[b] for row,b in zip(A,rhs)])
        ind=independent_rows(A,4)
        assert len(ind)==4
        cert={'id':sid,'roots':[list(x) for x in shape], 'equations':len(A), 'rank4_rows':ind,
              'rank4_det':pack_fraction(determinant([A[i] for i in ind]))}
        if 4 in piv:
            aug=[row+[b] for row,b in zip(A,rhs)];ii=independent_rows(aug,5);assert len(ii)==5
            cert.update(status='inconsistent',rank5_rows=ii,rank5_det=pack_fraction(determinant([aug[i] for i in ii])))
        else:
            assert piv==[0,1,2,3]
            solution=[rr[i][4] for i in range(4)]
            h=dict(base)
            for q,v in zip(FREE,solution):h=add(h,scale(q,v))
            ts=next((tuple(ts) for ts in combinations_with_replacement(range(4),4) if factor_poly(ts)==h),None)
            assert ts is not None
            cert.update(status='reducible',solution=[pack_fraction(v) for v in solution],terms=pack_poly(h),line_indices=list(ts))
        out.append(cert)
    return out

def verify_records(records,shapes):
    assert len(records)==len(shapes)==21
    integer_equalities=0;taylor_comparisons=0;rank4=0;rank5=0
    for sid,(rec,shape) in enumerate(zip(records,shapes)):
        assert rec['id']==sid and rec['roots']==[list(x) for x in shape]
        base,A,rhs,labels=jet_system(shape)
        assert rec['equations']==len(A)
        d=determinant([A[i] for i in rec['rank4_rows']]);assert d and d==unpack_fraction(rec['rank4_det']);rank4+=1
        if rec['status']=='inconsistent':
            aug=[row+[b] for row,b in zip(A,rhs)]
            d=determinant([aug[i] for i in rec['rank5_rows']]);assert d and d==unpack_fraction(rec['rank5_det']);rank5+=1
        else:
            assert rec['status']=='reducible'
            solution=[unpack_fraction(v) for v in rec['solution']]
            for row,b in zip(A,rhs):assert sum(x*y for x,y in zip(row,solution))==b;integer_equalities+=1
            h=base
            for f,v in zip(FREE,solution):h=add(h,scale(f,v))
            assert h==unpack_poly(rec['terms'])==factor_poly(rec['line_indices'])
            assert len(rec['line_indices'])==4
            # All ordinary jets, not just row-specialization multiplicities.
            for r,roots in zip(range(3,9),shape):
                for v,e in Counter(roots).items():
                    shifted=shift_horner(h,r,v,e+1)
                    for i in range(e+1):
                        for j in range(e+1-i):
                            expected=taylor(h,r,v,i,j)
                            assert shifted.get((i,j),0)==expected;taylor_comparisons+=1
                            if i+j<e:assert expected==0
    return {'rank4_certificates':rank4,'inconsistency_rank5_certificates':rank5,
            'reducible_factorizations':rank4-rank5,'rational_jet_equalities':integer_equalities,'taylor_crosschecks':taylor_comparisons}
