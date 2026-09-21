#!/usr/bin/env python3
"""Same-G ledger, exact counter-tests and final deterministic summary.
No discovery import or source-file/network dependency."""
import copy,json,math,itertools
from pathlib import Path
from fractions import Fraction as F
from accept_core import *
from accept_ledger import source_states,run_ledger,record_key,valid_witness
from check_families import verify_affine,verify_signature,fracvec
from verify_round import check_kernel
from sat_product import verify_product
ROOT=Path(__file__).resolve().parents[1];EV=ROOT/'evidence'
def read(n):return json.loads((EV/n).read_text())

def validate_gate_map(records,actual):
    kk=[key(c) for c in records]
    need(len(kk)==len(set(kk)) and set(kk)==set(actual),'gate coverage mismatch')
    need(all(c['genus_cost']==actual[key(c)] for c in records),'gate genus mismatch')

def negatives():
    out=[]
    def reject(name,fn):
        try:fn()
        except (AssertionError,ValueError,IndexError,ZeroDivisionError):out.append({'name':name,'status':'REJECTED'});return
        raise AssertionError('negative test accepted: '+name)
    gs=read('nf11_h4_gates.json')['records'];actual={key(x):x['genus_cost'] for x in gs}
    reject('missing_root_gate',lambda:validate_gate_map(gs[:-1],actual))
    reject('duplicated_root_gate',lambda:validate_gate_map(gs+[gs[0]],actual))
    bad=copy.deepcopy(gs);bad[0]['genus_cost']+=1
    reject('changed_genus_cost',lambda:validate_gate_map(bad,actual))
    reject('composite_modulus',lambda:determinant_mod([[1]],1000005))
    reject('zero_augmented_minor',lambda:validate_minor([[0,0],[0,0]],[0,1],101,1))
    reject('duplicated_augmented_row',lambda:validate_minor([[1,0],[0,1]],[0,0],101,1))
    reject('short_augmented_minor',lambda:validate_minor([[1,0],[0,1]],[0],101,1))
    ker=read('sat19_rank_certificates.json')[0];rec=read('sat19_gates.json')['records'][ker['index']];_,A=ReceiverModel(19).build(rec)
    bad=copy.deepcopy(ker);bad['kernel_vectors'][0][0][0]+=bad['kernel_vectors'][0][0][1]
    reject('false_exact_kernel',lambda:check_kernel(A,bad,289))
    bad=copy.deepcopy(ker);bad['kernel_vectors']=[]
    reject('modular_rank_without_exact_kernel',lambda:check_kernel(A,bad,289))
    bad=copy.deepcopy(ker);bad['coefficient_rank_upper']-=1
    reject('unjustified_rank_upper',lambda:check_kernel(A,bad,289))
    bad=copy.deepcopy(ker);bad['columns']=[j if j!=289 else 263 for j in bad['columns']]
    reject('rank_witness_without_rhs',lambda:check_kernel(A,bad,289))
    f=read('nf11_candidate_families.json')['solutions'][0]
    bad=copy.deepcopy(f);bad['solution'][0][0]+=bad['solution'][0][1]
    reject('false_rational_base',lambda:verify_affine(bad,11))
    bad=copy.deepcopy(f);bad['directions']=bad['directions'][:-1]
    reject('missing_affine_direction',lambda:verify_affine(bad,11))
    Ps,_=verify_affine(f,11);sg=read('nf65_signatures.json')['families'][0]
    bad=copy.deepcopy(sg);bad['strata']=bad['strata'][:-1]
    reject('omitted_special_parameter_stratum',lambda:verify_signature(f,Ps,bad))
    bad=copy.deepcopy(sg);bad['coordinatewise_kappa_lower']=[2,1,1]
    reject('generic_tangency_used_for_all_parameters',lambda:verify_signature(f,Ps,bad))
    bad=copy.deepcopy(sg);bad['ordinary_multiplicities'][0][2]-=1
    reject('altered_actual_source_multiplicity',lambda:verify_signature(f,Ps,bad))
    pc=read('sat20_product_certificate.json')[0];cr=read('sat20_gates.json')['records'][pc['index']]
    bad=copy.deepcopy(pc);bad['powers']=[6,5,4,5]
    reject('wrong_unique_product',lambda:verify_product(cr,bad))
    bad=copy.deepcopy(pc);bad['rank_rows'][1]=bad['rank_rows'][0]
    reject('uncertified_product_uniqueness',lambda:verify_product(cr,bad))
    nv=next(x for x in read('nf71_nv.json')['records'] if x['status']=='EXACT_BERNSTEIN_NONVANISHING');P=loadpoly(nv['primitive_polynomial'])
    reject('insufficient_NV_height_2pow61',lambda:bernstein_certificate(P,12,61))
    expected=read('target_cover11_ledger.json');r=copy.deepcopy(expected['max_records'][0]);r['F']+=1;r['size']+=1
    reject('spurious_twelfth_component',lambda:valid_witness(r,13,21))
    r=copy.deepcopy(expected['max_records'][0]);r['a']=r['E']+1
    reject('overspent_shared_excess',lambda:valid_witness(r,13,21))
    # Explicit arithmetic/geometry boundary checks, not original counterexamples.
    P={(1,0):1,(0,0):1,(0,1):-4,(0,2):1} # N-3+(X-2)^2
    need(ordinary_jet(P,3,2,0,0)==0 and ordinary_jet(P,3,2,1,0)==1 and ordinary_jet(P,3,2,0,1)==0,'ordinary/specialized example')
    out.append({'name':'ordinary1_specialized2_distinguished','status':'BOUNDARY_VERIFIED'})
    need(math.comb(400,9)%11==0 and math.comb(400,10)%11==0,'actual Common9 witness')
    out.append({'name':'400_10_has_common_prime_11_not_counterexample','status':'BOUNDARY_VERIFIED'})
    # Earlier failed pure-vertical proposal is explicitly rejected as a kernel.
    old=read('sat19_FAILED_pure_vertical_attempt.json')[0]['kernel_vectors'][0]
    need(any(sum(a*b for a,b in zip(row[:-1],old)) for row in A),'failed vertical proposal accidentally valid')
    out.append({'name':'pure_vertical_kernel_proposal_false','status':'BOUNDARY_VERIFIED'})
    return out

