"""Exact small follow-up: a signed quartic is nonzero under NC7.

The symbolic monotonicity proof is in notes/h023/QUARTIC_FOLLOWUP.md.
This does not change the frozen main certificate.
"""
from pathlib import Path
import json,math
from datetime import datetime,timezone

ROOT=Path(__file__).resolve().parent
POLY=[(4,0,3),(3,1,3),(3,0,-24),(2,2,-10),(2,1,7),(2,0,39),
      (1,3,3),(1,2,7),(1,1,8),(1,0,-18),(0,4,3),(0,3,-24),(0,2,39),(0,1,-18)]
ROWS=(1,4,5,6)
PTS=[(b,r-b) for r in ROWS for b in range(r+1)]

def value(x,y):return sum(c*x**a*y**b for a,b,c in POLY)
def taylor(x,y,u,v):
    return sum(c*math.comb(a,u)*math.comb(b,v)*x**(a-u)*y**(b-v)
               for a,b,c in POLY if a>=u and b>=v)
def order(x,y):
    return next(t for t in range(5) if any(taylor(x,y,u,t-u) for u in range(t+1)))

def main():
    tested=[(n,j,value(j,n-j)) for n in range(16,29) for j in range(8,n//2+1)]
    zeros=[(n,j) for n,j,v in tested if not v]
    assert len(tested)==49 and zeros==[(27,13)]
    assert all(23%d for d in range(2,math.isqrt(23)+1))
    assert math.comb(27,7)%23==math.comb(27,13)%23==0
    orders=[order(x,y) for x,y in PTS]
    assert orders==[2,2,0,1,0,1,0,0,1,1,1,1,0,1,0,1,0,1,0,1]
    # Exact coefficient identities after n=16+x and n=29+x.
    # -9*n^2+79*n-70 = -9*x^2-209*x-1110.
    # n^3-34*n^2+172*n-144 = x^3+53*x^2+723*x+639.
    assert (-9*16**2+79*16-70, -18*16+79)==(-1110,-209)
    assert (29**3-34*29**2+172*29-144,3*29**2-68*29+172,3*29-34)==(639,723,53)
    result=dict(created_utc=datetime.now(timezone.utc).isoformat(),poly=POLY,
                degree=4,origin_order=1,coefficient_norm=sum(abs(c) for a,b,c in POLY),
                points=PTS,orders=orders,low_n_range=[16,28],low_configurations=len(tested),
                zero_configurations=zeros,zero_witness_prime=23,
                large_n_positive_from=29,
                claim='Q(j,n-j) != 0 under full NC7; symbolic proof required with this finite check',
                main_certificate_unchanged=True)
    (ROOT/'quartic_followup.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps({k:v for k,v in result.items() if k not in ('poly','points','orders')}))

if __name__=='__main__':main()
