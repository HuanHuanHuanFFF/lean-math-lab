#!/usr/bin/env python3
"""Actually submit damaged certificates to both independent implementations."""
from __future__ import annotations
import argparse,copy,json,subprocess,sys,tempfile
from pathlib import Path

def run():
    root=Path(__file__).resolve().parent
    original=json.loads((root/'certificate.json').read_text());cases=[]
    def change(name,fn):
        c=copy.deepcopy(original);fn(c);cases.append((name,c))
    def corrupt_r(c):
        for es,coef in c['polynomials']['R']:
            if es==[0]*6:
                idx=next(i for i,row in enumerate(c['polynomials']['R']) if row[0]==es)
                c['polynomials']['R'][idx][1]=coef+1;return
        raise RuntimeError('no constant')
    change('transport_constant_corruption',corrupt_r)
    change('omitted_source_order',lambda c:c['contract'].__setitem__('orders',[1]))
    change('weakened_ratio',lambda c:c['contract'].__setitem__('ratio_scale',3))
    change('dropped_even_root',lambda c:c['contract'].__setitem__('root_even',False))
    change('altered_source_contract',lambda c:c['contract'].__setitem__('source_minimum',3))
    change('bad_endpoint',lambda c:c['endpoint'].__setitem__('M',15))
    change('missing_positivity',lambda c:c['positive_translates'].pop('quotient_gap_at4'))
    change('fabricated_remainder',lambda c:c['diagnostic'].__setitem__('source_remainder',0))
    change('bad_generalized_scale',lambda c:c['generalization_guard'].__setitem__('correct_remainder',1))
    change('bad_parity',lambda c:c['parity_states'][0].__setitem__(3,0))
    results=[]
    with tempfile.TemporaryDirectory(prefix='b699-square-source-bad-') as tmp:
        for name,data in cases:
            path=Path(tmp)/(name+'.json');path.write_text(json.dumps(data))
            row={'case':name,'checks':{}}
            for script in ('check_coeff.py','check_grid.py'):
                p=subprocess.run([sys.executable,str(root/script),str(path)],capture_output=True,text=True,timeout=30)
                if p.returncode==0:raise AssertionError((name,script,'accepted bad certificate'))
                row['checks'][script]={'exit_code':p.returncode,'rejected':True}
            results.append(row)
    return results

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--report',type=Path);a=ap.parse_args()
    r=run()
    if a.report:a.report.write_text(json.dumps(r,indent=2)+'\n')
    print('PASS_BAD_CERTIFICATE_REJECTION');print('MUTATION_CASES='+str(len(r)))
if __name__=='__main__':main()
