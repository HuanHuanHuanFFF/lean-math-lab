"""Independent coverage reconstruction: recurrence for powers, direct quadratic equations."""
import argparse,json
from math import gcd
from exact import require,write_json

def check(cert):
    require(cert.get('C')==9,'fixed C=9 statement')
    require(cert.get('period')==108,'fixed exponent period')
    require(cert.get('normalizing_modulus')==81,'full square C^2 required')
    require(cert.get('moduli')==[5,13,19,37],'fixed witness moduli')
    for mod in [81,5,13,19,37]:
        t=1
        for _ in range(108):t=2*t%mod
        require(t==1,'exponent periodicity not established')
    expected=[]
    for mode in ['outer','middle']:
        for h in [1,2,4,5,7,8]:
            if mode=='middle' and h not in [1,2,4]:continue
            # independent bounded loop including nondivisors; m is the odd part of n
            for m in range(1,9):
                if m%2==0 or h%m:continue
                if mode=='middle' and h%(m*m):continue
                value=m%81
                for r in range(108):
                    if value%9==2 and (h*(value-1)*(value-2)-18)%81==0:
                        expected.append((mode,h,m,r))
                    value=(2*value)%81
    got=[]; root_trials=0
    for row in cert.get('records',[]):
        mode,h,m,r=(row[k] for k in ['mode','h','m','residue'])
        got.append((mode,h,m,r))
        p=row['modulus'];require(p in cert['moduli'],'unapproved witness modulus')
        value=m%p
        for _ in range(r):value=(value*2)%p
        rhs=((9-2*h)*value**2+6*h*value-4*h)%p if mode=='middle' else (4*h*(value-1)*(value-2)+9)%p
        require(row['rhs']==rhs,'incorrect recorded remainder')
        # Check the original quotient polynomial directly, not the discriminant set.
        for x in range(p):
            left=18*x*(value-x) if mode=='middle' else 9*x*(x-1)
            require((left-h*(value-1)*(value-2))%p!=0,'quadratic has a residue root')
            root_trials+=1
    require(sorted(got)==sorted(expected),'missing, duplicated or extra state')
    require(len(got)==22,'wrong canonical count')
    # The excluded high-h middle branch: odd part squared divides h, hence odd part is 1.
    for h in [5,7,8]:
        require([m for m in range(1,9,2) if h%(m*m)==0]==[1],'high h odd-part claim')
        require(6*h<128,'high h size contradiction')
    require([v for v in range(6) if pow(2,v,9)==2]==[1],'2-adic exponent mod6')
    return dict(status='PASS',states=len(got),outer=sum(r['mode']=='outer' for r in cert['records']),middle=sum(r['mode']=='middle' for r in cert['records']),direct_residue_trials=root_trials,high_h=[5,7,8],no_n_or_j_height_scan=True)

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--certificate',required=True);p.add_argument('--out',required=True);a=p.parse_args()
    result=check(json.loads(open(a.certificate).read()));write_json(a.out,result);print(result)
