#!/usr/bin/env python3
"""Optimized fixed-ratio certificates: exact height intersected with master kernels."""
from pathlib import Path
import json,time
from linear_kernel import strong_ratio_kernels,strong_admissible
ROOT=Path(__file__).resolve().parents[1]

def main():
    ts=time.monotonic()
    old=json.loads((ROOT/'evidence/rational-terminal-certificate.json').read_text())
    lookup={tuple(w[:4]):w[4:] for w in old['witnesses']}
    rows=[];ws=[]
    for original in old['rows']:
        row={k:v for k,v in original.items() if k not in ('witness_start','witness_count')}
        i,A,B=row['i'],row['A'],row['B']
        kernels=strong_ratio_kernels(i,A,B)
        for k in kernels:
            if k['q']==2:assert k['W']**k['r']<=k['F']
        row['kernels']=kernels;row['witness_start']=len(ws)
        for t in range(row['t_min'],row['t_cut']):
            if strong_admissible(B*t,i,kernels):ws.append([i,A,B,t,*lookup[(i,A,B,t)]])
        row['witness_count']=len(ws)-row['witness_start'];rows.append(row)
    out={'status':'RATIO_HEIGHT_AND_MASTER_KERNEL_FINITE_CONSUMER','rows':rows,'witnesses':ws,'total_checked':len(ws)}
    (ROOT/'evidence/rational-kernel-certificate.json').write_text(json.dumps(out,separators=(',',':'))+'\n')
    info={'status':'GENERATED_FOR_SECOND_CHECK','cells':len(rows),'pairs':len(ws),'earlier_height_pairs':len(old['witnesses']),
          'seconds':time.monotonic()-ts}
    (ROOT/'evidence/rational-kernel-generation.json').write_text(json.dumps(info,indent=2)+'\n')
    print(info)
if __name__=='__main__':main()
