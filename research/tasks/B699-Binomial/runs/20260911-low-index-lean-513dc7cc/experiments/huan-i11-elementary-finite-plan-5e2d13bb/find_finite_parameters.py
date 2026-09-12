from pathlib import Path
from fractions import Fraction as F
from datetime import datetime,timezone
from math import exp,floor,factorial
import hashlib,importlib.util,json,sys,time
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent

def load(name,path):
    spec=importlib.util.spec_from_file_location(name,path)
    mod=importlib.util.module_from_spec(spec);sys.modules[name]=mod;spec.loader.exec_module(mod)
    return mod

g=load('i11_finite_inputs',OUT/'generate_inputs.py')
ri,steps,gen=g.ri,g.steps,g.gen
I,logq=ri.I,ri.logq
ROUGH=json.loads((OUT/'D-rough-step-certificates.json').read_text())['tracks']


def positive_shift(poly,k):
    coeffs=steps.shift(poly,k)
    return all(v>=0 for v in coeffs),coeffs


def step_certificate(track,Ltarget,Lmid):
    c,d,q,rho=track['c'],track['d'],track['q'],track['rho']
    kmin=track['k_min'];N=list(map(int,track['N_coefficients']));T=list(map(int,track['T_coefficients']))
    Rinf=F(track['R_infinity_exact']);goal=Lmid**(d*q)
    assert 1<Ltarget<Lmid and Ltarget**(d*q)<goal<Rinf
    poly=steps.sub(steps.scale(N,goal.denominator),steps.scale(T,goal.numerator))
    ok,coeffs=positive_shift(poly,kmin)
    if ok:K=kmin
    else:
        lo=kmin;hi=max(1,kmin+1)
        while not positive_shift(poly,hi)[0]:
            lo=hi;hi*=2
            assert hi<=4096,'constant-step starting point exceeds bounded search'
        while hi-lo>1:
            mid=(lo+hi)//2
            if positive_shift(poly,mid)[0]:hi=mid
            else:lo=mid
        K=hi;coeffs=positive_shift(poly,K)[1]
    assert all(v>=0 for v in coeffs)
    J=track['rough_power_J'];m_init=track['m_initial']
    base_lower=F(track['D_initial'])/(Ltarget**(d*m_init))*F(kmin+1,K+1)**J
    power=max(0,base_lower.denominator.bit_length()-base_lower.numerator.bit_length())
    while base_lower*2**power<1:power+=1
    while power>0 and base_lower*2**(power-1)>=1:power-=1
    R=(Lmid/Ltarget)**(d*q);eta=R-1
    block=ri.ceilq(1/eta)
    assert eta>0 and 1+block*eta>=2
    m0=q*(K+(power+1)*block)+rho
    return {'delta':track['delta'],'q':q,'rho':rho,'k_min':kmin,'K_constant_step':K,
            'm_small':q*K+rho,'constant_step_target':str(goal),
            'constant_step_certificate_variable':'x=k-K_constant_step','constant_step_certificate':steps.encode(coeffs),
            'rough_certificate_source':{'c':c,'d':d,'delta':track['delta'],'rho':rho,'q':q},
            'small_base_m':m_init,'small_base_D':track['D_initial'],
            'initial_ratio_lower':str(base_lower),'power_T':power,
            'initial_lower_times_2powT':str(base_lower*2**power),
            'block_ratio_R':str(R),'block_B':block,'Bernoulli_linear_bound':str(1+block*eta),
            'threshold_m':m0,'strict_factor_at_threshold':2,
            'no_large_factorial_at_m_small_evaluated':True,'no_large_block_power_expanded':True}


