#!/usr/bin/env python3
"""Reproduce this round only. Never reruns frozen B699 historical evidence."""
from pathlib import Path
import argparse,json,time,hashlib,platform,sys,copy
from saturation import gate,verify_records
from check_new import exact_budgets,boundary_model,negative_gates

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True,type=Path);args=ap.parse_args()
    out=args.out
    if out.exists() and any(out.iterdir()):raise SystemExit('Refusing nonempty output directory')
    out.mkdir(parents=True,exist_ok=True);root=Path(__file__).resolve().parents[1];start=time.perf_counter()
    cert=json.loads((root/'evidence/saturation_certificate.json').read_text())
    shapes,counts=gate(0);shapes2,counts2=gate(1)
    assert shapes==shapes2
    assert counts==cert['primary_counts'] and counts2==cert['independent_counts']
    checks=verify_records(cert['records'],shapes)
    budgets=exact_budgets();model=boundary_model();neg=negative_gates()
    mutations=0
    for key in ('rank4_det','rank5_det','solution','line_indices'):
        bad=copy.deepcopy(cert['records'])
        rec=next(r for r in bad if key in r)
        if key in ('rank4_det','rank5_det'):rec[key][0] += 1
        if key=='solution':rec[key][0][0]+=1
        if key=='line_indices':rec[key][0]=9
        try:verify_records(bad,shapes)
        except (AssertionError,ValueError,ZeroDivisionError):mutations+=1
        else:raise AssertionError('Mutation was not rejected: '+key)
    payload={'status':'PASS_NEW_MINKOWSKI35_QUARTIC_SATURATION_REPLAY','saturation':checks,
             'gate_counts':counts,'independent_gate_counts':counts2,'budgets':budgets,
             'boundary_model':model,'negative_gates_rejected':neg,'certificate_mutations_rejected':mutations,
             'python':platform.python_version(),'seconds':time.perf_counter()-start,
             'evidence_grade':'Exact new finite obligations; infinite proof and adopted contracts remain author mathematics, not Lean or independent peer review.'}
    (out/'REPLAY.json').write_text(json.dumps(payload,indent=2,ensure_ascii=False))
    print(payload['status'])
    print('saturation_shapes=21 inconsistent=8 reducible=13 component_bound=35')
    for b in budgets['budgets']:print('D',b['D'],'h',b['h'],'profiles',b['profiles'],'value_exp',b['nonzero_bits'],'resultant_exp',b['resultant_bits'])
    print('seconds',round(payload['seconds'],3))
if __name__=='__main__':main()
