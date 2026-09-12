#!/usr/bin/env python3
"""Exact second implementation of the optimized divisor consumer.
Reconstructs candidate membership by divisibility in the entire proved height
interval, NOT by trusting a submitted divisor list or generator factorization.
"""
from pathlib import Path
from copy import deepcopy
import json,time
from verify_certificates import central_height,check_witness,require,CertificateError
ROOT=Path(__file__).resolve().parents[1]

def verify(cert):
    require(cert['D']==8,'wrong scope')
    rows=cert['rows'];ws=cert['witnesses']
    expected=[(i,d) for i in range(2,15) for d in range(9)]
    require(len(rows)==len(expected),'missing divisor cell')
    pos=0; per_i={};endpoint=0;higher=0
    for r,(i,d) in zip(rows,expected):
        require((r['i'],r['d'])==(i,d),'wrong divisor cell')
        K,H=central_height(i,d); c=3 if i in (8,9,12,13,14) else 1;M=c*K
        require((r['c'],r['K'],r['M'])==(c,K,M),'wrong divisor kernel')
        require(r['witness_start']==pos,'wrong divisor segment start')
        count=0
        for n in range(2*i+2+d,H+1,2):
            if not any((n-a)%2==1 and M%(n-a)==0 for a in range(i)):
                continue
            require(pos<len(ws),'missing divisor witness')
            w=ws[pos]
            require(len(w)==5 and w[:3]==[i,d,n],'missing/duplicated divisor candidate')
            check_witness(n,i,(n-d)//2,w[3],w[4])
            endpoint+=w[3]==i;higher+=w[4]>1
            pos+=1;count+=1
        require(r['witness_count']==count,'wrong divisor segment count')
        per_i[i]=per_i.get(i,0)+count
    require(pos==len(ws)==cert['total_checked'],'extra divisor witnesses')
    return {'cells':len(rows),'pairs':pos,'per_i':per_i,'endpoint_witnesses':endpoint,'higher_carries':higher}

def main():
    ts=time.monotonic();cert=json.loads((ROOT/'evidence/central-divisor-certificate.json').read_text())
    result=verify(cert);negative=[]
    tests=[('delete candidate',lambda c:c['witnesses'].pop(0)),
           ('duplicate candidate',lambda c:c['witnesses'].insert(0,c['witnesses'][0])),
           ('alter smallpart constant',lambda c:c['rows'][0].__setitem__('c',0)),
           ('alter divisor modulus',lambda c:c['rows'][0].__setitem__('M',1)),
           ('remove a cell',lambda c:c['rows'].pop()),
           ('invalidate carry',lambda c:c['witnesses'][0].__setitem__(4,0))]
    for name,mutation in tests:
        bad=deepcopy(cert);mutation(bad)
        try:verify(bad)
        except CertificateError as e:negative.append({'mutation':name,'status':'REJECTED','reason':str(e)})
        else:raise AssertionError('accepted corruption: '+name)
    out={'status':'PASS_SECOND_IMPLEMENTATION_NOT_LEAN','result':result,'negative_tests':negative,
         'seconds':time.monotonic()-ts}
    (ROOT/'evidence/central-divisor-verification.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
if __name__=='__main__':main()
