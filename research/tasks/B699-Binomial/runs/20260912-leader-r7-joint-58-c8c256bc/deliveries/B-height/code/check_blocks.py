"""Independent exact coverage verification. No generator/discovery imports.
Rebuild odd parts through g|2h or g^2|h, not odd-divisor model lists.
No prime testing is needed: a modulus with no root is enough.
"""
import argparse,json
from pathlib import Path
from math import gcd,isqrt
EXPECTED=[(17,'outer',408),(25,'outer',1500),(11,'middle',330),(13,'middle',156),
          (17,'middle',408),(19,'middle',342),(25,'middle',1500),(27,'middle',486)]

def strip2(x):
    assert x>0
    while x%2==0:x//=2
    return x

def vp(x,p):
    assert x>0
    e=0
    while x%p==0:x//=p;e+=1
    return e

def ell_exact(n):
    assert n%4==0
    return (3 if vp(n-1,3)==1 else 1)*(3 if vp((n-2)//2,3)==1 else 1)

def rebuild(C,side,high):
    out=set()
    for ell in (1,3):
        if gcd(ell,C)>1:continue
        w=ell*C
        for h in range(1,w):
            if gcd(C,h)!=1:continue
            if high and side=='middle' and 2*h>=w:continue
            if high:
                target=w+8*h if side=='outer' else -h
                roots=[x for x in range(64) if (w*x*x-target)%64==0 and (side=='middle' or x%2==1)]
                if not roots:continue
            for g in range(1,2*h+1):
                if (side=='outer' and 2*h%g) or (side=='middle' and h%(g*g)):continue
                for c in (1,3):
                    if c==3 and (ell!=1 or g%3==0):continue
                    out.add((ell,h,strip2(c*g)))
    return out

def relevant(C,ell,h,m,v):
    n=m*(1<<v)
    return n>=8 and ell_exact(n)==ell and (n-2)%C==0 and (h*(n-1)*(n-2)-2*ell*C)%(C*C)==0

def verify(data):
    assert data['version']==1
    assert data['specifications']==[list(x) for x in EXPECTED]
    assert [(r['C'],r['side'],r['period']) for r in data['blocks']]==EXPECTED
    summary=[];root_checks=0
    for row in data['blocks']:
        C,side,T=row['C'],row['side'],row['period']
        assert C<=27 and row['high_v_min']==9 and 512>=18*C
        assert pow(2,T,9)==1 and pow(2,T,C*C)==1
        models=rebuild(C,side,True)
        assert sorted(models)==[tuple(x) for x in row['model_high']]
        expected=set()
        # Periodicity checked separately, then representative v>=9 evaluated as integers.
        for ell,h,m in models:
            for r in range(T):
                v=r if r>=9 else r+T
                if relevant(C,ell,h,m,v):expected.add((ell,h,m,r))
        seen=set()
        for ell,h,m,r,modulus in row['high']:
            key=(ell,h,m,r)
            assert key in expected and key not in seen
            seen.add(key)
            assert modulus>=3 and modulus%2==1 and pow(2,T,modulus)==1
            nr=m*pow(2,r,modulus)%modulus;w=ell*C
            for y in range(modulus):
                value=w*y*y-4*h*(nr-1)*(nr-2)-w if side=='outer' else w*y*y-(w-2*h)*nr*nr-6*h*nr+4*h
                assert value%modulus!=0,(C,side,key,modulus,y)
                root_checks+=1
        assert seen==expected
        low=[];eq=[]
        for ell,h,m in sorted(rebuild(C,side,False)):
            w=ell*C
            for v in range(2,9):
                if not relevant(C,ell,h,m,v):continue
                low.append([ell,h,m,v]);n=m*(1<<v)
                value=(4*h*(n-1)*(n-2)+w) if side=='outer' else ((w-2*h)*n*n+6*h*n-4*h)
                if value<0 or value%w:continue
                y=isqrt(value//w)
                if w*y*y!=value:continue
                eq.append([ell,h,m,v,n,y])
                if side=='middle':
                    for delta in (y,-y):
                        if (n-delta)%2==0:
                            j=(n-delta)//2
                            assert not (4<=j and 2*j<n)
                else:
                    if y%2:
                        for x in ((1-y)//2,(1+y)//2):
                            for j in (x,n-x):assert not (4<=j and 2*j<n)
        assert low==row['low']['states'] and eq==row['low']['equations']
        summary.append(dict(C=C,side=side,period=T,high_states=len(expected),low_states=len(low),low_square_records=len(eq),remaining=0))
    return {'status':'PASS','blocks':summary,'high_states':sum(x['high_states'] for x in summary),
            'low_states':sum(x['low_states'] for x in summary),'direct_modular_root_checks':root_checks,
            'requires_primality_of_moduli':False,'general_noCommon_proof':'paper, not verified by this checker'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate');ap.add_argument('output');a=ap.parse_args()
    result=verify(json.loads(Path(a.certificate).read_text()));Path(a.output).write_text(json.dumps(result,indent=2)+'\n')
    print('PASS full finite coverage:',result['high_states'],'high states;',result['low_states'],'low;',result['direct_modular_root_checks'],'root checks')
if __name__=='__main__':main()
