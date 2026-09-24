#!/usr/bin/env python3
"""Negative tests: bad certificates must be rejected; no frozen file is edited."""
from __future__ import annotations
import argparse,copy,json
from pathlib import Path
import check_A,check_B

def accepts(fn,obj):
    try:fn(obj);return True
    except (AssertionError,KeyError,TypeError,ValueError):return False

def bump_constant(rows):
    for t in rows:
        if t[0]==0 and t[1]==0:t[2]=str(int(t[2])+1);return
    rows.append([0,0,'1'])

def run(good):
    cases=[]
    x=copy.deepcopy(good);x['items'][0]['shifted_numerator'][0][2]=str(int(x['items'][0]['shifted_numerator'][0][2])+1)
    cases.append(('shifted coefficient changed',x,False,False))
    x=copy.deepcopy(good);x['items'].pop()
    cases.append(('necessary inequality removed',x,False,False))
    x=copy.deepcopy(good);x['items'][0]['domain']['scale']=63
    cases.append(('domain weakened without proof',x,False,False))
    x=copy.deepcopy(good);bump_constant(x['items'][0]['numerator']);bump_constant(x['items'][0]['shifted_numerator'])
    cases.append(('internally consistent but wrong barrier identity',x,True,False))
    records=[]
    for name,obj,a_expected,b_expected in cases:
        a=accepts(check_A.verify,obj);b=accepts(check_B.verify,obj)
        assert (a,b)==(a_expected,b_expected),name
        assert not (a and b),name+' accepted by combined verifier'
        records.append({'mutation':name,'checker_A_accepts':a,'checker_B_accepts':b,'combined_rejects':True})
    return {'status':'PASS','bad_certificate_cases':records}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);args=ap.parse_args()
    print(json.dumps(run(json.loads(args.certificate.read_text())),indent=2,sort_keys=True))
if __name__=='__main__':main()
