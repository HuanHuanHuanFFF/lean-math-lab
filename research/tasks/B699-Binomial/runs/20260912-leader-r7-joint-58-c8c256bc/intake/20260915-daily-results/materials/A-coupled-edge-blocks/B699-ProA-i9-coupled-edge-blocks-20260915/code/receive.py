"""Check the new finite arithmetic obligations, not an infinite-proof kernel."""
from pathlib import Path
from fractions import Fraction as F
import json,hashlib,time,sys
from math import factorial
from common import poly_mul,poly_pow,poly_deriv,primes_to
R=Path(__file__).resolve().parents[1]

def receive(c):
    checks=0
    def ck(ok,msg):
        nonlocal checks
        checks+=1
        if not ok:raise ValueError(msg)
    ck(c['schema']==1,'schema')
    base=c['elementary']
    ck(base['positions']==[[r,s] for r in range(1,9) for s in range(1,9) if r!=s],'56 elementary nonzero distinct positions')
    sc=base['sc_nodes'];ck(len(sc)==45 and {(a,b) for a,b,_ in sc}=={(a,b) for a in range(9) for b in range(a+1)},'scalar full grid')
    for a,b,v in sc:ck(v==max(a-2,0)+max(6-b,0)+max(6-(a-b),0) and v>=10,'scalar valuation cell')
    K=2**42
    for h in range(1,7):K*=factorial(h)**3
    RR=F((2*factorial(8))**10,K)
    ck(RR==171603713767500 and 400**7>RR,'elementary maximum-position contradictions')
    for r,s0 in base['positions']:
        k=r+s0
        ck(k>=3 and 36+k==sum(12-t for t in range(1,9) if t not in (r,s0)),'elementary source degree')
        ck((36+k)-3*(13)==k-3,'elementary uniform exponent reduction')
    ck(base['n_divisor']==400 and base['kernel']==[13,4,213,7] and base['edge']==[6,4,213,7],'elementary consumer exponents')
    ck(base['beta']==[3,205,4] and base['alpha']==[3,200,4],'elementary numerator and denominator heights')
    kap10=F(3,10)**3*F(7,10)**7
    ck(kap10*2**8<1 and kap10**3*2**26<1,'one- and three-copy endpoint maximum')
    ck(13*3==39 and 213*3==639 and 213-8==205,'cube and numerator cancellation')
    ck(F(20**8,factorial(8))<2**20 and F(20**9,factorial(9))<2**21,'elementary band coefficient constants')
    ck(F(18,20)+F(2,20**2)<1 and F(512,128*factorial(9))<F(1,80640),'elementary band recurrence and nonzero branch')
    ck(168-333 < -136 and 36+9 <= 48,'elementary band simultaneous zero branch')
    ck(base['pure_block_N0']==400 and base['pure_block_A_power']==4 and base['pure_block_R_power']==2,'pure row block scope')
    ck(F(1,2)*400>137,'pure block denominator all n>=2^400')
    ck((6-F(63,16))*400>7+F(63,4)*50,'pure block residual all n>=2^400')
    ck(F(5,2)*400>305,'pure block zero-leading contradiction')
    b=c['local_bounds']
    ck(b=={'C':840,'rho':[463,5000],'beta_constant':615,'joint_constant':641,
            'finite_floor':4096,'band_d_constant':37,'band_d_exp':8,'band_delta_constant':7,
            'band_delta_exp':9,'band_n_exp':6,'p_min':11},'scope constants')
    ck(840==8*3*5*7 and 840<2**10,'nonmax small-powers constant')
    nodes=c['nodes'];ck(len(nodes)==44,'44 nodes excluding row zero')
    ck({(t,s) for t,s,_,_ in nodes}=={(t,s) for t in range(1,9) for s in range(t+1)},'complete node coverage')
    for t,s,cov,need in nodes:
        ck(need==12-t and cov==max(6-s,0)+max(6-(t-s),0) and cov>=need,'node valuation coverage')
    ck(sum(range(4,12))==60,'total row weight')
    ck(sum(6-h for h in range(1,6))==15,'target interior sum')
    ck(6+15==21 and 2*15==30 and 2*6==12,'normalization exponents')
    f=poly_mul([0]*9+[1],poly_pow([1,-1],21))
    df=poly_deriv(f)
    ck(c['f_coeff']==f and c['f_derivative']==df,'endpoint polynomial derivative')
    factor=poly_mul(poly_mul([0]*8+[1],poly_pow([1,-1],20)),[9,-30])
    ck(c['kappa_derivative_factors']==factor==df,'complete derivative factorization')
    k=F(3,10)**9*F(7,10)**21
    ck(F(*c['kappa'])==k,'exact kappa')
    ck(k*2**26<1,'strict kappa bound')
    ck(0<F(3,10)<F(1,2) and 9-30*F(3,10)==0,'unique critical point and derivative signs')
    ps=c['positions'];ck(len(ps)==4,'four positions')
    ck({(d['r'],d['s']) for d in ps}=={(1,2),(2,1),(1,3),(3,1)},'frozen four-position scope')
    for p in ps:
        r,s=p['r'],p['s']; k=r+s;u=12-r;v=12-s;w=min(u,v)
        E=F(6+k)+F(463*w,5000);D=E.denominator;h=E.numerator
        ck((p['k'],p['u'],p['v'],p['w'])==(k,u,v,w),'position weight tuple')
        ck(p['weight_nonmax']==sum(12-t for t in range(1,9) if t not in (r,s))==36+k,'source degrees')
        ck(F(*p['E'])==E,'cut exponent application')
        ck(F(36+k)+F(463*w,5000)+600-26<615,'beta constant valid strictly')
        ck(F(36+k)+F(463*w,5000)+600<641,'coupled constant valid strictly')
        ck((p['scale'],p['beta_n_exp'],p['beta_beta_exp'],p['beta_two_exp'])==(D,h,12*D,615*D),'beta integer exponents')
        ck((p['joint_n_exp'],p['joint_g_exp'],p['joint_J_exp'],p['joint_two_exp'])==(h+30*D,12*D,21*D,641*D),'coupled integer exponents')
        ck(p['edge_n_exp']==h+9*D,'edge cancellation only J<=nj')
        ck(E>=F(4963,500),'uniform weak position consumer')
    block=c['block_cases'];ck(len(block)==2,'block profiles')
    targets={'strong_full_width':(54167,5000,60000,5833,3000000,8),
             'weak_half_width':(4963,500,6000,1037,300000,4)}
    for p in block:
        h,D,gd,gn,gt,ap=targets[p['name']]
        ck((p['h'],p['D'],p['Gden'],p['Gnum'],p['Gtwo'],p['A_power'])==(h,D,gd,gn,gt,ap),'block profile scope')
        c0=F(gt,gd);c1=F(gn,gd);N0=4096
        # Affine in log2(n): positive slopes and endpoint check cover infinity.
        ck(1-ap*c1>0 and (1-ap*c1)*N0>37+ap*c0,'block denominator margin')
        ck(6-27*c1>0 and (6-27*c1)*N0>7+27*c0,'block residual margin')
        ck(2*F(h,D)-12>0 and (2*F(h,D)-12)*N0>1215,'zero-leading block cannot satisfy both heights')
    family=c['family'];ck(family['T0']==6_300_000 and family['T_step']==2100,'family entry and step')
    ck(family['W_residue']==439 and family['beta_power']==[6,7] and family['beta_offset']==3,'family formula')
    exp=[('new_beta_strong',3*(F(54167*101,100)-F(60000*6,7)),F(54167*10-60000-3075000)),
         ('new_elementary_edge',F(9,100),F(-160)),
         ('above_frozen_height',F(303,100),F(10-14000001)),
         ('uniform_cofactor_not_triggered',F(1,100),F(-4)),
         ('above_a_strip',F(1),F(4-1960001)),('above_b_strip',F(1),F(2-422064)),
         ('outside_old_rational_band',F(93,700),F(0)),
         ('passes_old_unweighted_edge',F(3,100),F(-72)),
         ('passes_old_alpha_height',F(3*529133,100),F(3000000-54167)),
         ('passes_old_beta_height',F(493,700),F(0)),
         ('passes_2_cut',F(50)-F(707,30),F(200-84)),
         ('passes_5_cut',F(100)-F(707,50),F(200-35))]
    ck(len(family['affine_margins'])==len(exp),'complete family margins')
    for got,(name,slope,intercept) in zip(family['affine_margins'],exp):
        ck((got['name'],F(*got['slope']),F(*got['intercept']))==(name,slope,intercept),'family algebra '+name)
        ck(slope>0 and slope*family['T0']+intercept>0,'infinite family endpoint+slope '+name)
    M=1
    for p in primes_to(31):M*=p
    L=147*439**2*M
    ck(all(439%p for p in primes_to(31)) and all(439%d for d in range(2,21)),'439 prime and rough')
    ck(L%439**2==0 and L%9==0 and L%49==0 and L%M==0,'support valuations/progression')
    ck(3*family['T0']//100>L.bit_length(),'nonempty progression interval')
    ck(pow(10,42,147)==1 and pow(10,2100,176400//400)==1,'exponent periods')
    ck((1200*439)%176400==174000,'full window residue')
    ck(174000%9==3 and 174000%49==1 and 174000%400==0,'actual (3,1) position')
    ck(2100%42==2100%100==2100%7==0,'integral family exponents')
    ck(10**3<2**10 and 10>2**3 and 2**10<1200<2400<2**12,'exact logarithm comparisons')
    ck(1200**7>2**17 and 1200**18<10**72,'comparison constants')
    ck(2**72>102 and 10**4>2400,'old cofactor consumer avoided')
    ck(2400<2**203 and 2400<5**5 and 10<5**2,'old height witnesses')
    # Boundary projection: base-p simultaneous avoidance is NOT base-product avoidance.
    ck(143==11*13 and 20735==143*145 and 3146==143*22,'composite-base counterexample integers')
    return {'status':'PASS_NEW_COUPLED_EDGE_BLOCK_OBLIGATIONS','checks':checks,
            'positions':4,'weighted_nodes':44,'scalar_nodes':45,'elementary_positions':56,'history_scripts_run':0,'lean':False}

def integrity():
    info=json.loads((R/'sources/INPUT.json').read_text())
    f=R/info['archive_member']
    if hashlib.sha256(f.read_bytes()).hexdigest()!=info['sha256']:raise ValueError('input archive changed')
    m=json.loads((R/'sources/RECOVERY_MAP.json').read_text())
    for v in m['found']:
        if hashlib.sha256((R/v['local']).read_bytes()).hexdigest()!=v['sha256']:raise ValueError('frozen source changed')
    return 1+len(m['found'])

if __name__=='__main__':
    start=time.monotonic();c=json.loads((R/'evidence/certificate.json').read_text())
    out=receive(c);out['frozen_hashes_checked']=integrity();out['seconds']=time.monotonic()-start
    (R/'logs/acceptance.json').write_text(json.dumps(out,indent=2));print(json.dumps(out))
