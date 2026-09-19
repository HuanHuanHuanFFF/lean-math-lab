#!/usr/bin/env python3
"""Exact finite ingredients for the arbitrary-order height proof (standard library).

This is NOT a Lean checker or a proof of Reider/Matveev. It verifies the COMPLETE
bounded curve-class calculation used in PROOFS.md, algebraic certificates, and
integer envelopes for the constants. No original (n,j) search is performed.
"""
from __future__ import annotations
import argparse, copy, hashlib, json, math, platform, time
from collections import defaultdict
from fractions import Fraction as Q
from itertools import product
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
POINTS=[(b,3-b,2) for b in range(4)]+[(b,4-b,3) for b in (1,2,3,4)]
Poly=dict[tuple[int,int],int | Q]

def require(test: bool, msg: str) -> None:
    if not test: raise ValueError(msg)

def poly(terms) -> Poly:
    out={}
    for a,b,c in terms:
        require(isinstance(a,int) and isinstance(b,int) and a>=0 and b>=0,'invalid exponents')
        require(type(c) is int,'non-integer coefficient')
        require((a,b) not in out and c!=0,'duplicate/zero term')
        out[a,b]=int(c)
    require(bool(out),'zero polynomial')
    return out

def clean(p: Poly) -> Poly: return {a:c for a,c in p.items() if c}

