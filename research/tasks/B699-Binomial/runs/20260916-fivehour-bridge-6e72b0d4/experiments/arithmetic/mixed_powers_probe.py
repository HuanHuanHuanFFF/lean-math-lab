"""Discovery and compact certificates for d*2^A*3^B, ten specified d.

Unbounded case reductions and logarithmic caps are proved in 04-mixed-powers-proof.md.
All residue progressions are exhausted below their proved linear cuts. The optional
finite witness stage uses deterministic trial primes and exact carry intervals.
"""
import json
from math import gcd,isqrt
from pathlib import Path
import sys
import time

DS=[5,7,11,13,17,19,23,25,29,31]


def vp(n,p):
    result=0
    while n%p==0:
        n//=p
        result+=1
    return result


def s5(n):
    return 2**vp(n,2)*3**vp(n,3)*(5 if vp(n,5)==1 else 1)


def qig(n):
    if n<10:
        return True  # both original legal ranges are empty
    t=1
    for r in range(4):
        t*=s5(n-r)
    return t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3


def cap2(d):
    k=d.bit_length()
    return 5360*k*(k.bit_length()+11)**2


def cap9(e):
    k=(3*e).bit_length()
    return 3240*k*(k.bit_length()+11)**2


def candidate(d,a,b):
    n=d*2**a*3**b
    return {'d':d,'A':a,'B':b,'n':str(n),'QIG':qig(n)}


