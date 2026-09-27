"""Read-only reception: regenerate all current certificates; verify hashes.
Supply --output OUTSIDE the archive tree. No source or certificate is rewritten.
"""
from pathlib import Path
import argparse,hashlib,json,time,sys
from core import canonical,digest
import algebra,experiments
ROOT=Path(__file__).resolve().parents[1]

def check_manifest(path):
    count=0
    if not path.exists():return None
    for line in path.read_text().splitlines():
        if not line.strip():continue
        expected,name=line.split('  ',1); p=ROOT/name
        assert p.is_file(),name
        assert hashlib.sha256(p.read_bytes()).hexdigest()==expected,name
        count+=1
    return count

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);args=ap.parse_args()
    output=Path(args.output).resolve()
    if ROOT==output or ROOT in output.parents:raise ValueError('output must be outside the extracted tree')
    tasks={'algebra':algebra.run,'negative_terminal':experiments.negative_terminal,
           'independent_terminal':experiments.independent_terminal,'e2_terminal':experiments.e2_terminal,
           'actual_rows':experiments.actual_rows,'direct_rows':experiments.direct_rows,
           'boundaries':experiments.boundaries}
    report={'status':'PASS','python':sys.version,'certificates':{}}
    for name,fn in tasks.items():
        start=time.perf_counter();expected=json.loads((ROOT/'certificates'/f'{name}.json').read_text())
        actual=fn()
        assert canonical(actual)==canonical(expected),name
        report['certificates'][name]=dict(status='PASS',sha256=digest(actual),elapsed_seconds=round(time.perf_counter()-start,6))
    report['payload_manifest_files']=check_manifest(ROOT/'PAYLOAD_SHA256SUMS.txt')
    report['final_manifest_files']=check_manifest(ROOT/'SHA256SUMS.txt')
    output.write_bytes(canonical(report));print(json.dumps(report,indent=2))
if __name__=='__main__':main()
