#!/usr/bin/env python3
"""R3 exact evidence generator/checker. Python >=3.10, standard library only.

A finite checker for identities, constants and a theorem-bounded endpoint;
not a proof of the adopted old unit-window theorem or the BFT theorem.
No network, Lean, repository access, or previous mathematical replay.
"""
from __future__ import annotations
import argparse, csv, hashlib, io, json, math, sys, zipfile
from fractions import Fraction as F
from pathlib import Path
from typing import Dict, Tuple

ROOT=Path(__file__).resolve().parents[1]
SIX=(352,425,776,1026,1377,1450)
PREV_SHA='8184d6eb1ec3fa2db199b2dce506665d973611d276ae8cf50a0e843d5d0677d4'
PREV_ROOT='B699-C-R2-EVEN-DISTANCE-20261002/'
Poly=Dict[Tuple[int,int],int]

def clean(a): return {m:c for m,c in a.items() if c}
def const(c): return {} if c==0 else {(0,0):c}
def add(*args):
    out={}
    for a in args:
        for m,c in a.items():out[m]=out.get(m,0)+c
    return clean(out)
def scale(a,k): return clean({m:c*k for m,c in a.items()})
def mul(a,b):
    out={}
    for (i,j),c in a.items():
        for (k,l),d in b.items():
            m=(i+k,j+l);out[m]=out.get(m,0)+c*d
    return clean(out)
def power(a,k):
    out=const(1)
    for _ in range(k):out=mul(out,a)
    return out
def ev(a,x,y):return sum(c*x**i*y**j for (i,j),c in a.items())
def substitute(a,x,y):return add(*(scale(mul(power(x,i),power(y,j)),c) for (i,j),c in a.items()))
def shift(a,x,y):
    out={}
    for (i,j),c in a.items():
        for u in range(i+1):
            for v in range(j+1):
                m=(u,v);out[m]=out.get(m,0)+c*math.comb(i,u)*math.comb(j,v)*x**(i-u)*y**(j-v)
    return clean(out)
def valuation(x,p):
    assert x!=0
    x=abs(x);v=0
    while x%p==0:x//=p;v+=1
    return v
def small(x):
    assert x>0
    s=1
    for p in (2,3,5):
        while x%p==0:x//=p;s*=p
    return s,x
def rough_alt(x):
    assert x>0
    while (g:=math.gcd(x,30))>1:x//=g
    return x

def prime(x):
    if x<2:return False
    return all(x%d for d in range(2,math.isqrt(x)+1))
