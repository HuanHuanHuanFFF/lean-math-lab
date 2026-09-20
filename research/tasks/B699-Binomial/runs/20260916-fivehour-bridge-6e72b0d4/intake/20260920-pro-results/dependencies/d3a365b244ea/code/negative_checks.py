#!/usr/bin/env python3
"""Actual corrupt-input refusals and precise scope-boundary tests."""
from pathlib import Path
from copy import deepcopy
from fractions import Fraction
import argparse,json
import numpy as np
from accept_core import need,save,ReceiverModel,isprime,bareiss,determinant_mod
from fastfield import rank_minor
from verify_nf89 import check_kernel,check_full_minor,check_partition
from verify_trace_ledger import STATE_LOOKUP,remaining,fixed_rows,trace_check,determinant4,verify_witness,family_interface
ROOT=Path(__file__).resolve().parents[1]

def verify(out,ledger):
    tests=[]
    def reject(name,fn,fragment):
        try:fn()
        except (AssertionError,ValueError) as e:
            need(fragment in str(e),f'{name}: wrong rejection {e}')
            tests.append({'test':name,'result':'REJECTED','reason':str(e)});return
        raise AssertionError(f'{name}: corrupt input accepted')
    def boundary(name,condition):need(condition,name);tests.append({'test':name,'result':'BOUNDARY_CONFIRMED'})
    def load(s):return json.loads((ROOT/'evidence'/s).read_text())
    gate=load('nf15_h5_gates.json');rec=load('nf15_h5_rank_certificates.json')[0];_,Ai=ReceiverModel(15).build(gate['records'][rec['index']])
    bad=deepcopy(rec);bad['kernel_vectors'][0][0][0]+=1;reject('kernel_not_annihilated',lambda:check_kernel(Ai,bad,169),'false exact kernel')
    bad=deepcopy(rec);bad['kernel_free_columns']=[0];reject('kernel_not_normalized_independent',lambda:check_kernel(Ai,bad,169),'kernel independence')
    bad=deepcopy(rec);bad['kernel_vectors']=[];bad['kernel_free_columns']=[];reject('no_exact_kernel',lambda:check_kernel(Ai,bad,169),'missing/duplicate')
    bad=deepcopy(rec);bad['kernel_vectors']*=2;bad['kernel_free_columns']*=2;reject('duplicate_kernel',lambda:check_kernel(Ai,bad,169),'missing/duplicate')
    bad=deepcopy(rec);bad['columns'][-1]=143;reject('no_augmented_column',lambda:check_kernel(Ai,bad,169),'bad augmented minor indices')
    bad=deepcopy(rec);bad['rows'][1]=bad['rows'][0];reject('duplicate_low_rank_minor_row',lambda:check_kernel(Ai,bad,169),'invalid augmented lower bound')
    bad=deepcopy(rec);bad['determinant_mod_prime']=0;reject('fabricated_zero_minor',lambda:check_kernel(Ai,bad,169),'nonzero augmented minor missing')
    bad=deepcopy(rec);bad['coefficient_rank_upper']=169;reject('wrong_reported_rank',lambda:check_kernel(Ai,bad,169),'rank reports disagree')
    g=load('nf15_h4_gates.json');cs=load('nf15_h4_minors.json');c=cs['certificates'][0];_,A=ReceiverModel(15,65521).build(g['records'][c['index']])
    rr=c['rows'][:];rr[1]=rr[0];reject('duplicate_full_minor_row',lambda:check_full_minor(A,rr,65521,169),'bad full augmented minor')
    rr=c['rows'][:];rr[0]=len(A);reject('full_minor_row_out_of_range',lambda:check_full_minor(A,rr,65521,169),'bad full augmented minor')
    reject('composite_modulus',lambda:check_full_minor(A,c['rows'],65520,169),'composite minor modulus')
    reject('wrong_parameter_count',lambda:check_full_minor(A,c['rows'],65521,168),'bad full augmented minor')
    bad=deepcopy(cs);bad['certificates'].pop();reject('missing_jet_certificate',lambda:check_partition(bad,len(g['records'])),'jet partition')
    bad=deepcopy(cs);bad['certificates'].append(bad['certificates'][0]);reject('duplicate_jet_certificate',lambda:check_partition(bad,len(g['records'])),'jet partition')
    r=json.loads((ledger/'TRACE_EDGE10.json').read_text())['example_surviving_10_relaxation']
    verify_witness(r,16,25,True)
    bad=deepcopy(r);bad['d'][0]+=1;reject('different_vertical_budget_mixed_in',lambda:verify_witness(bad,16,25,True),'mixed vertical allocation')
    bad=deepcopy(r);bad['B']=-1;reject('negative_factor_count',lambda:verify_witness(bad,16,25,True),'nonnegative integer')
    bad=deepcopy(r);bad['x_cost']+=1;reject('incorrect_X_fee',lambda:verify_witness(bad,16,25,True),'X budget')
    reject('false_COVER9_from_this_relaxation',lambda:need(r['size']<=9,'surviving abstract size10; not an original-problem counterexample'),'surviving abstract size10')
    s=next(s for s in STATE_LOOKUP.values() if s['E']>0);reject('positive_excess_misused_as_monic',lambda:fixed_rows(s,(0,0,0),0),'monic trace requires zero total excess')
    unknown=next((s,S) for s in STATE_LOOKUP.values() if s['E']==0 for S in [(1,0,0)] if min(remaining(s,S,0))>=0 and remaining(s,S,0)[0]==0)
    boundary('unknown_row3_extra_root_is_not_assigned',all(x['row']!=3 for x in fixed_rows(unknown[0],unknown[1],0)))
    s=STATE_LOOKUP[r['h'],tuple(r['v'])];boundary('nonexhausted_row5_trace_remains_unknown',all(x['row']!=5 for x in fixed_rows(s,(0,0,0),0)))
    q=trace_check(97,(27,22,19,16,13,14),(0,0,3),0)
    boundary('h97_exact_Vandermonde_obstruction',q['obstruction']['determinant']==-36)
    reject('duplicate_trace_row',lambda:determinant4([(3,1),(3,2),(5,3),(6,4)]),'four distinct trace rows')
    boundary('quadratic_trace_positive_control',determinant4([(r,2*r*r-3*r+7) for r in (3,4,6,8)])==0)
    boundary('extra_ordinary_mass_forced_to_row6_diagonal',next(x for x in q['fixed_rows'] if x['row']==6)['ordinary_multiplicities'][-1]==14)
    boundary('collision_lambda6_retained',gate['records'][rec['index']]['lambda']==6 and 6 in gate['records'][rec['index']]['roots'][2])
    g8=load('nf15_h8_gates.json');r8=load('nf15_h8_rank_certificates.json')[0]
    boundary('off_source_lambda3_retained',g8['records'][r8['index']]['lambda']==3 and 3 not in [0,7,12,15,16])
    reject('floating_point_modular_input',lambda:rank_minor([[1.0,0.0],[0.0,1.0]]),'canonical integer residues')
    reject('uint32_wrapping_input',lambda:rank_minor(np.array([[2**40,0],[0,1]],dtype=np.uint64)),'canonical integer residues')
    reject('unsupported_field',lambda:rank_minor([[1,0],[0,1]],17),'unsupported fixed prime')
    boundary('all_nonzero_parameter_collision_interfaces',len(family_interface())==2)
    small=[]
    for n in range(1,7):
        for seed in range(5):
            M=[[(i*i+3*j+seed*(i+1)*(j+2)+2*int(i==j))%19-9 for j in range(n)] for i in range(n)]
            d=bareiss(M);p=65521;dm=rank_minor([[x%p for x in row] for row in M])[3]
            need(d%p==dm==determinant_mod(M,p,False),'small exact backend mismatch');small.append([n,seed,str(d),dm])
    boundary('30_exact_integer_backend_crosschecks',len(small)==30)
    save(out/'NEGATIVE_AND_BOUNDARY_TESTS.json',{'status':'PASS_NEW_NEGATIVE_AND_BOUNDARY_TESTS','count':len(tests),'corrupt_input_refusals':sum(x['result']=='REJECTED' for x in tests),'tests':tests,'small_integer_determinants':small})
    print('ACCEPT_NEGATIVE_BOUNDARIES',len(tests),flush=True)

def main():
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);p.add_argument('--ledger',type=Path,required=True);a=p.parse_args();need(a.out.is_absolute() and not a.out.exists(),'new negative-test directory required');a.out.mkdir();verify(a.out,a.ledger)
if __name__=='__main__':main()
