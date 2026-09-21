#!/usr/bin/env python3
"""Find a counterexample to DROPPING the complete single-source block assumption.
This bounded probe is not a search for B699 counterexamples and proves no
unbounded nonexistence statement. It exits on the first diagnostic model.
"""
import json
from math import gcd

def main():
    for X in range(4,10000,2):
        M=X*X-1
        for Q in (11,13,17,19,23,29,31):
            if M%Q:continue
            D=M//Q
            if D<=Q or gcd(D,Q)!=1:continue
            Ahat=pow(Q*Q,-1,D)
            if D*Q>Ahat*Q*Q+3 and D*Q>6 and (X-1)%D and (X+1)%D:
                print(json.dumps({'X':X,'D':D,'Q':Q,'T':1,'Ahat':Ahat,'eta':3,'source_quotient':(Ahat*Q*Q-1)//D},sort_keys=True))
                return
    raise SystemExit('No diagnostic found inside this probe; not an infinite conclusion.')
if __name__=='__main__':main()
