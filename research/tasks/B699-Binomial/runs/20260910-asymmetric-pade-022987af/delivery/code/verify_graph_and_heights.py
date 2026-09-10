"""Independent exhaustive orientation check of the asymmetric cuts, followed by
integer-only B699 height consumers. All 2^e edge orientations are enumerated.
This file does not import the heuristic branch-and-bound graph solver.
It accepts cut weights only after running the rational analytic verifier.
"""
from __future__ import annotations
import math,json,time
from fractions import Fraction as F
from pathlib import Path
from verify_pair_intervals import certify,CUT_HEIGHT_BITS
ROOT=Path(__file__).resolve().parents[1]
R=list(range(3,17))+list(range(18,23))+[24,25]
HEIGHT_BITS=100000
PS=[2,3,5,7,11,13,17,19]

def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def orient_min(primes,rows):
    idx={p:j for j,p in enumerate(primes)}
    edges=[(idx[r['p']],idx[r['q']],r['wp'],r['wq']) for r in rows if r['p'] in idx and r['q'] in idx]
    best=None;win=None;winmask=None;hist={}
    for mask in range(1<<len(edges)):
        z=[0]*len(primes)
        for k,(p,q,a,b) in enumerate(edges):
            v,w=(q,b) if (mask>>k)&1 else (p,a)
            z[v]=max(z[v],w)
        val=sum(z);hist[val]=hist.get(val,0)+1
        if best is None or val<best:best=val;win=z;winmask=mask
    assert best is not None
    assert all(win[p]>=a or win[q]>=b for p,q,a,b in edges)
    return {'primes':primes,'edges':len(edges),'orientations':1<<len(edges),
      'minimum_numerator':best,'denominator':1000,
      'minimum_witness':dict(zip(primes,win)),'witness_orientation':winmask,
      'objective_histogram':hist}

def main():
    start=time.monotonic();rows=json.loads((ROOT/'results/cut_inputs.json').read_text())
    for row in rows:certify(row,CUT_HEIGHT_BITS)
    graphs={m:orient_min(PS[:m],rows) for m in range(1,len(PS)+1)}
    classification=[];success=[]
    for i in R:
        small=[p for p in range(2,i) if prime(p)];t=len(small)
        selected=[p for p in PS if p<i];g=graphs[len(selected)];S=g['minimum_numerator']
        ratio,r,s=min((F(s*(s+1)+(i-r-1)*(i-r)//2,2*s-r),r,s)
          for r in range(i) for s in range(1,i) if 2*s>r)
        lam=2*s-r;L=i-r-1;E=s*(s+1)+L*(L+1)//2
        delta=lam*(1000*(i-t)+S)-1000*E
        row={'i':i,'t':t,'selected_primes':selected,'S':S,'sigma':str(F(S,1000)),
          'r':r,'s':s,'lambda':lam,'E':E,'Delta':delta,
          'required_sigma_strictly_above':str(t-i+ratio)}
        if delta>0:
            fact=math.factorial(i);b=fact.bit_length()
            assert fact<(1<<b)
            rhs=1000*lam*b+lam*(1000+S)
            lhs=HEIGHT_BITS*delta
            assert lhs>rhs
            assert HEIGHT_BITS>=(i*(i-1)).bit_length()
            row.update(status='ABSOLUTE_HEIGHT_CERTIFIED',height='n < 2^100000',
              factorial_bit_upper=b,comparison_LHS=lhs,comparison_RHS=rhs,
              comparison_margin=lhs-rhs)
            success.append(i)
        else:row['status']='NO_HEIGHT_FROM_THESE_CUTS'
        classification.append(row)
    assert success==[11,16,19,21,22,24,25]
    out={'status':'PASS_EXACT_ANALYTIC_AND_COMBINATORIAL',
      'height_bits':HEIGHT_BITS,'cut_Y_height_bits':CUT_HEIGHT_BITS,'effective_indices':success,
      'unchanged_unsolved_R':R,'graphs':graphs,'classification':classification,
      'seconds':time.monotonic()-start,
      'not_claimed':['exhaustion below the height','Lean formalization','new human review','global novelty']}
    (ROOT/'results/height_certificate.json').write_text(json.dumps(out,indent=2)+'\n')
    for m in [4,6,7,8]:
        g=graphs[m];print('GRAPH',g['primes'],'minimum',f"{g['minimum_numerator']}/1000",'orientations',g['orientations'])
    for r in classification:
        if r['i'] in success:print('HEIGHT',r)
    print('PASS',success,'seconds',out['seconds'])
if __name__=='__main__':main()
