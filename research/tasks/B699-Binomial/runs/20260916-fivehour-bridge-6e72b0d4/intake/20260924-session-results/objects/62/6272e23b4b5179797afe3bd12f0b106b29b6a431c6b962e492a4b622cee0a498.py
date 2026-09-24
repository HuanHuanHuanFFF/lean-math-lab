"""Round25 exact verifier. Algorithm B enumerates nu and recovers h linearly.
All proofs of local emptiness are recomputed, including zero mod-p factors.
No imports from the certificate generator; no network, Lean, or repository.
"""
from __future__ import annotations
from collections import Counter
from functools import lru_cache
from itertools import product
from math import gcd,isqrt
from pathlib import Path
import argparse,copy,json
N0=194400000
KD=2**14*3**10*5**6
FIXED_GCD=2**6*3**5*5**5*7**4

def need(ok,msg='check failed'):
    if not ok:raise AssertionError(msg)

def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def vp(x,p):
    if x==0:return float('inf')
    x=abs(x);e=0
    while x%p==0:x//=p;e+=1
    return e

def mul(a,b,mod=None):
    z=(a[0]*b[0]+3*a[1]*b[1],a[0]*b[1]+a[1]*b[0])
    return z if mod is None else (z[0]%mod,z[1]%mod)

def power(a,n,mod=None):
    z=(1,0)
    for _ in range(n):z=mul(z,a,mod)
    return z

@lru_cache(None)
def periodic_coordinates(p):
    need(prime(p) and p>3)
    unit=(1,0);point=(2,1);coords=[];i2=pow(2,-1,p)
    for T in range(1,p*p+1):
        U,X=point;coords.append(((3*X-1)*i2%p,U*i2%p))
        for _ in range(8):
            unit=((2*unit[0]+3*unit[1])%p,(unit[0]+2*unit[1])%p)
            point=((2*point[0]+3*point[1])%p,(point[0]+2*point[1])%p)
        if unit==(1,0):return T,tuple(coords)
    raise AssertionError('no first-return period')

@lru_cache(None)
def direct_image(p,r):
    T,coords=periodic_coordinates(p);need(0<=r<T)
    d,y=coords[r];ns={c*pow(2,e,p)%p for c in (1,3) for e in range(p-1)}
    i2=pow(2,-1,p);i4=pow(4,-1,p);i16=pow(16,-1,p)
    target=3*(d-1)%p;di=pow(d,-1,p) if d else None
    out=set();tested=retained=0;zero_counts=Counter()
    for A in range(p):
        bs=[target*pow(A,-1,p)%p] if A else (range(p) if target==0 else [])
        for B in bs:
            v=A*y%p;Q=(d+v)%p
            candidates=((nu,(2*nu+Q)*di%p) for nu in range(p)) if d else ((-Q*i2%p,h) for h in range(p))
            for nu,h in candidates:
                tested+=1
                for name,x in [('A',A),('B',B),('d',d),('v',v)]:
                    if x==0:zero_counts[name]+=1
                rhs=B*y+(h+3)*d*d+(2*h+3)*d*v+(h+1)*v*v
                if (nu*nu-rhs)%p:continue
                P=(Q+h*v)%p;n=(P*Q*nu+2)%p
                if n not in ns:continue
                C=(4*B*h-16*A*d-120*y-27*B)%p
                Z=(20*B-320*A-C)%p;F=(3*Z*Z-64*(C*A+15)**2)%p
                cs=C*i4%p;fs=F*i16%p;w=(5*fs+42*cs*cs-18000)%p
                V=(w*w-97200*cs*cs+N0)%p
                out.add(V);retained+=1
    return tuple(sorted(out)),tested,retained,dict(zero_counts)

