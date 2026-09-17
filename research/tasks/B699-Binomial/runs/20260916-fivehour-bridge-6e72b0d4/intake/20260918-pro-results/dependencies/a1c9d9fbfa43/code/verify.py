#!/usr/bin/env python3
"""Deterministic finite algebra checks for the row4 missing-slot height theorem.

Standard library only. This does NOT formalize the surface arguments, Reider,
Matveev, or enumerate the enormous remaining B699 bottom. Polynomial utilities
and the endpoint geometry audit are reused, byte-frozen, from the previous pack.
"""
from __future__ import annotations
import argparse,copy,hashlib,importlib.util,json,math,platform,time
from collections import defaultdict
from fractions import Fraction as Q
from itertools import product
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('frozen_exact',ROOT/'sources/previous-verify.py')
old=importlib.util.module_from_spec(spec);spec.loader.exec_module(old)
require=old.require;poly=old.poly;canon=old.canon;mul=old.mul;shift=old.shift
original=old.original;mult_at=old.mult_at;intersection=old.intersection
POINTS=[(b,3-b,2) for b in range(4)]+[(b,4-b,3) for b in (0,2,3,4)]


def enum_near():
    out=[]
    # PROOFS proves d<=27 first. This is complete enumeration, not a search cap.
    for d in range(1,28):
        cc=[h for h in old.compositions4(d) if 4*sum(x*x for x in h)<=d*d+8]
        for a in range(d+1):
            b=d-a
            if abs(a-b)>2:continue
            for x in cc:
                for y in cc:
                    mm=x+y
                    if sum(c*c for c in mm)>2*a*b+2:continue
                    if sum(c*t for c,t in zip((0,3,6,9),x))-sum(c*t for c,t in zip((0,4,6,8),y))!=b:continue
                    out.append((a,b,mm))
    return out


