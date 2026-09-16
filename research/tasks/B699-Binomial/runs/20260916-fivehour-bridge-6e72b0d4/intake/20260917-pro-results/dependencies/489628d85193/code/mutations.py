#!/usr/bin/env python3
from pathlib import Path
import copy,json,time
import check
ROOT=Path(__file__).resolve().parents[1]

def main():
    t=time.monotonic();original=json.loads((ROOT/'evidence/new-certificate.json').read_text())
    cases=[]
    def case(name,fn):cases.append((name,fn))
    case('schema',lambda c:c.update(schema='unknown'))
    case('cost_6',lambda c:c['algebra'].update(cost6=431))
    case('height_6',lambda c:c['algebra'].update(height6=21599))
    case('polynomial_degree',lambda c:c['algebra'].update(degree=11))
    case('weighted_degree',lambda c:c['algebra'].update(weighted_degree=12))
    case('F_coefficient',lambda c:c['algebra']['F'][0].__setitem__(2,c['algebra']['F'][0][2]+1))
    case('Q_coefficient',lambda c:c['algebra']['Q'][0].__setitem__(2,c['algebra']['Q'][0][2]+1))
    case('positive_expansion',lambda c:c['algebra']['F_positive_at_7'][0].__setitem__(2,1))
    case('missing_Taylor_condition',lambda c:c['algebra']['zero_conditions'].pop())
    case('false_power_base',lambda c:c['algebra']['integer_checks'].__setitem__('power2_base',1))
    case('maximum_identity',lambda c:c['algebra']['max_identity'][0].__setitem__(2,17))
    case('g4_positive_identity',lambda c:c['algebra']['positive_shifts']['g_ge_4'][0].__setitem__(2,1))
    case('exponent_domain',lambda c:c.update(pure_exponent_cap=65))
    case('native_domain',lambda c:c.update(native6_cap=21601))
    case('missing_pure_row',lambda c:c['pure_rows'].pop())
    case('missing_native_row',lambda c:c['native6_rows'].pop())
    case('duplicate_native_row',lambda c:c['native6_rows'].append(copy.deepcopy(c['native6_rows'][0])))
    case('wrong_terminal_n',lambda c:c['pure_terminals'][0].update(n=c['pure_terminals'][0]['n']+1))
    case('target_swap',lambda c:c['pure_terminals'][0].update(i=6))
    case('composite_prime',lambda c:c['pure_terminals'][0]['factors'][1][0].__setitem__(0,8190))
    case('wrong_full_exponent',lambda c:c['pure_terminals'][0]['factors'][0][0].__setitem__(1,12))
    case('invented_CRT_residue',lambda c:c['pure_terminals'][0]['steps'][-1]['residues'].append(6))
    case('wrong_CRT_modulus',lambda c:c['pure_terminals'][0]['steps'][0].update(modulus=1))
    case('unjustified_tail',lambda c:c['pure_terminals'][0]['tails'].append({'j':6,'p':5,'source_v':1,'target_v':1}))
    case('false_small_row_prime',lambda c:c['small_rows'][0].update(p=13))
    results=[]
    for name,fn in cases:
        c=copy.deepcopy(original);fn(c)
        rejected=False
        try:check.verify(c)
        except (AssertionError,ValueError,KeyError,ZeroDivisionError):rejected=True
        assert rejected,name
        results.append({'name':name,'rejected':True})
    out={'status':'PASS','rejected':len(results),'tests':results,'seconds':time.monotonic()-t}
    (ROOT/'outputs/mutations.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({'status':'PASS','rejected':len(results),'seconds':out['seconds']}))
if __name__=='__main__':main()
