from pathlib import Path
import json
from fractions import Fraction as F
from common import frac,poly_mul,poly_pow,poly_deriv
R=Path(__file__).resolve().parents[1]
positions=[]
for r,s in ((1,2),(2,1),(1,3),(3,1)):
    k=r+s;u=12-r;v=12-s;w=min(u,v); E=F(6+k)+F(463*w,5000)
    positions.append(dict(r=r,s=s,k=k,u=u,v=v,w=w,weight_nonmax=36+k,E=frac(E),
                          scale=E.denominator, beta_n_exp=E.numerator,
                          beta_beta_exp=12*E.denominator,beta_two_exp=615*E.denominator,
                          joint_n_exp=E.numerator+30*E.denominator,
                          joint_g_exp=12*E.denominator,joint_J_exp=21*E.denominator,
                          joint_two_exp=641*E.denominator,
                          edge_n_exp=E.numerator+9*E.denominator))
f=poly_mul([0]*9+[1],poly_pow([1,-1],21))
kappa=F(3,10)**9*F(7,10)**21
T0=6_300_000
family=[
 ['new_beta_strong',3*(F(54167*101,100)-F(60000*6,7)),F(54167*10-60000-3075000)],
 ['new_elementary_edge',F(9,100),F(-160)],
 ['above_frozen_height',F(303,100),F(10-14000001)],
 ['uniform_cofactor_not_triggered',F(1,100),F(-4)],
 ['above_a_strip',F(1),F(4-1960001)],
 ['above_b_strip',F(1),F(2-422064)],
 ['outside_old_rational_band',F(93,700),F(0)],
 ['passes_old_unweighted_edge',F(3,100),F(-72)],
 ['passes_old_alpha_height',F(3*529133,100),F(3000000-54167)],
 ['passes_old_beta_height',F(493,700),F(0)],
 ['passes_2_cut',F(50)-F(707,30),F(200-84)],
 ['passes_5_cut',F(100)-F(707,50),F(200-35)],
]
cert=dict(schema=1,
          elementary={'positions':[[r,s] for r in range(1,9) for s in range(1,9) if r!=s],
          'sc_nodes':[[a,b,max(a-2,0)+max(6-b,0)+max(6-(a-b),0)] for a in range(9) for b in range(a+1)],
          'n_divisor':400,'kernel':[13,4,213,7],'edge':[6,4,213,7],'beta':[3,205,4],
          'alpha':[3,200,4],'pure_block_N0':400,'pure_block_A_power':4,'pure_block_R_power':2},run='A-COUPLED-EDGE-BLOCKS-20260915',positions=positions,
          kappa=frac(kappa), f_coeff=f, f_derivative=poly_deriv(f),
          kappa_derivative_factors=poly_mul(poly_mul([0]*8+[1],poly_pow([1,-1],20)),[9,-30]),
          nodes=[[t,b,max(6-b,0)+max(6-(t-b),0),12-t] for t in range(1,9) for b in range(t+1)],
          local_bounds={'C':840,'rho':[463,5000],'beta_constant':615,'joint_constant':641,
                        'finite_floor':4096,'band_d_constant':37,'band_d_exp':8,'band_delta_constant':7,
                        'band_delta_exp':9,'band_n_exp':6,'p_min':11},
          block_cases=[{'name':'strong_full_width','h':54167,'D':5000,'Gden':60000,'Gnum':5833,'Gtwo':3000000,'A_power':8},
                       {'name':'weak_half_width','h':4963,'D':500,'Gden':6000,'Gnum':1037,'Gtwo':300000,'A_power':4}],
          family={'T0':T0,'T_step':2100,'W_residue':439,'beta_power':[6,7],'beta_offset':3,
                  'affine_margins':[{'name':n,'slope':frac(s),'intercept':frac(i)} for n,s,i in family]})
(R/'evidence/certificate.json').write_text(json.dumps(cert,indent=2))
print('WROTE_NEW_FINITE_CERTIFICATE')
