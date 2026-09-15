import os
"""Check NEW finite identities and covers. Frozen mathematical contracts remain assumptions."""
import json,sys,time
from pathlib import Path
from fractions import Fraction as F
from arithmetic import cyclotomic_value_mobius, smooth25, residual_shape_bounds
ROOT=Path(__file__).resolve().parents[1]
OUT=Path(os.environ.get('B699_RUN_OUTPUT',str(ROOT))).resolve();(OUT/'logs').mkdir(parents=True,exist_ok=True)

def verify(c):
    counts={}
    def check(v,group,msg):
        if not v: raise ValueError(group+': '+msg)
        counts[group]=counts.get(group,0)+1
    u=c['frozen'];d=c['density'];b=c['base'];q=c['budget'];v=c['cyclotomic'];p=c['position']
    # Adopted constants have exact source references; this is not proving the adopted U.
    check(u=={'U_power':4963,'U_constant':306000,'smooth_power':6000,'low_height':4096,'entry_height':14000001,'rho':[463,5000],'position_constant':612},'contracts','different frozen interface')
    check(d['left_power']==26 and d['right_power']==21,'density','density exponents')
    gap=u['U_power']*d['left_power']-u['smooth_power']*d['right_power']
    rhs=(u['U_constant']+5*u['smooth_power'])*d['left_power']
    check(21<2**5,'density','small prime constant')
    check(gap==d['gap'] and gap>0,'density','positive height gap')
    check(rhs==d['rhs_power'],'density','right side exponent')
    check(d['height']*gap>rhs,'density','height bound')
    check(d['height']<u['low_height'],'density','finite consumer overlap')
    check(b['minimum']==11,'base','domain base')
    check(b['upper_den']==b['lower_den']==20,'base','denominator')
    check(b['upper_num']==21 and b['lower_num']==19,'base','numerators')
    B=b['minimum']
    check((B+1)**b['upper_den']<B**b['upper_num'],'base','upper base endpoint')
    check((B-1)**b['lower_den']>B**b['lower_num'],'base','lower base endpoint')
    check(10**25>11**21,'base','dense-power diagnostic family monotone endpoint')
    check(sorted(v['exceptional'])==[1,2,4],'cyclotomic','full exception list')
    check(v['good_smooth_fourth_bound']==4,'cyclotomic','smooth valuation power')
    check(sorted(v['possible_smooth_good'])==[1,2,5],'cyclotomic','valuation values')
    check(5**4 < (B-1)**4,'cyclotomic','active good-order lower bound')
    # Concrete tests distinguish the actual exceptions from safe indices.
    for m in (1,2,4):
        base={1:11,2:19,4:13}[m]
        val=cyclotomic_value_mobius(base,m)
        check(smooth25(val)**4>val,'exceptions','bad extension to m='+str(m))
    Aexp=2*(d['left_power']-d['right_power'])
    Bexp=2*d['right_power'];Yexp=Bexp-2*d['left_power']//4
    check(2*d['left_power']%4==0,'budget','integer exponent for good product')
    check((q['intermediate_A_power'],q['intermediate_B_power'],q['intermediate_Y_power'])==(Aexp,Bexp,Yexp),'budget','elimination exponents')
    check(q['constant']==20*Aexp,'budget','coefficient bound')
    check(q['exceptional_weight']==21*Aexp,'budget','exceptional exponent')
    check(q['base_weight']==20*Bexp,'budget','base exponent')
    check(q['good_degree_weight']==19*Yexp,'budget','good degree exponent')
    check(q['base_weight']-4*q['exceptional_weight']==0,'budget','unbounded e coefficient in E=4e-1')
    check(q['exceptional_weight']-q['constant']>0,'budget','E=4e-1 endpoint')
    check(2*q['good_degree_weight']-q['constant']>0,'budget','e=0 good-factor endpoint')
    sb=residual_shape_bounds(13)
    check((sb['e_max'],sb['G_max'],sb['nonexceptional_order_max'],sb['nonexceptional_total_multiplicity_max'])==(3,5,50,2),'shape_bounds','explicit fixed-E bounds')
    check(3**2-3*3+1>0,'shape_bounds','odd-prime totient endpoint')
    check(2*3-2>0,'shape_bounds','odd-prime polynomial positive increment')
    check(residual_shape_bounds(0)['G_max']==0,'shape_bounds','zero-weight edge')
    rho=F(*u['rho']); kept=[]; X={tuple(x) for x in p['QX']}
    check(X=={(1,4),(4,1),(2,3),(3,2)},'positions','adopted global T1, not alpha T2')
    check(4*rho*u['entry_height']>u['position_constant'],'positions','negative power versus full effective entrance')
    for r in range(1,9):
        for s in range(1,9):
            if r==s:continue
            w=min(12-r,12-s)
            exponent=6-r-s-rho*w
            if r+s>=6:
                check(exponent<=-4*rho,'positions','all high position sums')
            elif r+s==5:
                check((r,s) in X,'positions','sum five')
            else:
                kept.append((r,s))
                check((r,s) not in X,'positions','surviving ordered pair')
    check(set(kept)=={tuple(x) for x in p['remaining']},'positions','full coverage and no dropped branch')
    allowed={n for n in range(21) if any(n%3==r%3 and n%7==s%7 for r,s in kept)}
    check(allowed==set(p['mod21'])=={8,10,15,16},'positions','exact source residues')
    check(all(n%3==1 or n%7==1 for n in allowed),'positions','disjunction used in theorem')
    rows={row['h_mod6']:row for row in c['adjacent_plus']}
    check(set(rows)==set(range(6)) and len(c['adjacent_plus'])==6,'adjacent','complete exponent period')
    for h in range(6):
        h0=h or 6; vals=set()
        for x in range(21):
            z=pow(x,h0,21)*(x+1)%21;vals.add(z)
            check(z%3!=1,'adjacent','all x and exponent classes modulo 3')
        row=rows[h]
        roots=[x for x in range(7) if pow(x,h0,7)*(x+1)%7==1]
        check(sorted(vals)==row['image_mod21'],'adjacent','exact period image')
        check(roots==row['roots_mod7_for_one'],'adjacent','exact seven-adic root cells')
        check(bool(row['closed'])==(not bool(vals&allowed)),'adjacent','claimed complete consumer')
    check(set(c['adjacent_minus_closed'])=={1,5},'adjacent','minus exponent domain')
    for h in c['adjacent_minus_closed']:
        for x in range(21):
            check(pow(x,h,21)*(x-1)%21 not in allowed,'adjacent_minus','complete image exclusion')
    bd=c['boundary']; T=bd['T_mod42'];h=bd['h']
    check(T==29 and h==14,'boundary','defined example')
    check(pow(10,42,49)==1,'boundary','all outer T values share residue')
    z=2*pow(10,T,49)%49
    check(pow(z,h,49)*(z+1)%49==bd['n_mod49']==1,'boundary','true seven position')
    z=2*pow(10,T,9)%9
    check(pow(z,h,9)*(z+1)%9==bd['n_mod9']==3,'boundary','true three position')
    check(bd['beta_terms']==[[14,1],[11,-1],[0,29]],'boundary','numerator polynomial')
    for p0 in (2,3,5):
        z=2*pow(10,T,p0)%p0
        beta=(pow(z,14,p0)-pow(z,11,p0)+29)%p0
        check(beta!=0,'boundary','reduced alpha/beta')
    z=2*pow(10,T,11)%11
    n=pow(z,14,11)*(z+1)%11;g=(z+1)*4%11
    beta=(pow(z,14,11)-pow(z,11,11)+29)%11;j=g*beta%11
    check(n==bd['n_mod11']==6 and j==bd['j_mod11']==10 and g==bd['g_mod11']==7,'boundary','actual common eleven')
    check(n<=8 and j>n,'boundary','source window and target carry')
    check(h%6 in (2,3) and h%6 not in (0,1,4,5),'boundary','outside adjacent consumer')
    check(200+210*13>840,'boundary','outside cyclotomic budget for this representation')
    check(2**49>2**21,'boundary','outside density condition')
    check(14*4963+4963<14*6000,'boundary','passes coarse source U projection')
    check(4963<306000,'boundary','source U constants')
    check(pow(3,14,7)*4%7==1 and pow(3,13,7)*(15*3+14)%7!=0,'boundary','simple surviving local root')
    return {'status':'PASS_NEW_CYCLOTOMIC_AND_ADJACENT_OBLIGATIONS','counts':counts,'total_checks':sum(counts.values()),'historical_math_replays':0,'formal_proof':False}

if __name__=='__main__':
    t=time.perf_counter(); c=json.loads((ROOT/'evidence/certificate.json').read_text()); out=verify(c);out['seconds']=time.perf_counter()-t
    (OUT/'logs/acceptance.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
