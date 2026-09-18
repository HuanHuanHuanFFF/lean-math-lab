#!/usr/bin/env python3
"""Reject deliberately damaged certificates using a separate verifier process."""
from __future__ import annotations
import argparse
import copy
import json
import subprocess
import sys
import tempfile
from pathlib import Path

BASE=Path(__file__).resolve().parents[1]

def main():
    p=argparse.ArgumentParser()
    p.add_argument('certificate',type=Path)
    p.add_argument('--out',type=Path,required=True)
    args=p.parse_args()
    original=json.loads(args.certificate.read_text())
    mutations=[]
    def add(name,fn):
        cert=copy.deepcopy(original); fn(cert); mutations.append((name,cert))
    add('polynomial_coefficient',lambda c:c['identities'][0]['left'][0].update(coefficient='999'))
    add('missing_C2_identity',lambda c:c['identities'].__delitem__(7))
    add('truncate_complete_three_power',lambda c:c['source_cases']['prime_three'][0].update(required_source_power='E-1'))
    add('force_isolated_three',lambda c:c['source_cases']['isolated_three'].update(imposed_source_power=1))
    add('false_unitary_gcd',lambda c:c['cross_split'].update(D_unitary_in_C_forced=True))
    add('truncate_cross_exponent',lambda c:c['cross_split']['P'].update(A=[-1,0,1,0,0]))
    add('invent_NC_closure',lambda c:c['claims'].update(new_NC_region_closed=True))
    add('omit_actual_third_recovery',lambda c:c['identities'].__delitem__(6))
    add('lose_three_coefficient_shift',lambda c:c['source_cases'].update(prime_three_normalized_profile=['0','a','a','a-ell']))
    rows=[]
    with tempfile.TemporaryDirectory(prefix='b699-cross-corrupt-') as tmp:
        for name,cert in mutations:
            path=Path(tmp)/f'{name}.json'
            path.write_text(json.dumps(cert))
            proc=subprocess.run([sys.executable,str(BASE/'src'/'verify.py'),str(path)],capture_output=True,text=True)
            rows.append({'mutation':name,'exit_code':proc.returncode,'stderr':proc.stderr.strip()})
            if proc.returncode==0: raise RuntimeError(f'corruption was accepted: {name}')
    args.out.mkdir(parents=True,exist_ok=True)
    result={'status':'PASS','damaged_certificates_rejected':len(rows),'tests':rows}
    (args.out/'corruption.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':'PASS','damaged_certificates_rejected':len(rows)}))
if __name__=='__main__': main()
