#!/usr/bin/env python3
import argparse,copy,json
from pathlib import Path
from check_independent import verify

def main():
    p=argparse.ArgumentParser();p.add_argument('--input',required=True);p.add_argument('--output',required=True);a=p.parse_args()
    clean=json.loads(Path(a.input).read_text());assert verify(clean)['status']=='PASS'
    cases=[]
    def case(name,edit):
        x=copy.deepcopy(clean);edit(x)
        try:verify(x)
        except (AssertionError,KeyError,TypeError,ValueError):cases.append({'name':name,'rejected':True})
        else:raise AssertionError('accepted corrupt certificate: '+name)
    case('remove complete parameter row',lambda x:x['parameter_rows'].pop())
    case('duplicate parameter row',lambda x:x['parameter_rows'].append(copy.deepcopy(x['parameter_rows'][0])))
    case('remove nonempty congruence interval',lambda x:x['congruence_boxes'].pop())
    case('replace established base',lambda x:x.update(base_n_inclusive=2097154))
    case('enlarge gu cap without proof',lambda x:x['scope']['gamma'].update(gu=96))
    case('corrupt normalized inverse',lambda x:x['congruence_boxes'][0].update(inverse=14647))
    case('omit interval lower endpoint',lambda x:x['congruence_boxes'][0].update(lo=266))
    case('omit interval upper endpoint',lambda x:x['congruence_boxes'][0].update(hi=528))
    case('false first solution',lambda x:x['congruence_boxes'][0].update(first_solution=14647))
    case('alter common divisor g',lambda x:x['congruence_boxes'][0].update(g=2))
    case('wrong direct m total',lambda x:x['summary'].update(direct_m_count=2264))
    case('remove scope binding',lambda x:x.pop('scope'))
    out={'status':'PASS','mutations':cases,'rejected':len(cases)}
    Path(a.output).write_text(json.dumps(out,sort_keys=True,indent=2)+'\n');print(json.dumps({'status':'PASS','rejected':len(cases)}))
if __name__=='__main__':
    if not __debug__:raise SystemExit('Do not run this checker with Python -O.')
    main()