def horizontal(d,b_fixed):
    cap=cap2(d)
    rs=(1,2) if b_fixed==0 else (1,)
    roots={r:next(a for a in range(2) if d*pow(2,a,3)%3==r) for r in rs}
    v,mod,period=1,3,2
    levels=[]
    rows=[candidate(d,2,b_fixed)]
    while True:
        levels.append({'v':v,'modulus':mod,'period':period,'roots':dict(roots)})
        if min(roots.values())>=cap:
            break
        assert v<200, 'discovery checkpoint exceeded'
        for r,a0 in roots.items():
            lo=max(0,(3-a0+period-1)//period)
            hi=(min(cap,10*v)-1-a0)//period
            for z in range(lo,hi+1):
                a=a0+z*period
                if vp(d*(1<<a)-r,3)!=v:
                    continue
                row=candidate(d,a,b_fixed)
                row.update(v=v,r=r)
                rows.append(row)
        for r,a0 in roots.items():
            choices=[a0+period*t for t in range(3)
                     if d*pow(2,a0+period*t,mod*3)%(mod*3)==r]
            assert len(choices)==1
            roots[r]=choices[0]
        v,mod,period=v+1,mod*3,period*3
    return {'case':'horizontal','d':d,'fixed_B':b_fixed,'cap_A':cap,
            'levels':levels,'rows':rows}


def vertical_branch(d,a_fixed,epsilon,r):
    e=d*(1<<a_fixed)
    delta=a_fixed
    c=d*3**epsilon
    r0=r//(1<<delta)
    assert r%(1<<delta)==0
    info={'case':'vertical-high','d':d,'fixed_A':a_fixed,'epsilon':epsilon,
          'r':r,'c':c,'r0':r0,'delta':delta,'cap_u':cap9(e)}
    if c%8!=r0%8:
        info.update(excluded_by_mod8=True,levels=[],rows=[])
        return info
    t,mod,period,u0=3,8,1,0
    levels=[]
    rows=[]
    while True:
        assert c*pow(9,u0,mod)%mod==r0%mod
        levels.append({'t':t,'modulus':mod,'period':period,'least_u':u0})
        if u0>=info['cap_u']:
            break
        assert t<200, 'discovery checkpoint exceeded'
        lo=max(0,(6-u0+period-1)//period)
        max_u=min(info['cap_u']-1,(4*(t+delta)-1-epsilon)//2)
        hi=(max_u-u0)//period
        for z in range(lo,hi+1):
            u=u0+z*period
            b=2*u+epsilon
            assert 12<=b<4*(t+delta)
            n=e*3**b
            if vp(n-r,2)!=t+delta:
                continue
            row=candidate(d,a_fixed,b)
            row.update(t=t,r=r,u=u)
            rows.append(row)
        choices=[u0+z*period for z in range(2)
                 if c*pow(9,u0+z*period,mod*2)%(mod*2)==r0%(mod*2)]
        assert len(choices)==1
        u0=choices[0]
        t,mod,period=t+1,mod*2,period*2
    info.update(excluded_by_mod8=False,levels=levels,rows=rows)
    return info


def reductions():
    horizontal_cases=[]
    vertical_cases=[]
    bottom=[]
    for d in DS:
        horizontal_cases.extend(horizontal(d,b) for b in (0,1))
        for a in (0,1):
            bottom.extend(candidate(d,a,b) for b in range(12))
            rs=(1,3) if a==0 else (2,)
            for eps in (0,1):
                for r in rs:
                    vertical_cases.append(vertical_branch(d,a,eps,r))
    all_rows=[z for c in horizontal_cases+vertical_cases for z in c['rows']]+bottom
    keys=[(z['d'],z['A'],z['B']) for z in all_rows]
    assert len(keys)==len(set(keys)), 'candidate rows must have unique quadrant ownership'
    failed=[z for z in all_rows if not z['QIG']]
    return {'coefficients':DS,'horizontal':horizontal_cases,'vertical':vertical_cases,
            'vertical_bottom':bottom,'non_QIG':failed,
            'scope':'mixed power i=4 and i=5; all-j finite certificates optional'}


def prime(p):
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))


def factor(n):
    out={}
    p=2
    while p*p<=n:
        while n%p==0:
            out[p]=out.get(p,0)+1
            n//=p
        p=3 if p==2 else p+2
    if n>1:
        out[n]=out.get(n,0)+1
    assert all(prime(p) for p in out)
    return out


def fac_v(n,p):
    result=0
    while n:
        n//=p
        result+=n
    return result


def ch_v(n,j,p):
    return fac_v(n,p)-fac_v(j,p)-fac_v(n-j,p)


def carry_cover(row,i):
    n=int(row['n'])
    low,high=i+1,n//2
    if low>high:
        return {'d':row['d'],'A':row['A'],'B':row['B'],'n':n,'i':i,'pairs':0,'intervals':[]}
    fs=[factor(n-r) for r in range(i)]
    ps=sorted({p for f in fs for p in f if p>=i and ch_v(n,i,p)>0},reverse=True)
    intervals=[]
    cursor=low
    while cursor<=high:
        best=None
        for p in ps:
            q=p
            power=1
            while q<=n:
                if cursor%q>n%q:
                    right=min(high,(cursor//q+1)*q-1)
                    if best is None or right>best['last']:
                        best={'first':cursor,'last':right,'p':p,'power':power,'q':q}
                q*=p
                power+=1
        assert best is not None, (row,i,cursor,'no original witness')
        intervals.append(best)
        cursor=best['last']+1
    return {'d':row['d'],'A':row['A'],'B':row['B'],'n':n,'i':i,'pairs':max(0,high-low+1),
            'window_factorizations':fs,'source_valuations':{p:ch_v(n,i,p) for p in ps},
            'intervals':intervals}


if __name__=='__main__':
    started=time.perf_counter()
    data=reductions()
    path=Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(data,indent=2),encoding='utf-8')
    summary={'horizontal_cases':len(data['horizontal']),'vertical_cases':len(data['vertical']),
             'vertical_high_active':sum(not z['excluded_by_mod8'] for z in data['vertical']),
             'non_QIG_rows':len(data['non_QIG']),
             'non_QIG_parameters':[(r['d'],r['A'],r['B'],r['n']) for r in data['non_QIG']],
             'max_non_QIG_n':max(int(z['n']) for z in data['non_QIG'])}
    if '--certify' in sys.argv:
        finite=[carry_cover(z,i) for z in data['non_QIG'] for i in (4,5)]
        out=Path(__file__).with_name('mixed_powers_certificate.json')
        result={'scope':'finite original rows only; exponent completeness is in the companion reduction',
                'finite':finite,'pairs':sum(z['pairs'] for z in finite)}
        out.write_text(json.dumps(result,indent=2),encoding='utf-8')
        summary.update(original_pairs=result['pairs'],prime_intervals=sum(len(z['intervals']) for z in finite))
    summary['seconds']=time.perf_counter()-started
    print(json.dumps(summary))
