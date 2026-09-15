"""Cost probe for complete q_r=1 rows: d in {1,7}, shifts 0..6.

Low/high two-position reduction is a separate historical paper premise. New
single-base caps include the fixed additive QIG constant at d=1, signed offsets,
delta=2, and explicit LTE handling of multiplicatively dependent rational ratios.
"""
import json
from pathlib import Path
import time

BASES=(2,3,5)
CUT=192


def vp(n,p):
    out=0
    while n%p==0:
        out+=1
        n//=p
    return out


def s7(n):
    return 2**vp(n,2)*3**vp(n,3)*5**vp(n,5)*(7 if vp(n,7)==1 else 1)


def qig(n):
    if n<16:
        return True
    t=1
    for r in range(4):
        t*=s7(n-r)
    return t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3


def strips(d):
    result=[]
    for idx,p in enumerate(BASES):
        for a in ((None,) if idx==0 else range(3)):
            for b in ((None,) if idx==1 else (0,1)):
                for c in ((None,) if idx==2 else (0,1)):
                    fixed=(a,b,c)
                    e=d
                    for q,t in zip(BASES,fixed):
                        if t is not None:
                            e*=q**t
                    result.append({'d':d,'p':p,'e':e,'fixed':list(fixed),'minimum':3 if p==2 else 2})
    return result


def row(st,a,h):
    abc=[a if x is None else x for x in st['fixed']]
    n=st['e']*st['p']**a+h
    return {'d':st['d'],'A':abc[0],'B':abc[1],'C':abc[2],'h':h,'n':str(n),'QIG':qig(n)}


def dependency(p,coeff,rhs):
    if abs(rhs)%coeff:
        return None
    value=abs(rhs)//coeff
    shift=0
    while value%p==0:
        value//=p
        shift+=1
    return {'sign':1 if rhs>0 else -1,'shift':shift} if value==1 else None


