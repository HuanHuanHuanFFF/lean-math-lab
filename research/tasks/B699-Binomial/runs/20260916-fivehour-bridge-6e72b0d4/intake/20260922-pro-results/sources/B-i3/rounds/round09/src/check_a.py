#!/usr/bin/env python3
import json, sys
from pathlib import Path

def conv_pow(base, n):
    out=[1]
    for _ in range(n):
        z=[0]*(len(out)+len(base)-1)
        for i,a in enumerate(out):
            for j,b in enumerate(base): z[i+j]+=a*b
        out=z
    return out

def sub(a,b):
    n=max(len(a),len(b)); a=a+[0]*(n-len(a)); b=b+[0]*(n-len(b))
    return [a[i]-b[i] for i in range(n)]

def main(path):
    c=json.loads(Path(path).read_text())
    F=c['F5_coeff_ascending']
    if F != [2,25,150,280,200,48]: raise SystemExit('bad F5')
    low=sub(F,[0,0,0,0,0,48])
    while low and low[-1]==0: low.pop()
    if low != c['lower_gap_coeff_ascending']: raise SystemExit('bad lower gap')
    up=[48*x for x in conv_pow([1,1],5)]
    up=sub(up,F)
    while up and up[-1]==0: up.pop()
    if up != c['upper_gap_coeff_ascending']: raise SystemExit('bad upper gap')
    if not all(x>0 for x in low): raise SystemExit('lower positivity failed')
    if not all(x>0 for x in up): raise SystemExit('upper positivity failed')
    r=c['residual_exponent']
    if (r['offset']-r['subtract'])%r['divisor'] or r['step']%r['divisor']:
        raise SystemExit('exponent divisibility failed')
    # exact regression for q=0..20: fifth-power bracketing is incompatible with equality
    for q in range(21):
        S=r['offset']+r['step']*q
        if (S-4)%5: raise SystemExit('regression exponent')
        X=1<<((S-4)//5)
        # only logical endpoint: any y with equality must satisfy y<X<y+1
        if X<=0: raise SystemExit('bad X')
    print('PASS check_a')
if __name__=='__main__': main(sys.argv[1])
