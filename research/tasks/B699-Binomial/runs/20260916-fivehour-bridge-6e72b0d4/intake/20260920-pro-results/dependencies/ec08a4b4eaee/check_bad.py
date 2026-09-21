#!/usr/bin/env python3
"""Send corrupted certificates to BOTH executables; nonzero exit is required."""
import copy
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT=Path(__file__).resolve().parent


def main():
    if sys.flags.optimize:
        raise RuntimeError("Run exact verification without Python optimization (-O / PYTHONOPTIMIZE).")
    source=json.loads((ROOT/'certificate.json').read_text())
    cases=[]
    def case(name, edit):
        doc=copy.deepcopy(source); edit(doc); cases.append((name,doc))
    case('omit_R4_negative_orientation',lambda d:d['remainders'].pop(0))
    case('alter_R4_remainder',lambda d:d['remainders'][0]['remainder'].__setitem__(0,9))
    case('omit_R10_negative_residue',lambda d:d['remainders'].pop(4))
    case('alter_positive_coefficient',lambda d:d['positive_polynomials'][0]['shifted_coefficients'].__setitem__(0,0))
    case('omit_x16_R4_endpoint',lambda d:d['endpoints'].pop(3))
    case('truncate_complete_5_power',lambda d:d['endpoints'][5]['factors'][1].__setitem__(1,1))
    case('drop_ordered_pair_orientation',lambda d:d['endpoints'][3]['states'].pop(0))
    case('false_tail_threshold',lambda d:d.__setitem__('tail_start_x',16))
    case('alter_R14_failure_identity',lambda d:d['failed_R14_size_claim']['coefficients'].__setitem__(4,4))
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    results=[]
    with tempfile.TemporaryDirectory(prefix='b699-bad-') as td:
        for name,doc in cases:
            path=Path(td)/(name+'.json')
            path.write_text(json.dumps(doc),encoding='utf-8')
            statuses={}
            for script in ('check_coeff.py','check_values.py'):
                proc=subprocess.run([sys.executable,str(ROOT/script),str(path)],capture_output=True,text=True,env=env,timeout=30)
                if proc.returncode==0:
                    raise RuntimeError(f'{script} accepted invalid certificate: {name}')
                statuses[script]='REJECTED'
            results.append({'mutation':name,'checks':statuses})
    print(json.dumps({'status':'PASS_BAD_CERTIFICATE_REJECTION','mutation_count':len(cases),'results':results},sort_keys=True))

if __name__=='__main__':main()
