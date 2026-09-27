#!/usr/bin/env python3
"""Certificate receiver. Does not import the discovery/reduction code.
Checks integer matrix identities and directly enumerates beta on the finite prefix.
"""
from __future__ import annotations
import argparse,copy,hashlib,json,sys
from pathlib import Path
from math import gcd,isqrt
from fractions import Fraction
if not __debug__:raise RuntimeError('Receiver requires Python assertions enabled; do not use -O.')
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def v(x,p):
    if not x:raise ValueError('zero valuation')
    e=0
    while x%p==0:x//=p;e+=1
    return e

def rp(x):
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def chi3(x):
    assert x>0 and gcd(x,6)==1
    return 1 if x%12 in (1,11) else -1

def chi10(x):
    assert x>0 and gcd(x,10)==1 and x%2
    return (1 if x%8 in (1,7) else -1)*(1 if x%5 in (1,4) else -1)

def matcheck(K,rec,t=None):
    q,B,c=rec['initial'];r=rec['root'];t=t if t is not None else 2*rec['a']
    assert q==3**t and B==2*r and 0<=r<q and r%3==1
    assert r*r+K==c*q
    a,b,d=rec['reduced'];u,w,x,y=rec['matrix']
    assert u*y-w*x==1
    assert a==q*u*u+B*u*x+c*x*x
    assert b==2*q*u*w+B*(u*y+w*x)+2*c*x*y
    assert d==q*w*w+B*w*y+c*y*y
    assert b*b-4*a*d==-4*K and 0<a and abs(b)<=a<=d
    assert not (abs(b)==a or a==d) or b>=0
    if a==1:
        assert (a,b,d)==(1,0,K)
        X=q*u+r*x;Y=x
        assert X*X+K*Y*Y==q and X%3 and Y%3
        return abs(X),abs(Y)
    return None

