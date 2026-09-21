#!/usr/bin/env python3
"""Actually submit damaged certificates to both endpoint checkers."""
from __future__ import annotations
import copy,json,os,subprocess,sys,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]


def run()->None:
    src=json.loads((ROOT/'certificates/certificate.json').read_text())
    cases=[]
    def add(name,fn):
        x=copy.deepcopy(src);fn(x);cases.append((name,x))
    add('drop_negative_range',lambda x:x['endpoint']['ranges'].pop(0))
    add('truncate_positive_negative_tau',lambda x:x['endpoint']['ranges'][5].__setitem__(2,0))
    add('drop_zero_exception',lambda x:x['endpoint']['zero_exceptions'].pop())
    add('alter_eliminant',lambda x:x['endpoint']['templates'][0].__setitem__(3,41))
    add('omit_candidate',lambda x:x['endpoint']['candidate_rows'].pop())
    add('alter_P',lambda x:x['endpoint']['candidate_rows'][0].__setitem__(3,999999))
    add('invent_square_discriminant',lambda x:x['endpoint']['candidate_rows'][0].__setitem__(7,49))
    add('forge_sqrt',lambda x:x['endpoint']['candidate_rows'][0].__setitem__(8,7))
    add('truncate_complete_3_layer',lambda x:x['diagnostics']['full_3_power'].__setitem__('layer',3))
    add('weaken_dominance_exponent',lambda x:x['scope'].__setitem__('negative_dominance_exponent',4))
    add('false_R7_closure',lambda x:x['scope'].__setitem__('R7_changed',True))
    add('allow_extra_slot',lambda x:x['scope']['slot_values'].append(3))
    add('bad_original_witness',lambda x:x['regression'][0]['witnesses'].__setitem__(0,2))
    add('forge_source_witness',lambda x:x['diagnostics']['weak_first_window'].__setitem__('witness',3))
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    with tempfile.TemporaryDirectory(prefix='b699-sat-bad-') as tmp:
        for name,doc in cases:
            p=Path(tmp)/(name+'.json');p.write_text(json.dumps(doc))
            for checker in ['primary.py','independent.py']:
                z=subprocess.run([sys.executable,str(ROOT/'code'/checker),str(p)],
                                 capture_output=True,text=True,env=env)
                if z.returncode==0:raise AssertionError((name,checker,'accepted bad certificate'))
    print('PASS_BAD_CERTIFICATE_REJECTION cases='+str(len(cases))+' checkers=2')

if __name__=='__main__':run()
