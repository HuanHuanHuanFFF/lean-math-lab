#!/usr/bin/env python3
"""Reject actual damaged new records; also record explicit false strengthenings."""
import argparse,copy,json
from pathlib import Path
import check as c

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);out=Path(ap.parse_args().out)
    nums=c.load(out,'numeric_templates.json');cs=c.load(out,'compression.json')
    one=c.load(out,'single_run.json');mix=c.load(out,'mixed_family.json');cached=c.fresh_single_run()
    tests=[]
    def reject(name,obj,mut,validate):
        r=copy.deepcopy(obj);mut(r)
        try:validate(r)
        except (AssertionError,ValueError,KeyError,IndexError,TypeError,ZeroDivisionError):tests.append(name)
        else:raise AssertionError('bad record accepted: '+name)
    reject('alter_folded_coefficient',nums[0],lambda r:r['remainders'][0].__setitem__(0,r['remainders'][0][0]+1),c.check_numeric)
    reject('erase_rational_scaling_denominator',nums[6],lambda r:r.__setitem__('D',1),c.check_numeric)
    reject('nonpositive_A',nums[0],lambda r:r.__setitem__('A',0),c.check_numeric)
    reject('omit_large_base_hypothesis',nums[0],lambda r:r.__setitem__('x_exp',1),c.check_numeric)
    reject('degree_exceeds_k',nums[0],lambda r:r.__setitem__('P',r['P']+[0]*(r['k']+2-len(r['P']))+[1]),c.check_numeric)
    reject('bad_simultaneous_index',cs[0],lambda r:r['m_i'].__setitem__(0,999),c.check_compression)
    reject('drop_negative_digit',cs[0],lambda r:r['signs'].pop(0),c.check_compression)
    reject('wrong_large_symbolic_margin',cs[-1],lambda r:r.__setitem__('large_base_exponent_margin',r['large_base_exponent_margin']+1),c.check_compression)
    reject('bad_exponent_range',cs[-1],lambda r:r['exponents'].__setitem__(0,r['v']+r['ell']+1),c.check_compression)
    reject('drop_64_15_exception',one,lambda r:r.__setitem__('survivors',[x for x in r['survivors'] if x[:3]!=[6,0,4]]),lambda r:c.check_single(r,cached))
    reject('truncate_one_run_range',one,lambda r:r.__setitem__('v_max',95),lambda r:c.check_single(r,cached))
    reject('wrong_mixed_period',mix,lambda r:r.__setitem__('period',88),c.check_mixed)
    reject('unsupported_cofactor_bound',mix,lambda r:r['samples'][0].__setitem__('canonical_cofactor_lower_bounds',[256,23]),c.check_mixed)
    # Three exact limitations, not empirical guesses.
    p=c.poly([1,2]);f1,f2=c.fpolys([1,2],2)
    assert not c.rem(f1,{2:4,0:-1}) and c.rem(f2,{2:4,0:-2})
    # Changing the pair of radial levels from (1,2) to (1,4) admits a quadratic term.
    p=[2,3,1];f1,f2=c.fpolys(p,6)
    assert not c.rem(f1,{2:1,0:-1}) and not c.rem(f2,{2:1,0:-4})
    assert c.rem(f2,{2:1,0:-2})
    # Removing the degree bound gives non-listed polynomial solutions.
    p=[2,-2,1];f1,f2=c.fpolys(p,1)
    assert not c.rem(f1,{1:1,0:-1}) and not c.rem(f2,{1:1,0:-2})
    assert not c.is_template(p,1,1,1,1)
    # Full 3^3, not the cancelled exponent 3^2, supplies this carry.
    assert 11%27>56%27 and not(11%9>56%9)
    res={'status':'PASS','damaged_record_rejections':tests,'count':len(tests),
      'exact_false_strengthenings':[
       {'omitted':'second_window','A':4,'k':2,'P':[1,2],'d':2},
       {'changed':'radial_levels_to_1_4','A':1,'k':2,'P':[2,3,1],'d':6},
       {'omitted':'degree_bound','A':1,'k':1,'P':[2,-2,1],'d':1}],
      'lost_prime_power_layer':{'n':56,'j':11,'correct_modulus':27,'insufficient_modulus':9}}
    (out/'bad_checks.json').write_text(json.dumps(res,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','damaged_records_rejected':len(tests),'exact_false_strengthenings':3}))
if __name__=='__main__':main()
