#!/usr/bin/env python3
"""Separated round-4 receiver: does NOT import discover.py.
Checks original integers, factor-exponent splits, exact identities, carries,
and the explicit limitations in each weak-model record.
"""
from __future__ import annotations
import argparse,json,sys
from fractions import Fraction as F
from math import gcd,isqrt
from pathlib import Path
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def val(a,p):
    if a==0:return 'infinity'
    a=abs(a);e=0
    while not a%p:e+=1;a//=p
    return e

def jacobi(a,b):
    assert b>0 and b%2
    ans=1
    while a:
        a%=b
        if not a:break
        e=0
        while a%2==0:a//=2;e+=1
        if e%2 and b%8 in (3,5):ans=-ans
        if a%4==b%4==3:ans=-ans
        a,b=b,a
    return ans if b==1 else 0

def isprime(x):
    if x<2:return False
    d=2
    while d*d<=x:
        if x%d==0:return False
        d+=1
    return True

def carries(n,j,p):
    k=n-j;c=0;answer=0
    while j or k or c:
        j,r=divmod(j,p);k,s=divmod(k,p)
        c=(r+s+c)//p;answer+=c
    return answer

def strip235(x):
    for p in (5,3,2):
        while x%p==0:x//=p
    return x

def saturation(T,N):
    # Independent from generator's repeated squaring.
    a=1;o=T
    while True:
        d=gcd(o,abs(N))
        if d==1:return a,o
        a*=d;o//=d

def check_trace(T,N,trace):
    assert trace and trace[0]==gcd(T,abs(N))
    for a,b in zip(trace,trace[1:]):assert b==gcd(T,a*a) and b>a
    assert gcd(T,trace[-1]**2)==trace[-1]

def fracval(q,p):
    if q==0:return 'infinity'
    return val(q.numerator,p)-val(q.denominator,p)

def load(d,n):return json.loads((d/n).read_text(encoding='utf-8'))

