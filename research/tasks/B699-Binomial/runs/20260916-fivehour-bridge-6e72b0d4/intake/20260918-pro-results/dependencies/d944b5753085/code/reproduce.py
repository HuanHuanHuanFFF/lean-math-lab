#!/usr/bin/env python3
"""Replay only the new quintic evidence. Usage: --out /absolute/empty/directory"""
import argparse,json,sys,time,traceback,platform,hashlib
from pathlib import Path
from datetime import datetime,timezone
from check_new import verify_saturation,numerical_case,verify_counts,rejected_mutations,CASES
ROOT=Path(__file__).resolve().parents[1]
def main():
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);args=p.parse_args()
    out=Path(args.out)
    if not out.is_absolute():p.error('--out must be absolute')
    if out.exists() and any(out.iterdir()):p.error('--out must be empty')
    out.mkdir(parents=True,exist_ok=True)
    start=time.monotonic()
    try:
        cert=json.loads((ROOT/'evidence/saturation_certificate.json').read_text())
        saturation=verify_saturation(cert)
        heights=[numerical_case(q) for q in CASES]
        counts=verify_counts();mutations=rejected_mutations(cert)
        result={'status':'PASS_NEW_QUINTIC33_REPLAY','time_utc':datetime.now(timezone.utc).isoformat(),
                'elapsed_seconds':time.monotonic()-start,'python':platform.python_version(),
                'saturation':saturation,'height_consumers':heights,'joint_counting':counts,
                'rejected_mutations':mutations,
                'checked_source_sha256':{str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((ROOT/'code').glob('*.py'))},
                'proof_sha256':hashlib.sha256((ROOT/'PROOFS.md').read_bytes()).hexdigest(),
                'certificate_sha256':hashlib.sha256((ROOT/'evidence/saturation_certificate.json').read_bytes()).hexdigest(),
                'scope':'Author implementation-level exact checks. No Lean, no external full review, no old-chain replay; infinite arguments are in PROOFS.md.'}
        (out/'REPLAY.json').write_text(json.dumps(result,indent=2,ensure_ascii=False)+'\n')
        print(result['status'])
        print('saturation=92 inconsistent=64 reducible=28 component_bound=33')
        print('profiles='+','.join(str(q['profile_count']) for q in heights)+' mutation_rejects='+str(len(mutations)))
        print('elapsed_seconds='+format(result['elapsed_seconds'],'.6f'))
    except Exception:
        (out/'ERROR.txt').write_text(traceback.format_exc());raise
if __name__=='__main__':main()
