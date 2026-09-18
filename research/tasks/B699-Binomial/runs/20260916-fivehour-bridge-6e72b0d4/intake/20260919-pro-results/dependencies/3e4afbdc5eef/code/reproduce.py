#!/usr/bin/env python3
"""Reproduce only this round's NEW geometry and SAME-G ledger. Standard library.
All outputs go to a new absolute directory; source evidence is read-only.
"""
import argparse,json,platform,time
from pathlib import Path
from verify_saturation import verify,require,dump
from source_ledger import run

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
 require(args.out.is_absolute() and not args.out.exists(),'choose a new absolute output directory')
 out=args.out;out.mkdir(parents=True);t=time.monotonic()
 geo=out/'geometry';geo.mkdir();ledger=out/'ledger';ledger.mkdir()
 g=verify(13,geo)
 require(g['max_degree']==13 and g['modular_integer_minors']==7231,'unexpected uniform saturation range')
 b=run(ledger,13,16,True)
 result={'status':'PASS_NEW_UNIFORM_SAT78_COVER16','geometry_status':g['status'],'max_saturation_e':13,'geometry_residual_minors':g['modular_integer_minors'],'geometry_negative_tests':g['negative_tests'],'cover':16,'edge16_requires_zero_excess':True,'main_joint_records':b['main']['joint_records'],'edge_relaxed_records':b['edge']['joint_records'],'evidence_grade':'author paper proof plus deterministic exact certificates; frozen inputs retained; no Lean; no external independent peer review','python':platform.python_version(),'seconds':round(time.monotonic()-t,3)}
 dump(out/'summary.json',result);print(json.dumps(result,indent=2),flush=True)
if __name__=='__main__':main()
