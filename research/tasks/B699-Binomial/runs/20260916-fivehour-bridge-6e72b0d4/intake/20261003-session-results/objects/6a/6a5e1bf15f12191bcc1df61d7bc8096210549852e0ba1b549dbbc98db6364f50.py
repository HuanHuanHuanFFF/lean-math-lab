#!/usr/bin/env python3
"""Actually execute local mutations and require the verifier to reject them."""
import argparse,json,tempfile,shutil,copy
from pathlib import Path
import verify as v

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,required=True);ap.add_argument('--output',type=Path,required=True);a=ap.parse_args();root=a.root.resolve();records=[]
    def reject(name,fn):
        try:fn()
        except (ValueError,AssertionError) as e:records.append({'test':name,'status':'REJECTED_AS_REQUIRED','exception':str(e)});return
        raise RuntimeError('negative control was accepted: '+name)
    seeds=json.loads((root/'inputs/TRIPLE_JET_SEEDS.json').read_text())
    first=next(r for r in seeds if r['proof_kind']=='sign');p=v.poly(first['kernels'][0]['terms']);sl=tuple(tuple(x) for x in first['slots']);h=first['kernels'][0]['double_source']
    broken=v.add(p,{(0,0):1})
    reject('changed_polynomial_ordinary_slot_or_origin',lambda:v.jets(broken,sl,h))
    # Conventional resultant(0,0) of two X-constant polynomials is 1; it cannot prove no common specialized root.
    const={(1,0):1,(0,0):-352}
    reject('constant_resultant_one_is_not_root_exclusion',lambda:v.resultant_cert(const,const,{'unit':1,'factors':[]}))
    bad=json.loads((root/'certificates/FAILURE_CONTROLS.json').read_text())['radical_replacement_countercheck']
    reject('full_49_squared_replaced_by_radical_7_squared',lambda:v.require(bad['F_value']%49**2==0,'actual 49^2 divisibility fails'))
    reject('drop_high_CRT_lift_without_PQ_bound',lambda:v.require(136==8*pow(8,-1,9),'n=136 is not the minimal CRT representative 64'))
    with tempfile.TemporaryDirectory(prefix='b699-r10-negative-') as td:
        fake=Path(td)/'fake';shutil.copytree(root/'certificates',fake)
        for name,key,new in [('COVERAGE_SUMMARY.json','remaining_exact_322_layouts',1),
                             ('ROWS_FORWARD.json','maximum_original_n',0),
                             ('ORIGINAL_SOURCE_TERMINAL.json','source01_survivors',103)]:
            f=fake/name;original=f.read_bytes();obj=json.loads(original);obj[key]=new;f.write_bytes(v.enc(obj))
            reject('tampered_'+name,lambda:v.check_generated(root/'certificates',fake))
            f.write_bytes(original)
    require_count=7
    v.require(len(records)==require_count,'negative test count')
    out={'status':'PASS','actually_executed_negative_tests':records,'count':len(records),
         'network_used':False,'Lean_run':False,'repository_operations':False}
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_bytes(v.enc(out));print(v.enc(out).decode(),end='')
if __name__=='__main__':main()
