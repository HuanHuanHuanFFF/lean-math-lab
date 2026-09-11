"""Exact, non-vacuous regression checks for the new paper consumers."""
import argparse,json
from math import comb,gcd,isqrt
from pathlib import Path

def vp(n,p):
    if n<=0:raise ValueError('valuation input must be positive')
    s=0
    while n%p==0:n//=p;s+=1
    return s

def vbin(n,j,p):
    s=0;q=p
    while q<=n:
        s+=n//q-j//q-(n-j)//q;q*=p
    return s

def disc(f):
    d,c,b,a=f
    return b*b*c*c-4*a*c**3-4*b**3*d-27*a*a*d*d+18*a*b*c*d

def main(out):
    count=even=gate=0
    for n in range(8,257):
        C=comb(n,3)
        for j in range(4,n//2+1):
            k=n-j;f=[comb(k,3),j*comb(k,2),comb(j,2)*k,comb(j,3)]
            H=gcd(*f);L=C//H;g=gcd(n,j)
            assert sum(f)==C and L>=4 and comb(n,j)%L==0
            assert 12*disc(f)==j*j*k*k*(j-1)*(k-1)*(n-2)**2*(n-1)
            assert disc(f)>0 and disc(f)%H**4==0
            assert n**6 <108*j**3*L**4
            assert n*n*k*k*(k-1)<(n-1)**3*(n-2)**2
            if n%4==0:
                assert vp(H,2)==vp(g,2)
                assert vp(L,2)==vp(n//g,2);even+=1
            if n*n*g**4>=108*j**3:
                w=gcd(C,comb(n,j))
                while w%2==0:w//=2
                assert w>1;gate+=1
            count+=1
    B=2**20;N=2*B+4;D=37837
    central_margin=2*(N-2)*(N-1)**2-9*(D*D-1)**2
    assert central_margin>0
    assert 33*252**2<=2*B+1<33*253**2
    endpoint={'n':56,'j':11,'p':3,'first_valuation':vbin(56,3,3),'second_valuation':vbin(56,11,3),
              'numerator_modulus':27,'n_residue':56%27,'j_residue':11%27}
    assert endpoint['first_valuation']==2 and endpoint['second_valuation']==1
    # The weaker two polynomial conditions have a genuine legal solution.
    assert 3*11*10%55==0 and 6*11*10*9%54==0 and gcd(56,11)==1
    # Contents do not in general equal the complete gcd.
    f=[comb(18,3),18*comb(18,2),comb(18,2)*18,comb(18,3)]
    L=comb(36,3)//gcd(*f)
    assert L==70 and L%3 and comb(36,3)%3==0 and comb(36,18)%3==0
    result={'legal_pairs':count,'four_divisible_pairs':even,'gcd_gate_pairs':gate,
            'unconditional_integer_inequality':'n^6 < 108*j^3*L^4',
            'B':B,'strict_relative_height_for_B':isqrt(108*B**3-1)+1,
            'finite_n_corollary_inclusive':2*B+1,'first_possible_four_multiple':N,
            'central_width':D,'central_margin':central_margin,
            'integer_slope_width':252,'integer_slope_height':33*252**2,
            'p_equal_i_full_power':endpoint,'cross_layer_example_L':L,'status':'PASS'}
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(result,sort_keys=True,indent=2)+'\n');print(json.dumps(result,sort_keys=True))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args();main(a.out)
