"""Test the scope of a proposed first-row descent; no NC counterexample claim.

Only H02 position conditions, the source-0 shape, exact source-1 CRT windows,
and the accepted relative g bounds are imposed. Later windows are diagnostics.
"""
from pathlib import Path
from math import gcd, prod
from itertools import product
import hashlib
import json
import time
from sympy import factorint


def vp(n,p):
    v=0
    while n%p==0:n//=p;v+=1
    return v


def coarse(x):
    s=2**vp(x,2)*3**vp(x,3)
    if vp(x,5)==1:s*=5
    return x//s


def alpha_shape(x):
    for p,cofactors in [(2,(1,5)),(3,(1,2,5,10))]:
        for c in cofactors:
            if x%c:continue
            y=x//c
            while y>1 and y%p==0:y//=p
            if y==1:return True
    return False


def main():
    started=time.perf_counter();records=[];states={};rows=0
    for a in range(3,19):
        alpha=2**a
        for g in range(2,61):
            n=g*alpha
            if (n-2)%9 or vp(n-1,5)==1:continue
            if not (8*g**5<625*n and g**7<2**22*n):continue
            factors={int(p):int(e) for p,e in factorint(n-1).items()}
            powers=[p**e for p,e in factors.items()]
            rows+=1
            for bits in product((0,1),repeat=len(powers)):
                u=prod(Q for Q,b in zip(powers,bits) if b);v=(n-1)//u
                if u==1 or v==1:continue
                j=u*pow(u,-1,v)%(n-1);k=n-j
                if not (6<=j<=n//2 and gcd(n,j)==g):continue
                beta=j//g;b=beta//u;c=(alpha-beta)//v
                assert beta==u*b and alpha-beta==v*c and b>0 and c>0
                U=u-g*c;V=v-g*b;lower=g*g*b*c
                assert U>0 and V>0 and U<u and V<v
                assert U*V==lower-1 and lower*(n-1)==j*k and 3*lower<n
                failures=[]
                for r in (2,3,4):
                    for p,e in factorint(coarse(n-r)).items():
                        Q=int(p)**int(e)
                        if j%Q>r:failures.append({'r':r,'p':int(p),'Q':Q,'j_mod_Q':j%Q})
                survives=tuple(r for r in (2,3,4) if all(z['r']!=r for z in failures))
                states[str(survives)]=states.get(str(survives),0)+1
                rec={'n':n,'j':j,'g':g,'alpha':alpha,'beta':beta,'u':u,'v':v,'b':b,'c':c,
                     'U':U,'V':V,'lower_n':lower,'proposed_alpha_at_same_g':lower//g,
                     'alpha_shape_preserved':alpha_shape(lower//g),'later_window_failures':failures,
                     'coefficient':1,'relative_g_bounds':True}
                records.append(rec)
    out={'status':'DIAGNOSTIC_ONLY','scope':{'a': [3,18],'g':[2,60],
          'imposed':'H02 positions, alpha=2^a, s1=1, source0/source1, relative g bounds',
          'not_imposed':'full source2/3/4 or all higher carry levels; records are not original counterexamples'},
         'factored_rows':rows,'first_row_models':len(records),'later_window_patterns':states,
         'alpha_shape_failures':sum(not r['alpha_shape_preserved'] for r in records),
         'records':records,'seconds':round(time.perf_counter()-started,6),
         'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    Path(__file__).with_suffix('.json').write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in out.items() if k not in ('records','script_sha256')}))
    example=next((r for r in records if not r['alpha_shape_preserved']),None)
    print(json.dumps({'one_weak_model':example}))


if __name__=='__main__':main()
