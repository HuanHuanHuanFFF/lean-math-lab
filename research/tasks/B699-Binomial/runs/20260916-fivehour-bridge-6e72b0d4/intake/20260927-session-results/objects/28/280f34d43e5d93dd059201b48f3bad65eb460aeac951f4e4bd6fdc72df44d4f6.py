#!/usr/bin/env python3
"""Read-only mathematical row consumer; exact trial division can be slow for huge inputs."""
import argparse
import sys
from core import consume, canonical
p=argparse.ArgumentParser()
p.add_argument('--P',type=int,required=True)
p.add_argument('--Q',type=int,required=True)
a=p.parse_args()
try:
    sys.stdout.buffer.write(canonical(consume(a.P,a.Q)))
except (ValueError,AssertionError) as e:
    p.exit(2,str(e)+'\n')
