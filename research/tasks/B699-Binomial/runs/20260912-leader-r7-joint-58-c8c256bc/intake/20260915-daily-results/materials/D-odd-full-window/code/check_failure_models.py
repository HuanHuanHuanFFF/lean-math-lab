#!/usr/bin/env python3
"""Check finite rational relaxation witnesses only, never original NC witnesses."""
from pathlib import Path
from fractions import Fraction
from itertools import permutations
import json, argparse
import verify as V
ROOT=Path(__file__).resolve().parents[1]

def check(dat):
    expected={5:{(0,1),(0,2),(0,3)},7:{(0,1,2),(0,1,3),(0,1,4),(0,1,5),(0,1,6),(0,2,3),(0,2,4),(0,2,5),(0,2,6),(0,3,4)}}
    V.need(len(dat['models'])==13)
    V.need({m:{tuple(z['H']) for z in dat['models'] if z['m']==m} for m in expected}==expected)
    pools={}; counts={}; results=[]
    for m in expected:
        pts=[(b,r-b) for r in range(m) for b in range(r+1)]
        fs=dat['pools'][str(m)];V.need(len(fs)=={5:696,7:2351}[m])
        seen=set()
        for f in fs:
            V.need((f['degree'],tuple(f['coeffs'])) not in seen,'duplicate polynomial')
            seen.add((f['degree'],tuple(f['coeffs'])))
            # Both signs of j-k can occur in the discovery pool.
            if f['nonzero']=='sign':
                z=V.translate(f,m+1); c=z.get((0,0),0)
                V.need(c!=0 and all(v*c>=0 for v in z.values()),'unproved sign')
            else:
                allowed={(1,(1,-1,0)),(1,(-1,1,0)),(2,(1,-1,0,0,0,0)),(2,(0,1,-1,0,0,0))}
                V.need(f['nonzero']=='central' and (f['degree'],tuple(f['coeffs'])) in allowed,'unproved zero locus')
            zeros=[q for q,(x,y) in enumerate(pts) if V.polynomial(f,x,y)==0]
            V.need(zeros==f['zeros'] and zeros,'wrong polynomial zeros')
        pools[m]=(pts,fs);counts[str(m)]=len(fs)
    for model in dat['models']:
        m,H=model['m'],model['H'];pts,fs=pools[m]
        x=[Fraction(z) for z in model['values']]
        V.need(len(x)==len(pts) and all(z>=0 for z in x),'invalid rational mass')
        V.need(all(x[q]==0 for q,(a,b) in enumerate(pts) if a+b in H),'mass on excluded row')
        for r in range(m):
            if r not in H:V.need(sum(x[q] for q,(a,b) in enumerate(pts) if a+b==r)>=1,'row deficiency')
        for f in fs:V.need(sum(x[q] for q in f['zeros'])<=f['degree'],'polynomial inequality')
        c=len(fs)+m-len(H);V.need(c==model['checked_inequalities'])
        results.append({'target':m,'H':H,'checked_inequalities':c,'max_denominator':max(z.denominator for z in x)})
    return {'status':'PASS_FINITE_RATIONAL_MODELS','pools':counts,'models':results,'original_NC_witnesses':False,'general_impossibility':False}

def main(out):
    data=json.loads((ROOT/'evidence/failure_models.json').read_text());r=check(data)
    dest=Path(out);dest.mkdir(parents=True,exist_ok=True)
    (dest/'failure_model_verification.json').write_text(json.dumps(r,sort_keys=True,separators=(',',':'))+'\n')
    print('PASS 13 finite rational relaxation models; NOT integer counterexamples')
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'evidence'));a=ap.parse_args();main(a.out)