def odd(st,h,q,rho):
    p,e=st['p'],st['e']
    delta=vp(e,q)
    if vp(abs(rho),q)!=delta:
        return None
    coeff,rhs=e//q**delta,rho//q**delta
    dep=dependency(p,coeff,rhs)
    cap=1000000 if dep else 300000000*(6*e).bit_length()
    v,mod,period=1,q,q-1
    root=next(a for a in range(period) if coeff*pow(p,a,q)%q==rhs%q)
    levels=[];rows=[]
    while True:
        rec={'v':v,'modulus':mod,'period':period,'least_a':root}
        levels.append(rec)
        if root>=cap:
            rec['stop']='cap'
            break
        if root<CUT and period>=cap and coeff*p**root==rhs:
            assert dep is not None
            rec['stop']='small_identity'
            break
        assert v<200
        lo=max(0,(CUT-root+period-1)//period)
        hi=(min(cap,36*(v+delta+1))-1-root)//period
        for z in range(lo,hi+1):
            a=root+z*period
            if vp(e*p**a-rho,q)==v+delta:
                rows.append(row(st,a,h))
        choices=[root+z*period for z in range(q)
                 if coeff*pow(p,root+z*period,mod*q)%(mod*q)==rhs%(mod*q)]
        assert len(choices)==1
        root=choices[0]
        v,mod,period=v+1,mod*q,period*q
    return {'q':q,'rho':rho,'delta':delta,'coefficient':coeff,'rhs':rhs,
            'dependent':dep,'cap_a':cap,'levels':levels,'rows':rows}


def even(st,h,rho,eps):
    p,e=st['p'],st['e']
    delta=vp(e,2)
    if vp(abs(rho),2)!=delta:
        return None
    reduced=e//2**delta
    rhs=rho//2**delta
    dep=dependency(p,reduced,rhs)
    coeff=reduced*p**eps
    cap=1000000 if dep else 100000000*(6*e).bit_length()
    info={'q':2,'rho':rho,'epsilon':eps,'delta':delta,'coefficient':coeff,
          'rhs':rhs,'dependent':dep,'cap_u':cap}
    if coeff%8!=rhs%8:
        info.update(excluded_by_mod8=True,levels=[],rows=[])
        return info
    u,v,mod,period=0,3,8,1
    levels=[];rows=[]
    while True:
        rec={'v':v,'modulus':mod,'period':period,'least_u':u}
        levels.append(rec)
        if u>=cap:
            rec['stop']='cap'
            break
        if 2*u+eps<CUT and period>=cap and coeff*(p*p)**u==rhs:
            assert dep is not None
            rec['stop']='small_identity'
            break
        assert v<200
        lo=max(0,((CUT-eps+1)//2-u+period-1)//period)
        top=min(cap-1,(36*(v+delta+1)-1-eps)//2)
        for z in range(lo,(top-u)//period+1):
            uu=u+z*period
            a=2*uu+eps
            if vp(e*p**a-rho,2)==v+delta:
                rows.append(row(st,a,h))
        choices=[u+z*period for z in range(2)
                 if coeff*pow(p*p,u+z*period,mod*2)%(mod*2)==rhs%(mod*2)]
        assert len(choices)==1
        u=choices[0]
        v,mod,period=v+1,mod*2,period*2
    info.update(excluded_by_mod8=False,levels=levels,rows=rows)
    return info


def main():
    started=time.perf_counter()
    cases=[];all_rows=[];bottom=[]
    for d in (1,7):
        for h in range(7):
            for st in strips(d):
                rows=[row(st,a,h) for a in range(st['minimum'],CUT)]
                branches=[]
                for q in BASES:
                    if q==st['p']:
                        continue
                    for rho in range(-h,4-h):
                        if rho==0:
                            continue
                        choices=([even(st,h,rho,eps) for eps in (0,1)] if q==2 else [odd(st,h,q,rho)])
                        for br in choices:
                            if br is not None:
                                branches.append(br)
                                rows.extend(br['rows'])
                keyed={(z['A'],z['B'],z['C']):z for z in rows}
                cases.append(dict(st,h=h,branches=branches,rows=list(keyed.values())))
                all_rows.extend(keyed.values())
            for a in range(3):
                for b in (0,1):
                    for c in (0,1):
                        n=d*2**a*3**b*5**c+h
                        bottom.append({'d':d,'A':a,'B':b,'C':c,'h':h,'n':str(n),'QIG':qig(n)})
    all_rows.extend(bottom)
    failed=[z for z in all_rows if not z['QIG']]
    unique=sorted({int(z['n']) for z in failed})
    # The full target n is reproducible from each strip and exponent. Store only
    # exponents in the routine candidate tables, retaining full non-QIG records.
    for st in cases:
        variable=st['fixed'].index(None)
        label=('A','B','C')[variable]
        st['candidate_exponents']=sorted(z[label] for z in st.pop('rows'))
        for br in st['branches']:
            values=[z[label] for z in br.pop('rows')]
            assert len(values)==len(set(values))
            br['candidate_exponents']=sorted(values)
    out={'status':'cost probe; paper reductions and old two-position premise separate',
         'schema':'i7-window-unit-reduction-v2',
         'ds':[1,7],'shifts':list(range(7)),'low_cut':CUT,'strips':cases,'bottom':bottom,
         'non_QIG_representations':failed}
    path=Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({'strip_cases':len(cases),'finite_representations':len(all_rows),
                      'non_QIG_representations':len(failed),'unique_non_QIG_n':len(unique),
                      'largest_n':unique[-12:],'max_bits':max(unique).bit_length(),
                      'identity_stops':sum(br['levels'][-1].get('stop')=='small_identity' for st in cases for br in st['branches'] if br['levels']),
                      'seconds':time.perf_counter()-started,'output_bytes':path.stat().st_size}))


if __name__=='__main__':
    main()
