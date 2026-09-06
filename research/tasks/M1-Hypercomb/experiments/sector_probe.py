"""Numerical falsification probe only; not a root-sector certificate."""
from exact_tools import *
import math
import sympy as sy


def run():
    try:
        import numpy as np
        roots = lambda cs: np.roots(list(reversed(cs)))
        method = "numpy.roots, double precision"
    except ImportError:
        import mpmath as mp
        roots = lambda cs: mp.polyroots(list(reversed(cs)),maxsteps=200,error=False)
        method = "mpmath.polyroots"
    maxratio = -1
    witness = None
    count = 0
    failures = []
    for a in [1,1.01,1.1,1.5,2,3,5,10,100,1000]:
        b=a+1
        for e in [i/20 for i in range(21)]:
            c, d=a+b+e,a*b
            for s in [i/10 for i in range(41)]:
                coeffs=[1,2*c+s,c*c+2*d+s*b,2*c*d,d*d]
                for z0 in roots(coeffs):
                    z=complex(z0)
                    ratio=abs(z.imag)/(-z.real) if z.real<0 else float("inf")
                    if ratio>maxratio:
                        maxratio=ratio
                        witness={"a":a,"b":b,"e":e,"s":s,"root":[z.real,z.imag]}
                    if ratio>math.sqrt(3)+1e-6:
                        failures.append({"a":a,"e":e,"s":s,"root":[z.real,z.imag]})
                count+=1
    # Exact failure for the overbroad a,b>=0 log-concavity guess.
    a=b=sy.Rational(1,100)
    x=sy.Symbol("x")
    q,rr=1+b*x,1+a*x
    aa,bb=q*rr,x*q
    c0,c1=q+x,sy.expand(q*(aa+2*x))
    for n in range(2,5): c0,c1=c1,sy.expand(aa*c1+bb*c0)
    coeff=[c1.coeff(x,k) for k in range(10)]
    bad=[{"k":k,"difference":str(coeff[k]**2-coeff[k-1]*coeff[k+1])} for k in range(1,9) if coeff[k]**2<coeff[k-1]*coeff[k+1]]
    write_report("sector-probe.json",{"status":"floating root evidence only","method":method,"quartics_checked":count,"maximum_imag_to_minus_real":maxratio,"witness":witness,"first_failures":failures[:3],"broad_parameter_LC_failure":{"a":"1/100","b":"1/100","n":4,"failures":bad}})


if __name__=="__main__": run()
