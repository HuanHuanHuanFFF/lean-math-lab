"""Two implementations of the exact norm identity / rational bound, plus actual odd witnesses."""
from __future__ import annotations
import argparse,math
from fractions import Fraction as Q
from pathlib import Path
from common import *

def cceil_sqrt(n):
    r=math.isqrt(n);return r if r*r==n else r+1

def run(out):
    records=[];cache={};larger_heads=0;zeros=[];seen_templates=0
    for T in range(1,5):
      for A in range(1,9):
       for B in range(1,5):
        xmin=max(cceil_sqrt(2*A*B**3),(4*A*A*B+T-1)//T)
        for X in (xmin,xmin+1):
         assert gap_conditions(T,A,B,X)
         n=T*(A*X+B)
         if n<8:continue
         seen_templates+=1
         if n not in cache:cache[n]=factors_choose3(n)
         for u in range(A+1):
          for w in range(B+1):
           j=T*(u*X+w)
           if not 4<=j<=n//2:continue
           g=math.gcd(n,j);D=n*u-A*j
           # The test quantity below is NOT asserted integral for an actual Common input.
           val1=6*A**3*eval_poly(coeff_phi(n,j),Q(u,A))/ (g*(n-1)*(n-2))
           P=(n-1)*(n-2)*D**3-3*A*A*j*(n-j)*(n-2)*D-2*A**3*j*(n-j)*(n-2*j)
           val2=Q(P,g*n*n*(n-1)*(n-2))
           assert val1==val2 and abs(val1)<Q(15,16)
           bound=Q(abs(D)**3,g*n*n)+Q(3*A*A*abs(D),4*g*(n-1))+Q(A**3*n,2*g*(n-1)*(n-2))
           assert abs(val1)<=bound<Q(15,16)
           qs=[p for p in cache[n] if p>=3 and choose_vp(n,j,p)>0]
           assert qs,(T,A,B,X,u,w,n,j)
           p=qs[0];e1=cache[n][p];e2=choose_vp(n,j,p)
           assert choose_carry(n,3,p)==e1 and choose_carry(n,j,p)==e2
           if A>=T:larger_heads+=1
           if val1==0 and len(zeros)<5:zeros.append([n,j,T,A,B,X,u,w])
           records.append([T,A,B,X,u,w,p,e1,e2])
    # Independent rational recovery of the same records, reversed loop order, no saved witnesses.
    rebuilt=[]
    for row in reversed(records):
        T,A,B,X,u,w,p,e1,e2=row;n=T*(A*X+B);j=T*(u*X+w)
        assert math.comb(n,3)%p==0
        assert choose_carry(n,j,p)==e2>0
        # denominator clearing uses the original transformed four terms.
        co=coeff_transform(n,j);numer=sum(co[k]*u**k*A**(3-k) for k in range(4))
        assert Q(6*numer,math.gcd(n,j)*(n-1)*(n-2))==6*A**3*eval_poly(coeff_phi(n,j),Q(u,A))/(math.gcd(n,j)*(n-1)*(n-2))
        rebuilt.append(row)
    assert sorted(records)==sorted(rebuilt)
    dump(out/'gap_regression.json',{'templates':seen_templates,'legal_assignments':len(records),'A_ge_T_assignments':larger_heads,
        'records_sha256':sha_records(sorted(records)),'zero_values_without_NC3':zeros,
        'max_n':max(T*(A*X+B) for T,A,B,X,*_ in records),
        'interpretation':'Regressions only; every reported pair has an actual common odd prime. The NC3 contradiction and full family coverage are symbolic.'})
    # Not a proof by scanning: raw regression witnesses are supplied for replay transparency.
    dump(out/'gap_witnesses.json',{'fields':['T','A','B','X','u','w','p','v_p_choose3','v_p_choosej'],'records':records})
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);run(p.parse_args().out)