def matrix(a,b,mm):
    mon=list(product(range(a+1),range(b+1)));rows=[]
    for (x,y,dd),w in zip(POINTS,mm):
        for total in range(w):
            for r in range(total+1):
                s=total-r
                row=[math.comb(i,r)*math.comb(j,s)*x**(i-r)*y**(j-s)*dd**(a+b-i-j)
                     if i>=r and j>=s else 0 for i,j in mon]
                g=math.gcd(*row)
                if g:rows.append([z//g for z in row])
    return mon,rows


def rank_mod(rows,width,p=65521):
    require(p>2 and all(p%d for d in range(2,math.isqrt(p)+1)),'rank modulus not prime')
    A=[[x%p for x in row] for row in rows];r=0
    for c in range(width):
        s=next((i for i in range(r,len(A)) if A[i][c]),None)
        if s is None:continue
        A[r],A[s]=A[s],A[r]
        inv=pow(A[r][c],-1,p);A[r]=[(x*inv)%p for x in A[r]]
        for i in range(r+1,len(A)):
            z=A[i][c]
            if z:
                for j in range(c,width):A[i][j]=(A[i][j]-z*A[r][j])%p
        r+=1
        if r==len(A):break
    return r


def irreducible_near(P):
    for f in P[:3]:require(max(a+b for a,b in f)==1,'linear root degree')
    # Primitive degree-one over the opposite rational-function field.
    require(max(b for a,b in P[3])==1,'P4 linear-in-v')
    require(old.ugcd(old.ucoef(P[3],1),old.ucoef(P[3],0))==[1],'P4 primitive')
    f={(b,a):c for (a,b),c in P[4].items()}
    require(max(b for a,b in f)==1,'P5 linear-in-u')
    require(old.ugcd(old.ucoef(f,1),old.ucoef(f,0))==[1],'P5 primitive')
    f=P[5];require(max(b for a,b in f)==2,'P6 quadratic-in-v')
    require(old.ugcd(old.ugcd(old.ucoef(f,2),old.ucoef(f,1)),old.ucoef(f,0))==[1],'P6 primitive')
    A={(a,0):c for (a,b),c in f.items() if b==2}
    B={(a,0):c for (a,b),c in f.items() if b==1}
    C={(a,0):c for (a,b),c in f.items() if b==0}
    disc=defaultdict(int,mul(B,B))
    for ab,c in mul(A,C).items():disc[ab]-=4*c
    claimed=mul(old.power({(1,0):3,(0,0):-2},2),{(2,0):-279,(1,0):444,(0,0):4})
    require(old.clean(disc)==claimed,'P6 discriminant identity')
    require(444**2+4*279*4==201600,'remaining discriminant is nonzero')
    require(279*Q(2,3)**2-444*Q(2,3)-4==-176,'discriminant factors disjoint')
    return {'count':6,'quadratic_discriminant':'-(3u-2)^2(279u^2-444u-4)','squarefree_quadratic_discriminant':201600}


def verify_near(data):
    require(data['deleted_slot']==1 and data['degree_bound']==27,'near configuration')
    rec=data['roots'];P=[poly(c['terms']) for c in rec['curves']]
    require(len(P)==6,'six near roots')
    classes=[];orders=[];shift_counts=[]
    for f,c in zip(P,rec['curves']):
        a=max(i for i,j in f);b=max(j for i,j in f)
        mm=tuple(mult_at(f,Q(x,d),Q(y,d)) for x,y,d in POINTS)
        require((a,b,mm)==(c['a'],c['b'],tuple(c['mult'])),'near root class')
        classes.append((a,b,mm))
        ff=original(f);require(ff==poly(c['original']),'near inverse transform')
        sh=shift(ff,6,6);signs=sorted({1 if c>0 else -1 for c in sh.values()})
        require(len(signs)==1 and sh.get((0,0),0)!=0,'near legal nonvanishing')
        require(signs==sorted(c['legal_signs']) and sh[(0,0)]==c['legal_constant'],'near legal sign record')
        oo=[mult_at(ff,*p) for p in [(0,0),(0,2),(1,1),(2,0)]]
        require(oo==c['orders'],'near source orders');orders.append(oo);shift_counts.append(len(sh))
    irr=irreducible_near(P)
    enum=enum_near();received=[(c['a'],c['b'],tuple(c['multiplicities'])) for c in data['classes']]
    require(enum==received and len(enum)==36,'complete 36-class enumeration')
    ranks=[];conditions=0
    for (a,b,mm),c in zip(enum,data['classes']):
        f=poly(c['terms']);prod={(0,0):1}
        for idx in c['factors']:
            require(type(idx) is int and 1<=idx<=6,'near factor index');prod=mul(prod,P[idx-1])
        require(canon(f)==canon(prod),'near factorization identity')
        mon,rows=matrix(a,b,mm);require(set(f).issubset(mon),'near kernel support')
        v=[f.get(ab,0) for ab in mon]
        require(all(sum(x*y for x,y in zip(row,v))==0 for row in rows),'integer Taylor identity')
        rank=rank_mod(rows,len(mon));require(rank==len(mon)-1,'exact rank lower bound')
        # Nonzero integer kernel => rank_Q<=width-1. Prime-modular rank gives reverse.
        require(c['nullity']==1,'near nullity record');ranks.append(rank);conditions+=len(rows)
    M=[[intersection(c,d) for d in classes] for c in classes]
    require(M==rec['intersection'],'near intersection matrix')
    w=rec['weights'];require(w==[15,21,8,8,15,11],'near cycle weights')
    zc=[sum(x*y for x,y in zip(row,w)) for row in M];require(zc==[-1]*6,'near cycle negative on all roots')
    a=sum(wi*c[0] for wi,c in zip(w,classes));b=sum(wi*c[1] for wi,c in zip(w,classes))
    mm=[sum(wi*c[2][i] for wi,c in zip(w,classes)) for i in range(8)]
    require([a,b,mm]==rec['Z_class']==[74,75,[34,34,40,41,42,37,36,34]],'near Z class')
    require(sum(mm)==2*(a+b),'near Z.D0 zero')
    require(intersection((a,b,mm),(a,b,mm))==-78==rec['Z_square'],'near Z square')
    require(Q((a-b)**2,2)+sum((Q(c)-Q(a+b,4))**2 for c in mm)==78,'near orthogonal norm')
    zz=[sum(wi*oo[i] for wi,oo in zip(w,orders)) for i in range(4)]
    require(zz==[23,8,21,15],'all three q2 slots gained')
    normprod=math.prod(sum(abs(c) for c in f.values())**wi for wi,f in zip(w,P))
    require(normprod<2**400,'near product norm')
    return {'complete_classes':36,'kernel_ranks':ranks,'integer_Taylor_conditions':conditions,'rank_prime':65521,
            'irreducibility':irr,'Z_orders_origin_q2':zz,'Z_square':-78,'Z_norm_product_bits':normprod.bit_length(),
            'legal_shift_nonzero_coefficients':shift_counts}


def verify_endpoint_construction(old_data,con):
    require(con['extra_point']==[0,2],'extra point')
    require(con['N_exceptional']==[8,1] and con['R_exceptional']==[8,0],'canonical +1 on new blowup')
    P=[poly(c['terms']) for c in old_data['roots']['curves']];w=old_data['roots']['weights']
    vals=[sum(c*Q(0)**a*Q(2)**b for (a,b),c in f.items()) for f in P]
    require(vals==[2,1,-1,1,-8,-16] and all(vals),'extra point disjoint from Z')
    require(Q(2)!=Q(3,2) and Q(2)!=Q(4,3),'extra point disjoint from source curves')
    oo=[sum(wi*mult_at(original(f),*p) for wi,f in zip(w,P)) for p in [(0,0),(0,2),(1,1),(2,0)]]
    require(oo==[8,0,17,8],'old endpoint source orders')
    oo[1]+=8
    require(oo==con['new_orders']==[8,8,17,8],'extra point fills entire missing q2 endpoint')
    return {'extra_point':[0,2],'root_values':[int(x) for x in vals],'combined_origin_q2_orders':oo,
            'N_new_exceptional_min':9,'N_square_min':1223,'N_positive_delta_min':'207/8'}


def constants():
    # All are symbolic coefficient envelopes for every h>=1, NOT sampled h checks.
    w=[Q(-9,2),Q(-3,2),Q(3,2),Q(9,2),Q(9,2),Q(1,2),Q(-3,2),Q(-7,2)]
    require(sum(x*x for x in w)==80 and 13**2>160,'near all-degree bound')
    require(72+9**2==153 and 153*11<4*21**2,'endpoint extended Cauchy coefficient')
    require(Q(359,8)-20+1==Q(207,8),'endpoint curve intersection')
    require(1464-264+23==1223,'endpoint N square')
    require(78*Q(5,2)==195<14**2,'near Cauchy coefficient')
    require(Q(151,2)-Q(149,4)+1==Q(157,4),'near curve intersection')
    require(1522-596+24==950,'near N square')
    require(100-42+1==59 and 100-19+1==82,'old exceptional intersections')
    require(200+2-75>0 and 100-42>0,'section degrees and multiplicities nonnegative')
    require(203**2<2**16 and 2**16*2040<2**27,'Cramer bounds')
    require(2**29+400+808<2**31,'new z norm still under same F envelope')
    require(2**31+1006+402<2**32,'source envelope unchanged')
    require(Q(28,5)*30**6*3**4<10**12,'Matveev constant')
    require(4*10**12<2**43 and 31+6*43==289 and 512-54>289,'same absolute height')
    return {'universal_parameter':'h is any positive integer; m=100h^2','endpoint_N_square_polynomial':[23,-264,1464],
            'near_N_square_polynomial':[24,-596,1522],'near_N_delta_min':'157/4',
            'F_l1_bound':'2^(2^31 h^6)','joint_bound':'(g q2)^(8h) < 2^(2^32 h^6) n^2',
            'height':'ln(n)<2^512; n<2^(2^513)'}


def tests(data,old_data,con):
    out=[]
    def reject(label,fn):
        try:fn()
        except (ValueError,KeyError,IndexError,TypeError,ZeroDivisionError):out.append(label);return
        raise AssertionError('mutation accepted: '+label)
    x=copy.deepcopy(data);x['classes'].pop();reject('omitted curve class',lambda:verify_near(x))
    x=copy.deepcopy(data);x['degree_bound']=26;reject('unproved reduced degree bound',lambda:verify_near(x))
    x=copy.deepcopy(data);x['roots']['curves'][4]['terms'][0][2]+=1;reject('wrong root coefficient',lambda:verify_near(x))
    x=copy.deepcopy(data);x['roots']['curves'][0]['mult'][0]=1;reject('wrong root multiplicity',lambda:verify_near(x))
    x=copy.deepcopy(data);x['classes'][-1]['factors'].pop();reject('wrong class factorization',lambda:verify_near(x))
    x=copy.deepcopy(data);x['roots']['curves'][0]['legal_constant']=0;reject('legal zero hidden',lambda:verify_near(x))
    x=copy.deepcopy(data);x['roots']['curves'][0]['orders'][2]+=1;reject('overstated center gain',lambda:verify_near(x))
    x=copy.deepcopy(data);x['roots']['weights'][0]-=1;reject('wrong negative cycle',lambda:verify_near(x))
    x=copy.deepcopy(data);x['roots']['intersection'][0][0]=-1;reject('wrong intersection form',lambda:verify_near(x))
    c=copy.deepcopy(con);c['extra_point']=[1,1];reject('new point lies on Z',lambda:verify_endpoint_construction(old_data,c))
    c=copy.deepcopy(con);c['N_exceptional']=[8,0];reject('forgot canonical exceptional correction',lambda:verify_endpoint_construction(old_data,c))
    c=copy.deepcopy(con);c['new_orders'][1]=9;reject('overcancelled q2 endpoint precision',lambda:verify_endpoint_construction(old_data,c))
    return out


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path,default=ROOT/'replay/latest.json');args=parser.parse_args()
    start=time.time();data=json.loads((ROOT/'evidence/near-geometry.json').read_text())
    old_data=json.loads((ROOT/'sources/previous-geometry.json').read_text())
    con=json.loads((ROOT/'evidence/constructions.json').read_text())
    old_summary=old.verify_geometry(old_data)
    result={'status':'PASS_NEW_FINITE_INGREDIENTS','python':platform.python_version(),
            'previous_endpoint_geometry_targeted_replay':old_summary,
            'new_endpoint_blowup':verify_endpoint_construction(old_data,con),
            'new_near_slot_geometry':verify_near(data),'universal_constant_envelopes':constants(),
            'rejected_mutations':tests(data,old_data,con),
            'not_checked':['Reider proof','Matveev proof','paper arguments by a formal kernel','huge finite original-problem bottom'],
            'source_geometry_sha256':hashlib.sha256((ROOT/'sources/previous-geometry.json').read_bytes()).hexdigest(),
            'new_geometry_sha256':hashlib.sha256((ROOT/'evidence/near-geometry.json').read_bytes()).hexdigest()}
    result['seconds']=round(time.time()-start,4)
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))

if __name__=='__main__':main()
