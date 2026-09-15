"""Reproducible generation; no LLL, exponent search, or historic replay."""
from pathlib import Path
import json
from fractions import Fraction as F
from math import prod
from common import *

ROOT = Path(__file__).resolve().parents[1]
lower = {2:F(2,3), 3:F(1), 5:F(3,2), 7:F(19,10)}
upper = {2:F(7,10), 3:F(11,10), 5:F(17,10), 7:F(2)}
cert = {
 'schema':'B699_UNIFORM_COFACTOR_V1',
 'source': {'paper':'Gyory 2019, Proposition 5', 'correction':'2020 published missing-minus corrigendum',
            'lower_bound_sign':-1, 'height_normalization':'H*logstar(Nv*h(xi)/H)',
            'finite_norm':'q^(-v_q)', 'rank1_lambda':12},
 'rough_kind':'full_prime_powers',
 'prime_set':list(P0), 'low_caps':{str(p):M[p] for p in P0},
 'scalar_R':R,
 'claims':{'general_k':73, 'single_high_k':60, 'high_2_5_k':72},
 'log_bounds':{str(p):{'lower':enc(lower[p]),'upper':enc(upper[p])} for p in P0},
 'profiles':[], 'slots':[],
 'family':{'m':3, 'fixed_rough_prime':439, 'congruence_modulus':147, 't_divisor':42,
           'alpha_large_power':48, 'outside_old_bands_fraction':enc(F(1,10))}
}
for H in profiles():
 h=len(H); z=4-h
 c, theta, D, A=profile_constants(H, lower, upper, z)
 k=60 if h==1 else (72 if H==(2,5) else 73)
 L=2+F(7,10)*k
 cert['profiles'].append({'high':list(H),'height_multiplier':z,'k':k,
                         'c_upper':enc(c),'theta_upper':enc(theta),'D_upper':enc(D),'A_upper':enc(A),
                         'log_7K_upper':enc(L),'inverse_margin':enc(2**k-A*L)})
 for q in P0:
  if q in H:continue
  cap=prod(M[p] for p in P0 if p not in H and p!=q)
  for r in range(1,9):
   t=valuation(r,q); rp=r//q**t
   cert['slots'].append({'high':list(H),'q':q,'r':r,'t':t,'r_prime':rp,
                         'numerator_factor_cap':cap})
(ROOT/'evidence').mkdir(exist_ok=True)
(ROOT/'evidence/certificate.json').write_text(json.dumps(cert,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'profiles':len(cert['profiles']),'slots':len(cert['slots']), 'certificate_bytes':(ROOT/'evidence/certificate.json').stat().st_size}))
