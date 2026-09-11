#!/usr/bin/env python3
"""Independent parameter recovery. Does NOT import generate.py."""
from pathlib import Path
from math import gcd,isqrt
from fractions import Fraction as F
import json,sys
ROOT=Path(__file__).resolve().parents[1]
def validate(c):
    # Fixed upstream scope; no permission to silently change the accepted baseline.
    if c['old_beta_bound']!=2**20 or c['orientation_d_min']!=33:raise ValueError('upstream scope')
    if c['upper_beta_g_bound']!=108*8**4 or c['upper_beta_g_bound']>=2**20:raise ValueError('upper bridge')
    if c['lower_d2_g_bound']!=9000 or 49*9000<=8748*50:raise ValueError('lower bridge')
    b=c['cube']
    if b['g_max']!=30 or b['T_abs_max']!=999 or b['u_max']!=1359:raise ValueError('cube coverage')
    if not F(738)+F(1440,33)<b['T_abs_max']+1:raise ValueError('T bound')
    if b['u_max']<12*b['g_max']+b['T_abs_max']:raise ValueError('u bound')
    required=[{'r':5,'t':2,'weight':1,'limit':9000},{'r':7,'t':2,'weight':1,'limit':31},{'r':7,'t':3,'weight':3,'limit':9000}]
    if c['tails']!=required or c['claimed_exponents']!=list(range(1,8)):raise ValueError('tail completeness')
    # The exponent class partition is exhaustive, and small-prime fallbacks land in the old beta bound.
    for r in range(1,8):
        for t in range(r+1):
            if t==0 or 2*t>=r or r==3*t:continue
            if any(x['r']==r and x['t']==t for x in required):continue
            if r<=3*t:raise ValueError('uncovered exponent class')
            gap=r-3*t;qmax=max([1]+[q for q in range(3,31,2) if q**gap<31])
            if qmax**r>2**20:raise ValueError('unproved small-prime fallback')
    return True

def divisors(n):
    ans=[]
    for x in range(1,isqrt(n)+1):
        if n%x==0:
            ans.append(x)
            if x*x!=n:ans.append(n//x)
    return ans

def recover_cube(c):
    rows=[];assignments=0
    for T in range(-999,1000,2):
        for g in range(1,31):
            diff=T-12*g
            assert diff%2 and diff
            for u in divisors(abs(diff)):
                assert u%2==1
                if u>1359:continue
                k=diff//u
                for ep in [-1,1]:
                    assignments+=1
                    num=3*u*u-2*ep*k
                    if num%T:continue
                    d=num//T
                    if d<33:continue
                    X=d*u+ep;n=X*X;beta=d**3;j=g*beta
                    if beta<=2**20 or n%4 or not 4<=j or 2*j>=n:continue
                    if gcd(n,j)!=g or gcd(beta,n-1)!=d:continue
                    if 4*(n-2)>=243*d**3 or n*n*g>=108*beta**3:continue
                    rows.append(dict(g=g,u=u,T=T,k=k,eps=ep,d=d,n=n,j=j,beta=beta,first_remainder=(3*j*(j-1))%(n-1)))
    rows.sort(key=lambda x:(x['n'],x['j']))
    if any(r['first_remainder']==0 for r in rows):raise ValueError('unexcluded cube row')
    return rows,assignments

def recover_tails(c):
    result=[]
    for case in c['tails']:
        r,t,w,K=(case[x] for x in ['r','t','weight','limit'])
        q=3;C=dict(q_values=0,power_classes=0,modular_g=0,survivors=0)
        while q**w<K:
            beta=q**r
            if beta<=2**20:q+=2;continue
            C['q_values']+=1;D=q**t;gmax=(K-1)//q**w
            a=1<<((2*beta).bit_length())  # first power strictly larger than 2 beta
            while a*a<108*beta**3:
                C['power_classes']+=1
                g0=pow(a,-1,D)
                for g in range(g0,gmax+1,D):
                    C['modular_g']+=1
                    if a*a*g*g*g>=108*beta**3:continue
                    n=a*g;X=isqrt(n)
                    if X*X!=n or X%2:continue
                    if gcd(n,g*beta)!=g:continue
                    if gcd(beta,n-1)!=D:continue
                    if (X-1)%D and (X+1)%D:continue
                    C['survivors']+=1
                a*=2
            q+=2
        if C['survivors']:raise ValueError('unexcluded tail')
        result.append({'case':case,'counts':C})
    return result

if __name__=='__main__':
    if len(sys.argv)!=2:raise SystemExit('usage: check_independent.py DATA_DIRECTORY')
    out=Path(sys.argv[1]);c=json.loads((ROOT/'BOUND_CERTIFICATE.json').read_text());validate(c)
    cube=json.loads((out/'cube.json').read_text());tails=json.loads((out/'tails.json').read_text())
    rows,assignments=recover_cube(c)
    if rows!=cube['records']:raise ValueError('complete cube list mismatch')
    if cube['counts']['legal_canonical']!=len(rows):raise ValueError('cube count mismatch')
    checked=recover_tails(c)
    for a,b in zip(checked,tails['cases']):
        if a['case']!=b['case'] or a['counts']['q_values']!=b['counts']['q_values'] or b['survivors'] or b['counts']['split_match']!=0:raise ValueError('tail mismatch')
    result={'status':'PASS','cube_records_compared':len(rows),'reverse_divisor_assignments':assignments,'tails':checked,'scope':'finite domains only; paper reductions are separate'}
    (out/'independent.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print(json.dumps(result))
