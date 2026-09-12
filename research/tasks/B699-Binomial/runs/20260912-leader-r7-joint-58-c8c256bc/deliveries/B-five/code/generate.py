"""Generate complete finite certificates for the canonical 5-block theorem."""
import argparse,json
from pathlib import Path
from math import gcd,isqrt

def ellmod9(n):return 3 if n%9 in (4,5,7,8) else 1

def models():
    for ell in (1,3):
        for h in range(1,5*ell):
            if h%5==0:continue
            odds={r for r in range(1,h+1,2) if h%r==0}
            if ell==1:odds|={3*r for r in list(odds) if r%3}
            for odd in sorted(odds):yield ell,h,odd

def outer_certificate():
    mods=[3,7,11,13,31,41,331];rows=[]
    for ell,h,m in models():
        for r in range(60):
            n9=m*pow(2,r,9)%9;n25=m*pow(2,r,25)%25
            if ellmod9(n9)!=ell or n25%5!=2:continue
            if (h*(n25-1)*(n25-2)-10*ell)%25:continue
            w=5*ell
            for p in mods:
                n=m*pow(2,r,p)%p
                rhs=(4*h*(n-1)*(n-2)+w)%p
                if all((w*x*x-rhs)%p for x in range(p)):
                    rows.append({'ell':ell,'h':h,'odd_part':m,'v_mod_60':r,'modulus':p});break
            else:raise AssertionError(('unexcluded outer case',ell,h,m,r))
    assert len(rows)==48
    return {'period':60,'moduli':mods,'rows':rows}

def middle_certificate():
    rows=[]
    for ell in (1,3):
        w=5*ell
        for h in range(1,(w-1)//2+1):
            if h%5==0:continue
            roots=[y for y in range(64) if (w*y*y+h)%64==0]
            rows.append({'ell':ell,'h':h,'roots_mod64':roots})
    surviving=[(x['ell'],x['h']) for x in rows if x['roots_mod64']]
    assert surviving==[(3,1),(3,4)]
    h4=[]
    for r in range(36):
        if r%4!=1 or r%6 not in (3,5):continue
        p=7 if r%6==5 else 19
        n=pow(2,r,p);rhs=(7*n*n+24*n-16)%p
        assert all((15*x*x-rhs)%p for x in range(p))
        h4.append({'v_mod36':r,'modulus':p})
    return {'threshold':256,'mod64':rows,'h4_period':36,'h4_exclusions':h4}

def pell_certificate():
    seeds=[]
    for y in range(8):
        x=isqrt(195*y*y+61)
        if x*x==195*y*y+61:seeds.append([x,y])
    assert seeds==[[16,1],[29,2]]
    terms=[];dyadic=[]
    for seed in seeds:
        x,y=seed
        for t in range(22):
            assert x*x-195*y*y==61 and (x-3)%13==0
            n=(x-3)//13
            ispow=n>0 and n&(n-1)==0
            row={'seed':seed,'t':t,'x':str(x),'y':str(y),'n':str(n),'dyadic':ispow}
            terms.append(row)
            if ispow:dyadic.append({'seed':seed,'t':t,'v':n.bit_length()-1,'n':n,'abs_d':y})
            x,y=14*x+195*y,x+14*y
    assert [r['n'] for r in dyadic]==[1,32,2]
    return {'norm':61,'discriminant':195,'seeds':seeds,'index_bound_exclusive':22,'terms':terms,'dyadic':dyadic}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('outdir');args=ap.parse_args();o=Path(args.outdir);o.mkdir(parents=True,exist_ok=True)
    for name,data in [('outer',outer_certificate()),('middle',middle_certificate()),('pell',pell_certificate())]:
        (o/(name+'.json')).write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
    print('Generated complete certificates: 48 outer states; 6 middle h=4 states; 44 Pell terms')
if __name__=='__main__':main()
