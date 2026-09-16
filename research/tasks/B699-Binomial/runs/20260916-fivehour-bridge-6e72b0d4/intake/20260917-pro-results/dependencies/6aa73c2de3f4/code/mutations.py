"""Semantic corruptions are rejected. Guard checks are listed separately."""
import json,copy,time,math,argparse
from pathlib import Path
from common import *
from verify import check_polynomial,verify_prime_nodes,source_groups,check_row

def main(out):
    st=time.monotonic();cs=json.loads((ROOT/'evidence/polynomials.json').read_text());tt=json.loads((ROOT/'evidence/terminal5.json').read_text());tests=[]
    def rejected(name,fn):
        try:fn()
        except (AssertionError,ValueError,KeyError,ZeroDivisionError,IndexError):tests.append(name)
        else:raise AssertionError('bad evidence accepted: '+name)
    def mutate_poly(name,change):
        z=copy.deepcopy(cs[0]);change(z);rejected(name,lambda:check_polynomial(z))
    mutate_poly('degree',lambda z:z.update(degree=59))
    mutate_poly('weight_row1',lambda z:z['weights'].update({'1':30}))
    mutate_poly('origin_order',lambda z:z.update(origin_order=3))
    mutate_poly('expanded_coefficient',lambda z:z['poly'][0].__setitem__(2,z['poly'][0][2]+1))
    mutate_poly('residual_coefficient',lambda z:z['residual'][0].__setitem__(2,z['residual'][0][2]+1))
    mutate_poly('wrong_missing_slot',lambda z:z.update(missing=1))
    mutate_poly('invalid_missing_slot',lambda z:z.update(missing=4))
    mutate_poly('norm_understated',lambda z:z.update(norm=z['norm']-1))
    mutate_poly('height_reduced',lambda z:z.update(E5=z['E5']-1))
    mutate_poly('cost_changed',lambda z:z.update(cost5=z['cost5']//5))
    mutate_poly('factor_deleted',lambda z:z['factors'].pop())
    def negative(z):
        for row in z['residual']:row[2]*=-1
        for row in z['poly']:row[2]*=-1
    mutate_poly('negative_polynomial',negative)
    # The omitted slot really is not among the Taylor conditions.
    F=polynomial(cs[0]['poly']);rejected('claim_zero_at_omitted_slot',lambda:assert_zero(value(F,0,3)))
    nodes=tt['prime_nodes'];key=next(k for k,v in nodes.items() if int(k)>3)
    bad=copy.deepcopy(nodes);bad[key]['a']=1;rejected('prime_witness_one',lambda:verify_prime_nodes(bad))
    bad2=copy.deepcopy(nodes);bad2[key]['factors'].pop();rejected('prime_factor_omitted',lambda:verify_prime_nodes(bad2))
    bad3=copy.deepcopy(nodes);del bad3['2'];rejected('prime_node_missing',lambda:verify_prime_nodes(bad3))
    bad4={'2':{'p':2},'9':{'p':9,'a':2,'factors':[[2,3]]}};rejected('composite9_fake_certificate',lambda:verify_prime_nodes(bad4))
    row=copy.deepcopy(tt['rows'][0]);row['survivors']=[6];rejected('terminal_false_survivor',lambda:check_row(row,5))
    row2=copy.deepcopy(tt['rows'][0]);rr=next(r for r in range(5)if row2['factor_rows'][r]);row2['factor_rows'][rr][0][1]+=1;rejected('source_exponent_wrong',lambda:source_groups(row2,5))
    row3=copy.deepcopy(tt['rows'][0]);rr=next(r for r in range(5)if row3['factor_rows'][r]);row3['factor_rows'][rr]=[];rejected('source_factor_missing',lambda:source_groups(row3,5))
    # Data for n=128 require 125 at r=3, not 25. Build from exact trial division.
    qrow={'n':128,'factor_rows':[factor_small((128-r)//small_part(128-r,5)) for r in range(5)]}
    qrow['factor_rows']=[[[p,e]for p,e in f]for f in qrow['factor_rows']]
    qrow['factor_rows'][3]=[[5,2]];rejected('endpoint125_lowered_to25',lambda:source_groups(qrow,5))
    guards=[]
    assert not missing_slot_consumer(128,25,4);guards.append('no_fifth_window_for_i4')
    assert not missing_slot_consumer(56,12,6);guards.append('i6_mod5_guard')
    assert not missing_slot_consumer(128,5,5);guards.append('strict_j_greater_i')
    assert not missing_slot_consumer(128,65,5);guards.append('half_row_guard')
    assert not missing_slot_consumer(552831282,112305403,5);guards.append('all_four_occupied_is_not_closed')
    result={'status':'PASS_MUTATIONS','rejected_count':len(tests),'rejected':tests,'guard_count':len(guards),'guards':guards,'seconds':time.monotonic()-st}
    Path(out).write_text(json.dumps(result,sort_keys=True,indent=2)+'\n');print(json.dumps(result))
def assert_zero(x):assert x==0
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',default=str(ROOT/'evidence/mutations.json'));a=ap.parse_args();main(a.output)
