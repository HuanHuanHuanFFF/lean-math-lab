#!/usr/bin/env python3
"""Semantic damage tests against the receiver, not just archive hashes."""
from pathlib import Path
import json,copy,argparse
import verify as V
ROOT=Path(__file__).resolve().parents[1]
def main(out):
    certs=json.loads((ROOT/'evidence/height_certificates.json').read_text());rows=json.loads((ROOT/'evidence/rows.json').read_text());family=json.loads((ROOT/'evidence/families.json').read_text())
    passed=[]
    def reject(name,call):
        try:call()
        except (ValueError,TypeError,KeyError):passed.append(name);return
        raise AssertionError('accepted damaged evidence: '+name)
    def polybad(name,change,index=0):
        z=copy.deepcopy(certs[index]);change(z);reject(name,lambda:V.check_polynomial(z))
    polybad('changed_polynomial_coefficient',lambda z:z['poly'][0].__setitem__(2,z['poly'][0][2]+1))
    polybad('omitted_monomial',lambda z:z['poly'].pop())
    polybad('duplicate_monomial',lambda z:z['poly'].append(z['poly'][0]))
    polybad('noninteger_coefficient',lambda z:z['poly'][0].__setitem__(2,0.5))
    polybad('negative_monomial_exponent',lambda z:z['poly'][0].__setitem__(0,-1))
    polybad('changed_required_order',lambda z:z['weights'].__setitem__('1',z['weights']['1']-1))
    polybad('understated_degree',lambda z:z.__setitem__('degree',z['degree']-1))
    polybad('wrong_position_hypothesis',lambda z:z.__setitem__('H',[0,1,4]))
    polybad('false_positivity_expansion',lambda z:z['shift'][0].__setitem__(2,z['shift'][0][2]+1))
    polybad('wrong_positivity_domain',lambda z:z.__setitem__('shift_coordinates','j=8+x,k=8+y'))
    def negative(z):
        for t in z['poly']:t[2]*=-1
        for t in z['shift']:t[2]*=-1
    polybad('negative_polynomial_with_matching_shift',negative)
    polybad('missing_endpoint7_cost',lambda z:z['cost_exponents'].__setitem__('7',0))
    polybad('lower_smallprime_cost',lambda z:z['cost_exponents'].__setitem__('3',z['cost_exponents']['3']-1))
    polybad('understated_height',lambda z:z.__setitem__('height_exponent',z['height_exponent']-1))
    polybad('understated_norm',lambda z:z.__setitem__('norm',z['norm']-1))
    polybad('tampered_height_bound',lambda z:z.__setitem__('height_bound',z['height_bound']-1))
    base=next(r for group in rows for r in group['rows'] if r[1]==50)
    def rowbad(name,change):
        z=[copy.deepcopy(base)];change(z);reject(name,lambda:V.check_covers(z,[50]))
    rowbad('dropped_complete49_layer',lambda z:z[0][2][0].__setitem__(3,7))
    rowbad('composite_witness',lambda z:z[0][2][0].__setitem__(2,49))
    rowbad('prime_below_target',lambda z:z[0][2][0].__setitem__(2,5))
    rowbad('non_prime_power_layer',lambda z:z[0][2][0].__setitem__(3,50))
    rowbad('missing_first_j',lambda z:z[0][2][0].__setitem__(0,9))
    rowbad('missing_last_j',lambda z:z[0][2][0].__setitem__(1,24))
    rowbad('outside_half_row',lambda z:z[0][2][0].__setitem__(1,26))
    rowbad('illegal_target_upgrade',lambda z:z[0].__setitem__(0,8))
    rowbad('missing_terminal_row',lambda z:z.clear())
    def fam_bad(name,change):
        z=copy.deepcopy(family);change(z);reject(name,lambda:V.check_families(z))
    fam_bad('lost_remaining_role',lambda z:z['7']['roles'].pop())
    fam_bad('reinsert_removed_coefficient',lambda z:z['7']['coefficients']['3'].append(70))
    fam_bad('incorrect_family_count',lambda z:z['7'].__setitem__('family_count',25))
    fam_bad('silently_changed_i5',lambda z:z['5'].__setitem__('family_count',0))
    # Deliberately truncated high domain. This one redoes only a NEW finite domain.
    dom=json.loads((ROOT/'evidence/domains.json').read_text())[2];zz=copy.deepcopy(dom);zz['high']=[]
    reject('truncated_high_CRT_set',lambda:V.check_domain(zz,rows[2],108))
    ans={'status':'PASS_MUTATION_REJECTION','rejected_count':len(passed),'cases':passed}
    Path(out).write_text(json.dumps(ans,sort_keys=True,indent=2)+'\n');print(json.dumps(ans,ensure_ascii=False))
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'evidence/mutations.json'));args=ap.parse_args();main(args.out)
