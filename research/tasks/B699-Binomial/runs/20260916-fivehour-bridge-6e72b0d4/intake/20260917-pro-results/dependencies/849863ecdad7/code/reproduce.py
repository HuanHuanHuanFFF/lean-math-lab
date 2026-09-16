"""Replay only this round's short proof parameters and bounded diagnostics.
No discovery optimization, historical proof replay, dense matrix allocation,
or uncomputed kernel/resultant acceptance occurs here.
"""
from pathlib import Path
from datetime import datetime,timezone
import argparse,json,sys,time,platform
from certificate import ROOT,verify
from diagnostics import run as diagnostics
from mutation_tests import run as mutations

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True)
    args=ap.parse_args();out=args.out.resolve()
    if out.exists() and any(out.iterdir()):raise SystemExit('Output directory must be empty; historical logs will not be overwritten.')
    out.mkdir(parents=True,exist_ok=True)
    start=time.perf_counter()
    cert=json.loads((ROOT/'evidence/small_kernel_certificate.json').read_text())
    reports={'parameters':verify(cert),'diagnostics':diagnostics(),'mutations':mutations(cert)}
    for name,result in reports.items():(out/f'{name}.json').write_text(json.dumps(result,indent=2))
    summary={'status':'PASS_NEW_RANK_FREE_ALGEBRAIC_REDUCTION_REPLAY','seconds':time.perf_counter()-start,
             'utc':datetime.now(timezone.utc).isoformat(),'python':platform.python_version(),
             'checks':reports,'large_kernel_coefficients_computed':False,'old_chain_replayed':False,
             'new_resultant_or_gcd_computed':False,'Lean':False}
    (out/'summary.json').write_text(json.dumps(summary,indent=2))
    print(json.dumps({k:v for k,v in summary.items() if k!='checks'},indent=2))

if __name__=='__main__':main()
