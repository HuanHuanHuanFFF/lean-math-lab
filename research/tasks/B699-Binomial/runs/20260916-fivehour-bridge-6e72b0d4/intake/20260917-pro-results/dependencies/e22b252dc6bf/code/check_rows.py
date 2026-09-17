"""Finite examples of full digit assignment coverage and exact same-source old/new comparison."""
from __future__ import annotations
import argparse,math
from pathlib import Path
from common import *

def run(out):
    inputs=[(5,1,2,24,24),(7,1,2,48,48),(3,2,3,26,26),(5,1,3,124,124),(5,1,3,73,91)]
    reports=[]; allrec=[]
    for P,f,r,A,B in inputs:
        assert factor_trial(P)=={P:1}
        assert P>=5 or f>=2
        T=P**f;X=P**(3*r);n=T*(A*X+B)
        assert 1<=A<P**r and 1<=B<P**r and B%P and gap_conditions(T,A,B,X)
        primes=factors_choose3(n)
        rec=[]
        for u in all_dominated(A,P):
            for w in all_dominated(B,P):
                j=T*(u*X+w)
                if not 4<=j<=n//2:continue
                assert choose_vp(n,j,P)==0
                witness=next(q for q in primes if q>=3 and choose_vp(n,j,q))
                rec.append([j,witness,primes[witness],choose_vp(n,j,witness)])
        # Independent enumeration of all integers u,w with digit inequalities.
        js=[]
        for w in range(B+1):
            if not dominated(w,B,P):continue
            for u in range(A+1):
                if dominated(u,A,P):
                    j=T*(u*X+w)
                    if 4<=j<=n//2:js.append(j)
        assert sorted(js)==sorted(x[0] for x in rec)
        for j,q,e1,e2 in rec:
            assert choose_carry(n,3,q)==e1 and choose_carry(n,j,q)==e2
        # Original n can have other radices; ONLY this source P and exact f are compared.
        old=[]
        cut=1
        while P**cut<=n//T:
            XX=P**cut; AA,BB=divmod(n//T,XX)
            if AA>0 and BB>0 and old_conditions(T,AA,BB,XX):old.append(cut)
            cut+=1
        reports.append({'P':P,'f':f,'r':r,'A':A,'B':B,'n':n,'new_threshold':True,
            'old_same_source_cuts':old,'complete_no_P_carry_j':len(rec),
            'witnesses_sha256':sha_records(sorted(rec)),
            'ROW3_pass':n>3*(n//(n&-n))**4})
        allrec.append({'input':[P,f,r,A,B],'witnesses':sorted(rec)})
    # Verify algebraic estimates for arbitrary r/P are in proof; these are exact constant regressions.
    for P in (5,7,11,17):
      for r in range(1,9):
       for f in (1,2,3):
        A=B=P**r-1;T=P**f;X=P**(3*r)
        assert gap_conditions(T,A,B,X)
        if r>=2 and f==1:
         AA=P-1;XX=P**(4*r-1);BB=(A*X+B)-AA*XX
         assert BB>=(P-1)*P**(4*r-2)
         assert XX*XX<AA*BB**3
    dump(out/'rows.json',{'rows':reports,
       'full_assignment_count':sum(q['complete_no_P_carry_j'] for q in reports),
       'scope':'Finite example row coverage only. Full row theorem is the no-carry implication plus the universal content-gap proof. ROW3 comparison is honest: these examples may already be covered by it.'})
    dump(out/'row_witnesses.json',allrec)
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);run(p.parse_args().out)
