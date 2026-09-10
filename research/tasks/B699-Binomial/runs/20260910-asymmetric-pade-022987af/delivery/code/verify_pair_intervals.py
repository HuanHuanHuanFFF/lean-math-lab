"""Certify all retained asymmetric Padé cuts with rational arithmetic only.
EXTERNAL ESTIMATES (not proved by this script): BFT Lemma 4.1 and
Proposition 5.1, in the 26 February 2007 author version. Integral polynomial
identities and the nonzero determinant are derived in REPORT.md.
The new determinant/cut deduction is proved in REPORT.md, not delegated to
an uninstantiated 'effective' theorem. Every numerical test below is exact.
"""
from __future__ import annotations
import json,math,time,argparse
from fractions import Fraction as F
from pathlib import Path
from rational_intervals import I,asI,sqrtq,logq,logI,decimal_outer
if not __debug__:
    raise RuntimeError("Proof checks require Python without -O/-OO.")
ROOT=Path(__file__).resolve().parents[1]
# Numerators / 10000, and strict m>m0. Literal source table, independently
# checked against the PDF page image; never inferred from probe floats.
BFT_PROP_5_1={(9,8):(11742,25),(8,7):(11951,28),(7,6):(12219,53),
 (6,5):(12581,35),(5,4):(13098,50),(9,7):(13317,15),(7,5):(14135,74),
 (4,3):(14170,153),(3,2):(15395,138),(8,5):(15407,53),(5,3):(15454,86),
 (3,1):(15498,260),(25,17):(15540,582),(7,4):(16219,60),
 (8,3):(16560,149),(9,5):(16636,79),(5,2):(17017,231),(7,3):(17282,161),
 (9,4):(17666,87),(2,1):(19377,150)}
CUT_HEIGHT_BITS=99999

def beta_int(a:int,b:int)->F:
    assert a>=1 and b>=1
    return F(math.factorial(a-1)*math.factorial(b-1),math.factorial(a+b-1))

def certify(row:dict,hbits:int=CUT_HEIGHT_BITS)->dict:
    p,q,k,l,a,b,c,d=(int(row[t]) for t in ['p','q','k0','l0','a','b','c','d'])
    wp,wq=int(row['wp']),int(row['wq'])
    assert min(p,q,k,l,a,b,d)>0 and c>d and math.gcd(c,d)==1 and p!=q
    assert 0<wp<1000 and 0<wq<1000
    Ln,m0=BFT_PROP_5_1[(c,d)];L=F(Ln,10000)
    assert F(str(row['L1']))==L and int(row['m0'])==m0
    P,Q=p**k,q**l;D0=a*P-b*Q
    assert D0>0 and int(row['D0'])==D0
    s=F(c,d);z=F(D0,a*P)
    assert 1<s<1/z
    root=sqrtq(s*s*z*z+4-4*z)
    u1=(s*(2-z)-root)/(2*(1-z)*(s+1))
    u2=(s*z+2-root)/(2*z*(s+1))
    assert 0<u1.lo<=u1.hi<1 and 0<u2.lo<=u2.hi<1
    # alpha(s)^d is rational; no irrational power oracle is involved.
    alphad=F((c+d)**(c+d),(c-d)**(c-d)*d**(2*d))
    Qd=alphad*u1**(c-d)*(1-u1)**d*(1-(1-z)*u1)**d
    Ed=alphad*u2**d*(1-u2)**d*(1-z*u2)**(c-d)
    O3d=I.point(F(P**(c-d))*L**d)/(a**d*b**c*Qd)
    O4d=I.point(F(min(P,Q)**c)*L**d)/((a*P)**(c-d)*D0**(2*d)*Ed)
    assert O3d.lo>1 and O4d.lo>1
    # Exact positive-term beta expansions for the two integrals.
    sqrtfactor=sqrtq(s*s-1)
    C1=[];C2=[]
    for delta in [0,1]:
        h=d-delta;t=c-d-1+delta
        J1=sum((F(math.comb(h,j))*z**j*beta_int(t+j+1,2*h-j+1) for j in range(h+1)),F(0))
        J2=sum((F(math.comb(t,j))*(1-z)**j*beta_int(h+j+1,h+t-j+1) for j in range(t+1)),F(0))
        # pi>3, hence 1/(2*pi)<1/6; only an upper C bound is needed.
        fac=sqrtfactor if delta==0 else sqrtfactor.inv()
        c1=(alphad*fac*J1/(6*Qd)).hi
        c2=(alphad*fac*J2/(6*Ed)).hi
        assert 0<c1<1 and 0<c2<1
        C1.append(c1);C2.append(c2)
    lp,lq=logq(F(P)),logq(F(Q));l2=logq(F(2))
    ell3,ell4=logI(O3d),logI(O4d)
    T=(c*logq(F(max(P,Q)))+ell4).rounded()
    bp=F(1000-wp,1000)/(c*lp);bq=F(1000-wq,1000)/(c*lq)
    # beta is min(bp,bq). Retaining only a lower bound is sound for all tests.
    beta_lo=min(bp.lo,bq.lo)
    hlog=I.point(hbits)*l2
    mlo=beta_lo*hlog.lo-1
    gap=beta_lo*T.lo-1
    assert mlo>m0
    assert mlo*ell3.lo>logq(F(48)).hi
    assert gap>0
    assert gap*hlog.lo>T.hi+2*l2.hi
    margins={
      'm_minus_m0_lower':mlo-m0,
      'omega3_log_margin_lower':mlo*ell3.lo-logq(F(48)).hi,
      'power_gap_margin_lower':gap*hlog.lo-T.hi-2*l2.hi,
      'betaT_minus_one_lower':gap}
    result={'p':p,'q':q,'P':P,'Q':Q,'D0':D0,'c':c,'d':d,
      'L1':str(L),'m0':m0,'weights_numerator':[wp,wq],'weights_denominator':1000,
      'height_log2_Y':hbits,'log_Omega3_power_d':ell3.json(),
      'log_Omega4_power_d':ell4.json(),'T':T.json(),'beta_lower':str(beta_lo),
      'C1_upper':[str(x) for x in C1],'C2_upper':[str(x) for x in C2],
      'margins_lower':{k:str(v) for k,v in margins.items()},
      'readable':{'T':decimal_outer(T),'log_Omega3':decimal_outer(ell3/d),
        'log_Omega4':decimal_outer(ell4/d),
        'margins':{k:decimal_outer(I.point(v),6) for k,v in margins.items()}},
      'status':'PASS_EXACT_RATIONAL'}
    return result

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--height-bits',type=int,default=CUT_HEIGHT_BITS)
    args=parser.parse_args();start=time.monotonic()
    rows=json.loads((ROOT/'results/cut_inputs.json').read_text());out=[]
    for row in rows:
        result=certify(row,args.height_bits);out.append(result)
        print(result['p'],result['q'],result['status'],result['readable']['margins'],flush=True)
    payload={'height_log2_Y':args.height_bits,'rows':out,'count':len(out),
      'external_input':'BFT 2007-02-26 Lemma 4.1 and Proposition 5.1; elementary identities/determinant derived in REPORT.md',
      'arithmetic':'integer/Fraction; log atanh series with a geometric remainder; integer-sqrt enclosures',
      'seconds':time.monotonic()-start,'status':'PASS_EXACT_RATIONAL'}
    (ROOT/'results/pair_certificate.json').write_text(json.dumps(payload,indent=2)+'\n')
    print('CERTIFIED',len(out),'cuts. seconds',payload['seconds'])
if __name__=='__main__':main()
