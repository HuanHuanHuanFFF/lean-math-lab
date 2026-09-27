#!/usr/bin/env python3
"""Optional concrete row consumer. Exact trial division can be slow on huge inputs."""
import argparse
from core import consume,canonical

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--P',type=int,required=True);ap.add_argument('--Q',type=int,required=True)
    args=ap.parse_args()
    try:out=consume(args.P,args.Q)
    except (ValueError,AssertionError) as exc:ap.error(str(exc))
    print(canonical(out).decode(),end='')

if __name__=='__main__':main()
