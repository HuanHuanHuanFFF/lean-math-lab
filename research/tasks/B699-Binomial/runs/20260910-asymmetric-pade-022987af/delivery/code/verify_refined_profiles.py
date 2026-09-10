"""Deterministic acceptance of the seven refined height profiles.
Only integers/Fraction; no heuristic module imported. Re-certifies every
analytic cut, exhausts every orientation, and checks the height contradiction.
This verifies finite numerical obligations, not the external BFT theorems.
"""
from __future__ import annotations
import json, math, time
from pathlib import Path
from verify_pair_intervals import certify
from verify_graph_and_heights import orient_min, prime
ROOT=Path(__file__).resolve().parents[1]
EXPECTED={11:4096,16:65536,19:4096,21:32768,22:4096,24:4096,25:4096}

def main():
    start=time.monotonic()
    profiles=json.loads((ROOT/'results/refined_profiles.json').read_text())['profiles']
    assert {p['i']:p['height_bits'] for p in profiles}==EXPECTED
    out=[];orientations=0;cut_count=0
    for profile in profiles:
        i=profile['i']; B=profile['height_bits'];h=profile['cut_height_bits']
        assert h==B-1
        primes=[p for p in range(2,i) if prime(p)]
        assert primes==profile['primes']
        certs=[]
        for row in profile['cuts']:
            assert row['p'] in primes and row['q'] in primes
            certs.append(certify(row,h))
        g=orient_min(primes,profile['cuts'])
        S=g['minimum_numerator']
        assert S==profile['S']
        r,s=profile['r'],profile['s']
        assert 0<=r<i and 1<=s<i and 2*s>r
        lam=2*s-r;L=i-r-1;E=s*(s+1)+L*(L+1)//2
        t=len(primes);Delta=lam*(1000*(i-t)+S)-1000*E
        assert (lam,E,t,Delta)==tuple(profile[k] for k in ['lambda','E','t','Delta'])
        assert Delta>0
        fb=math.factorial(i).bit_length()
        assert math.factorial(i)<(1<<fb)
        RHS=1000*lam*fb+lam*(1000+S);LHS=B*Delta
        assert LHS>RHS
        assert LHS-RHS==profile['integer_height_margin']
        assert (1<<B)>=i*(i-1) and (1<<B)>2*i
        out.append({'i':i,'height_bits':B,'cut_height_bits':h,
          'cuts':profile['cuts'],'analytic_certificates':certs,'graph':g,
          'r':r,'s':s,'lambda':lam,'E':E,'t':t,'S':S,'Delta':Delta,
          'factorial_bit_upper':fb,'comparison_LHS':LHS,'comparison_RHS':RHS,
          'comparison_margin':LHS-RHS,'status':'PASS_EXACT'})
        orientations+=g['orientations'];cut_count+=len(certs)
        print(f"PASS i={i}; n<2^{B}; Y>=2^{h}; S={S}/1000; Delta={Delta}; "
              f"cuts={len(certs)}; orientations={g['orientations']}; "
              f"height_margin={LHS-RHS}",flush=True)
    payload={'status':'PASS_EXACT','profiles':out,'analytic_cut_occurrences':cut_count,
      'enumerated_orientations':orientations,'seconds':time.monotonic()-start,
      'arithmetic':'integer and Fraction only; analytic enclosure bounds are directed outward',
      'external_dependency':'BFT 2007-02-26 Lemma 4.1 and Proposition 5.1; integer identities/determinant derived in REPORT.md',
      'not_claimed':['enumeration of n below these heights','Lean acceptance','human review','global novelty'],
      'unchanged_R':list(range(3,17))+list(range(18,23))+[24,25]}
    (ROOT/'results/refined_certificate.json').write_text(json.dumps(payload,indent=2)+'\n')
    print('ALL PASS; analytic cut occurrences',cut_count,'orientations',orientations,
          'seconds',payload['seconds'])
if __name__=='__main__':main()
