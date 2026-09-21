#!/usr/bin/env python3
"""Check the four displayed terminal remainders against the full certificate.
This is a transcription check, not a new mathematical verification algorithm.
"""
import json
from pathlib import Path
import re
import sys
ROOT=Path(__file__).resolve().parent


def main():
    if sys.flags.optimize: raise RuntimeError('Do not use Python optimization for verification')
    doc=json.loads((ROOT/'certificate.json').read_text())
    expected=[]
    for ep in doc['endpoints']:
        for P,Q,nu,cap,rem in ep['states']:
            if cap: expected.append((ep['D'],ep['t'],P,Q,nu,rem))
    text=(ROOT/'PROOFS.md').read_text()
    matches=re.findall(r'^\| (4|10),([1-4]) \| (\d+) \| (\d+) \| (\d+) \| (\d+) \|$',text,re.M)
    actual=[tuple(map(int,row)) for row in matches]
    assert sorted(actual)==sorted(expected)
    print(json.dumps({'status':'PASS_PAPER_ENDPOINT_TRANSCRIPTION','rows':len(actual)},sort_keys=True))

if __name__=='__main__':main()
