#!/usr/bin/env python3
"""Check new finite obligations only; inherited proofs remain explicit inputs."""
from pathlib import Path
import argparse,sys
if not __debug__:raise RuntimeError('Do not run Python with -O; frozen receivers use assertions.')
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT/'code'))
from check_new_results import run
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--out',type=Path,default=ROOT/'replay',help='Write new acceptance logs here; never overwrite frozen inputs.')
a=p.parse_args();run(a.out)
