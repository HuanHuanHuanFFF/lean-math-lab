
"""Independent n-first regeneration. No C++ code or helper is imported."""
import argparse
import json
from math import gcd, isqrt
from pathlib import Path

def root3(x):
    if x < 0: raise ValueError("negative cube-root input")
    lo,hi=0,1
    while hi**3<=x: hi*=2
    while lo+1<hi:
        m=(lo+hi)//2
        if m**3<=x: lo=m
        else: hi=m
    return lo

def rebuild(e, B):
    if e not in (1,3,5,7) or B<0:
        raise ValueError("unsupported range")
    raw=[]; first=[]; second=[]
    tested=0
    for c in (1,3):
        if c==3 and e%3==0: continue
        c4=c**4
        gmax=isqrt((648*e**3-1)//c4)
        # Reversed outer order: n/g first, followed by g.
        alpha=2*c
        Nlimit=20155392*e**9
        while alpha<=Nlimit:
            for g in range(1,gmax+1):
                if c==3 and g%3==0: continue
                n=alpha*g
                if n<8 or n%4: continue
                N=n-1
                if c**8*g*g*N>=20155392*e**9: continue
                dmin=B//e+1
                lo=isqrt(N//(12*e))
                while 12*e*lo*lo<N: lo+=1
                lo=max(lo,2*g*e+1)
                hi=min(
                    (1296*e**4-1)//(c4*g),
                    N//dmin,
                    root3((108*N*e**3-1)//(c4*g))
                )
                if lo%2==0: lo+=1
                for h in range(lo,hi+1,2):
                    if gcd(h,e*g)!=1: continue
                    tested+=1
                    if N%h: continue
                    d=N//h
                    beta=d*e
                    j=beta*g
                    rec=[n,j,c,g,alpha,beta,d,e,h]
                    raw.append(rec)
                    if beta<=B or gcd(alpha,beta)!=1 or j<4 or 2*j>=n: continue
                    if (3*j*(j-1))%(n-1):continue
                    if c4*n*n*g>=108*beta**3:continue
                    if gcd(beta,n-1)!=d or gcd(n,j)!=g:
                        raise AssertionError("canonical reconstruction")
                    first.append(rec)
                    if (j*(j-1)*(j-2))%((n-2)//gcd(n-2,6))==0:second.append(rec)
            alpha*=2
    key=lambda x:(x[0],x[1])
    return {"e":e,"old_beta_bound":B,"independent_h_tests":tested,
            "raw":sorted(raw,key=key),"first":sorted(first,key=key),"second":sorted(second,key=key)}

def check_payload(payload, expected):
    required={"e","old_beta_bound","raw","first","second"}
    if not required <= set(payload):raise ValueError("missing evidence keys")
    for k in ("e","old_beta_bound","raw","first","second"):
        if payload[k]!=expected[k]:raise ValueError(f"incomplete or altered {k}")
    if payload.get("integral_d",len(payload["raw"]))!=len(payload["raw"]):raise ValueError("raw count")
    if payload.get("first_count",len(payload["first"]))!=len(payload["first"]):raise ValueError("first count")
    if payload.get("second_count",len(payload["second"]))!=len(payload["second"]):raise ValueError("second count")
    if payload["second"]:raise ValueError("nonempty final projection")

def main():
    p=argparse.ArgumentParser()
    p.add_argument("certificate")
    p.add_argument("output")
    args=p.parse_args()
    data=json.loads(Path(args.certificate).read_text())
    if data["e"] not in (3,5,7) or data["old_beta_bound"] != 1048576:
        raise ValueError("this consumer certifies e in {3,5,7} over the fixed old beta frontier")
    out=rebuild(data["e"],data["old_beta_bound"])
    check_payload(data,out)
    result={"status":"PASS","e":out["e"],"old_beta_bound":out["old_beta_bound"],
            "independent_h_tests":out["independent_h_tests"],"raw_count":len(out["raw"]),
            "first_count":len(out["first"]),"second_count":len(out["second"]),
            "complete_arrays_equal":True,
            "all_raw_fail_first_divisibility":all((3*r[1]*(r[1]-1))%(r[0]-1) != 0 for r in out["raw"]),
            "minimum_nonzero_first_remainder":min((3*r[1]*(r[1]-1))%(r[0]-1) for r in out["raw"])}
    Path(args.output).write_text(json.dumps(result,sort_keys=True,indent=2)+"\n")
    print(json.dumps(result,sort_keys=True))
if __name__=="__main__":main()
