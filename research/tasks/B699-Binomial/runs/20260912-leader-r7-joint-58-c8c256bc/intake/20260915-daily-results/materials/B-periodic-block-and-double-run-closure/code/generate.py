#!/usr/bin/env python3
"""Generate the new finite certificate; no historical checker is invoked."""
from pathlib import Path
import argparse, json, math

def divisors(n: int) -> list[int]:
    out=set()
    for d in range(1,math.isqrt(n)+1):
        if n%d==0: out.update((d,n//d))
    return sorted(out)

def make_certificate() -> dict:
    groups=[]
    for q in (1,2):
        bound=9*q*(9*q+2)
        ds=divisors(bound)
        cases=[]
        for D in ds:
            for a in range(1,D):
                if 3*a*(3*a-1)%D or (6*a**3+q)%D: continue
                F=6*a*(a-D)*(a-2*D)
                target=q*((D+1)**3-2)
                assert F!=target
                cases.append([q,D,a,F-target])
        groups.append({"quotient":q,"constant":bound,"divisors":ds,"cases":cases})
    small=[]
    for n,j in ((16,5),(4096,196),(4096,456)):
        assert 3*j*(j-1)%(n-1)==0
        residue=6*j*(j-1)*(j-2)%(n-2)
        assert residue
        small.append([n,j,residue])
    return {"schema":"B699-periodic-v1","cube":groups,
            "double_single_run_exceptions":small,
            "cube_case_count":sum(len(g["cases"]) for g in groups),
            "finite_bounds":{"cube_base_max":361,"quotients":[1,2]},
            "scope":"finite certificate after a paper-complete reduction; not all NC3"}

def main():
    ap=argparse.ArgumentParser();ap.add_argument("--out",type=Path,required=True)
    args=ap.parse_args();args.out.mkdir(parents=True,exist_ok=True)
    data=make_certificate()
    (args.out/"period_certificate.json").write_text(
        json.dumps(data,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({"cube_cases":data["cube_case_count"],
                      "small_exceptions":len(data["double_single_run_exceptions"]),
                      "status":"generated"},ensure_ascii=False))

if __name__=="__main__": main()
