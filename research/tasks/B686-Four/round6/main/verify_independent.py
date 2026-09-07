"""Independent original-product, Bernstein-height and identity checks.

This is external exact arithmetic, not a replacement for Lean kernel checking.
"""
from pathlib import Path
from fractions import Fraction as Q
from math import comb
from datetime import datetime,timezone
import json,hashlib,time
import sympy as S

HERE=Path(__file__).resolve().parent
ROUND=HERE.parent
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def original_difference(n,d):
    # Deliberately use binomial coefficients, not the generated cutoff formula.
    return 120*(comb(n+d+5,5)-4*comb(n+5,5))

def finite_check():
    source=ROUND/'a/finite-data.json'
    rows=json.loads(source.read_text(encoding='utf-8'))['rows']
    assert [r['d'] for r in rows]==list(range(20000,50000))
    low,high=0,1
    while original_difference(high,20000)>0:high*=2
    while high-low>1:
        mid=(low+high)//2
        if original_difference(mid,20000)>0:low=mid
        else:high=mid
    n=low
    for row in rows:
        d=row['d']
        while original_difference(n+1,d)>0:n+=1
        a,b=original_difference(n,d),original_difference(n+1,d)
        assert a>0>b
        assert (n,a,b)==(row['cutoff'],row['lower_sign'],row['upper_sign'])
    return {'source':str(source.relative_to(ROUND)),'sha256':sha(source),'rows':len(rows),
            'method':'independent binomial difference and monotone sequential root tracking',
            'all_exact_signs_and_cutoffs_match':True}

def bernstein_bounds(terms,D,N):
    lo=Q(83894387,10000000);width=Q(3,10000000)
    lower=upper=Q(0)
    for degree in range(D+1):
        aa=[sum(Q(c)*comb(a,j)*lo**(a-j)*width**j for a,b,c in terms if a+b==degree and a>=j) for j in range(5)]
        bb=[sum(aa[j]*Q(comb(k,j),comb(4,j)) for j in range(k+1)) for k in range(5)]
        l,u=min(bb),max(bb)
        if degree==D:lower+=l;upper+=u
        else:lower+=min(l,0)/N**(D-degree);upper+=max(u,0)/N**(D-degree)
    assert -N<lower<upper<0
    return {'lower':str(lower),'upper':str(upper),'lower_float':float(lower),'upper_float':float(upper)}

def identities(row):
    z,d,w=S.symbols('z d w')
    F=z**5-40*z**3*d**2-200*z**2*d**3-420*z*d**4-340*d**5-45*z**3+540*z*d**2+900*d**3+324*z
    G=sum(c*z**a*d**b for a,b,c in row['terms'])
    source=HERE/f"high-contact-{row['name']}.json"
    certs=json.loads(source.read_text(encoding='utf-8'))['certificates']
    for c in certs:
        quotient=sum(v*w**a*d**b for a,b,v in c['quotient'])
        residual=sum(v*w**a*d**b for a,b,v in c['residual'])
        assert S.Poly(S.expand(c['K']*G.subs(z,c['root']+w)-quotient*F.subs(z,c['root']+w)-residual),w,d).is_zero
        assert all(a+b>=row['R'] for a,b,v in c['residual'])
        assert 6**c['N']%c['K']==0
    return {'file':source.name,'sha256':sha(source),'identities':len(certs),'exact_expansions_zero':True}

def sum_height():
    # From 8d<z<9d and 3s=2z+5d; all E=z+5j with -2<=j<=2.
    # Rational functions are monotone in z/d on this interval for d>=600.
    lower=3*(Q(8)-Q(10,600))/(2*8+5)
    upper=3*(Q(9)+Q(10,600))/(2*9+5)
    assert 1<lower and upper**2<2
    return {'d_min':600,'E_over_s_lower':str(lower),'E_over_s_upper':str(upper),
            'product_over_s_squared_lower':str(lower**2),
            'product_over_s_squared_upper':str(upper**2),
            'all_two_slot_products_strictly_between_1_and_2':True}

if __name__=='__main__':
    begin=time.monotonic()
    report={'started_utc':datetime.now(timezone.utc).isoformat(),'evidence':'external exact independent arithmetic; not Lean'}
    report['finite']=finite_check();print('finite 30000 rows passed',flush=True)
    report['high_contacts']=[]
    for row in json.loads((HERE/'selected-four.json').read_text(encoding='utf-8'))['rows']:
        out={'name':row['name'],'bernstein':bernstein_bounds(row['terms'],row['D'],row['N']),
             'identity_check':identities(row)}
        report['high_contacts'].append(out);print(row['name'],'independent checks passed',flush=True)
    report['sum_height']=sum_height()
    report['elapsed_seconds']=time.monotonic()-begin
    report['success']=True
    (HERE/'independent-verification.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
