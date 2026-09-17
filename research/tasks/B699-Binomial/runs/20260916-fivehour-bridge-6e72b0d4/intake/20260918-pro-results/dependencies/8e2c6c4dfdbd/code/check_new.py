"""New finite proof obligations; all decisions use Python integers/Fraction."""
from itertools import product
from fractions import Fraction as Q
from math import factorial
from exact_core import *
from saturation import W,factor_poly,ROWS

def profiles(mu_max):
    return [a for a in product(range(21),repeat=4)
            if 14<=sum(a)<=20 and sum((i+1)*v for i,v in enumerate(a))<=mu_max]

def exact_budgets():
    # Ambient coefficient counts, determinant constants and Minkowski cube bound.
    q8={'m':18,'d':107,'D':8,'h':50000,'fcols':B(107),'k':B(99),'Rmax':3420,'Kmax':3060,
        'Umax':6030,'column_bits':350,'mahler_loss':12,'volume_bits':17820,
        'escape_constant':139000,'escape_power':51,'l1_extra':6}
    q9={'m':6,'d':35,'D':9,'Dmax':305,'h':150000,'fcols':B(35),'k':B(26),'Rmax':420,'Kmax':300,
        'Umax':642,'column_bits':1000,'mahler_loss':309,'volume_bits':1539,
        'escape_constant':81000,'escape_power':18,'l1_extra':5}
    summary=[]
    for q,mu_max in ((q8,23),(q9,24)):
        m=q['m'];fcols=q['fcols'];k=q['k'];observed=[]
        assert q['Umax']==fcols+q['Kmax']
        assert q['Rmax']*9**(2*q['d']) < 2**(2*q['column_bits'])
        assert q['Rmax']*9**(2*q.get('Dmax',q['D'])) < 2**(2*q['column_bits'])
        assert fcols < 2**(2*q['l1_extra'])
        # t <= fcols; t^(t/2) bounded without floating-point volume or logs.
        lg=(fcols-1).bit_length()
        assert lg*fcols <= 2*q['volume_bits']
        q['det_constant']=q['Rmax']*q['column_bits']+q['Umax']//2
        q['total_constant']=q['det_constant']+q['volume_bits']+q['mahler_loss']*k
        for a in profiles(mu_max):
            z=sum(a);mu=sum((i+1)*v for i,v in enumerate(a))
            delta=sum(i*(i+1)//2*v for i,v in enumerate(a))
            C=m*mu-delta
            K=sum((m-i-1)*(m-i)//2*v for i,v in enumerate(a))
            R=z*m*(m+1)//2
            assert R-K==C
            s=fcols-C-k
            assert s>0
            assert R<=q['Rmax'] and K<=q['Kmax']
            assert (q['escape_constant']*s > q['total_constant'])
            assert (q['escape_power']*s >= K-k)
            observed.append((s,Q(K-k,s),a))
        q['profiles']=len(observed)
        q['min_dimension_gap']=min(t[0] for t in observed)
        best=max(observed,key=lambda t:t[1]);q['max_height_ratio']=[best[1].numerator,best[1].denominator]
        q['max_ratio_profile']=list(best[2])
        q['F_bits']=q['escape_power']*q['h']+q['escape_constant']+q['l1_extra']
        q['nonzero_bits']=q['F_bits']+6*m*11+7*m*(q['h']+3*q.get('Dmax',q['D']))
        e=q['d']//2
        q['factorial_bits']=(factorial(e+4)-1).bit_length()
        q['resultant_bits']=e*q['h']+4*q['F_bits']+q['factorial_bits']
        assert 6*m-q['d']==1
        assert q['nonzero_bits']<14000001 and q['resultant_bits']<14000001
        summary.append(q)
    # U9 factor lifting: all positive-degree factors stay within the tightest new budget.
    assert 49970+9+4 < 50000
    # Fixed-G degree / Mahler measure accounting.
    budget=1242709;c=24994
    costs={7:85000-10,8:50000-12,9:150000-13}
    assert costs[7]>=3*c and costs[8]==2*c and costs[9]>=c
    assert c*(10*36-305)>budget
    # The present numerical relaxation really does permit 35.
    witness={'weight7':0,'weight8':23,'weight9':0,'weight10':12}
    assert 23*8+12*10==304 and 23*4+12*5==152
    assert 23*(costs[8]+1)<budget
    return {'budgets':summary,'measure_budget':budget,'unit_price':c,'costs':costs,
            'forbidden36_cost':c*55,'component_bound':35,'relaxed35_witness':witness}

def trim(a):
    a=list(a)
    while a and a[-1]==0:a.pop()
    return a
def pmul(a,b,p):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]=(c[i+j]+x*y)%p
    return trim(c)
def pmod(a,f,p):
    a=trim([x%p for x in a]);inv=pow(f[-1],-1,p)
    while len(a)>=len(f):
        d=len(a)-len(f);c=a[-1]*inv%p
        for i,x in enumerate(f):a[i+d]=(a[i+d]-c*x)%p
        a=trim(a)
    return a
def ppow(a,n,f,p):
    r=[1]
    while n:
        if n&1:r=pmod(pmul(r,a,p),f,p)
        a=pmod(pmul(a,a,p),f,p);n//=2
    return r
def psub(a,b,p):
    return trim([((a[i] if i<len(a) else 0)-(b[i] if i<len(b) else 0))%p for i in range(max(len(a),len(b)))])
def pgcd(a,b,p):
    while b:a,b=b,pmod(a,b,p)
    return [(x*pow(a[-1],-1,p))%p for x in a] if a else []

def boundary_model():
    L=mul({(1,0):1,(0,0):-3},{(1,0):1,(0,0):-4})
    H=add(factor_poly([0,1,2,3]),mul(W,L))
    z=mu=0;rows=[]
    for r,V in zip(range(3,9),ROWS):
        row=[]
        for v in V:
            if evaluate(H,r,v):continue
            e=next(d for d in range(1,9) if any(taylor(H,r,v,i,d-i) for i in range(d+1)))
            z+=1;mu+=e;row.append([v,e])
        rows.append(row)
    assert z==20 and mu==23
    p=13;f=trim([int(sum(c*9**a for (a,b),c in H.items() if b==i))%p for i in range(5)])
    xp2=psub(ppow([0,1],p*p,f,p),[0,1],p)
    xp4=psub(ppow([0,1],p**4,f,p),[0,1],p)
    g=pgcd(f,xp2,p)
    assert g==[1] and xp4==[]
    return {'H_terms':pack_poly(H),'l1_norm':int(sum(abs(c) for c in H.values())),
            'z':z,'mu':mu,'rows':rows,'specialization_N':9,'prime':p,'monic_specialization_mod_p':f,
            'x_p2_minus_x':xp2,'gcd':g,'x_p4_minus_x':xp4,
            'scope':'Auxiliary geometric obstruction only. H>0 on every original legal n>=20,j>=10 because all four linear factors and W(N)(N-3)(N-4) are positive.'}

def negative_gates():
    # Exact rejection of tempting statements which were not proved.
    rejected=[]
    # The m18 dimension gate has a genuine numerical obstruction at mu24.
    a=(16,4,0,0);mu=24;delta=4;C=18*mu-delta
    assert B(107)-C<=B(99);rejected.append('extend_mu23_lattice_dimension_to_mu24')
    # Crude Cramer-only bound would not yield the accepted 50000 threshold.
    assert 4*(3060*50000)>14000001;rejected.append('replace_escape_with_plain_Cramer')
    # The numerical budgets do not show at most34.
    assert 23*49989<1242709;rejected.append('claim34_from_current_prices')
    # Geometry alone cannot exclude mu23.
    assert boundary_model()['mu']==23;rejected.append('all_mu23_quartics_reducible')
    return rejected
