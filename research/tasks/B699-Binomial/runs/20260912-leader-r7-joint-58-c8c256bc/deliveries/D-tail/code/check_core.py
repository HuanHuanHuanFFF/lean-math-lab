"""Primary exact checker for the new arithmetic certificate and projection examples."""
from pathlib import Path
from math import gcd,isqrt,lcm
import json,sys
from common import model,is_prime_trial
from polycheck import verify_polynomials
ROOT=Path(__file__).resolve().parents[1]
def demand(ok,msg):
    if not ok:raise ValueError(msg)

def check_arithmetic(cert):
    negative=[]
    for la in (1,3):
        for u in range(1,3*la):
            if u%4 != la%4:continue
            fs=[f for f in range(1,3*la-u+1,2) if (3*la-u)%f==0 and gcd(f,la)==1]
            negative.append({'lambda':la,'u':u,'possible_F0':fs})
    middle=[]
    for H in range(1,5):
        for g in range(1,isqrt(H)+1):
            if gcd(H,9)==1 and H%(g*g)==0 and (H-g)%2==0:
                middle.append({'H':H,'g':g,'R':H//(g*g)})
    expected={'version':1,'centre_negative_cases':negative,'middle_nine_H_g_R':middle,
       'middle_nine_dyadic_table':[{'beta_mod4':b,'one_plus_9beta2_mod4':(1+9*b*b)%4} for b in (1,3)],
       'endpoint_uniform_constant':54,'centre_uniform_constants':[27,4],
       'norm_gap_constants':{'central_lower':32,'central_upper':9,'contradiction_left':128,'contradiction_right_max':27},
       'new_full_index_closures':[]}
    demand(cert==expected,'arithmetic certificate differs from complete reconstruction')
    demand(all(r['possible_F0']==[1] for r in negative),'negative z proof has another branch')
    return {'negative_z_cases':len(negative),'middle_nine_cases':len(middle),'dyadic_residues':2}

def check_outer(cert):
    branches={(h,a) for h in range(1,9) if gcd(h,9)==1 and isqrt(9*h)**2!=9*h
              for a in range(1,2*h+1,2) if (2*h)%a==0}
    demand(cert['version']==1,'wrong schema')
    demand(cert['exponent_quantifier']=='all natural v>=2; full periods, not a finite height cutoff','wrong quantifier')
    rows=cert['rows']
    demand(len(rows)==len(branches),'missing or duplicated outer family')
    demand({(r['h'],r['oddpart_n']) for r in rows}==branches,'incomplete outer domain')
    demand(pow(2,54,81)==1,'period81')
    cells=0
    for row in rows:
        h,a,p=row['h'],row['oddpart_n'],row['p']
        demand(is_prime_trial(p) and p>2,'invalid modulus prime')
        t=next(t for t in range(1,p) if pow(2,t,p)==1)
        L=lcm(54,t)
        demand((row['order_2'],row['period'])==(t,L),'wrong period')
        roots=[v for v in range(54) if (h*(a*pow(2,v,81)-2)-18)%81==0]
        demand(row['v_mod54']==roots,'omitted exponent class mod81')
        expected=[]
        for v in range(L):
            if v%54 not in roots:continue
            x=a*pow(2,v,p)%p
            d=(9+4*h*(x-1)*(x-2))%p
            demand(pow(d,(p-1)//2,p)==p-1,'cell not excluded by Euler test')
            expected.append({'v_mod_period':v,'discriminant_mod_p':d})
        demand(row['cells']==expected,'missing or changed outer exclusion cell')
        cells+=len(expected)
    demand(cert['cell_count']==cells,'wrong count')
    return {'outer_families':len(branches),'complete_modular_cells':cells,'max_modulus':max(r['p'] for r in rows)}

def check_weak(rows):
    demand(len(rows)==4,'missing weak model')
    counts=0
    for row in rows:
        q=model(row['n'],row['j']);demand(q==row,'canonical weak model mismatch')
        n,j,k,N,la,mu,ell,V,g,H,R,U,z=[q[t] for t in ['n','j','k','N','la','mu','ell','V','g','H','R','U','z']]
        C0,C1,C2=q['C'];F=q['F'];de=q['delta'];D=(n-1)*(n-2);E=de*de-3*n+2
        demand(H*F-U*C1*C1==la,'residual identity')
        demand(4*q['h0']*q['h2']==H*U,'product identity')
        demand(z>0 and z%2==1,'z not positive odd')
        demand(z*D==ell*C1*E,'central identity')
        demand(4*U*z*z*(n-1)**3*(n-2)**2==V*((n-2)**2-de*de)*E*E,'central bound identity')
        demand(4*U*z*z*(n-1)**3<V*E*E,'central strict bound')
        demand(g*g*(n-1)**3<2*V*j*j*(j-1)**2,'edge strict bound')
        for w,h in [(ell*C0,q['h0']),(ell*C2,q['h2']),(ell*C1,z)]:
            demand(isqrt(w*h)**2!=w*h,'prohibited square branch')
            counts+=1
        if q['alpha']%2==0:
            demand((R+ell*C1*q['beta']**2)%(q['alpha']//2)==0,'dyadic exact divisor')
    return {'weak_inputs':len(rows),'nonsquare_regressions':counts,'U_square_allowed':rows[0]['U']==144}

def main():
    E=Path(sys.argv[1]) if len(sys.argv)>1 else ROOT/'evidence'
    load=lambda f:json.loads((E/f).read_text())
    ans={'status':'PASS','polynomials':verify_polynomials(),
         'arithmetic':check_arithmetic(load('arithmetic-certificate.json')),
         'outer9':check_outer(load('outer-nine-certificate.json')),
         'weak':check_weak(load('weak-projection-models.json'))}
    print(json.dumps(ans,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
