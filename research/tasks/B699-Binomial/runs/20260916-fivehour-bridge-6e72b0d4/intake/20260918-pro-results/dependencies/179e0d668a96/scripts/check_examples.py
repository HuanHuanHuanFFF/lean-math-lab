#!/usr/bin/env python3
"""Small executable examples and explicit original-input witnesses."""
from __future__ import annotations
import argparse,json
from math import isqrt
from pathlib import Path
from split_consumer import consume


def vp_fact(n: int,p: int) -> int:
    return sum(n//(p**a) for a in range(1,n.bit_length()+1) if p**a<=n)

def vp_choose(n: int,j: int,p: int) -> int:
    return vp_fact(n,p)-vp_fact(j,p)-vp_fact(n-j,p)


def main() -> None:
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir',type=Path,required=True)
    args=ap.parse_args();args.output_dir.mkdir(parents=True,exist_ok=True)
    rows=[]
    for n,j,p in [(52,18,5),(344,154,3),(76672,26775,3),(2832832,957672,3),(10844839833907948012,1222231510052744841,107)]:
        assert p>=3 and all(p%d for d in range(2,isqrt(p)+1))
        e,f=vp_choose(n,3,p),vp_choose(n,j,p)
        assert min(e,f)>0
        rows.append(dict(n=n,j=j,witness=p,vp_choose3=e,vp_choosej=f))
    obj={'scope':'one explicit common odd prime per diagnostic, not a counterexample search','rows':rows}
    (args.output_dir/'WEAK_WITNESSES.json').write_text(json.dumps(obj,sort_keys=True,indent=2)+'\n')
    tests=[]
    for n,j,expected in [(52,18,'PROVED_BY_SPLIT_THEOREM'),(344,154,'PROVED_BY_SPLIT_THEOREM'),(11272,5292,'PROVED_BY_SPLIT_THEOREM'),(8,4,'UNKNOWN'),(12,5,'UNKNOWN'),(10,4,'UNKNOWN'),(76672,26775,'UNKNOWN')]:
        result=consume(n,j)
        assert result['status']==expected
        tests.append(result)
    for n,j in [(7,4),(52,3),(52,27),(True,4)]:
        try:consume(n,j)
        except (TypeError,ValueError):tests.append({'n':n,'j':j,'status':'INVALID_INPUT_REJECTED'})
        else:raise AssertionError('invalid input accepted')
    (args.output_dir/'CONSUMER_TESTS.json').write_text(json.dumps({'status':'PASS','tests':tests},ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','explicit_witnesses':len(rows),'consumer_tests':len(tests)},sort_keys=True))

if __name__=='__main__':main()