def proposal(record,wp,wq,target_loss_fraction,mid_loss_fraction):
    row=record['seed_row'];c,d=row['c'],row['d'];a,b,D=row['a'],row['b'],row['D0']
    P,Q=row['p']**row['k0'],row['q']**row['l0']
    lp,lq,l2,lmax=logq(P),logq(Q),logq(2),logq(max(P,Q))
    beta=gen.beta_base(c,d);BQ=beta*F(record['Q']['lambda']);BE=beta*F(record['E']['lambda'])
    tracks=[x for x in ROUGH if (x['c'],x['d'])==(c,d)]
    gamma=logq(F(tracks[0]['R_infinity_exact']))/tracks[0]['q']
    selector=min(F(1000-wp,1000)/(c*lp.hi),F(1000-wq,1000)/(c*lq.hi))
    e3=(logq(F(P**(c-d),a**d*b**c*BQ))+gamma).rounded()
    e4=(logq(F(min(P,Q)**c,(a*P)**(c-d)*D**(2*d)*BE))+gamma).rounded()
    Tinfty=(c*lmax+e4).rounded()
    allowance=min(e3.lo,e4.lo,Tinfty.lo-1/selector)
    assert allowance>0
    target_log=gamma.lo-target_loss_fraction*allowance
    Ltarget=F(floor(exp(float(target_log/d))*10**6),10**6)
    target_rate=d*logq(Ltarget)
    mid_log=gamma.lo-mid_loss_fraction*(gamma.lo-target_rate.hi)
    Lmid=F(floor(exp(float(mid_log/d))*10**6),10**6)
    assert 1<Ltarget<Lmid
    proofs=[step_certificate(track,Ltarget,Lmid) for track in tracks]
    m0=max(x['threshold_m'] for x in proofs)
    o3=F(P**(c-d))*Ltarget**d/(a**d*b**c*BQ)
    o4=F(min(P,Q)**c)*Ltarget**d/((a*P)**(c-d)*D**(2*d)*BE)
    assert o3>1 and o4>1
    ell3,ell4=logq(o3),logq(o4);T=(c*lmax+ell4).rounded()
    gap=selector*T.lo-1;assert gap>0
    CQ,CE=F(record['max_CQ']),F(record['max_CE'])
    rhs3=logq(48*max(F(1),CQ));rhs4=logq(4*max(F(1),CE))
    slopes=selector*l2.lo
    Hbounds={'G_start':F(m0+1)/slopes,
             'coefficient':(1+rhs3.hi/ell3.lo)/slopes,
             'height_error':(T.hi+rhs4.hi)/(gap*l2.lo)}
    Hmin=floor(max(Hbounds.values()))+1
    return {'seed':{k:row[k] for k in ('p','q','k0','l0','a','b','D0','c','d')},'wp':wp,'wq':wq,
            'target_loss_fraction':str(target_loss_fraction),'mid_loss_fraction':str(mid_loss_fraction),
            'L_target':str(Ltarget),'L_mid':str(Lmid),'gamma_interval':gamma.json(),'target_rate_interval':target_rate.json(),
            'initial_rate_allowance':str(allowance),'D_threshold_m0':m0,'D_tracks':proofs,
            'Omega3_power_d':str(o3),'Omega4_power_d':str(o4),'ell3':ell3.json(),'ell4':ell4.json(),'T':T.json(),
            'selector_lower':str(selector),'height_leading_gap_lower':str(gap),'max_CQ':str(CQ),'max_CE':str(CE),
            'required_H_log2_Y_bounds':{k:str(v) for k,v in Hbounds.items()},'minimum_integer_H_Y':Hmin,
            'qe_certificate_file':f"qe-certificates/row-{record['row_index']:02d}.json"}


def at_height(row,B):
    H=B-1;l2=logq(2);s=F(row['selector_lower']);mlo=s*H*l2.lo-1
    e3=I(F(row['ell3']['lo']),F(row['ell3']['hi']));T=I(F(row['T']['lo']),F(row['T']['hi']))
    gap=F(row['height_leading_gap_lower']);CQ,CE=F(row['max_CQ']),F(row['max_CE'])
    margins={'m_minus_m0':mlo-row['D_threshold_m0'],
             'coefficient_margin':mlo*e3.lo-logq(48*max(F(1),CQ)).hi,
             'height_leading_gap':gap,'height_margin':gap*H*l2.lo-T.hi-logq(4*max(F(1),CE)).hi}
    assert all(x>0 for x in margins.values())
    return {'height_bits_n':B,'height_bits_Y':H,'m_lower':str(mlo),
            'margins':{k:str(v) for k,v in margins.items()},'display':{k:float(v) for k,v in margins.items()}}


def coverage(B,S,Delta):
    i,t,r,s,lam,E=11,4,3,7,11,84;L=i-r-1
    K=2**(s*(s+1))
    for h in range(1,s+1):K*=factorial(h)**2
    for h in range(1,L+1):K*=factorial(h)
    delta=E-lam*(i-t);exponent=lam*(t-1);l2=logq(2)
    root_log2=(lam*logq(2*factorial(i))+delta*B*l2-logq(K))/(exponent*l2)
    M_upper_power=ri.ceilq(root_log2.hi)
    assert M_upper_power+1<B and floor(root_log2.lo)>7
    families={}
    for p in (2,3,5,7):
        if p==2:count=B-1
        else:
            val=B*l2/logq(p)
            assert floor(val.lo)==floor(val.hi)
            count=floor(val.lo)
        families[p]=count
    total=sum(families.values());pairs=(total*total-sum(x*x for x in families.values()))//2
    return {'interface':'same inherited normalized-K CRT sizing interface; not a new accepted descent',
            'height_bits_n':B,'normalized_K':str(K),'delta':delta,'root_exponent':exponent,
            'continuous_M_root_log2_interval':root_log2.json(),'M_less_or_equal_2pow':M_upper_power,
            'H_gt_2M_and_M_gt_128_certified':True,
            'family_counts':families,'total_families':total,'different_prime_family_pairs':pairs,
            'signed_offsets_per_pair':21,'naive_pair_offset_steps':pairs*21,
            'not_executed':['CRT intersections','block pruning','height descent','terminal coverage'],
            'scope':'count only; all prime-power family intervals are nonempty because H>2M and i=11 is prime'}


