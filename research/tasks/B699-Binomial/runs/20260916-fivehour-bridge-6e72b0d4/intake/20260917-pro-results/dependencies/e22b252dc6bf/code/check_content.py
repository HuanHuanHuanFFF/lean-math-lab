"""Regress actual Vandermonde content, transformation and root restrictions."""
from __future__ import annotations
import argparse,math
from fractions import Fraction as Q
from pathlib import Path
from common import dump,vp,coeff_phi,coeff_transform,eval_poly,sha_records

def run(out:Path):
    count=0; oddb=0; pure2=[]; example=None
    for n in range(8,257,4):
        for j in range(4,n//2+1):
            raw=[math.comb(j,r)*math.comb(n-j,3-r) for r in range(4)]
            H=math.gcd(*raw);L=math.comb(n,3)//H
            co=coeff_phi(n,j); alt=coeff_transform(n,j)
            assert co==alt and all(t%H==0 for t in co)
            assert L>=4 and math.comb(n,j)%L==0
            assert vp(H,2)==min(vp(n,2),vp(j,2))
            if vp(j,2)<vp(n,2):
                assert (co[2]//H)%2;oddb+=1
            for z in (Q(3*j,n),Q(3*j,n)-1):
                val=eval_poly(co,z)
                if z==Q(3*j,n):
                    assert val==Q(j*(j-1)*(4*j*n-9*j+n),3*n)>0
                else:
                    d=n-2*j
                    assert val==Q(-d*((4*n-9)*d*d-3*n*n+8*n),24*n)
                    if d: assert val!=0
            if L&(L-1)==0:
                pure2.append([n,j,L])
            count+=1
    # A real zero exists without the NC3 / power-of-two-content-quotient assumption.
    n,j=68,34;co=coeff_phi(n,j);H=math.gcd(*co)
    assert eval_poly(co,Q(1,2))==0
    G=math.gcd(math.comb(n,3),math.comb(n,j))
    assert G//(G&-G)>1
    example={'n':n,'j':j,'root':'1/2','H':H,'L':math.comb(n,3)//H,'gcd_binomials':G}
    dump(out/'content.json',{'actual_legal_inputs':count,'odd_quadratic_coefficient_cases':oddb,
        'actual_power_of_two_L_cases':pure2,
        'explicit_warning':'If this list is empty, no nonempty NC3 sample is claimed. Infinite irreducibility is proved symbolically in PROOFS, not inferred from this regression.',
        'non_NC3_rational_root_example':example, 'cross_layer_example':{'n':56,'j':11,'L':math.comb(56,3)//math.gcd(*coeff_phi(56,11)),'gcd':math.gcd(math.comb(56,3),math.comb(56,11))}})
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);run(p.parse_args().out)
