#!/usr/bin/env python3
"""Independent finite-range checker: direct integer reconstruction, no generator import."""
from pathlib import Path
import argparse,json

def require(test: bool, text: str) -> None:
    if not test: raise ValueError(text)

def check(data: dict) -> dict:
    require(data.get("schema")=="B699-periodic-v1","schema")
    require(data.get("finite_bounds")=={"cube_base_max":361,"quotients":[1,2]},"finite bounds")
    expected=[]
    brute_first=brute_both=0
    for q in (1,2):
        N=9*q*(9*q+2)
        ds=[d for d in range(1,N+1) if N%d==0]
        cases=[]
        # Reverse order relative to the generator; direct arithmetic.
        for x in range(2,362):
            D=x-1
            if N%D: continue
            for a in range(D-1,0,-1):
                if (9*a*a-3*a)%D==0 and (6*a*a*a+q)%D==0:
                    val=6*a*(D-a)*(2*D-a)-q*(x*x*x-2)
                    require(val!=0,"surviving cube equation")
                    cases.append([q,D,a,val])
        cases.sort()
        expected.append({"quotient":q,"constant":N,"divisors":ds,"cases":cases})
    require(data.get("cube")==expected,"missing/extra/mutated cube cases")
    require(data.get("cube_case_count")==7,"cube count")
    # All bases allowed by the proven bound, not only residue survivors.
    for x in range(2,362):
        n=x*x*x;S=x*x+x+1
        for a in range(1,x-1):
            j=a*S
            if (3*j*(j-1))%(n-1)==0:
                brute_first+=1
                if (6*j*(j-1)*(j-2))%(n-2)==0: brute_both+=1
    require(brute_both==0,"direct cubic range")
    small=[]
    for n,j in ((16,5),(4096,196),(4096,456)):
        require(4<=j<=n//2,"small legality")
        require(3*j*(j-1)%(n-1)==0,"small first window")
        r=6*j*(j-1)*(j-2)%(n-2)
        require(r!=0,"small second window")
        small.append([n,j,r])
    require(data.get("double_single_run_exceptions")==small,"small exceptions")
    return {"accepted":True,"cube_cases":7,"complete_base_interval":[2,361],
            "direct_first_window_cases":brute_first,"direct_both_windows":brute_both,
            "double_single_run_exceptions":3}

def main():
    ap=argparse.ArgumentParser();ap.add_argument("--out",type=Path,required=True)
    args=ap.parse_args()
    data=json.loads((args.out/"period_certificate.json").read_text())
    ans=check(data)
    (args.out/"certificate_check.json").write_text(json.dumps(ans,indent=2)+"\n")
    print(json.dumps(ans))

if __name__=="__main__": main()
