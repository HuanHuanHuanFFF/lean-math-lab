"""Acceptance for this round only. Python standard library; exact arithmetic."""
from collections import Counter
from fractions import Fraction as Q
from math import factorial,lcm,prod
from copy import deepcopy
from exact_core import *
from quintic_saturation import gate,jet_system,FREE,factor_poly
from refined_gate import profiles,tau


def ceil_half_log(n):
    assert isinstance(n,int) and n>=1
    return (n.bit_length()+1)//2


def bareiss_integer(A):
    """Independent fraction-free determinant with row pivoting."""
    a=[row[:] for row in A];n=len(a)
    assert all(len(row)==n and all(type(v) is int for v in row) for row in a)
    if not n:return 1
    sign=1;last=1
    for k in range(n-1):
        p=next((i for i in range(k,n) if a[i][k]),None)
        if p is None:return 0
        if p!=k:a[p],a[k]=a[k],a[p];sign=-sign
        pivot=a[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                numerator=a[i][j]*pivot-a[i][k]*a[k][j]
                assert numerator%last==0
                a[i][j]=numerator//last
            a[i][k]=0
        last=pivot
    return sign*a[-1][-1]


def rational_det_independent(A):
    scales=[lcm(*(Q(x).denominator for x in row)) for row in A]
    ints=[[int(Q(x)*s) for x in row] for row,s in zip(A,scales)]
    return Q(bareiss_integer(ints),prod(scales))


def verify_one(rec,shape):
    assert rec['roots']==[list(x) for x in shape]
    base,A,rhs,labels=jet_system(shape)
    assert rec['equations']==len(A) and rec['rank']==9
    ii=rec['rank_rows'];assert len(set(ii))==len(ii)==9
    M=[A[i] for i in ii]
    det=determinant(M)
    assert det!=0 and det==rational_det_independent(M)==unpack_fraction(rec['rank_det'])
    stats=Counter(rank9=1,jet_equalities=0,taylor_crosschecks=0,factorizations=0,rank10=0)
    if rec['status']=='inconsistent':
        aug=[row+[v] for row,v in zip(A,rhs)]
        ii=rec['aug_rows'];assert len(set(ii))==len(ii)==10
        M=[aug[i] for i in ii];det=determinant(M)
        assert det!=0 and det==rational_det_independent(M)==unpack_fraction(rec['aug_det'])
        stats['rank10']=1
    else:
        assert rec['status']=='reducible'
        sol=[unpack_fraction(v) for v in rec['solution']];assert len(sol)==9
        for row,v in zip(A,rhs):
            assert sum((x*y for x,y in zip(row,sol)),Q(0))==v
            stats['jet_equalities']+=1
        h=dict(base)
        for f,v in zip(FREE,sol):h=add(h,scale(f,v))
        assert len(rec['line_indices'])==5
        assert h==unpack_poly(rec['terms'])==factor_poly(rec['line_indices'])
        assert all(type(x) is int and 0<=x<=3 for x in rec['line_indices'])
        stats['factorizations']=1
        z=mu=0
        for r,roots in zip(range(3,9),shape):
            for v,e in Counter(roots).items():
                shifted=shift_horner(h,r,v,e+1)
                for i in range(e+1):
                    for j in range(e+1-i):
                        a=taylor(h,r,v,i,j)
                        assert shifted.get((i,j),0)==a
                        if i+j<e:assert a==0
                        stats['taylor_crosschecks']+=1
                assert any(shifted.get((i,e-i),0) for i in range(e+1))
                z+=1;mu+=e
        assert z>=14 and mu==30
    return stats


def verify_saturation(cert):
    shapes,a=gate(0);alternate,b=gate(1)
    assert shapes==alternate and len(shapes)==92
    assert a==cert['gate'] and b==cert['alternative_gate']
    records=cert['records'];assert len(records)==len(shapes)
    stats=Counter()
    for i,(rec,shape) in enumerate(zip(records,shapes)):
        assert rec['id']==i
        stats.update(verify_one(rec,shape))
    assert stats['rank9']==92 and stats['rank10']==64 and stats['factorizations']==28
    from itertools import combinations_with_replacement
    all_products={tuple(ts) for ts in combinations_with_replacement(range(4),5)
                  if sum(len({t*(r-t) for t in ts}) for r in range(3,9))>=14}
    assert all_products=={tuple(rec['line_indices']) for rec in records if rec['status']=='reducible'}
    assert len(all_products)==28
    return {'newton_gate':a,'lagrange_gate':b,**dict(stats)}


def numerical_case(q):
    m=q['m'];d=6*m-1;D=q['Dmin'];DM=q['Dmax'];h=q['h']
    f=B(d);k=B(d-D);R=21*tau(m);Lmax=21*tau(m-1);U=f+Lmax
    assert m>5 and D>=10 and DM>=D and q['mu_max']<=30
    lowbits=[]
    for b in range(d//2+1):
        for a in range(d-2*b+1):
            n=R*9**(2*(a+2*b));c=ceil_half_log(n)
            assert n<2**(2*c)
            lowbits.append(c)
    high_n=tau(m)*9**(2*DM);high=ceil_half_log(high_n)
    assert high_n<2**(2*high)
    assert len(lowbits)==f
    weightsum=sum(a+2*b for b in range(d//2+1) for a in range(d-2*b+1))
    assert weightsum==sum(w*(w//2+1) for w in range(d+1))
    logR=(R-1).bit_length()
    assert R<2**logR and 9**4<2**13
    Fbound=(2*logR*f+13*weightsum+3)//4
    assert sum(lowbits)<=Fbound
    A=Fbound+Lmax*high+(U+1)//2
    volume=(f*(f-1).bit_length()+1)//2
    assert f<2**((f-1).bit_length())
    eta=DM+5;total=A+volume+eta*k
    cases=profiles(5,q['mu_max']);smin=10**9;ratmax=Q(-10**9);ext=None
    for counts in cases:
        z=sum(counts);mu=sum((i+1)*v for i,v in enumerate(counts))
        delta=sum(i*(i+1)//2*v for i,v in enumerate(counts))
        C=m*mu-delta;L=sum(tau(m-i-1)*v for i,v in enumerate(counts))
        assert z*tau(m)-L==C
        s=f-C-k
        assert s>0 and L<=Lmax
        assert q['constant']*s>total
        assert q['power']*s>=L-k
        ratio=Q(L-k,s)
        if ratio>ratmax:ratmax=ratio;ext=counts
        smin=min(smin,s)
    assert q['power']>=1 and q['constant']>0
    extra=((f-1).bit_length()+1)//2
    assert f<2**(2*extra)
    F=q['constant']+q['power']*h+extra
    value=F+66*m+7*m*(h+3*DM)
    res=(d//2)*h+5*F+(factorial(d//2+5)-1).bit_length()
    assert value<14000001 and res<14000001
    return {**q,'d':d,'fcols':f,'k':k,'Rmax':R,'Lmax':Lmax,'Umax':U,
            'F_column_bits_sum':sum(lowbits),'F_column_bits_bound':Fbound,'weight_sum':weightsum,
            'R_log_bound':logR,'H_column_bits':high,'det_bits':A,
            'volume_bits':volume,'mahler_loss':eta,'constant_numerator':total,
            'profile_count':len(cases),'min_gap':smin,
            'max_ratio':[ratmax.numerator,ratmax.denominator],'max_ratio_profile':list(ext),
            'l1_extra':extra,'F_bits':F,'nonzero_bits':value,'resultant_bits':res,
            'factorial_bits':(factorial(d//2+5)-1).bit_length()}

CASES=[dict(name='Q10-L25',Dmin=10,Dmax=10,mu_max=29,m=24,h=25000,power=88,constant=165000),
       dict(name='Q5-L110',Dmin=11,Dmax=305,mu_max=30,m=11,h=110000,power=17,constant=91000)]


def verify_counts():
    costs={7:84990,8:49988,9:149987,10:24985,11:109984}
    c=12492;budget=1242709
    for D,cost in costs.items():assert cost>=c*(12-D)
    assert c*(12*34-305)>budget
    # This checks the scoped limitation, not an original-problem counterexample.
    abstract={7:1,8:11,10:21}
    assert sum(abstract.values())==33
    assert sum(D*k for D,k in abstract.items())==305
    assert 3+11*4+21*5==152
    mass=sum((costs[D]+1)*k for D,k in abstract.items())
    assert mass<budget
    # All factors of B11 retain the lowest threshold.
    assert 24980+11+5<25000
    return {'costs':costs,'unit_price':c,'forbidden34_cost':c*(408-305),
            'G_measure_budget':budget,'component_bound':33,
            'abstract33_witness':abstract,'abstract_measure_cost':mass,
            'U11_input_bits':24980,'U11_factor_bits':24996}


def rejected_mutations(cert):
    shapes,_=gate(0);bad=[]
    def reject(label,fn):
        try:fn()
        except (AssertionError,ValueError,IndexError,KeyError):bad.append(label);return
        raise AssertionError('Damaged input accepted: '+label)
    rec=deepcopy(cert['records'][0]);rec['rank_det'][0]+=1
    reject('wrong_rank9_determinant',lambda:verify_one(rec,shapes[0]))
    rec2=deepcopy(cert['records'][0]);rec2['roots'][0][0]=-1
    reject('source_value_outside_grid',lambda:verify_one(rec2,shapes[0]))
    inc=next(i for i,r in enumerate(cert['records']) if r['status']=='inconsistent')
    ri=deepcopy(cert['records'][inc]);ri['aug_det'][0]+=1
    reject('wrong_rank10_inconsistency',lambda:verify_one(ri,shapes[inc]))
    red=next(i for i,r in enumerate(cert['records']) if r['status']=='reducible')
    rr=deepcopy(cert['records'][red]);rr['solution'][0][0]+=1
    reject('altered_local_solution',lambda:verify_one(rr,shapes[red]))
    rf=deepcopy(cert['records'][red]);rf['line_indices'][0]=4
    reject('altered_factor_product',lambda:verify_one(rf,shapes[red]))
    short=deepcopy(cert);short['records'].pop()
    reject('missing_saturated_case',lambda:verify_saturation(short))
    high=deepcopy(CASES[0]);high['h']=26000
    reject('unproved_26000_height_extension',lambda:numerical_case(high))
    sat=deepcopy(CASES[0]);sat['mu_max']=30
    reject('omit_mu30_saturation_proof',lambda:numerical_case(sat))
    # Exact diagnostics for two tempting but invalid logical shortcuts.
    assert B(143)-(24*30-9)-B(133)==-11
    assert 2*2>2 # ||X-1|| ||X+1|| > ||X^2-1||.
    return bad