def verify(d:Path):
    sy=load(d,'symbolic.json')
    assert set(sy['zero_polynomials'])=={'return5','first_gcd_identity','norm_discriminant'}
    assert all(v==[] for v in sy['zero_polynomials'].values())
    # Degree-complete Cartesian grids; not a random identity sample.
    for s in range(4):
      for r in range(3):
       for q in range(4):
        n=s*q+5;u=r*q+1;N=n-1;ff=n*n-12*u;lam=48*r-11*s
        assert q*lam==N*(4*n-7)-4*ff
        assert s*ff==N*(s*(n+1)-12*r)+lam
    for n in range(4):
      for u in range(2):
        assert 3*(n*n-4*(n-1)*u)==n*n*(4-n)+(n-1)*(n*n-12*u)
    for r in sy['character_grids']:
        E=r['E'];s=5**E
        assert r['S']==s and r['R_max']==(s-1)//4 and r['abs_Lambda_bound']==11*s-48
        for rr in range(1,(s-1)//4+1):
            ll=48*rr-11*s
            assert ll!=0 and abs(ll)<=11*s-48
            assert jacobi(3,abs(ll))==(-1)**E

    rr=load(d,'return_residues.json')['rows']
    assert [r['p'] for r in rr]==[p for p in range(7,500) if isprime(p)]
    for r in rr:
        p=r['p'];qres={x*x%p for x in range(p)}
        assert r['chi3']==(1 if 3 in qres else -1)
        assert r['chi10']==(1 if 10%p in qres else -1)
        assert r['chi30']==(1 if 30%p in qres else -1)
        n0=next(t for t in range(p) if (4*t-7)%p==0)
        w2=next(t for t in range(p) if (3*t-n0*n0*(4-n0))%p==0)
        assert (r['nonfirst_root_n'],r['discriminant_square_residue'])==(n0,w2)
        ok=n0!=0 and w2 in qres
        assert r['compatible_with_nonzero_n_and_square']==ok
        if r['chi3']==-1:assert not ok

    pg=load(d,'partition_grid.json')['rows'];assert len(pg)==96
    for r in pg:
        e,f,h=r['e17_N'],r['f17_T'],r['h29_T'];N=17**e*13**2;T=17**f*13**3*29**h
        assert (N,T)==(r['N'],r['T']);D=gcd(N,T);a,o=saturation(T,N);ii=a//D
        for k,x in [('D',D),('T_N',a),('I',ii),('O',o)]:assert r[k]==x
        kd=17**(min(e,f)%2);ki=17**(max(0,f-e)%2);ko=29**(h%2);kt=17**(f%2)*ko
        assert [r[k] for k in ('kappa_T','kappa_D','kappa_I','kappa_O')]==[kt,kd,ki,ko]
        assert kt==ko*kd*ki//gcd(kd,ki)**2
        assert gcd(o,N)==1 and T==D*ii*o
        check_trace(T,N,r['trace'])

    lc=load(d,'local_nonforcing.json');ls=lc['rows'];assert len(ls)==165
    assert lc['primes']==[p for p in range(7,200) if isprime(p) and jacobi(3,p)==jacobi(10,p)==-1]
    for r in ls:
        p,e,f=r['p'],r['e'],r['f'];P=p**e;M=r['M'];n=1+P*M;j=P;N=n-1
        assert (r['n'],r['j'],r['P'])==(n,j,P)
        assert r['actual_gcd']==gcd(n,j)==1 and r['actual_alpha']==n
        assert val(N,p)==e and val(j,p)==e and M%p==12%p
        assert carries(n,j,p)==0==r['target_bin_v'] and carries(n,6,p)==e==r['source_bin_v']
        u=F(j*(n-j),N);s=5**7;q=F(n-5,s);R=(u-1)/q;lam=48*R-11*s
        for k,x in [('U_fraction',u),('q5_local_fraction',q),('R5_local_fraction',R),('Lambda5_fraction',lam)]:
            assert F(*r[k])==x
        ff=F(n*n)-12*u
        assert fracval(ff,p)==f and fracval(lam,p)==r['u']
        if e!=f:assert r['u']==min(e,f)
        else:assert r['u']>=e
        mod=r['norm_modulus'];z=r['local_z_residue'];al=3**r['nominal_local_a']
        assert mod==p**(f+3) and al==r['nominal_local_alpha']
        assert (al*al*(n-2*j)**2+40*N*n*n*z*z-al*al*n*n)%mod==0
        assert val(al*al//3-40*z*z,p)==f
        assert not r['global_norm_asserted'] and not r['global_all_q5_near_asserted']
        assert r['global_actual_alpha_preserved']==(n==al)==False

    ca=load(d,'canonical_partitions.json');rows=ca['rows']
    assert [(r['a'],r['z']) for r in rows]==[(100,4),(9920,1),(854,2),(924,1)]
    for r in rows:
        a,z=r['a'],r['z'];al=3**a;g,n,j=r['g'],r['n'],r['j'];k=n-j;N=n-1
        assert al==r['alpha'] and n==g*al and gcd(n,j)==g and n%6==0 and 7<=j and 2*j<n
        b=j//g;de=al-2*b
        assert b==r['beta'] and de==r['delta'] and j==g*b
        assert gcd(de,z)==1 and de*de+40*N*z*z==al*al
        U=10*g*g*z*z;assert j*k==N*U and U==r['U']
        H=al*al//3-40*z*z;C=gcd(strip235(n-4),j-2);assert H%C==0
        T=H//C;D=gcd(T,N);aa,o=saturation(T,N);ii=aa//D
        E4=gcd(strip235(n-4),j*k);A4=gcd(strip235(n-4),(j-1)*(k-1))
        for key,x in [('N',N),('H',H),('C',C),('T',T),('D',D),('T_N',aa),('I',ii),('O',o),('Delta',T//D),('E4',E4),('A4',A4)]:
            assert r[key]==x,(a,key)
        check_trace(T,N,r['saturation_trace'])
        for key,x in [('chi_T',T),('chi_T_N',aa),('chi_O',o),('chi_D',D),('chi_I',ii)]:assert r[key]==jacobi(3,x)
        assert jacobi(3,o)==jacobi(3,T)*jacobi(3,D)*jacobi(3,ii)
        p=r['p'];e=val(N,p);f=val(T,p)
        assert (e,f)==(r['e'],r['f'])
        assert r['e_in_D']==val(D,p) and r['e_in_I']==val(ii,p)
        assert r['p_is_negative_odd_T']==(f%2==1)
        assert r['p_is_negative_odd_Delta']==(val(T//D,p)%2==1)
        assert r['source_bin_v']==carries(n,6,p) and r['target_bin_v']==carries(n,j,p)
        flags={'actual_alpha_power3':True,'global_primitive_norm':True,'full_first_source':True,
               'E4_square':isqrt(E4)**2==E4,'negative_C':jacobi(3,C)==-1,
               'complete_C':gcd(C,strip235(n-4)//C)==1,
               'complete_q4_window':E4*A4*C==strip235(n-4),
               'all_q5_near':(j-1)*(k-1)%strip235(n-5)==0,
               'B18000':n%18000==14130,'v2_nminus2_ge65':val(n-2,2)>=65,
               'v5_nminus5_ge27':val(n-5,5)>=27}
        assert r['contracts']==flags
        assert not flags['all_q5_near'] and not flags['B18000']
    assert rows[0]['e']==1 and rows[0]['f']==2 and rows[0]['e_in_I']==1
    assert rows[1]['e']==1 and rows[1]['f']==3 and rows[1]['e_in_I']==2
    assert rows[2]['contracts']['negative_C'] and rows[3]['contracts']['negative_C']

    near=load(d,'near_relaxation.json');n,j,g=near['n'],near['j'],near['g'];al=3**near['a'];b=near['beta'];q=near['q5']
    assert n==g*al and j==g*b and gcd(n,j)==g and 0<2*j<n
    assert strip235(n-5)==q and q==4547 and isprime(q) and jacobi(10,q)==1
    assert (j-1)*(n-j-1)%q==0 and gcd(strip235(n-4),j-2)==near['C']==103
    assert gcd(103,strip235(n-4)//103)==1 and gcd(strip235(n-4),j*(n-j))==near['E4']==1
    assert near['norm_numerator']==b*(al-b)<near['norm_denominator']==10*(n-1)
    assert j*(n-j)%(n-1)==near['first_window_remainder']!=0
    assert near['contracts']=={'actual_alpha_power3':True,'all_q5_near':True,'E4_square':True,
      'negative_C':True,'complete_C':True,'full_first_source':False,'global_primitive_norm':False,'current_B_RES10':False}
    su=load(d,'summary.json')
    assert su['R7']==[3,4,5,6,7,8,9] and su['certified_net_historical_reduction']==0
    assert not su['B_RES10_closed'] and not su['Lean'] and not su['external_independent_review']
    assert su['canonical_and_allnear_and_central_models']==0
    assert su['local_rows']==len(ls) and su['partition_rows']==len(pg) and su['return_residue_primes']==len(rr)
    return {'status':'PASS','certificate_files':7,'local_rows':len(ls),'return_residue_primes':len(rr),
            'partition_rows':len(pg),'canonical_inputs':len(rows),'allnear_weak_inputs':1,
            'current_residual_models_claimed':0}

def main():
    p=argparse.ArgumentParser();p.add_argument('--cert-dir',type=Path,required=True);a=p.parse_args()
    print(json.dumps(verify(a.cert_dir),sort_keys=True))
if __name__=='__main__':
    if not __debug__:raise RuntimeError('Do not run proof checks with Python -O or -OO.')
    main()
