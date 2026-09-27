#!/usr/bin/env python3
"""Deterministic discovery/certificate generation; no repository or network access."""
from __future__ import annotations
import argparse,hashlib,json,os,subprocess,sys,time
from pathlib import Path
from math import gcd,isqrt
from fractions import Fraction
from recover import vp,rough,jacobi,reduce_form,recover_row,central_data
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def write_json(path:Path,obj:object)->None:
    path.write_text(json.dumps(obj,indent=2,sort_keys=True)+'\n')

def case(a:int,z:int)->dict:
    al=3;r=1
    for _ in range(1,a):
        r=next(r+c*al for c in range(3) if ((r+c*al)**2-10)%(3*al)==0);al*=3
    b=r*z%al;b=min(b,al-b)
    assert b*(al-b)%(10*z*z)==0
    N=b*(al-b)//(10*z*z);assert (N+1)%al==0
    g=(N+1)//al;n=g*al;j=g*b
    return {'n':n,'j':j,'requested_a':a,'requested_z':z}

def vbin(n:int,j:int,p:int)->int:
    s=0;q=p
    while q<=n:
        s+=n//q-j//q-(n-j)//q;q*=p
    return s

def make_main(root:Path)->dict:
    C=root/'certificates';C.mkdir(parents=True,exist_ok=True)
    # All n in the stated prefix, not just the B congruence. This tests recovery only.
    max_n=400000;rows=0;candidates=[];b_rows=0;digest=hashlib.sha256()
    with (C/'prefix_rows.tsv').open('w') as log:
        log.write('n\tstatus\ta\tj\n')
        for n in range(6,max_n+1,6):
            o=recover_row(n,certificates=False)
            got=o['candidates'];rows+=1
            if n%18000==14130:b_rows+=1
            if got:
                cc=got[0];candidates.append({'n':n,**cc})
                line=f"{n}\tCANDIDATE\t{cc['a']}\t{cc['j']}\n"
            else:line=f'{n}\tEMPTY\t-\t-\n'
            digest.update(line.encode());log.write(line)
    summ={'max_n':max_n,'n_step':6,'rows':rows,'nonempty':len(candidates),
          'candidate_rows':candidates,'coarse_B_rows':b_rows,
          'coarse_B_nonempty':sum(x['n']%18000==14130 for x in candidates),
          'row_body_sha256':digest.hexdigest()}
    write_json(C/'prefix_summary.json',summ)
    # Compact exact matrix certificates. The large certificate is still only 183 forms.
    row_ns=[6,162,450,5130,275562,case(183,1)['n']]
    matrix_rows=[recover_row(n) for n in row_ns]
    write_json(C/'recovery_matrices.json',matrix_rows)
    # Principal powers including odd powers: exact nonmaximal-order check, not Sage.
    orders=[]
    for n in [162,275562,case(34,1)['n'],case(183,1)['n']]:
        A=vp(n,3);K=10*(n-1);q=1;r=0;reds=[]
        for t in range(1,2*A+1):
            r=next(r+c*q for c in range(3) if ((r+c*q)**2+K)%(3*q)==0);q*=3
            f,mat,steps=reduce_form(q,2*r,(r*r+K)//q)
            reds.append({'t':t,'root':r,'initial':[q,2*r,(r*r+K)//q], 'reduced':list(f),'matrix':list(mat),'steps':steps})
        principal=[e['t'] for e in reds if e['reduced'][0]==1]
        assert len(principal)==1
        orders.append({'n':n,'A':A,'discriminant':-4*K,'principal_powers_le_2A':principal,'forms':reds})
    write_json(C/'order_checks.json',orders)
    # Stronger global-alpha weak models and exact non-redundancy only against old U4-CHAR.
    central=[]
    for a,z in [(33,1),(1188,4),(1240,4),(1475,1),(183,1)]:
        raw=case(a,z);n=raw['n'];j=raw['j'];d=central_data(n,j)
        record={**raw,**d,'B_720':n%720==450,'B_18000':n%18000==14130,
                'E4_square':isqrt(d['E4'])**2==d['E4'],'mass_8g4_lt_n':8*d['g']**4<n}
        if d['central_defect']>1:
            p=next(p for p in range(7,100) if d['central_defect']%p==0)
            assert all(p%d for d in range(2,isqrt(p)+1))
            record['witness']={'p':p,'v_source':vp(n-4,p),'v_j_minus_2':vp(j-2,p),
                               'v_T':vp(d['T'],p),'v_binomial_6':vbin(n,6,p),'v_binomial_j':vbin(n,j,p)}
            assert record['witness']['v_binomial_j']>0
        else:
            qs={str(r):rough(n-r) for r in range(1,6)}
            record['full_window_pass']={str(r):__import__('functools').reduce(lambda a,b:a*b,(j-b for b in range(r+1)),1)%qs[str(r)]==0 for r in range(1,6)}
            record['q5_all_near']=(j-1)*(n-j-1)%qs['5']==0
            record['higher_gate_pass']={'a_ge_41':a>=41,'v2_n2_ge_65':vp(n-2,2)>=65,'v5_n5_ge_27':vp(n-5,5)>=27}
        central.append(record)
    write_json(C/'central_exact_cases.json',central)
    # Uniform symbolic residuals for F=n^2-12U at each allowed source slot.
    residuals=[]
    for r in (2,3,4,5):
        for b in range(r+1):
            u=Fraction(b*(r-b),r-1);f=r*r-12*u
            residuals.append({'r':r,'b':b,'U_num':u.numerator,'U_den':u.denominator,
                              'F_num':f.numerator,'F_den':f.denominator,
                              'all_near_5_allowed': r!=5 or b in (1,4)})
    residues=[r for r in range(1,120) if gcd(r,120)==1 and jacobi(3,r)==jacobi(10,r)==-1]
    local={'F_source_values':residuals,'negative_complement_prime_classes_mod120':residues,
           'central_identity':'3*H=delta^2+40*(n-4)*z^2',
           'q5_near_identity':'F=13+10*(n-5)+(n-5)^2-12*(U-1)',
           'gcd_T_q5_without_all_near_divides':91,'gcd_T_q5_with_all_near_divides':13, 'gcd_T_q5_full_near_exact':'gcd(13,q5)', 'sf_H_min_conditional':119}
    write_json(C/'central_symbolic_certificate.json',local)
    # Full period, not a sample: 3^20=1 mod200 and no proper-divisor exponent works.
    gs=[{'a_mod20':a%20,'least_g_mod2000':1570*pow(pow(3,a-2,2000),-1,2000)%2000} for a in range(2,22)]
    min_g=min(x['least_g_mod2000'] for x in gs);assert min_g==130
    density={'period':20,'unit_modulus':200,'pow3_period':pow(3,20,200),
      'proper_divisor_powers':{str(t):pow(3,t,200) for t in (1,2,4,5,10)},
      'g_classes':gs,'min_g':min_g,'count_bound_divisor':346,
      'count_bound':'# strict normalized B-pairs with n<=X <= floor(sqrt(X)/346)',
      'radical_constant':'(3+sqrt(3))/(2*sqrt(670800)) < 1/346',
      'positive_squared_margin':1246608**2-3*718296**2}
    assert density['positive_squared_margin']>0
    write_json(C/'global_sparse_bound.json',density)
    from prefix import generate
    write_json(C/'prefix_generator_check.json',generate(10**12))
    write_json(C/'prefix_budget_boundary.json',generate(10**60,min_a=41,budget=1000,latest_gates=True))
    result={'prefix_rows':rows,'prefix_candidates':len(candidates),'B_prefix_candidates':summ['coarse_B_nonempty'],
        'matrix_rows':len(matrix_rows),'matrix_certificates':sum(len(x['forms']) for x in matrix_rows),
        'central_cases':len(central),'new_vs_U4_only':sum(x['central_defect']>1 and not x['U4_trigger'] for x in central),
        'global_frontier_net_reduction_certified':0}
    write_json(C/'research_summary.json',result)
    return result

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=Path(__file__).resolve().parents[1]);ap.add_argument('--include-probes',action='store_true')
    args=ap.parse_args();root=args.out.resolve();(root/'logs').mkdir(parents=True,exist_ok=True);(root/'certificates').mkdir(parents=True,exist_ok=True)
    t=time.monotonic()
    if args.include_probes:
        for script in ['probe_alpha.py','probe_norm.py','probe_central_defect.py']:
            p=subprocess.run([sys.executable,str(Path(__file__).with_name(script))],env={**os.environ,'RESEARCH_OUT':str(root)},capture_output=True,text=True,check=True)
            (root/'logs'/f'{Path(script).stem}.log').write_text(p.stdout+p.stderr)
    out=make_main(root);print(json.dumps(out,indent=2));print('elapsed_seconds',round(time.monotonic()-t,3))
if __name__=='__main__':main()
