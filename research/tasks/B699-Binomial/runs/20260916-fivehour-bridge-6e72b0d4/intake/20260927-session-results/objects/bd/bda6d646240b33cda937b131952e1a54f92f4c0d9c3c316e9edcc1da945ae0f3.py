"""Regenerate this round's finite certificates, in a working copy only."""
from pathlib import Path
import json, time
from core import canonical, digest
import algebra,experiments
ROOT=Path(__file__).resolve().parents[1]

def main():
    tasks={'algebra':algebra.run,'negative_terminal':experiments.negative_terminal,
           'independent_terminal':experiments.independent_terminal,'e2_terminal':experiments.e2_terminal,
           'actual_rows':experiments.actual_rows,'direct_rows':experiments.direct_rows,
           'boundaries':experiments.boundaries}
    log={}
    for name,fn in tasks.items():
        start=time.perf_counter();data=fn()
        (ROOT/'certificates'/f'{name}.json').write_bytes(canonical(data))
        log[name]=dict(sha256=digest(data),elapsed_seconds=round(time.perf_counter()-start,6),status='PASS')
    (ROOT/'logs'/'discovery.json').write_bytes(canonical(log))
    print(json.dumps(log,indent=2))
if __name__=='__main__':main()