def canon(p: Poly) -> Poly:
    p=clean(p); require(bool(p),'canonical zero')
    den=math.lcm(*(c.denominator if isinstance(c,Q) else 1 for c in p.values()))
    p={a:int(c*den) for a,c in p.items()}; g=math.gcd(*p.values())
    if p[max(p)]<0:g=-g
    return {a:c//g for a,c in p.items()}

def mul(p: Poly,q: Poly) -> Poly:
    out=defaultdict(int)
    for (a,b),c in p.items():
        for (x,y),d in q.items():out[a+x,b+y]+=c*d
    return clean(out)

def power(p: Poly,e: int) -> Poly:
    out={(0,0):1}
    for _ in range(e):out=mul(out,p)
    return out

def shift(p: Poly,x,y) -> Poly:
    out=defaultdict(int)
    for (a,b),c in p.items():
        for i in range(a+1):
            for j in range(b+1):out[i,j]+=c*math.comb(a,i)*math.comb(b,j)*x**(a-i)*y**(b-j)
    return clean(out)

def mult_at(p: Poly,x,y) -> int:
    s=shift(p,x,y);require(bool(s),'shift zero')
    return min(a+b for a,b in s)

def original(p: Poly) -> Poly:
    D=max(a+b for a,b in p); out=defaultdict(int); base={(1,0):1,(0,1):1,(0,0):-1}
    for (a,b),c in p.items():
        for (i,j),v in power(base,D-a-b).items():out[a+i,b+j]+=c*v
    return clean(out)

def row_reduce_rank(rows: list[list[int]], width: int) -> int:
    M=[[Q(x) for x in row] for row in rows]; pivot=0
    for c in range(width):
        pp=next((i for i in range(pivot,len(M)) if M[i][c]),None)
        if pp is None:continue
        M[pivot],M[pp]=M[pp],M[pivot]
        x=M[pivot][c]; M[pivot]=[v/x for v in M[pivot]]
        for i in range(pivot+1,len(M)):
            if M[i][c]:
                x=M[i][c];M[i]=[a-x*b for a,b in zip(M[i],M[pivot])]
        pivot+=1
        if pivot==len(M):break
    return pivot

def compositions4(d: int):
    for a in range(d+1):
        for b in range(d-a+1):
            for c in range(d-a-b+1):yield(a,b,c,d-a-b-c)

def enumerate_classes():
    out=[]
    # The analytic proof gives d<=12 BEFORE this enumeration.
    for d in range(1,13):
        cc=[h for h in compositions4(d) if 4*sum(x*x for x in h)<=d*d+8]
        for a in range(d+1):
            b=d-a
            if abs(a-b)>2:continue
            for hA in cc:
                for hB in cc:
                    mm=hA+hB
                    if sum(x*x for x in mm)>2*a*b+2:continue
                    if sum(x*y for x,y in zip((0,3,6,9),hA))-sum(x*y for x,y in zip((2,4,6,8),hB))!=b:continue
                    out.append((a,b,mm))
    return out

def taylor_matrix(a,b,mm):
    mon=list(product(range(a+1),range(b+1)));rows=[]
    for (x,y,d),w in zip(POINTS,mm):
        for order in range(w):
            for i in range(order+1):
                j=order-i
                row=[math.comb(A,i)*math.comb(B,j)*x**(A-i)*y**(B-j)*d**(a+b-A-B)
                     if A>=i and B>=j else 0 for A,B in mon]
                g=math.gcd(*row)
                if g:rows.append([x//g for x in row])
    return mon,rows

# Univariate exact arithmetic, ascending coefficient order.
def trim(a):
    a=list(map(Q,a))
    while a and a[-1]==0:a.pop()
    return a

def rem(a,b):
    a=trim(a);b=trim(b);require(bool(b),'division by zero')
    while len(a)>=len(b):
        c=a[-1]/b[-1];k=len(a)-len(b)
        for j,v in enumerate(b):a[j+k]-=c*v
        a=trim(a)
    return a

def ugcd(a,b):
    a=trim(a);b=trim(b)
    while b:a,b=b,rem(a,b)
    return [x/a[-1] for x in a] if a else []

def ucoef(p: Poly,vdegree: int):
    aa=max(a for a,b in p);return trim([p.get((a,vdegree),0) for a in range(aa+1)])

def check_irreducible(P):
    # The first three are linear. P4,P5 are primitive and linear in v.
    for i in (0,1,2):require(max(a+b for a,b in P[i])==1,'linear irreducibility')
    for i in (3,4):
        require(max(b for a,b in P[i])==1,'linear-in-v degree')
        require(ugcd(ucoef(P[i],1),ucoef(P[i],0))==[1],'linear-in-v primitive')
    # P6 is primitive quadratic in v. Its discriminant has a simple complex root.
    f=P[5];require(max(b for a,b in f)==2,'quadratic degree')
    aa={ (a,0):c for (a,b),c in f.items() if b==2 }
    bb={ (a,0):c for (a,b),c in f.items() if b==1 }
    cc={ (a,0):c for (a,b),c in f.items() if b==0 }
    require(ugcd(ugcd(ucoef(f,2),ucoef(f,1)),ucoef(f,0))==[1],'quadratic primitive')
    disc=defaultdict(int,mul(bb,bb))
    for ab,c in mul(aa,cc).items():disc[ab]-=4*c
    claimed=mul(power({(1,0):3,(0,0):-2},2),{(2,0):369,(1,0):-438,(0,0):169})
    require(clean(disc)==claimed,'quadratic discriminant identity')
    require(438**2-4*369*169==-57600,'squarefree remaining quadratic')
    require(Q(369)*Q(2,3)**2-Q(438)*Q(2,3)+169==41,'coprime discriminant factors')
    return {'absolute_irreducible_curves':6,'P6_discriminant':'(3u-2)^2(369u^2-438u+169)'}

def intersection(c,d):
    a,b,mm=c; A,B,nn=d
    return a*B+b*A-sum(x*y for x,y in zip(mm,nn))

def verify_geometry(data):
    roots=data['roots'];P=[poly(c['terms']) for c in roots['curves']]
    require(len(P)==6,'six factors required')
    classes=[];shift_counts=[]
    for p,rec in zip(P,roots['curves']):
        a=max(i for i,j in p);b=max(j for i,j in p)
        mm=tuple(mult_at(p,Q(x,d),Q(y,d)) for x,y,d in POINTS)
        require((a,b,mm)==(rec['a'],rec['b'],tuple(rec['mult'])),'curve multiplicity/class')
        classes.append((a,b,mm))
        pp=original(p);require(pp==poly(rec['original_terms']),'original polynomial transform')
        shifted=shift(pp,6,6); signs={1 if c>0 else -1 for c in shifted.values()}
        require(len(signs)==1 and shifted.get((0,0),0)!=0,'legal nonvanishing')
        require(sorted(signs)==sorted(rec['shift_signs']),'shift sign record')
        require(shifted[(0,0)]==rec['shift_constant'],'shift constant record')
        shift_counts.append(len(shifted))
    irr=check_irreducible(P)
    enum=enumerate_classes();received=[(r['a'],r['b'],tuple(r['multiplicities'])) for r in data['classes']]
    require(enum==received,'complete class enumeration (order and content)')
    require(len(enum)==16,'sixteen bounded classes')
    obligations=0;rank_list=[]
    for (a,b,mm),r in zip(enum,data['classes']):
        p=poly(r['terms']);prod={(0,0):1}
        for idx in r['factors']:
            require(1<=idx<=6,'factor index');prod=mul(prod,P[idx-1])
        require(canon(p)==canon(prod),'factorization identity')
        mon,rows=taylor_matrix(a,b,mm)
        v=[p.get(ab,0) for ab in mon]
        require(set(p).issubset(mon),'support in bidegree')
        require(all(sum(x*y for x,y in zip(row,v))==0 for row in rows),'Taylor kernel')
        rank=row_reduce_rank(rows,len(mon));require(rank==len(mon)-1,'exact one-dimensional kernel')
        require(r['nullity']==1,'nullity record')
        rank_list.append(rank);obligations+=len(rows)
    M=[[intersection(c,d) for d in classes] for c in classes]
    require(M==roots['intersection'],'intersection matrix')
    w=roots['weights'];require(w==[8,8,9,1,5,5],'negative cycle weights')
    a=sum(wi*c[0] for wi,c in zip(w,classes));b=sum(wi*c[1] for wi,c in zip(w,classes))
    mm=[sum(wi*c[2][j] for wi,c in zip(w,classes)) for j in range(8)]
    require((a,b,mm)==(30,32,[11,13,19,19,19,15,15,13]),'Z class')
    require((a,b,mm)==(roots['Z_a'],roots['Z_b'],roots['Z_mult']),'Z record')
    zc=[sum(row[j]*w[j] for j in range(6)) for row in M]
    require(zc==[-2]*6,'negative intersections')
    zsq=sum(x*y for x,y in zip(w,zc));require(zsq==-72==roots['Z_square'],'Z square')
    require(sum(mm)==2*(a+b),'Z.D0 zero')
    require(sum(wi*mult_at(p,0,0) for wi,p in zip(w,P))==8,'Z origin order')
    require(sum(wi*mult_at(p,1,1) for wi,p in zip(w,P))==17,'Z center order')
    normprod=math.prod(sum(abs(x) for x in p.values())**wi for wi,p in zip(w,P))
    require(normprod<2**100,'Z norm bound')
    require(Q((a-b)**2,2)+sum((Q(x)-Q(a+b,4))**2 for x in mm)==72,'Z orthogonal norm')
    return {'complete_curve_classes':len(enum),'kernel_ranks':rank_list,
            'Taylor_equations':obligations,'legal_shift_coefficients':shift_counts,
            'irreducibility':irr,'Z_square':zsq,'Z_orders':[8,17],
            'Z_norm_product_bits':normprod.bit_length()}

def verify_constants():
    # Universal inequalities reduce to these integer coefficient envelopes;
    # the algebra proving the reduction, not a finite h scan, is in PROOFS.
    require(Q(9,2)**2+Q(3,2)**2+Q(3,2)**2+Q(9,2)**2+3**2+1+1+3**2==65,'moment norm')
    require(13-1>0 and (13-1)**2>130,'all-degree d bound from |e|<=2')
    # m=100h², h>=1: N.C positive envelope and N² envelope.
    require(Q(155,2)-Q(31,2)+1==63,'N.C lower constant')
    require(1528-248+24==1304,'N squared constant')
    require(100-19+1==82,'exceptional N intersection')
    require(Q(180,8)==Q(45,2),'completed square constant')
    require(72*Q(1,2)+144==180,'Cauchy envelope')
    # Dimension / entry / Cramer determinant bounds.
    require(203**2<2**16,'columns envelope')
    require(5*404+20==2040,'matrix and rank coefficient')
    require(2**16*2040<2**27,'Cramer logarithm envelope')
    require(2**27+20<2**29,'G norm envelope')
    require(2**29+100+808<2**31,'F norm envelope')
    require(2**31+1006+402<2**32,'source-cost envelope')
    # Constant for Matveev with three rational positive bases, A1=1,A2=2.
    mat=Q(28,5)*30**6*3**4  # sqrt(3)<2
    require(mat<10**12,'Matveev three-log constant')
    require(5+2**29<2**30,'absorb constants after choosing h')
    require(Q(4,3)*2**30<2**31,'log-height absorption')
    require(4*10**12<2**43,'ceil h envelope')
    require(31+6*43==289,'absolute log inequality exponent')
    require(512-6*9==458 and 458>289,'final absolute height contradiction')
    return {'N_min_squared':1304,'N_positive_delta_min':63,'matrix_columns_envelope':'2^16 h^4',
            'F_norm_log2_envelope':'2^31 h^6','joint_log2_envelope':'2^32 h^6',
            'matveev_constant_upper':int(mat),'absolute_bound':'ln n < 2^512; n < 2^(2^513)',
            'universal_h_checks':'symbolic coefficient envelopes, NOT finite h testing'}

def rejection_tests(data):
    cases=[]
    def test(name,edit):
        d=copy.deepcopy(data);edit(d)
        try:verify_geometry(d)
        except (ValueError,IndexError,ZeroDivisionError):cases.append(name)
        else:raise ValueError('bad certificate accepted: '+name)
    test('omit bounded class',lambda d:d['classes'].pop())
    test('non-integer coefficient',lambda d:d['roots']['curves'][0]['terms'][0].__setitem__(2,1.5))
    test('wrong factor coefficient',lambda d:d['roots']['curves'][5]['terms'][0].__setitem__(2,d['roots']['curves'][5]['terms'][0][2]+1))
    test('wrong source multiplicity',lambda d:d['roots']['curves'][5]['mult'].__setitem__(5,1))
    test('wrong factorization',lambda d:d['classes'][-1]['factors'].pop())
    test('false legal sign',lambda d:d['roots']['curves'][3]['shift_signs'].__setitem__(0,1))
    test('wrong Z order/weight',lambda d:d['roots']['weights'].__setitem__(0,7))
    test('wrong intersection',lambda d:d['roots']['intersection'][0].__setitem__(5,0))
    test('wrong dimension record',lambda d:d['classes'][0].__setitem__('nullity',2))
    return cases

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,default=ROOT/'replay'/'verification.json')
    ap.add_argument('--skip-mutations',action='store_true');args=ap.parse_args()
    start=time.time();src=ROOT/'evidence'/'geometry.json';data=json.loads(src.read_text())
    result={'status':'PASS_FINITE_INGREDIENTS','python':platform.python_version(),
            'certificate_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),
            'geometry':verify_geometry(data),'constant_envelopes':verify_constants(),
            'rejected_mutations':[] if args.skip_mutations else rejection_tests(data),
            'not_checked':['Reider proof','Matveev proof','all paper arguments by a formal kernel','giant finite B699 bottom']}
    result['elapsed_seconds']=round(time.time()-start,3)
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(result,ensure_ascii=False,indent=2))

if __name__=='__main__':main()