def run_tail(out,groups,fams):
    src,mins,states=source_states();save(out/'same_G_source_states.json',{'source_data':src,'vertical_minima':mins,'states':states})
    ledger_results=[]
    for tag,mid,free in [('baseline_cover12',11,18),('nf65_only',12,18),('nf65_nf71_sat18',13,19),('nf65_nf71_sat19',13,20),('target_cover11',13,21)]:
        r=run_ledger(states,mid,free);old=read(tag+'_ledger.json')
        need(r['maximum']==old['max'] and {record_key(x) for x in r['records']}=={record_key(x) for x in old['max_records']},'independent ledger mismatch')
        save(out/(tag+'_ledger_accepted.json'),r)
        ledger_results.append({'label':tag,'middle':mid,'free':free,'maximum':r['maximum'],'maximum_records':r['maximum_records'],'positive_excess_maximum_records':r['positive_excess_maximum_records'],'queries':r['queries']})
    last=ledger_results[-1];need(last['maximum']==11 and last['positive_excess_maximum_records']==0,'COVER11 / EDGE11 not established')
    prod=[]
    for q in (18,19,20):
        n=z14=0
        for ts in itertools.combinations_with_replacement(range(4),q):
            z=0
            for r in range(3,9):
                vs=[t*(r-t) for t in ts];need(set(vs)<=set(VALUES[r]),'non-source saturated atom');z+=len(set(vs))
            need((z>=14)==(len(set(ts))>=3),'SAT support classification')
            n+=1;z14+=z>=14
        need(n==math.comb(q+3,3) and z14==4*math.comb(q-1,2)+math.comb(q-1,3),'product counting')
        prod.append({'q':q,'all_monic_products':n,'z14_products':z14})
    save(out/'SAT_products.json',prod);save(out/'ledger_summary.json',ledger_results)
    # Only a cost-model diagnostic: none of these higher geometric premises
    # is adopted. Regenerate it independently from the same source states.
    cond=read('next_budget_conditional.json');condout=[]
    need(cond['status']=='CONDITIONAL_ONLY_GEOMETRY_UNPROVED','conditional status')
    need([(x['middle'],x['free']) for x in cond['records']]==[(m,f) for m in range(13,18) for f in (21,22,23,24,25,26,153)],'conditional grid coverage')
    for x in cond['records']:
        r=run_ledger(states,x['middle'],x['free'])
        need((r['maximum'],r['maximum_records'],r['positive_excess_maximum_records'])==(x['maximum'],x['maximum_records'],x['positive_maximum_records']),'conditional ledger mismatch')
        valid_witness(x['example'],x['middle'],x['free'])
        condout.append({k:v for k,v in x.items() if k!='example'})
    save(out/'conditional_next_budget_accepted.json',{'status':'CONDITIONAL_ONLY_GEOMETRY_UNPROVED','records':condout})
    tests=negatives();save(out/'negative_tests.json',tests)
    totg=sum(x['counts']['complete_gates'] for x in groups);totj=sum(x['counts']['jet_residual'] for x in groups);nfull=sum(len(x['full_augmented_minors']) for x in groups);nrank=sum(len(x['rank_deficient_exclusions']) for x in groups)
    nprod=sum(len(x.get('unique_saturated_products',[])) for x in groups)
    need((totg,totj,nfull,nrank,nprod)==(65469628,24055,24037,7,1),'current proof-obligation counts')
    need(len(groups)==15 and sum(x['full_affine_spaces'] for x in fams)==10 and sum(x['all_parameter_strata'] for x in fams)==36,'complete group/family count')
    res={'status':'PASS_NEW_NF65_NF71_SAT120_COVER11_EDGE11','same_fixed_G':True,'cover':11,'positive_excess_carrier_bound':10,'EDGE11':True,'middle_minimum':13,'free_minimum':21,'uniform_SAT_through':20,'NF65_carrier_kappa_lower':[2,2,1],'NF71_carrier_kappa_lower':[1,1,0],'NF71_fixed_NV_threshold_power2':62,'complete_root_gates':totg,'ordinary_jet_systems':totj,'full_augmented_nonzero_minors':nfull,'rank_deficient_exclusions':nrank,'unique_saturated_product_exceptions':nprod,'rational_affine_spaces':10,'parameter_strata':36,'NV_polynomials':4,'complete_vertical_states':2035,'maximum_relaxation_records':497,'positive_maximum_records':0,'negative_or_boundary_tests':len(tests),'R7':[3,4,5,6,7,8,9],'alpha_templates':57,'per_row_bound':152,'general_minimum_D_e_z':[7,3,14],'G_coefficients_recovered':False,'original_counterexample_found':False,'Lean':False,'repository_mutations':[]}
    save(out/'SUMMARY.json',res);return res