def validate(cert):
    need(cert['schema']=='B699-D-Round25-235-full-period-v1')
    need(cert['exponents']=={'2':[0,4,6],'3':[0,2,4,5],'5':[0,2,4,5]})
    values=sorted(2**a*3**b*5**c for a,b,c in product((0,4,6),(0,2,4,5),(0,2,4,5)))
    need(len(values)==len(set(values))==48 and values==cert['values'])
    need(cert['common_period']==1260 and cert['q_mod3']==[0,2] and cert['V_mod16']==[0,9])
    images={};tested=models=cells=0;zero_counts=Counter()
    for key,table in cert['tables'].items():
        p=table['p'];need(key==str(p));T,coords=periodic_coordinates(p)
        need(T==table['period'] and 1260%T==0,'wrong period')
        need(len(table['V_images'])==T)
        for r,claimed in enumerate(table['V_images']):
            actual,nt,nm,nz=direct_image(p,r)
            need(list(actual)==claimed,('false local image',p,r))
            images[p,r]=frozenset(actual);tested+=nt;models+=nm;cells+=1;zero_counts.update(nz)
    need([row['V'] for row in cert['cover']]==values,'missing or duplicate V')
    qs=set(q for q in range(1260) if q%3!=1);need(len(qs)==840)
    mod16_values=[];period_values=[];used=Counter();records=empty_cells=0
    for row in cert['cover']:
        V=row['V']
        if row['kind']=='mod16':
            need(V%16 not in (0,9));mod16_values.append(V);continue
        need(row['kind']=='odd_primes' and V%16 in (0,9))
        pending=set(qs);seen=set()
        for step in row['steps']:
            p=step['p'];need(p not in seen);seen.add(p)
            T=cert['tables'][str(p)]['period']
            expected=[r for r in range(T) if V%p not in images[p,r]]
            need(expected==step['excluded_q_residues'],('false empty residue',V,p))
            kept={q for q in pending if q%T not in set(expected)}
            removed=len(pending)-len(kept)
            need(removed==step['removed'] and removed>0)
            used[p]+=removed;records+=1;empty_cells+=len(expected);pending=kept
        need(not pending,('uncovered',V,sorted(pending)[:8]))
        period_values.append(V)
    need(set(used)=={int(p) for p in cert['tables']})
    return {'status':'PASS','candidate_values':48,'max_V':max(values),'common_q_period':1260,
            'allowed_q_residues':840,'full_period_grid':48*840,
            'mod16_excluded_values':len(mod16_values),'mod16_excluded_cells':len(mod16_values)*840,
            'period_excluded_values':len(period_values),'odd_prime_covered_cells':len(period_values)*840,
            'cover_records':records,'empty_q_residue_cells':empty_cells,'distinct_local_image_cells':cells,
            'direct_nu_h_candidates':tested,'local_models_retained':models,'zero_factor_candidates':dict(zero_counts),
            'primes':sorted(used),'max_prime':max(used),'covered_by_prime':{str(p):used[p] for p in sorted(used)},
            'uncovered':0,'q_upper_bound_used':False,'V_gt_q_squared_used':False}

def integer_definitions(A,B,c):
    f=3*(5*B-80*A-c)**2-4*(4*A*c+15)**2
    w=5*f+42*c*c-18000;V=w*w-97200*c*c+N0
    return f,w,V