def check_recovery(record):
    n=record['n'];K=10*(n-1);A=v(n,3)
    assert n>=6 and n%6==0 and record['K']==K and record['A_v3_n']==A
    forms=record['forms'];assert [z['a'] for z in forms]==list(range(record['min_a'],A+1))
    found=[]
    for rec in forms:
        ans=matcheck(K,rec)
        if ans:
            delta,y=ans;alpha=3**rec['a'];assert y%2==0
            z=y//2;beta=(alpha-delta)//2;g=n//alpha;j=g*beta
            assert 2*beta==alpha-delta and gcd(n,j)==g
            assert beta*(alpha-beta)==10*(n-1)*z*z and z>0
            found.append({'a':rec['a'],'alpha':alpha,'g':g,'beta':beta,'delta':delta,'z':z,'j':j,
                          'legal_i6':7<=j<=n//2,'mass_8g4_lt_n':8*g**4<n})
    assert len(found)<=1 and found==record['candidates']
    assert record['status']==('CANDIDATE' if found else 'EMPTY')

def exact_vbin(n,j,p):
    # Digit-sum implementation, deliberately distinct from discovery's factorial-floor sum.
    def ds(k):
        total=0
        while k:k,r=divmod(k,p);total+=r
        return total
    ans=ds(j)+ds(n-j)-ds(n)
    assert ans%(p-1)==0
    return ans//(p-1)

def check_central(d):
    n,j=d['n'],d['j'];g=gcd(n,j);al=n//g;a=v(al,3)
    assert al==3**a and g==d['g'] and a==d['a'] and n%6==0
    beta=j//g;z=d['z'];delta=al-2*beta
    assert z>0 and beta*(al-beta)==10*(n-1)*z*z
    assert delta==d['delta'] and gcd(delta,30*z)==1
    H=3**(2*a-1)-40*z*z;C=gcd(rp(n-4),j-2);T=H//C
    assert H>0 and H%C==0 and (C,H,T)==(d['C'],d['H'],d['T'])
    assert gcd(H,delta)==C
    defect=gcd(C,T);assert defect==d['central_defect']==d['old_central_defect']==gcd(C,rp(n-4)//C)
    assert chi3(C)==d['chi3_C'] and chi3(T)==d['chi3_T'] and chi3(H)==1
    E4=gcd(rp(n-4),j*(n-j));assert E4==d['E4']
    assert (chi10(rp(n-4))!=chi10(E4*C))==d['U4_trigger']
    if defect>1:
        w=d['witness'];p=w['p'];assert p>=7 and all(p%q for q in range(2,isqrt(p)+1))
        assert 0<v(j-2,p)<v(n-4,p)
        assert w['v_source']==v(n-4,p) and w['v_j_minus_2']==v(j-2,p) and w['v_T']==v(T,p)
        assert w['v_binomial_6']==exact_vbin(n,6,p)==v(n-4,p)
        assert w['v_binomial_j']==exact_vbin(n,j,p)>0
    else:
        for r in range(1,6):
            P=1
            for b in range(r+1):P*=j-b
            assert (P%rp(n-r)==0)==d['full_window_pass'][str(r)]
        assert ((j-1)*(n-j-1)%rp(n-5)==0)==d['q5_all_near']

def accept(root:Path,*,mutation_tests=True)->dict:
    C=root/'certificates';load=lambda n:json.loads((C/n).read_text())
    matrix=load('recovery_matrices.json')
    for x in matrix:check_recovery(x)
    orders=load('order_checks.json')
    for x in orders:
        n=x['n'];A=v(n,3);K=10*(n-1);assert x['A']==A and x['discriminant']==-4*K
        assert [r['t'] for r in x['forms']]==list(range(1,2*A+1))
        found=[]
        for r in x['forms']:
            if matcheck(K,r,r['t']):found.append(r['t'])
        assert found==x['principal_powers_le_2A'] and len(found)==1 and A<found[0]<=2*A and found[0]%2==0
    # Fully independent exhaustive beta loop, not a repeat of the form algorithm.
    summary=load('prefix_summary.json');N=summary['max_n'];lines=['n\tstatus\ta\tj\n'];hits=[];tested=0;digest=hashlib.sha256()
    for n in range(6,N+1,6):
        found=[];al=3
        while n%al==0:
            a=v(al,3);g=n//al
            for b in range(1,al//2+1):
                if b%3==0:continue
                tested+=1;s=b*(al-b);den=10*(n-1)
                if s%den:continue
                z2=s//den;z=isqrt(z2)
                if z>0 and z*z==z2:found.append((a,g*b))
            al*=3
        assert len(found)<=1
        if found:
            a,j=found[0];line=f'{n}\tCANDIDATE\t{a}\t{j}\n';hits.append((n,a,j))
        else:line=f'{n}\tEMPTY\t-\t-\n'
        lines.append(line);digest.update(line.encode())
    assert ''.join(lines)==(C/'prefix_rows.tsv').read_text()
    assert digest.hexdigest()==summary['row_body_sha256']
    assert len(lines)-1==summary['rows'] and len(hits)==summary['nonempty']
    assert hits==[(x['n'],x['a'],x['j']) for x in summary['candidate_rows']]
    central=load('central_exact_cases.json')
    for d in central:check_central(d)
    sym=load('central_symbolic_certificate.json')
    for r in sym['F_source_values']:
        U=Fraction(r['b']*(r['r']-r['b']),r['r']-1)
        assert U==Fraction(r['U_num'],r['U_den']) and r['r']**2-12*U==Fraction(r['F_num'],r['F_den'])
    classes=[r for r in range(1,120) if gcd(r,120)==1 and chi3(r)==chi10(r)==-1]
    assert classes==sym['negative_complement_prime_classes_mod120']
    den=load('global_sparse_bound.json');assert den['min_g']==130
    for x in den['g_classes']:
        a=x['a_mod20'];a=a if a>=2 else a+20;gg=x['least_g_mod2000']
        assert gg*pow(3,a-2,2000)%2000==1570 and 0<gg<2000
    assert min(x['least_g_mod2000'] for x in den['g_classes'])==130
    assert len({x['a_mod20'] for x in den['g_classes']})==20
    assert pow(3,20,200)==1 and all(pow(3,t,200)!=1 for t in (1,2,4,5,10))
    assert den['positive_squared_margin']==1246608**2-3*718296**2>0
    # Independently validate the finite-prefix planner's exact ranges and candidates.
    pref=load('prefix_generator_check.json')
    assert pref['status']=='COMPLETE_PREFIX_ONLY' and pref['complete'] and not pref['global_height_proved']
    X=pref['X'];plans=[];aa=2;al=9;root10=1
    while root10*root10%al != 10%al:root10+=1
    while al<=X//130:
        G=next(g0 for g0 in range(1,2001) if g0*pow(3,aa-2,2000)%2000==1570)
        if G*al<=X:plans.append((aa,al,root10,G,isqrt(al*al//(40*(G*al-1)))))
        root10=next(y for y in (root10,root10+al,root10+2*al) if (y*y-10)%(3*al)==0)
        al*=3;aa+=1
    assert sum(p[4] for p in plans)==pref['planned_z_slots']
    got=[];tested_z=0
    for aa,al,rr,G,Z in plans:
        for zz in range(1,Z+1):
            if zz%3==0:continue
            tested_z+=1;bb=(rr*zz)%al;bb=min(bb,al-bb)
            numerator=bb*(al-bb)+10*zz*zz;denominator=10*al*zz*zz
            if numerator%denominator:continue
            gg=numerator//denominator;nn=gg*al;jj=gg*bb
            if gg<G or nn>X or nn%18000!=14130 or jj<7:continue
            assert gcd(nn,jj)==gg and bb*(al-bb)==10*(nn-1)*zz*zz
            got.append({'n':nn,'j':jj,'g':gg,'a':aa,'alpha':al,'beta':bb,'z':zz})
    assert tested_z==pref['tested_unit_z'] and got==pref['candidates']
    budget=load('prefix_budget_boundary.json')
    assert budget['status']=='NOT_RUN_BUDGET' and budget['complete'] is False
    assert budget['planned_z_slots']>budget['budget']>0 and budget['candidates']==[]
    muts=[]
    if mutation_tests:
        bad=copy.deepcopy(matrix[1]);bad['forms'][0]['matrix'][0]+=1
        try:check_recovery(bad)
        except AssertionError:muts.append('matrix_tamper_rejected')
        else:raise AssertionError('matrix mutation was accepted')
        bad=copy.deepcopy(central[1]);bad['T']+=1
        try:check_central(bad)
        except AssertionError:muts.append('central_complement_tamper_rejected')
        else:raise AssertionError('complement mutation was accepted')
    return {'status':'PASS','matrix_rows':len(matrix),'matrix_checks':sum(len(x['forms']) for x in matrix),
            'order_matrix_checks':sum(len(x['forms']) for x in orders),'independent_prefix_rows':len(lines)-1,
            'independent_beta_tests':tested,'prefix_hits':hits,'central_cases':len(central),'mutation_tests':muts,
            'generator_prefix_X':pref['X'],'generator_tested_unit_z':tested_z,'generator_nonempty':len(got),
            'budget_failure_explicit':True,
            'external_independent_review':False,'Lean':False}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);args=ap.parse_args()
    print(json.dumps(accept(args.root),indent=2))
if __name__=='__main__':main()