def main():
    started=time.perf_counter()
    inputs=json.loads((OUT/'finite-inputs.json').read_text())
    records=[json.loads((OUT/item['path']).read_text()) for item in inputs['rows']]
    summaries=[];plans=[];trial_count=0
    for reduction in (3,4,5,6):
        graph=next(x for x in inputs['weight_reduction_graphs'] if x['uniform_reduction']==reduction)
        assert graph['Delta']>0
        selected=[]
        for record in records:
            old=record['seed_row'];wp,wq=old['wp']-reduction,old['wq']-reduction
            trials=[]
            for target_frac in (F(1,4),F(1,2),F(3,4)):
                for mid_frac in (F(1,4),F(1,2)):
                    trial=proposal(record,wp,wq,target_frac,mid_frac);trial_count+=1
                    trials.append(trial)
                    summaries.append({'reduction':reduction,'row_index':record['row_index'],
                                      **{k:trial[k] for k in ('L_target','L_mid','target_loss_fraction','mid_loss_fraction','D_threshold_m0','minimum_integer_H_Y')}})
            best=min(trials,key=lambda x:(x['minimum_integer_H_Y'],x['D_threshold_m0']))
            selected.append(best)
        global_bound=F(1000*11*factorial(11).bit_length()+11*(1000+graph['S']),graph['Delta'])
        Bmin=max(floor(global_bound)+1,max(x['minimum_integer_H_Y']+1 for x in selected))
        B=((Bmin+1023)//1024)*1024
        global_margin=B*graph['Delta']-1000*11*factorial(11).bit_length()-11*(1000+graph['S'])
        assert global_margin>0
        for row in selected:row['verified_height_arithmetic']=at_height(row,B)
        plan={'uniform_weight_reduction':reduction,'S':graph['S'],'Delta':graph['Delta'],'r':3,'s':7,'lambda':11,'E':84,
              'all_32_orientation_witness':graph['witness'],'minimum_integer_B_n':Bmin,'suggested_height_bits_n':B,
              'global_height_margin_integer':global_margin,'global_height_threshold':str(global_bound),'rows':selected}
        plans.append(plan)
        print(json.dumps({'reduction':reduction,'S':graph['S'],'Delta':graph['Delta'],'Bmin':Bmin,'Brounded':B,
                          'rows':[{'c':x['seed']['c'],'d':x['seed']['d'],'Lt':x['L_target'],'Lm':x['L_mid'],'m0':x['D_threshold_m0'],'Hmin':x['minimum_integer_H_Y']} for x in selected]}),flush=True)
    selected=min(plans,key=lambda x:(x['suggested_height_bits_n'],x['minimum_integer_B_n'],-x['Delta']))
    selected['coverage_sizing']=coverage(selected['suggested_height_bits_n'],selected['S'],selected['Delta'])
    selected['coverage_sizing_original_4096']=coverage(4096,689,579)
    peak=gen.peak_bytes();assert peak<200_000_000
    result={'utc':datetime.now(timezone.utc).isoformat(),'status':'exact finite proof plan and certificates; all Lean obligations remain explicit',
            'selected_plan':selected,'competing_plans':plans,'trial_summaries':summaries,'bounded_trials':trial_count,
            'rough_D_certificate_source':'D-rough-step-certificates.json','large_block_powers_expanded':False,
            'largest_actual_initial_m':2,'peak_working_set_bytes':peak,'seconds':time.perf_counter()-started,
            'worker_lean_invocations':0,'accepted_new_original_indices':[]}
    (OUT/'finite-plan-results.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'SELECTED':{k:selected[k] for k in ('uniform_weight_reduction','S','Delta','minimum_integer_B_n','suggested_height_bits_n','global_height_margin_integer')},
                      'coverage':selected['coverage_sizing'],'peak_bytes':peak,'seconds':result['seconds']},indent=2),flush=True)

if __name__=='__main__':main()
