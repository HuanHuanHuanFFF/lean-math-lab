"""Small exact table eliminating C0=1 on rows with 5|M or 17|M.
C1=1 is excluded modulo 8 using g^2|h1; C2=1 by size.
No logarithmic result or old finite row table is called.
"""
import argparse,json
from math import gcd
from pathlib import Path

def main():
    ap=argparse.ArgumentParser();ap.add_argument('output');a=ap.parse_args()
    rows=[];mods=[7,9,13,27,37]
    for h in [1,2]:
        for r in range(1,36,2):
            nr=pow(2,r,9)
            if nr not in [4,5,7,8]:continue
            for mod in mods:
                n=pow(2,r,mod);target=(4*h*(n-1)*(n-2)+3)%mod
                if all((3*y*y-target)%mod for y in range(mod)):
                    rows.append([h,r,mod]);break
            else:raise AssertionError((h,r))
    expected=set()
    # Rebuild from actual representatives, not the generating mod-9 lookup.
    def once3(x):return x%3==0 and x%9!=0
    for v in range(4,40):
        if v%2==0:continue
        n=1<<v;ell=(3 if once3(n-1) else 1)*(3 if once3((n-2)//2) else 1)
        if ell==3:
            for h in [1,2]:expected.add((h,v%36))
    seen=set();root_checks=0
    for h,r,mod in rows:
        assert (h,r) in expected and (h,r) not in seen;seen.add((h,r))
        x=1
        for _ in range(r):x=x*2%mod
        assert pow(2,36,mod)==1
        for y in range(mod):
            assert (3*y*y-4*h*(x-1)*(x-2)-3)%mod
            root_checks+=1
    assert seen==expected
    orders=[]
    for q,T in [(5,4),(17,8)]:
        powers=[pow(2,r,q) for r in range(T)]
        assert powers[0]==1 and 1 not in powers[1:] and pow(2,T,q)==1 and T%2==0
        orders.append({'modulus':q,'order':T,'full_power_table':powers})
    c1=[]
    for h in [1,2]:
        rs=[y for y in range(8) if (3*y*y+h)%8==0]
        assert not rs;c1.append({'h':h,'roots':rs})
    data={'status':'PASS','C0_odd_exponent_period':36,'C0_states':rows,'state_count':len(rows),
          'direct_root_checks':root_checks,'even_orders':orders,'C1_mod8':c1,
          'scope':'noCommon and (5|M or 17|M) imply all C_s>1; general C0=1 theorem not called'}
    Path(a.output).write_text(json.dumps(data,indent=2)+'\n');print('PASS light nonempty:',len(rows),'states,',root_checks,'modular roots')
if __name__=='__main__':main()
