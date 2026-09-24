"""Recompute this round's exact certificates in a new directory and compare bytes."""
from pathlib import Path
import hashlib,json,subprocess,sys
ROOT=Path(__file__).resolve().parents[1]

def main():
    if len(sys.argv)!=2:raise SystemExit('usage: python3 -B code/replay.py NEW_OUTPUT_DIRECTORY')
    dest=Path(sys.argv[1]).resolve()
    if dest.exists():raise SystemExit('Refusing to overwrite: output directory already exists')
    import source_descent,check_certificates
    source_descent.run(dest)
    receipt=check_certificates.verify(dest)
    names=['source_descent_all347.json','strictness_tests.json','h73_boundary_diagnostics.json',
           'final_E0_frontier.tsv','summary.json','state1027_all_multisets.json']
    checks={}
    for name in names:
        data=(dest/name).read_bytes()
        assert data==(ROOT/'certificates'/name).read_bytes(),name
        checks[name]=hashlib.sha256(data).hexdigest()
    result=dict(status='PASS_SOURCE_LINE_H73_CLEAN_REPLAY',certificate_files_compared=len(names),
                all_byte_identical=True,independent_consumer=receipt,outputs_sha256=checks,
                history_geometry_replayed=False,Lean=False,repository_writes=False)
    (dest/'REPLAY_RECEIPT.json').write_text(json.dumps(result,indent=2)+'\n')
    print(result['status'], 'all_byte_identical=true', 'files='+str(len(names)))

if __name__=='__main__':main()
