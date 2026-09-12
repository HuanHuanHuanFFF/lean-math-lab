import sys,json,copy
from pathlib import Path
from math import comb,gcd
from functools import reduce
from content_kernel import *
from check_independent_dp import validate_record,trial_primes

def main():
    records=[]
    good={'ABC':[3,3,3],'factorization':[[2,2],[5,1]]};ps=trial_primes(20);validate_record(good,ps)
    mutants=[('drop_high_prime_power',[[2,1],[5,1]]),('drop_prime',[[2,2]]),
             ('nonprime_factor',[[2,2],[4,1],[5,1]]),('duplicate_factor',[[2,2],[2,2],[5,1]]),
             ('zero_exponent',[[2,0],[5,1]]),('out_of_range_prime',[[2,2],[5,1],[13,1]])]
    for name,fs in mutants:
        r=copy.deepcopy(good);r['factorization']=fs
        try:validate_record(r,ps)
        except ValueError as e:records.append({'test':name,'rejected':True,'reason':str(e)})
        else:raise AssertionError(name)
    errors=[('negative_degree',lambda:attaining_index(-1,0,0,2)),('radix_one',lambda:attaining_index(1,1,1,1)),
            ('illegal_vandermonde_domain',lambda:vandermonde_exponent(5,4,6,2)),
            ('impossible_target_state',lambda:transition(1,0,0,0,2,(1,1,1))),('zero_valuation_input',lambda:vp(0,2))]
    for name,fn in errors:
        try:fn()
        except ValueError:records.append({'test':name,'rejected':True})
        else:raise AssertionError(name)
    assert pade_content_direct(1,2,2)!=pade_content_direct(1,1,3)
    records.append({'test':'incorrect_shifted_parameter_symmetry','rejected':True,'counterexample_G':[3,2]})
    H=reduce(gcd,(comb(8,r)*comb(8,3-r) for r in range(4)));L=comb(16,3)//H
    assert 27*L**3<16*15**3
    records.append({'test':'incorrect_cubic_power_three','rejected':True,'n':16,'j':8,'L':L})
    assert comb(16,4)%5==0 and comb(16,7)%5==0 and comb(16,5)%5!=0
    records.append({'test':'incorrect_p_ge_i_transfer','rejected':True,'n':16,'j':7,'p':5})
    out={'status':'passed','rejection_cases':len(records),'cases':records}
    p=Path(sys.argv[1]);p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({'status':'passed','rejection_cases':len(records)}))
if __name__=='__main__':main()
