#!/usr/bin/env python3
"""Independent standard-library verifier. No imports from the generator.
A complete recursively certified factorization + exhaustive unitary choices
makes the finite tail check deterministic, not a probable-prime computation.
"""
from __future__ import annotations
import argparse
from copy import deepcopy
from collections import Counter
from fractions import Fraction
import json
from math import gcd, prod
from pathlib import Path
import sys

class Rejected(ValueError):
    pass


def need(condition: bool, message: str) -> None:
    if not condition:
        raise Rejected(message)


def integer(value) -> int:
    need(isinstance(value, str) and len(value) < 1000, "Integer must be a bounded decimal string")
    try:
        result = int(value)
    except (ValueError, TypeError) as exc:
        raise Rejected("Bad integer encoding") from exc
    need(str(result) == value, "Noncanonical integer encoding")
    return result


def power_mod(a: int, e: int, m: int) -> int:
    """Manual binary modular exponentiation, distinct from generator's pow."""
    out=1
    a %= m
    while e:
        if e & 1:
            out = out*a % m
        a = a*a % m
        e >>= 1
    return out


def square_root_floor(n: int) -> int:
    need(n >= 0, "Square root of negative input")
    lo,hi=0,1 << ((n.bit_length()+1)//2)
    while lo+1<hi:
        mid=(lo+hi)//2
        if mid*mid <= n:
            lo=mid
        else:
            hi=mid
    return hi if hi*hi<=n else lo


def expected_domain() -> dict[int,list[dict[str,int]]]:
    out={}
    for m in (4,6):
        for a in range(1,32):
            x=2*a
            n=2*x**m
            out.setdefault(n,[]).append({"M":m,"x":x})
    for x in (2,4,6):
        out.setdefault(2*x**10,[]).append({"M":10,"x":x})
    for m, upper in ((14,7),(22,10)):
        for e in range(1,upper+1):
            x=1 << e
            out.setdefault(2*x**m,[]).append({"M":m,"x":x})
    return out


def finite_threshold_checks() -> dict:
    # Monotonic extensions from these integer inequalities are proved in PROOFS.
    need(32*9*64**4 < 5**4*63**4, "Quartic h bound")
    need(63//3 > 19, "Quartic residual gap")
    need(64**4 > 32, "Quartic quadratic block")
    need(21**4 > 32*4096, "Sextic three-block bound")
    data=[]
    for q,x,order in ((5,8,1),(7,256,1),(11,2048,2)):
        y=x*x;F=y-1
        need(x**(2*q-4)>162*q**4,"Large cyclotomic blocks")
        if order==1:
            need(F>12*q,"First-order residue size")
            need(F**8>32*3**6*y**q,"First-order h bound")
        else:
            R=4*q+2*q*(q-1)*F
            need(F*F>9*R,"Second-order residue size")
            need(F**12>32*3**10*y**q,"Second-order h bound")
        data.append({"ell":q,"x_threshold":x,"order":order})
    return {"quartic":64,"sextic":64,"cyclotomic":data}


def verify(obj:dict) -> dict:
    need(isinstance(obj,dict),"Certificate must be an object")
    need(obj.get("schema")=="B699-ProE-power-support-v1","Wrong schema")
    need(obj.get("thresholds")=={"4":64,"6":64,"10":8,"14":256,"22":2048},"Wrong thresholds")
    nodes=obj.get("prime_certificates")
    need(isinstance(nodes,list),"Missing prime certificates")
    checked={}
    for node in nodes:
        p=integer(node["p"])
        need(p not in checked and p>=2,"Duplicate/nonpositive prime")
        if p==2:
            need(node=={"p":"2","factors":[],"witness":None},"Bad prime base")
            checked[p]=True
            continue
        fs=node.get("factors")
        need(isinstance(fs,list) and len(fs)>0,"Missing p-1 factorization")
        seen=set(); product=1
        for q_s,e in fs:
            q=integer(q_s)
            need(q in checked and q<p and q not in seen,"Uncertified or repeated prime factor")
            need(type(e) is int and 1<=e<=p.bit_length(),"Bad prime exponent")
            seen.add(q);product*=q**e
        need(product==p-1,"Incomplete p-1 factorization")
        a=node.get("witness")
        need(type(a) is int and 1<a<p,"Bad order witness")
        need(power_mod(a,p-1,p)==1,"Fermat identity failed")
        for q in seen:
            need(gcd(power_mod(a,(p-1)//q,p)-1,p)==1,"Full order gcd failed")
        checked[p]=True
    need(list(checked)==sorted(checked),"Prime nodes must be topologically sorted")
    domain=expected_domain()
    rows=obj.get("rows")
    need(isinstance(rows,list) and len(rows)==len(domain),"Missing/extra row")
    seen_n=set();count=Counter();norm_survivors=[];unique_cases=set()
    for row in rows:
        n=integer(row["n"])
        need(n in domain and n not in seen_n,"Wrong/duplicate n")
        seen_n.add(n)
        need(row.get("representations")==domain[n],"Incomplete or wrong original representations")
        need(row.get("lambda")==1,"Isolated 3 in first window is wrong")
        need(n%16==0 and (n-1)%3!=0,"Row preconditions")
        v=(n-2)//2
        v3=0;temp=v
        while temp%3==0:
            v3+=1;temp//=3
        mu=3 if v3==1 else 1
        need(row.get("mu")==mu,"Isolated 3 in second window is wrong")
        K=integer(row["K"])
        need(K==v//mu,"Incorrect K")
        fs=row.get("factorization")
        need(isinstance(fs,list),"Missing K factorization")
        ps=[];powers=[];fac_product=1
        for p_s,e in fs:
            p=integer(p_s)
            need(p in checked and p%2==1 and p not in ps,"Bad K prime")
            need(type(e) is int and 1<=e<=K.bit_length(),"Bad K exponent")
            ps.append(p);powers.append(p**e);fac_product*=p**e
        need(ps==sorted(ps) and fac_product==K,"Incomplete K factorization")
        expected=set()
        # Full unitary divisor enumeration, then filter support cardinality.
        # This differs from generator's singles/pairs construction.
        for mask in range(1 << len(powers)):
            if mask.bit_count()>2:
                continue
            C=1
            for i,pow_i in enumerate(powers):
                if mask >> i & 1:
                    C*=pow_i
            expected.add(C)
        cases=row.get("cases")
        need(isinstance(cases,list) and len(cases)==len(expected),"Missing/extra C case")
        got=set()
        for case in cases:
            C=integer(case["C"]);H=integer(case["H"])
            need(C in expected and C not in got,"Wrong/duplicate C")
            got.add(C);unique_cases.add((n,C))
            need(C*H==K and gcd(C,H)==1,"Not a complete unitary allocation")
            z=integer(case["norm_quotient"]);r=integer(case["norm_remainder"])
            need(4*C-1==z*H*H+r and 0<=r<H*H,"Bad norm division")
            if r:
                need(case.get("rejection")=="nonintegral_z","Incorrect norm rejection")
                need("D" not in case and "root_floor" not in case,"Extraneous recovery fields")
                count["nonintegral_z"]+=1
            else:
                need(z>0,"Nonpositive z")
                D=integer(case["D"])
                # Root discriminant via the original product, not a separate H model.
                beta_gamma=(n-1)*C
                actual_D=4*((n//2)**2-4*beta_gamma)
                need(D==actual_D,"Wrong original-input discriminant")
                if D<0:
                    need(case.get("rejection")=="negative_discriminant","Wrong negative branch")
                    need("root_floor" not in case,"Negative branch root")
                    count["negative_discriminant"]+=1
                else:
                    floor=integer(case["root_floor"])
                    need(floor==square_root_floor(D),"Wrong square-root floor")
                    need(floor*floor<D<(floor+1)**2,"Discriminant not strictly between squares")
                    need(case.get("rejection")=="strict_square_gap","Wrong square gap label")
                    count["strict_square_gap"]+=1
                norm_survivors.append({"n":str(n),"C":str(C),"H":str(H),"z":str(z),"D":str(D)})
        need(got==expected,"C enumeration incomplete")
    need(seen_n==set(domain),"Original row domain incomplete")
    return {"status":"PASS", "original_representations":sum(map(len,domain.values())),
            "distinct_n":len(domain),"complete_unitary_cases":len(unique_cases),
            "rejections":dict(sorted(count.items())),"norm_survivors":norm_survivors,
            "certified_prime_nodes":len(checked),"largest_prime":str(max(checked)),
            "largest_n":str(max(domain)), "threshold_checks":finite_threshold_checks()}


def negative_tests(good:dict) -> list[dict]:
    def mutate(label, fn):
        bad=deepcopy(good);fn(bad)
        try:
            verify(bad)
        except (Rejected,KeyError,TypeError,IndexError,ZeroDivisionError) as exc:
            return {"test":label,"status":"REJECTED","diagnostic":str(exc)}
        raise AssertionError(f"Corruption accepted: {label}")
    first_surv=next((i,j) for i,r in enumerate(good["rows"]) for j,c in enumerate(r["cases"]) if c["rejection"]!="nonintegral_z")
    gap=next((i,j) for i,r in enumerate(good["rows"]) for j,c in enumerate(r["cases"]) if c["rejection"]=="strict_square_gap")
    tests=[
      ("drop_original_row",lambda o:o["rows"].pop()),
      ("drop_complete_C_choice",lambda o:o["rows"][0]["cases"].pop()),
      ("duplicate_C_choice",lambda o:o["rows"][0]["cases"].append(deepcopy(o["rows"][0]["cases"][0]))),
      ("erase_second_representation",lambda o:next(r for r in o["rows"] if len(r["representations"])>1)["representations"].pop()),
      ("wrong_isolated_3",lambda o:o["rows"][0].__setitem__("mu",1)),
      ("strip_prime_power_exponent",lambda o:next(r for r in o["rows"] if any(e>1 for p,e in r["factorization"]))["factorization"].__setitem__(0,["3",1])),
      ("incorrect_K",lambda o:o["rows"][0].__setitem__("K","1")),
      ("zero_norm_remainder",lambda o:next(c for r in o["rows"] for c in r["cases"] if c["rejection"]=="nonintegral_z").__setitem__("norm_remainder","0")),
      ("wrong_H",lambda o:o["rows"][0]["cases"][0].__setitem__("H","1")),
      ("mix_original_discriminant",lambda o:o["rows"][first_surv[0]]["cases"][first_surv[1]].__setitem__("D","-1")),
      ("false_square_root",lambda o:o["rows"][gap[0]]["cases"][gap[1]].__setitem__("root_floor","0")),
      ("wrong_rejection_label",lambda o:o["rows"][gap[0]]["cases"][gap[1]].__setitem__("rejection","negative_discriminant")),
      ("remove_prime_node",lambda o:o["prime_certificates"].pop()),
      ("bad_prime_order_witness",lambda o:o["prime_certificates"][-1].__setitem__("witness",1)),
      ("truncate_prime_minus_one",lambda o:o["prime_certificates"][-1]["factors"].pop()),
      ("duplicate_prime_node",lambda o:o["prime_certificates"].append(deepcopy(o["prime_certificates"][0]))),
      ("weaken_infinite_threshold",lambda o:o["thresholds"].__setitem__("22",1024)),
      ("alter_original_n",lambda o:o["rows"][0].__setitem__("n","30")),
    ]
    return [mutate(label,fn) for label,fn in tests]


def main() -> int:
    p=argparse.ArgumentParser()
    p.add_argument("--certificate",type=Path,required=True)
    p.add_argument("--output",type=Path,required=True)
    p.add_argument("--negative-tests",action="store_true")
    a=p.parse_args()
    need(a.certificate.stat().st_size<8_000_000,"Certificate exceeds size budget")
    obj=json.loads(a.certificate.read_text(encoding="utf-8"))
    result=verify(obj)
    if a.negative_tests:
        result["negative_tests"]=negative_tests(obj)
    a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(result,indent=2,sort_keys=True)+"\n",encoding="utf-8")
    print(json.dumps({k:result[k] for k in ("status","original_representations","distinct_n","complete_unitary_cases","rejections","certified_prime_nodes")},ensure_ascii=False))
    return 0

if __name__=="__main__":
    try:
        sys.exit(main())
    except Rejected as exc:
        print(f"REJECTED: {exc}",file=sys.stderr)
        sys.exit(1)
