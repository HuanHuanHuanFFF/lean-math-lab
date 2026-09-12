#!/usr/bin/env python3
"""Fail-closed regression against the independent checker, not a proof.
Every mutation is executed; a mutation not rejected is a test failure.
"""
from __future__ import annotations
import argparse,copy,json
from pathlib import Path
from check_certificate import check,Rejected

def run(data:dict)->dict:
    baseline=check(data)
    cidx=next(i for i,r in enumerate(data['rows']) if r['kind']=='crt')
    pidx=next(i for i,r in enumerate(data['rows']) if r['kind']=='crt' and any(w['e']>1 for w in r['steps']))
    sidx=next(i for i,r in enumerate(data['rows']) if r['kind']=='crt' and r['steps'][0]['states'])
    muts=[]
    def add(name,fn):muts.append((name,fn))
    add('missing_row',lambda x:x['rows'].pop())
    add('duplicate_row',lambda x:x['rows'].insert(1,copy.deepcopy(x['rows'][0])))
    add('wrong_schema',lambda x:x.update(schema='untrusted-v0'))
    add('wrong_full_small_part',lambda x:x['rows'][0].update(U=x['rows'][0]['U']*2))
    add('wrong_source_position',lambda x:x['rows'][0]['sources'][0].__setitem__(2,4))
    add('false_I_exclusion',lambda x:x['rows'][cidx].update(kind='I'))
    add('false_W_exclusion',lambda x:x['rows'][cidx].update(kind='W'))
    add('empty_CRT_chain',lambda x:x['rows'][cidx].update(steps=[]))
    add('composite_prime_witness',lambda x:x['rows'][cidx]['steps'][0].update(p=4))
    def drop_power(x):
        w=next(w for w in x['rows'][pidx]['steps'] if w['e']>1);w['e']-=1
    add('lost_prime_power_exponent',drop_power)
    add('invalid_window_root',lambda x:x['rows'][cidx]['steps'][0].update(r=4))
    add('forged_empty_state',lambda x:x['rows'][sidx]['steps'][0].update(states=[]))
    add('duplicate_prime_step',lambda x:x['rows'][cidx]['steps'].append(copy.deepcopy(x['rows'][cidx]['steps'][0])))
    add('wrong_tail_exponent',lambda x:x['tail'].update(a_excluded_from=39))
    add('wrong_tail_margin',lambda x:x['tail'].update(b_endpoint_margin=x['tail']['b_endpoint_margin']+1))
    results=[]
    for name,fn in muts:
        changed=copy.deepcopy(data);fn(changed)
        try:check(changed)
        except Rejected as exc:results.append({'test':name,'rejected':True,'reason':str(exc)})
        else:raise RuntimeError('bad certificate accepted: '+name)
    return {'status':'all_executed_mutations_rejected','baseline_rows':baseline['rows'],
            'tests':len(results),'results':results}

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
    out=run(json.loads(args.certificate.read_text()));args.out.parent.mkdir(parents=True,exist_ok=True)
    args.out.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({'status':out['status'],'tests':out['tests']}))
if __name__=='__main__':main()
