"""Rebuild every new certificate, using exact integers and fractions."""
from pathlib import Path
from fractions import Fraction
import json
from arithmetic import *

ROOT=Path(__file__).resolve().parents[1]

def write(name,obj):
    (ROOT/'certificates'/name).write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n')

def make():
    check_identities()
    contract=support_contract(SMALL_SUPPORT)
    assert contract['C']==630 and contract['T']==48
    fibres,rows=finite_rows(SMALL_SUPPORT,48)
    assert len(rows)==356 and len({(r['t'],r['A']) for r in rows})==356
    assert all(r['lower_gap']>0 and r['upper_gap']>0 for r in rows)
    write('smooth_terminal.json',{'contract':contract,'fibres':fibres,'rows':rows})
    bound={'A_constant':128,'B_constant':32768,
           'sqrt_upper_polynomial_at_half':str(Fraction(89,16)),
           'error_bound_coefficient':32,
           'integer_norm_strict_upper_bound':str(Fraction(35,64)),
           'Q_fourth_constant':2**22,'n_squared_constant':2**75,
           'Q_constant_check_left':81*14641,'Q_constant_check_right':128*10000,
           'tail_base':3,'tail_start':48,
           'tail_left':3**47,'tail_right':2**15*630**4*47**4,
           'linear_tail_ratio_lower':str(Fraction(768,625)),
           'new_s_bound':'floor((285*t+599)/20)',
           'comparison':[{'t':t,'old_s_max':(171*t+9)//10,'new_s_max':(285*t+599)//20}
                         for t in [9,17,25,33,41,233]]}
    write('uniform_bounds.json',bound)
    periods={}
    for p,period in [(5,3),(7,8)]:
        st=(1,0);ls=[]
        for i in range(period):
            ls.append({'n':i,'U':st[0],'x':st[1]});st=pair_mul(st,(2,1),p)
        assert st==(1,0)
        periods[str(p)]={'period':period,'states':ls}
    write('valuation_periods.json',{'periods':periods,
           'index8':{'C4_mod32':[[1,8],[0,1]],
                     'X_odd_mod32':[pell(t)[1]%32 for t in [1,3,5,7]]},
           'rank_constants':contract['ranks'],
           'full_precision_formula':{
            '2':'v2(L)=v2(t-1)+1','3':'v3(L)=v3(t-1)+2',
            '5':'v5(L)=0 unless 3|(t-1); otherwise 1+v5(t-1)',
            '7':'v7(L)=1+v7(t-1)'},
           'general_contract_example':support_contract((2,3,5,7,13))})
    # Algebraic weak model with both rough coefficients: no original (n,j).
    d,y=balanced_pell(41);Ua,xa=pell(21);Ub,xb=pell(20)
    A=2*Ua;B=9*xb//2;assert A*B==3*(d-1)
    v=A*y;W=B*y;Q=d+v;S=(Q**5-d*d)//v;Y=isqrt(S)
    weak={'t':41,'d':d,'y':y,'A':A,'B':B,'v':v,'W':W,'Q':Q,
          'A_rough_prime':13,'B_rough_prime':11,'target':S,'floor_sqrt':Y,
          'lower_gap':S-Y*Y,'upper_gap':(Y+1)**2-S}
    write('rough_weak_model.json',weak)
    local=[]
    for k in [3,4,5,6]:
        t=1+2**(k+2);d,y=balanced_pell(t);A=2**(k+1);B=3*(d-1)//A
        h=2*A-3;v=A*y;Q=d+v;P=Q+h*v;nu=(h*d-Q)//2;n=P*Q*nu+2
        residue=v*nu*nu-P*Q*Q+1
        assert residue<0 and residue%(2**k)==0 and n%(2**k)==0
        local.append({'k':k,'t':t,'d':d,'y':y,'A':A,'B':B,'h':h,
                      'P':P,'Q':Q,'v':v,'nu':nu,'n':n,'norm_residue':residue})
    write('local_failure_family.json',{'family':'t=1+2^(k+2), A=2^(k+1), h=2A-3; k>=3',
                                      'examples':local})
    print('CERTIFICATES_GENERATED=5; SMOOTH_TERMINAL_ROWS=356')

if __name__=='__main__':make()
