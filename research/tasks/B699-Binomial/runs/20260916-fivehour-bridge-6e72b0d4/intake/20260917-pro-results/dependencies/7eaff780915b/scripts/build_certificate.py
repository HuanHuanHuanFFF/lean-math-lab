"""Generate finite coefficient cases and all-exponent modular certificates.
All arithmetic uses Python integers/Fraction; no CAS or external service.
"""
from fractions import Fraction
from math import gcd, isqrt
from pathlib import Path
import json, argparse
ROOT=Path(__file__).resolve().parents[1]

def primes_upto(n):
    return [p for p in range(3,n+1,2) if all(p%d for d in range(3,isqrt(p)+1,2))]

def two(r):
    return Fraction(2**r) if r>=0 else Fraction(1,2**(-r))

def source_type(c,r,e):
    a=(c*pow(2,4*e+r,9))%9
    return (3 if a in (4,7) else 1, 3 if a in (5,8) else 1)

def generate_cases():
    cases=[]; table=[]
    for c in (1,3):
      for r in range(-3,9):
        if c*two(r)<=Fraction(1,3):continue
        n0=c*2**(r+8)
        types={source_type(c,r,e+3) for e in range(3)}
        for la,mu in sorted(types):
          allowed=[e for e in range(3) if source_type(c,r,e+3)==(la,mu)]
          b=Fraction(la**3*mu**2,16)*c*two(r)*Fraction(n0,n0-1)**3
          cap=b.numerator//b.denominator
          row={'c':c,'r':r,'lambda':la,'mu':mu,'e_mod3':allowed,'n0':n0,'cap':cap,'pairs':[]}
          for u in range(1,isqrt(cap)+1,2):
            z0=(-la**3*mu**2*u*u)%16
            assert z0%2==1
            for z in range(z0,cap//(u*u)+1,16):
              if la%gcd(u,z):continue
              if c==3 and z%3:continue
              if la==3 and ((u%3==0)!=(z%3==0)):continue
              aa=u*c*two(r-1)
              assert aa.denominator==1
              case={'c':c,'r':r,'lambda':la,'mu':mu,'u':u,'z':z,
                    'e_mod3':allowed,'A':int(aa),'D':u,'B':mu*z,'E':mu*la}
              row['pairs'].append([u,z]);cases.append(case)
          table.append(row)
    return cases,table

def certificate(case):
    for period in (60,180,360):
      needed={e for e in range(period) if e%3 in case['e_mod3']}
      pool=[]
      for p in primes_upto(1000):
        if pow(4,period,p)!=1:continue
        images={(case['B']*h*h*h+case['E']*h)%p for h in range(p)}
        cover={e for e in needed if (case['A']*pow(4,3*e,p)-case['D']*pow(4,e,p))%p not in images}
        if cover:pool.append((p,cover))
      selected=[]; left=set(needed)
      while left:
        p,cover=max(pool,key=lambda pc:(len(pc[1]&left),-pc[0]))
        newly=left&cover
        if not newly:break
        selected.append({'modulus':p,'removed_exponents':sorted(newly)})
        left-=newly
      if not left:
        return {'case':case,'period':period,'cover':selected}
    raise RuntimeError(f'Not covered: {case}, residual {sorted(left)}')

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, default=ROOT/'verification'/'VALUATION_CERTIFICATE.json')
    args=parser.parse_args()
    cases,table=generate_cases()
    certs=[certificate(c) for c in cases]
    data={'statement':'NC3 implies v2(n) >= 4*v2(j)+9',
          'range':'all e>=2, all r<=8, after the proved odd-part reduction m=1',
          'coefficient_table':table,'certificates':certs}
    path=args.output
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'case_count':len(cases),'periods':sorted({x['period'] for x in certs}),
        'max_modulus':max(y['modulus'] for x in certs for y in x['cover']),
        'coverage_entries':sum(sum(len(y['removed_exponents']) for y in x['cover']) for x in certs),
        'coefficient_rows':len(table)},indent=2))
if __name__=='__main__':main()