def valuation_regression():
    counts=Counter();n2=0
    for A in range(0,16,2):
        for B in range(0,16,4):
            for c in range(16):
                f,w,V=integer_definitions(A,B,c)
                need((w-9*c*c-8*(B//4)*c+4)%16==0)
                expected=0 if c%2 else 6 if c%4==2 else 4
                need(vp(V,2)==expected,('v2',A,B,c));counts[expected]+=1;n2+=1
    n3=0;seen3=set()
    for c in range(1,65):
        for w in range(-128,129):
            V=w*w-97200*c*c+N0
            need(vp(V,3)==min(2*vp(w,3),5));seen3.add(vp(V,3));n3+=1
    n5=0;seen5=set()
    for a,b,u,z in product(range(7),range(7),(1,2,3,4),(1,2,3,4)):
        c=5**a*u;w=5**b*z;V=w*w-97200*c*c+N0
        expected=min(2*min(vp(w,5),1+vp(c,5)),5)
        need(vp(V,5)==expected,('v5',a,b,u,z));seen5.add(vp(V,5));n5+=1
    need(seen3==seen5=={0,2,4,5})
    need(2**6*3**5*5**5==48600000)
    return {'status':'PASS','mod16_definition_states':n2,'v2_distribution':dict(counts),
            'v3_integer_regressions':n3,'v5_scaled_regressions':n5,
            'e2':[0,4,6],'e3':sorted(seen3),'e5':sorted(seen5),
            'description':'Algebraic/valuation regressions, not NC3 models; paper arguments carry the unbounded quantifiers.'}

def theta_coefficients(U,X,w,C,V):
    E,O=power((w,45*C),7)
    tx=KD*V*V*U-147*O;ty=KD*V*V*X-49*E
    norm=tx*tx-3*ty*ty
    expr=KD*KD*V**4+294*KD*V*V*(X*E-U*O)-7203*(V-N0)**7
    return tx,ty,norm,expr

def norm_gcd_regression():
    n=0
    for q,A,B,c in product(range(8),(2,4,6,8),(4,8,12),(1,2,3,4,5,10,25,125)):
        U,X=power((2,1),8*q+1);_,w,V=integer_definitions(A,B,c);C=4*c
        tx,ty,N,expr=theta_coefficients(U,X,w,C,V)
        need(N==expr)
        need((N-7203*N0**7)%V==0)
        G=gcd(V,N);need(G==gcd(V,7203*N0**7))
        exact=2**int(vp(V,2))*3**int(vp(V,3))*5**int(vp(V,5))*7**int(min(vp(V,7),4))
        need(G==exact and FIXED_GCD%G==0);n+=1
    return {'status':'PASS','integer_identity_regressions':n,'fixed_gcd_bound':FIXED_GCD,
            'constant_factorization':{'2':56,'3':36,'5':35,'7':4},
            'description':'Theta has its full cross-term; these are integer identity checks, not NC3 instances.'}

def counterprojections():
    result=[]
    for kind,q,A,B,h in [('P',6,10,9,8),('Q',15,10,0,2)]:
        p=11;T,coords=periodic_coordinates(p);d,y=coords[q%T]
        v=A*y%p;Q=(d+v)%p;P=(Q+h*v)%p;nu=(h*d-Q)*pow(2,-1,p)%p
        need((P if kind=='P' else Q)==0)
        n=(P*Q*nu+2)%p
        need(q%3!=1 and n==pow(2,11,p))
        need((A*B-3*(d-1))%p==0 and (d*d+d+1-3*y*y)%p==0)
        need((v*nu*nu-P*Q*Q+1)%p==0)
        need((nu*nu-B*y-(h+3)*d*d-(2*h+3)*d*v-(h+1)*v*v)%p==0)
        Y=(d*nu-Q*Q)%p;need((v*Y*Y-Q**5+d*d)%p==0)
        C=(4*B*h-16*A*d-120*y-27*B)%p;cs=C*pow(4,-1,p)%p
        Z=(20*B-320*A-C)%p;F=(3*Z*Z-64*(C*A+15)**2)%p
        w=(5*F*pow(16,-1,p)+42*cs*cs-18000)%p;V=(w*w-6075*C*C+N0)%p
        U,X=power((2,1),8*q+1,p);E,O=power((w,45*C),7,p)
        tx=(KD*V*V*U-147*O)%p;ty=(KD*V*V*X-49*E)%p;N=(tx*tx-3*ty*ty)%p
        need(N!=0)
        result.append({'source':kind,'p':p,'q':q,'d':d,'y':y,'A':A,'B':B,'h':h,'nu':nu,
                       'P':P,'Q':Q,'n':n,'n_exponent_witness':11,'C':C,'V':V,'theta':[tx,ty],'norm':N})
    return {'status':'PASS','models':result,
            'limits':'Finite-field projections only. No global positive restoration, complete P/Q prime powers or original (n,j). Not NC3 counterexamples.'}

def mutation_tests(cert):
    out=[]
    bad=copy.deepcopy(cert);bad['cover'].pop();out.append(('missing_value',bad))
    bad=copy.deepcopy(cert)
    row=next(r for r in bad['cover'] if r['V']==97200);step=row['steps'][0];p=step['p'];T=bad['tables'][str(p)]['period']
    extra=next(r for r in range(T) if r not in step['excluded_q_residues'])
    step['excluded_q_residues']=sorted(step['excluded_q_residues']+[extra]);out.append(('fake_local_exclusion',bad))
    bad=copy.deepcopy(cert);bad['tables']['7']['period']=2;out.append(('false_period',bad))
    bad=copy.deepcopy(cert);bad['exponents']['5']=[0,2,4,6];out.append(('false_valuation_alphabet',bad))
    result=[]
    for name,bad in out:
        try:validate(bad)
        except (AssertionError,KeyError,IndexError):result.append(name)
        else:raise AssertionError(('bad certificate accepted',name))
    return {'status':'PASS','rejected':result}


def validate_seven(cert):
    need(cert['schema']=='B699-D-Round25-two-seven-tails-v1')
    need(cert['multipliers']==[16,3888] and cert['q_period']==45 and cert['exponent_period']==240)
    need(cert['q_mod3']==[0,2])
    images={};tested=models=local_cells=0;orders={}
    for key,tb in cert['tables'].items():
        p=tb['p'];need(key==str(p) and prime(p) and p!=7)
        T,_=periodic_coordinates(p);need(T==tb['q_period'] and 45%T==0)
        z=1;O=None
        for e in range(1,p):
            z=z*7%p
            if z==1:O=e;break
        need(O==tb['seven_order'] and 240%O==0,'wrong seven exponent period');orders[p]=O
        need(len(tb['V_images'])==T)
        for r,arr in enumerate(tb['V_images']):
            val,nt,nm,nz=direct_image(p,r);need(list(val)==arr,('seven false local image',p,r))
            images[p,r]=set(val);tested+=nt;models+=nm;local_cells+=1
    need([r['multiplier'] for r in cert['cover']]==[16,3888])
    rows=[];records=empty_pairs=0
    for row in cert['cover']:
        m=row['multiplier'];pending={(q,e) for q in range(45) if q%3!=1 for e in range(240)}
        need(len(pending)==7200);seen=set();trace=[]
        for step in row['steps']:
            p=step['p'];need(p not in seen);seen.add(p)
            T=cert['tables'][str(p)]['q_period'];O=orders[p]
            bad=[[e for e in range(O) if m*pow(7,e,p)%p not in images[p,r]] for r in range(T)]
            need(bad==step['excluded_exponents_by_q'],'false seven exclusion')
            kept={(q,e) for q,e in pending if e%O not in bad[q%T]}
            n=len(pending)-len(kept);need(n==step['removed'] and n>0)
            records+=1;empty_pairs+=sum(map(len,bad));pending=kept;trace.append({'p':p,'removed':n,'remaining':len(pending)})
        need(not pending,('seven uncovered',m))
        rows.append({'multiplier':m,'grid':7200,'steps':trace,'uncovered':0})
    return {'status':'PASS','families':2,'q_period':45,'exponent_period':240,'grid':14400,
            'cover_records':records,'excluded_local_q_exponent_pairs':empty_pairs,
            'local_image_cells':local_cells,'direct_nu_h_candidates':tested,'local_models_retained':models,
            'primes':sorted(orders),'max_prime':max(orders),'rows':rows,'uncovered':0,
            'q_height_used':False,'exponent_height_used':False}

def seven_mutation_tests(cert):
    cases=[]
    b=copy.deepcopy(cert);b['cover'][0]['steps'].pop();cases.append(('missing_seven_tail_cover',b))
    b=copy.deepcopy(cert);b['tables']['241']['seven_order']=120;cases.append(('false_seven_order',b))
    good=[]
    for name,b in cases:
        try:validate_seven(b)
        except (AssertionError,KeyError,IndexError):good.append(name)
        else:raise AssertionError(('bad seven certificate accepted',name))
    return {'status':'PASS','rejected':good}

def unresolved_seven_shell():
    # This is only a witness to insufficiency of the listed modular projections.
    q=99;e=22344;m=9;ps=[5,7,11,13,17,19,31,37,61,73,89,181,193,241,337]
    rows=[]
    need(q%3!=1 and (m*pow(7,e,16))%16==9)
    for p in ps:
        T,_=periodic_coordinates(p);arr,_,_,_=direct_image(p,q%T)
        residue=m*pow(7,e,p)%p;need(residue in arr,('shell rejected',p))
        rows.append({'p':p,'q_residue':q%T,'V_residue':residue,'in_local_image':True})
    return {'status':'PASS','q':q,'V_expression':'9*7^22344','multiplier':m,'seven_exponent':e,
            'checked_primes':ps,'projections':rows,
            'limits':'No shared positive integer h/C/A/B restoration, P/Q complete powers or original (n,j); not NC3 and not a counterexample.'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);ap.add_argument('--seven',type=Path,required=True);ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    cert=json.loads(a.certificate.read_text());seven=json.loads(a.seven.read_text());report={'schema':'B699-D-Round25-replay-v1','status':'PASS',
        'valuations':valuation_regression(),'norm_gcd':norm_gcd_regression(),'full_period_cover':validate(cert),
        'counterprojections':counterprojections(),'bad_certificates':mutation_tests(cert),
        'seven_tails':validate_seven(seven),'seven_bad_certificates':seven_mutation_tests(seven),
        'unresolved_seven_shell':unresolved_seven_shell(),
        'evidence_level':'Paper + exact finite periods + same-author independent algorithm; not Lean or external independent review.'}
    a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(report,sort_keys=True,ensure_ascii=False,indent=2)+'\n')
    c=report['full_period_cover']
    print('COMPLETE_235_VALUATIONS=PASS')
    print('FULL_235_PRIME_ESCAPE=PASS; GRID='+str(c['full_period_grid'])+'; UNCOVERED='+str(c['uncovered']))
    print('LOCAL_NU_H_CANDIDATES='+str(c['direct_nu_h_candidates']))
    print('TRUE_THETA_NORM_GCD=PASS; FIXED_BOUND='+str(FIXED_GCD))
    print('SOURCE_COUNTERPROJECTIONS=PASS; COUNT=2')
    print('SEVEN_TAILS_CLOSED=PASS; FAMILIES=2; GRID=14400')
    print('BAD_CERTIFICATES_REJECTED=PASS')
if __name__=='__main__':main()
