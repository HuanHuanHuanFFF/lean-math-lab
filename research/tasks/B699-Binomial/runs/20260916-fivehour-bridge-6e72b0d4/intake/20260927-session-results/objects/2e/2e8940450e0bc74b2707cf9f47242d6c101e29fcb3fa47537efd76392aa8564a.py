#!/usr/bin/env python3
"""Regenerate finite certificates in a WORKING COPY, not required for verification."""
from pathlib import Path
import time
from core import canonical
from experiments import all_results

def main():
    root=Path(__file__).resolve().parents[1];start=time.monotonic()
    result=all_results()
    for name,data in result.items():(root/'certificates'/name).write_bytes(canonical(data))
    summary=dict(status='PASS',seconds=round(time.monotonic()-start,3),
                 exterior=result['exterior_P1000.json']['counts'],
                 near=result['near_P5000.json']['counts'],
                 full_row_pairs=result['direct_full_rows.json']['total_pairs'])
    (root/'logs'/'discovery.json').write_bytes(canonical(summary))
    print(canonical(summary).decode(),end='')

if __name__=='__main__':main()
