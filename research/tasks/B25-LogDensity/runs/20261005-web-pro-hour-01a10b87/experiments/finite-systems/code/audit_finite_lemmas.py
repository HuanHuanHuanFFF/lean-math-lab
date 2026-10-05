#!/usr/bin/env python3
"""Independent CRT/periodic-bitmap audit and exact counterexample to a stronger rearrangement claim."""
import json,math,random,argparse,time
from fractions import Fraction
from pathlib import Path

def crt(r,m,a,n):
    g=math.gcd(m,n)
    if (a-r)%g:return None
    q=n//g
    t=0 if q==1 else ((a-r)//g*pow(m//g,-1,q))%q
    L=m*q
    return ((r+m*t)%L,L)

def density_crt(rows):
    total=Fraction(0)
    def rec(start,r,m,sign):
        nonlocal total
        for j in range(start,len(rows)):
            n,a=rows[j];v=crt(r,m,a,n)
            if v is not None:
                rr,mm=v;total+=Fraction(sign,mm);rec(j+1,rr,mm,-sign)
    rec(0,0,1,1)
    return total

def density_bitmap(rows):
    if not rows:return Fraction(0)
    L=math.lcm(*(n for n,a in rows));bits=bytearray(L)
    for n,a in rows:
        for x in range(a%n,L,n):bits[x]=1
    return Fraction(sum(bits),L)

def harmonic(N):return sum((Fraction(1,x) for x in range(1,N+1)),Fraction(0))
def local(rows,N):
    xs=[x for x in range(1,N+1) if any(x>=n and (x-a)%n==0 for n,a in rows)]
    return xs,sum((Fraction(1,x) for x in xs),Fraction(0))

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default='data/finite_lemma_audit.json');args=ap.parse_args()
    begin=time.monotonic();rng=random.Random(20261005);cases=[];predicate_checks=0
    for case in range(300):
        moduli=sorted(rng.sample(range(1,11),rng.randrange(1,11)))
        rows=[(n,rng.randint(-3*n,3*n)) for n in moduli]
        d=density_crt(rows);db=density_bitmap(rows);dz=density_crt([(n,0) for n in moduli])
        assert d==db and d>=dz
        modulus_mass=sum((Fraction(1,n) for n in moduli),Fraction(0))
        assert modulus_mass<=d*harmonic(max(moduli))
        for n,a in rows:
            norm=a%n
            for x in range(0,3*max(moduli)+1):
                # Raw statement is checked against the normalized progression,
                # including x=0, a negative residue and n=1.
                raw=x>=n and (x-a)%n==0
                normalized=x>=n+norm and (x-norm)%n==0
                assert raw==normalized;predicate_checks+=1
        cases.append({'rows':rows,'periodic_density_exact':str(d),'centered_density_exact':str(dz),
          'modulus_harmonic_mass_exact':str(modulus_mass),'H_max_modulus_exact':str(harmonic(max(moduli)))})
    rows=[(2,0),(3,0),(5,2)];centered=[(2,0),(3,0),(5,0)];N=24
    X,H=local(rows,N);Y,K=local(centered,N)
    assert density_crt(rows)==density_crt(centered)==Fraction(11,15)
    assert H-K==Fraction(1,595)
    counter={'N':N,'rows':rows,'centered_rows':centered,'periodic_density_exact':'11/15',
      'shifted_deleted_points':X,'centered_deleted_points':Y,
      'shifted_harmonic_exact':str(H),'centered_harmonic_exact':str(K),
      'shifted_minus_centered_exact':str(H-K),
      'UF_discrepancy_exact':str(H-Fraction(11,15)*harmonic(N))}
    assert H<=Fraction(11,15)*harmonic(N)
    epochs=[]
    for a in [1,2,4,8,16,64,256,1024,4096]:
        rational_lower=Fraction(25*(a+1),192+168*a)
        assert rational_lower>Fraction(1,8)
        epochs.append({'a':a,'rational_epoch_density_lower':str(rational_lower),
            'minus_one_eighth_exact':str(rational_lower-Fraction(1,8))})
    out={'seed':20261005,'random_system_count':len(cases),'raw_activation_checks':predicate_checks,
       'cases':cases,'rearrangement_counterexample':counter,'epoch_checks':epochs,
       'seconds':time.monotonic()-begin,'all_checks_passed':True}
    Path(args.out).write_text(json.dumps(out,indent=2))
    print(json.dumps({'random_system_count':len(cases),'raw_activation_checks':predicate_checks,
       'counterexample_gain_exact':str(H-K),'all_checks_passed':True,'seconds':out['seconds']},indent=2))