def root_int(x,k):
    lo=0;hi=1<<((x.bit_length()+k-1)//k)
    while hi-lo>1:
        m=(lo+hi)//2
        if m**k<=x:lo=m
        else:hi=m
    return lo

def frac(x):return [x.numerator,x.denominator] if isinstance(x,F) else [x,1]
def canonical(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def digest(x):return hashlib.sha256(x).hexdigest()
def poly_dump(p):return [[i,j,c] for (i,j),c in sorted(p.items())]
def hash_records(records):return digest(canonical(records))
def kraw(n,d,m):
    if m==0:return 1
    a,b=1,d
    for r in range(1,m):a,b=b,d*b-r*(n-r+1)*a
    return b

def k6_value(n,d):
    return d**6-(15*n-40)*d**4+(45*n*n-210*n+184)*d*d-15*n*(n-2)*(n-4)


def source_binding():
    data=(ROOT/'dependencies/PREVIOUS_ROUND.zip').read_bytes()
    assert digest(data)==PREV_SHA
    copies={'PROOFS.md':'PROOFS.md','HANDOFF.md':'HANDOFF.md',
            'ACTUAL_SMALLPARTS_42.csv':'dependencies/ACTUAL_SMALLPARTS_42.csv',
            'BFT_CONTRACT.json':'dependencies/BFT_CONTRACT.json'}
    with zipfile.ZipFile(io.BytesIO(data)) as z:
        for dst,src in copies.items():
            assert (ROOT/'dependencies'/dst).read_bytes()==z.read(PREV_ROOT+src)
        old_hash_count=0
        for line in z.read(PREV_ROOT+'MANIFEST.sha256').decode().splitlines():
            h,name=line.split('  ',1)
            assert digest(z.read(PREV_ROOT+name))==h
            old_hash_count+=1
    rows=list(csv.DictReader((ROOT/'dependencies/ACTUAL_SMALLPARTS_42.csv').open()))
    assert len(rows)==42 and len({int(r['a']) for r in rows})==42
    selected={int(r['a']):r for r in rows if int(r['a']) in SIX}
    for a,row in selected.items():
        assert {int(row['r'+str(p)]) for p in (2,3,5)}=={0,1,2}
        for r in (3,4,5):assert row['H_at_'+str(r)]=='1'
    bft=json.loads((ROOT/'dependencies/BFT_CONTRACT.json').read_text())
    assert len(bft['exceptions'])==40
    assert all(abs(a-b)!=1 for a,b in bft['exceptions'])
    return {'previous_zip_sha256':PREV_SHA,'previous_manifest_members_hashed':old_hash_count,
            'copies_matched':copies,'old_mathematics_replayed':False,
            'scope_012':list(SIX),'all42':[int(r['a']) for r in rows],
            'bft_exception_count':40,'bft_difference_one_exceptions':[]}, selected, bft


def algebra_certificate():
    x={(1,0):1};y={(0,1):1};n=add(x,y);d=add(y,scale(x,-1))
    ks=[const(1),d]
    for r in range(1,7):
        ks.append(add(mul(d,ks[-1]),scale(mul(add(n,const(1-r)),ks[-2]),-r)))
    p=ks[6]
    # Independent factorial-product formula, not another evaluation of the recurrence.
    direct={}
    for b in range(7):
        term=const((-1)**b*math.comb(6,b))
        for i in range(b):term=mul(term,add(x,const(-i)))
        for i in range(6-b):term=mul(term,add(y,const(-i)))
        direct=add(direct,term)
    assert direct==p
    N={(1,0):1};D={(0,1):1}
    expected=add(power(D,6),mul(add(scale(N,-15),const(40)),power(D,4)),
                 mul(add(scale(power(N,2),45),scale(N,-210),const(184)),power(D,2)),
                 scale(mul(mul(N,add(N,const(-2))),add(N,const(-4))),-15))
    assert substitute(expected,n,d)==p
    origin=shift(p,0,0);assert min(sum(m) for m in origin)==1
    assert origin[(1,0)]==origin[(0,1)]==-120
    orders=[];local=[]
    for r in range(6):
        out=[]
        for b in range(r+1):
            assert ev(p,b,r-b)==0
            w=min(sum(m) for m in shift(p,b,r-b));out.append(w)
            for pp in (7,11,13,17):
                for e in (1,2,3):
                    Q=pp**e
                    for u,v in ((1,2),(2,3)):
                        xx=b+u*Q;yy=r-b+v*Q
                        val=ev(p,xx,yy)
                        assert val%(Q**w)==0
                        assert val==k6_value(xx+yy,yy-xx)
                        local.append([r,b,pp,e,u,v,w])
        orders.append(out)
    primitive=[]
    for pp in (7,11,13,17):
        for e in (1,2,3):
            for ss in (1,2,3,5):
                g=ss*pp**e
                for alpha in (3,4,5,6,8,9,10,12,16,25,27):
                    for beta in range(1,(alpha-1)//2+1):
                        if math.gcd(alpha,beta)!=1:continue
                        eps=alpha-2*beta;n0=g*alpha;d0=g*eps
                        val=k6_value(n0,d0)
                        assert val!=0 and val%g==0
                        assert (val//g+120*alpha)%g==0
                        assert valuation(val,pp)==valuation(g,pp)
                        assert math.gcd(val//g,small(g)[1])==1
                        primitive.append([g,alpha,beta,pp,e])
    # Seven-degree adjacent coefficient cannot be divided by g^2 in general.
    g,alpha,beta=7,8,1;n0=g*alpha;d0=g*(alpha-2*beta)
    wrong=kraw(n0,d0,7)
    assert wrong%(g*g)!=0
    return {'nd_coefficients':poly_dump(expected),'jk_coefficients':poly_dump(p),
            'recurrence_equals_factorial_convolution':True,'source_orders':orders,
            'origin_order':1,'origin_linear_coefficients':[-120,-120],
            'local_full_prime_power_checks':len(local),'local_checks_sha256':hash_records(local),
            'primitive_actual_g_checks':len(primitive),'primitive_checks_sha256':hash_records(primitive),
            'exact_q0_valuation_theorem':'v_p(K6)=v_p(g)=v_p(q0) for p|q0; K6/g is coprime to q0',
            'quotient_congruence':'T6=K6/(g*q1*q2*q3*q4*q5); g | 120*(T6-alpha*s1*s2*s3*s4*s5)',
            'negative_control_K7_g_squared':{'n':n0,'j':g*beta,'g':g,'K7':wrong,'remainder_mod_g2':wrong%(g*g),
                                           'actual_origin_order':1}}, p


def bernstein_subinterval(coeff,lo,hi):
    # Power basis under z=lo+(hi-lo)*u, then Bernstein degree d.
    deg=len(coeff)-1;c=[F(0)]*(deg+1)
    for i,a in enumerate(coeff):
        for k in range(i+1):c[k]+=a*math.comb(i,k)*lo**(i-k)*(hi-lo)**k
    b=[sum(c[i]*F(math.comb(k,i),math.comb(deg,i)) for i in range(k+1)) for k in range(deg+1)]
    return b


def angular_certificate():
    # Exact factor expansion (1-z)(1-9z)(1-4z).
    poly=[1,-14,49,-36]
    pieces=[];all_b=[]
    for a in range(4):
        b=bernstein_subinterval(poly,F(a,4),F(a+1,4));all_b+=b
        assert all(abs(x)<3 for x in b)
        pieces.append({'interval':[frac(F(a,4)),frac(F(a+1,4))],
                       'bernstein_coefficients':[frac(x) for x in b]})
    assert min(all_b)==F(-5,16) and max(all_b)==F(143,48)
    resonances=[]
    for alpha,beta,r in ((3,1,4),(4,1,3)):
        fs=[r*beta-alpha*b for b in range(r+1)];prod=math.prod(fs)
        assert prod!=0 and rough_alt(abs(prod))==1
        resonances.append({'alpha':alpha,'beta':beta,'epsilon':alpha-2*beta,
                           'source':r,'signed_factors':fs,'product':prod,'rough235':1})
    local=[]
    for r in range(1,6):
        for b in range(r+1):
            for pp in (7,11,13):
                for e in (1,2,3):
                    Q=pp**e;j=b+Q;k=r-b+3*Q;n=j+k;g=math.gcd(n,j)
                    assert math.gcd(g,Q)==1
                    alpha=n//g;beta=j//g;gamma=k//g;eps=(k-j)//g
                    assert math.gcd(alpha,beta)==1
                    if b in (0,r):
                        assert (beta*gamma)%Q==0;local.append([r,b,pp,e,'endpoint'])
                    if r==3 and b in (1,2):
                        assert (alpha*alpha-9*eps*eps)%Q==0;local.append([r,b,pp,e,'N3'])
                    if r==4 and b in (1,3):
                        assert (alpha*alpha-4*eps*eps)%Q==0;local.append([r,b,pp,e,'N4'])
                    if r in (2,4) and b==r//2:
                        assert eps%Q==0;local.append([r,b,pp,e,'central'])
    loss=F(24*23,27*27);assert loss>F(3,4)
    return {'normalized_polynomial_coefficients':poly,'bernstein_quarters':pieces,
            'coefficient_min':frac(min(all_b)),'coefficient_max':frac(max(all_b)),
            'strict_abs_bound':3,'resonance_zero_exits':resonances,
            'full_power_angular_tests':len(local),'angular_tests_sha256':hash_records(local),
            'loss_at_n27':frac(loss),
            'full_divisibility':'q1*q2*q3*q4*E5 | beta*gamma*(alpha^2-9epsilon^2)*(alpha^2-4epsilon^2)*epsilon',
            'all42_necessary_inequality':'g^6*q1*q2*E5 < s3*s4*n^4*epsilon',
            'smallparts_are_actual':True}


def band_certificate(rows):
    # General norm: coefficients |K6| < 15(n+d^2)^3, n>=14.
    assert 45*14**2-210*14+184>0
    n=352
    rho=F((n-3)*(n-4)*(n-5),n**3)
    bernoulli=1-F(12,n)
    assert rho>bernoulli>F(24,25)>F(15,16)
    assert F(19,6)**2>10   # sqrt(10)<19/6 => max h <70/3
    assert F(90,n)+F(616,n*n)<F(2,3)
    assert F(186,n)+F(120,n*n)<1
    assert F(-1485,8)>-186
    scope=[]
    for a,row in rows.items():
        S=math.prod(int(row['kappa'+str(r)]) for r in (3,4,5))
        scope.append({'residue':a,'S345':S,'strict_gq1q2_bound':25*S,
                      'direct_contradiction_with_1001':25*S<=1001})
    assert [x['residue'] for x in scope if not x['direct_contradiction_with_1001']]==[425]
    # An actual legal family demonstrating that the newly excluded domain is not a fixed-epsilon strip.
    family=[]
    assert pow(5,6,72)==1
    for m in range(7):
        X=5**(6*m+1);eps=(X-2)//3;alpha=X*X;g=17;n=g*alpha
        assert (X-2)%3==0 and (alpha-eps)%2==0
        beta=(alpha-eps)//2;j=g*beta;d=n-2*j
        assert n%1800==425 and math.gcd(n,j)==17 and eps==d//g
        assert j>=7 and 2*j<n and d*d<=4*n
        family.append({'m':m,'n':n,'j':j,'g':g,'epsilon':eps,'NC_asserted':False})
    return {'minimum_n':352,'rho352':frac(rho),'bernoulli_lower':frac(bernoulli),
            'general_norm':'abs(K6)<15*(n+d^2)^3',
            'band':'d^2<=4*n','h_min':-15,'h_max_strict_upper':frac(F(70,3)),
            'upper_correction_bound':frac(F(90,352)+F(616,352**2)),
            'lower_correction_bound':frac(F(186,352)+F(120,352**2)),
            'band_norm':'abs(K6)<24*n^3','scope':scope,'rough_triple_min':1001,
            'legal_unbounded_epsilon_family':{'formula':'X=5^(6m+1); n=17X^2; epsilon=(X-2)/3; j=17*(X^2-epsilon)/2; m>=0',
                 'proof_scope':'legal original pairs, NOT necessary-system or NC examples',
                 'finite_formula_checks':family}}


def terminal_certificate(bft):
    assert all(abs(a-b)!=1 for a,b in bft['exceptions'])
    R=root_int(37**200,57);H=R+2
    assert R==318025 and H==318027
    assert R**57<37**200<(R+1)**57
    # Complete enumeration of 235-rough possible coefficients, not a prime cutoff conjecture.
    rough=[x for x in range(7,39) if small(x)[1]==x]
    assert rough==[7,11,13,17,19,23,29,31,37]
    assert all(prime(x) for x in rough)
    assert (3000-1)//77==38 and 5*1001>3000
    A=[];Am=[];As=[];P=25;u=2
    while P<=H:
        for q0 in rough:
            n=P*q0
            if n>H:continue
            rec={'n':n,'power5':P,'u':u,'q0':q0};A.append(rec)
            if n%1800!=425:continue
            qs=[small(n-r)[1] for r in range(3)]
            z={**rec,'q012':qs,'q012_product':math.prod(qs)};Am.append(z)
            if all(q>=7 for q in qs) and math.prod(qs)<3000:As.append(n)
        P*=5;u+=1
    # Other orientation, reverse coefficient order, independent smooth-part stripping.
    B=[];Bm=[];Bs=[];v=3;P=8
    while P<=H:
        for q1 in reversed(rough):
            n=1+P*q1
            if n>H:continue
            rec={'n':n,'power2':P,'v':v,'q1':q1};B.append(rec)
            if not(n%8==425%8 and n%9==425%9 and n%25==425%25):continue
            qs=[rough_alt(n-r) for r in range(3)]
            z={**rec,'q012':qs,'q012_product':math.prod(qs)};Bm.append(z)
            if min(qs)>=7 and qs[0]*qs[1]*qs[2]<3000:Bs.append(n)
        P*=2;v+=1
    assert sorted(set(As))==sorted(set(Bs))==[]
    assert len(A)==41 and len(B)==105
    assert [x['n'] for x in Am]==[425,115625]
    assert [x['n'] for x in Bm]==[77825]
    return {'hypothetical_domain':'NC6; residue425; d^2<=4n',
            'derived_product_bound':'g*q1*q2<3000; q0*q1*q2<3000',
            'actual_g_equals_q0':True,'complete_rough_coefficients':rough,
            'bft_original_values':['n-1=2^v*q1','n-2=3^w*q2'],
            'bft_high_start':1003,'bft_lambda':[57,200],'max_coefficient':37,
            'height_n_minus2':R,'height_n':H,'small_exit_included':True,
            'height_integer_comparison':{'lower_power':f'{R}^57','middle':'37^200','upper_power':f'{R+1}^57','strict_both':True},
            'A_all_rows':A,'A_after_residue':Am,'A_survivors':As,
            'B_all_rows':B,'B_after_residue':Bm,'B_survivors':Bs,
            'sets_equal':True,'new_j_scan_count':0,'old_epsilon4096_replay':False}


def height_certificate(rows,bft):
    out=[]
    for a,row in rows.items():
        p1=next(p for p in (2,3,5) if int(row['r'+str(p)])==1)
        p2=next(p for p in (2,3,5) if int(row['r'+str(p)])==2)
        A,B=bft['lambda'][','.join(map(str,sorted((p1,p2))))]
        theta=11*A-2*B;assert theta>0
        S=math.prod(int(row['kappa'+str(r)]) for r in (3,4,5))
        S34=int(row['kappa3'])*int(row['kappa4']);K=max(int(row['kappa1']),int(row['kappa2']))
        # RHS multiplier after clearing the rational exponent with power B.
        C=F(2)**(11*A)*F(K,7)**(11*B)*F(125,4)**(6*B)*F(S)**(6*B)*F(S34)**(5*B)
        H=0
        while 2**(H*theta)*C.denominator<=C.numerator:H+=1
        assert 2**((H-1)*theta)*C.denominator<=C.numerator<2**(H*theta)*C.denominator
        assert H>=10 and F(41*B,theta)<=F(5125,47)
        out.append({'residue':a,'p1':p1,'p2':p2,'s1_kappa':int(row['kappa1']),
                    's2_kappa':int(row['kappa2']),'K':K,'S345':S,'S34':S34,
                    'lambda':[A,B],'theta':theta,'epsilon_power_before_root':41*B,
                    'E5_power_before_root':5*B,'epsilon_exponent':frac(F(41*B,theta)),
                    'dyadic_H':H,'integer_epsilon_exponent':math.ceil(F(41*B,theta)),
                    'multiplier_factors':[[[2,1],11*A],[[K,7],11*B],[[125,4],6*B],[[S,1],6*B],[[S34,1],5*B]],
                    'multiplier_numerator_sha256':digest(hex(C.numerator).encode()),
                    'multiplier_denominator_sha256':digest(hex(C.denominator).encode()),
                    'H_is_smallest_for_this_bound':True})
    assert [r['dyadic_H'] for r in out]==[138,43,117,37,51,40]
    # Elimination, exact exponent accounting: six lower and five upper inequalities.
    # lower: L*n^3 < const*g^5*eps^6
    # upper: g^6*L*E5 < const*n^4*eps
    assert 6*5==5*6 and 6+5==11 and 6*6+5==41 and 5*4-6*3==2
    assert 11*F(27,125)-2==F(47,125)
    assert 47*138==6486 and F(5125,47)<110
    return {'rows':out,'elimination_powers':[6,5],
            'eliminated_inequality':'L^11*E5^5 < (125/4)^6*S345^6*S34^5*n^2*epsilon^41',
            'old_tropical_direction_rejected':{'g_exp':[1,2],'L_exp':[1,3],
                      'chi_exp':[0,1],'K6_left_exp':[5,6],'K6_right_exp':[0,1]},
            'new_all42_uniform':'n^47 < 2^6486*epsilon^5125; hence n<2^138*epsilon^110 and g<2^138*epsilon^109',
            'all42_inherits_old36':True,'unconditional_epsilon_upper_bound':None,
            'all42_unconditional_finite_terminal':False,'closed_residue_classes_added':0,
            'historical_certified_net_reduction':0,'R7':[3,4,5,6,7,8,9]}


def generate():
    binding,rows,bft=source_binding()
    alg,_=algebra_certificate()
    return {'SOURCE_BINDING.json':binding,'K6_EXACT.json':alg,
            'ANGULAR_SOURCE.json':angular_certificate(),'PARABOLIC_BAND.json':band_certificate(rows),
            'TERMINAL425.json':terminal_certificate(bft),'HEIGHT012.json':height_certificate(rows,bft)}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--write',action='store_true');args=ap.parse_args()
    results=generate();hashes={}
    for name,obj in results.items():
        data=canonical(obj);p=ROOT/'certificates'/name
        if args.write:p.write_bytes(data)
        else:
            assert p.exists(),f'missing certificate {name}'
            old=p.read_bytes();assert json.loads(old)==obj,f'JSON mismatch: {name}'
            assert old==data,f'byte mismatch: {name}'
        hashes[name]=digest(data)
    summary={'status':'PASS','mode':'generate' if args.write else 'read_only_recompute_and_compare',
             'certificate_count':len(results),'certificates_sha256':hashes,
             'kernel_full_power_checks':results['K6_EXACT.json']['local_full_prime_power_checks'],
             'primitive_actual_g_checks':results['K6_EXACT.json']['primitive_actual_g_checks'],
             'angular_full_power_checks':results['ANGULAR_SOURCE.json']['full_power_angular_tests'],
             'terminal_A_count':len(results['TERMINAL425.json']['A_all_rows']),
             'terminal_B_count':len(results['TERMINAL425.json']['B_all_rows']),
             'terminal_survivors':0,'all42_fixed_epsilon_height':True,
             'epsilon_absolute_bound':False,'Lean_run':False}
    print(json.dumps(summary,ensure_ascii=False,sort_keys=True,indent=2))

if __name__=='__main__':
    try:main()
    except Exception as exc:
        print(f'FAIL: {type(exc).__name__}: {exc}',file=sys.stderr)
        raise
