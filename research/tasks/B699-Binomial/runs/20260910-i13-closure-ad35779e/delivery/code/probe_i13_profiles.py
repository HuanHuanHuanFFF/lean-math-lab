"""Floating design, followed by exact graph operations only.
Acceptance of analytic cuts is a separate explicitly invoked step.
"""
import sys,json,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
SRC=ROOT/'input/unpacked/asymmetric-pade/B699-asymmetric-Pade/code'
sys.path.insert(0,str(SRC))
from probe_dynamic_cuts import build_candidates,rows_at_height
sys.path.insert(0,str(ROOT/'code'))
from probe_weighted_asymmetric import solve,nondominated
PS=[2,3,5,7,11]

def main():
    cand=build_candidates();out=[]
    for bits in [2048,4096,8192,16384,32768,65536,131072]:
        rows=[r for r in rows_at_height(cand,bits-1) if r['p'] in PS and r['q'] in PS]
        edges=nondominated(rows)
        ans=solve(PS,edges,lambda z:sum(a*b for a,b in zip([16,15,14,13,12],sorted(z))))
        r={'bits':bits,'cuts':[e[4] for e in edges],'cut_count':len(edges),'weighted':ans,'gain':ans['min']-12000,
           'scalar':solve(PS,edges,sum)};out.append(r)
        print(bits,len(edges),r['scalar']['min'],ans['min'],'gain',r['gain'],ans['witness'],flush=True)
    (ROOT/'outputs/i13_design_profiles.json').write_text(json.dumps(out,indent=2)+'\n')
if __name__=='__main__':main()
