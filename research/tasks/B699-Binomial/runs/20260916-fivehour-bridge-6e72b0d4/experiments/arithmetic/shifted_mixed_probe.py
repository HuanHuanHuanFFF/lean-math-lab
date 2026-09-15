"""Shifted two-power discovery. Target n=core+h, core=d*2^A*3^B.

Only exponent reductions and QIG are generated here; original row certificates
are separate. Frozen mixed_powers_probe supplies the already checked scalar QIG.
"""
import json
from pathlib import Path
import time
import mixed_powers_probe as old

DS=old.DS


def row(d,a,b,h):
    core=d*2**a*3**b
    n=core+h
    return {'d':d,'A':a,'B':b,'h':h,'n':str(n),'QIG':old.qig(n)}


def horizontal(d,b,h):
    out={'d':d,'fixed_B':b,'h':h,'cap_A':old.cap2(d)}
    if b==1 and h in (1,2):
        out.update(uniform=True,levels=[],rows=[])
        return out
    rs=([r for r in range(-h,4-h) if r%3] if b==0 else [1 if h==0 else -1])
    roots={r:next(a for a in range(2) if d*pow(2,a,3)%3==r%3) for r in rs}
    v,mod,period=1,3,2
    levels=[]
    rows=[row(d,2,b,h)]
    while True:
        levels.append({'v':v,'modulus':mod,'period':period,'roots':dict(roots)})
        if min(roots.values())>=out['cap_A']:
            break
        assert v<200
        for rho,a0 in roots.items():
            lo=max(0,(3-a0+period-1)//period)
            hi=(min(out['cap_A'],10*v)-1-a0)//period
            for z in range(lo,hi+1):
                a=a0+z*period
                if old.vp(d*(1<<a)-rho,3)!=v:
                    continue
                zrow=row(d,a,b,h)
                zrow.update(v=v,rho=rho)
                rows.append(zrow)
        for rho,a0 in roots.items():
            choices=[a0+t*period for t in range(3)
                     if d*pow(2,a0+t*period,mod*3)%(mod*3)==rho%(mod*3)]
            assert len(choices)==1
            roots[rho]=choices[0]
        v,mod,period=v+1,mod*3,period*3
    # If two relevant 3-multiples are both exactly divisible by 3, the same
    # exponent is intentionally generated twice. Keep both valuation provenance.
    out.update(uniform=False,rs=rs,levels=levels,rows=rows)
    return out


def vertical(d,a,h,eps,r):
    e=d*(1<<a)
    c=d*3**eps
    r0=r//(1<<a)
    out={'d':d,'fixed_A':a,'h':h,'epsilon':eps,'r':r,'delta':a,
         'c':c,'r0':r0,'cap_u':old.cap9(e)}
    if c%8!=r0%8:
        out.update(excluded_by_mod8=True,levels=[],rows=[])
        return out
    t,mod,period,u0=3,8,1,0
    levels=[]
    rows=[]
    while True:
        levels.append({'t':t,'modulus':mod,'period':period,'least_u':u0})
        if u0>=out['cap_u']:
            break
        assert t<200
        lo=max(0,(6-u0+period-1)//period)
        top=min(out['cap_u']-1,(4*(t+a)-1-eps)//2)
        for z in range(lo,(top-u0)//period+1):
            u=u0+z*period
            b=2*u+eps
            core=e*3**b
            if old.vp(core-r,2)!=t+a:
                continue
            zrow=row(d,a,b,h)
            zrow.update(t=t,r=r,u=u)
            rows.append(zrow)
        choices=[u0+z*period for z in range(2)
                 if c*pow(9,u0+z*period,mod*2)%(mod*2)==r0%(mod*2)]
        assert len(choices)==1
        u0=choices[0]
        t,mod,period=t+1,mod*2,period*2
    out.update(excluded_by_mod8=False,levels=levels,rows=rows)
    return out


def main():
    start=time.perf_counter()
    hh=[];vv=[];bottom=[]
    odd_rs={0:(1,3),1:(-1,1),2:(-1,1),3:(-1,-3)}
    for d in DS:
        for h in range(4):
            hh.extend(horizontal(d,b,h) for b in (0,1))
            for a in (0,1):
                bottom.extend(row(d,a,b,h) for b in range(12))
                rs=odd_rs[h] if a==0 else ((2,) if h<2 else (-2,))
                for eps in (0,1):
                    vv.extend(vertical(d,a,h,eps,r) for r in rs)
    all_rows=[z for c in hh+vv for z in c['rows']]+bottom
    keyed={}
    for z in all_rows:
        key=(z['d'],z['A'],z['B'],z['h'])
        if key in keyed:
            assert z['n']==keyed[key]['n'] and z['QIG']==keyed[key]['QIG']
        keyed[key]=z
    failed=[z for z in keyed.values() if not z['QIG']]
    data={'coefficients':DS,'shifts':list(range(4)),'horizontal':hh,'vertical':vv,
          'vertical_bottom':bottom,'non_QIG_representations':failed,
          'scope':'shifted mixed-power candidate reduction; original boundary pending'}
    path=Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(data,indent=2),encoding='utf-8')
    unique=sorted({int(z['n']) for z in failed})
    print(json.dumps({'horizontal_cases':len(hh),'vertical_cases':len(vv),
                      'active_high_vertical':sum(not c['excluded_by_mod8'] for c in vv),
                      'candidate_representations':len(keyed),'non_QIG_representations':len(failed),
                      'unique_non_QIG_rows':len(unique),'largest_rows':unique[-12:],
                      'max_bits':max(unique).bit_length(),'seconds':time.perf_counter()-start}))


if __name__=='__main__':
    main()
