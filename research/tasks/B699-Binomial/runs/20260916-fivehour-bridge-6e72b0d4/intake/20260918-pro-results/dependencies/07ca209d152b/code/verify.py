"""Replay the new finite algebra and instance evidence. Not a Lean proof checker."""
from __future__ import annotations
import copy
import json
import math
from collections import Counter
from fractions import Fraction as F
from pathlib import Path
from consumer import (valuation, small_part, rough, vp_binomial, verify_prime,
                      make_row_certificate, verify_row_certificate,
                      make_point_certificate, verify_point_certificate,
                      force_exit_point)
ROOT = Path(__file__).resolve().parents[1]

# Sparse polynomial arithmetic with exact rational coefficients.
NV = 5
ZERO = (0,) * NV

def const(c):
    return {} if not c else {ZERO: F(c)}

def var(k):
    e = list(ZERO); e[k] = 1
    return {tuple(e): F(1)}

def add(*polys):
    z = {}
    for p in polys:
        for m, c in p.items(): z[m] = z.get(m, F(0)) + c
    return {m:c for m,c in z.items() if c}

def scale(p, a):
    return {m:a*c for m,c in p.items() if a*c}

def mul(p, q):
    z = {}
    for m,c in p.items():
        for k,d in q.items():
            e = tuple(a+b for a,b in zip(m,k))
            z[e] = z.get(e, F(0)) + c*d
    return {e:c for e,c in z.items() if c}

def power(p, k):
    z = const(1)
    for _ in range(k): z = mul(z,p)
    return z

def sub(p,q): return add(p,scale(q,-1))

def algebra():
    A,u,X,C,v = [var(k) for k in range(5)]
    n = add(mul(A,X),C)
    j = add(mul(u,X),v)
    Z = sub(mul(A,v),mul(u,sub(C,const(1))))
    assert Z == sub(mul(A,j),mul(u,sub(n,const(1))))
    lhs = sub(mul(power(A,2),mul(j,sub(j,const(1)))),mul(Z,sub(Z,A)))
    rhs = mul(sub(n,const(1)),add(mul(power(u,2),sub(n,const(1))),
                               mul(u,sub(scale(Z,2),A))))
    assert lhs == rhs
    y=var(0); x=y
    P=const(1)
    for t in range(4): P=mul(P,sub(y,const(t)))
    z=mul(y,sub(const(3),y))
    assert P == mul(z,sub(z,const(2)))
    assert add(P,const(1)) == power(add(power(y,2),scale(y,-3),const(1)),2)
    assert sub(const(F(9,4)),z) == power(sub(y,const(F(3,2))),2)
    K0=mul(mul(x,sub(const(1),x)),sub(const(2),x))
    K1=mul(mul(add(const(1),x),x),sub(const(1),x))
    sq=power(sub(x,const(F(1,2))),2)
    assert sub(const(F(1,2)),K0)==add(mul(sub(const(2),x),sq),scale(x,F(1,4)))
    assert sub(const(F(1,2)),K1)==add(mul(add(const(1),x),sq),scale(sub(const(1),x),F(1,4)))
    # Whole coefficient-range certificates, T>=5 or T>=7 and A<=T-1.
    certificates=[]
    for offset,k,c,ell in [(5,2,5,1),(5,6,15,3),(7,5,3,3)]:
        T=add(var(0),const(offset))
        poly=sub(power(T,k),scale(power(sub(T,const(1)),ell),c))
        assert all(a>0 for a in poly.values())
        certificates.append({"T_offset":offset,"expression":f"T^{k}-{c}(T-1)^{ell}",
                             "positive_coefficients":[int(poly.get((d,0,0,0,0),0)) for d in range(k+1)]})
    return {"integer_norm_identity":True,"quartic_identities":3,
            "cubic_positive_remainder_identities":2,
            "parameter_range_certificates":certificates}


def costs():
    rows=[]
    for r in range(1800):
        if r%72 in (18,56):
            n=r+3600
            s1,s3=small_part(n-1,5),small_part(n-3,5)
            assert s1<=5 and s3<=15
            rows.append([r,s1,s3])
    assert len(rows)==50
    tails=[]
    for r in (1280,1530):
        n=r+3600
        assert small_part(n-1,6)==1
        assert small_part(n-3,6)==({1280:1,1530:3}[r])
        tails.append([r,small_part(n-1,6),small_part(n-3,6)])
    assert rough(125,5)==125 and small_part(125,5)==1
    assert rough(5,5)==1 and rough(25,5)==25
    assert rough(343,7)==343 and rough(7,7)==1
    return {"i5_mod1800_costs":rows,"native_i6_tail_costs":tails,
            "full_endpoint_powers_preserved":True,
            "scope":"finite residue checks supplement the all-exponent cost proof"}


def lifting(c,d,max_E=12):
    G=13**60
    assert valuation(G-1,5)==2 and (c+d)%25==0 and c%5 and d%5
    w=0
    result=[]
    for E in range(2,max_E+1):
        mod=5**(E+1); step=5**(E-2)
        assert (c*pow(G,w,5**E)+d)%(5**E)==0
        residues=[(c*pow(G,w+t*step,mod)+d)%mod for t in range(5)]
        lifts=[t for t,r in enumerate(residues) if r==0]
        assert len(lifts)==1
        exact=next(t for t,r in enumerate(residues) if r!=0)
        ww=w+exact*step
        rem=(c*pow(G,ww,mod)+d)%mod
        assert valuation(rem,5)==E
        # Adding 5^(E-1) preserves this exact E; no huge original n is built.
        assert (c*pow(G,ww+5**(E-1),mod)+d)%mod==rem
        result.append({"E5":E,"w_exact":ww,"mod_5_power":E+1,
                       "nonzero_remainder":rem})
        w += lifts[0]*step
    return result


def families():
    assert pow(13,60,1800)==1
    rows=[]; lift_tables={}
    for name,A,B,offset,modclass,c,d in [
        ("F1280",6,9,1,1280,2*13**4,3),
        ("F1530",2,11,12,1530,2*13**15,11)]:
        f=offset;e=2*f+3
        n=A*13**e+B*13**f+5
        assert n%1800==modclass
        cert=make_row_certificate(6,n,13,e)
        assert cert and verify_row_certificate(cert)
        assert "Z3" in cert["exits"]
        assert valuation(n-5,13)==f
        assert 13**(2*f)*(A*13**3)<n
        js=sorted(set([7,13,130,13**e+13**f,n//3,n//2]))
        points=[]
        for j in js:
            if 6<j<=n//2:
                point=make_point_certificate(cert,j)
                assert verify_point_certificate(cert,point)
                points.append(point)
        lift_tables[name]=lifting(c,d)
        for entry in lift_tables[name]:
            w=entry["w_exact"];ff=60*w+offset;ee=2*ff+3;E=entry["E5"]
            assert (A*pow(13,ee,1800)+B*pow(13,ff,1800)+5)%1800==modclass
            # vp5(n-5)=E, evaluated modulo 5^(E+1), not by making n.
            rem=(A*pow(13,ee,5**(E+1))+B*pow(13,ff,5**(E+1)))%(5**(E+1))
            assert rem and valuation(rem,5)==E
        rows.append({"name":name,"f_offset":offset,"row_certificate":cert,
                     "sample_point_certificates":points})
    # Source 13's exact original layer passes; a higher layer does not.
    n=6*13**5+9*13+5;j=130
    assert valuation(n-5,13)==1
    assert j%13<=n%13 and j%169>n%169
    higher={"n":n,"j":j,"original_source_power":13,
            "source_valuation":vp_binomial(n,6,13),
            "target_valuation":vp_binomial(n,j,13),
            "residues_mod_13":[n%13,j%13],"residues_mod_169":[n%169,j%169]}
    assert higher["source_valuation"]>0 and higher["target_valuation"]>0
    return {"period_identity":True,"families":rows,"E5_lifting_diagnostics":lift_tables,
            "higher_layer_example":higher,
            "lifting_scope":"E5=2..12 is diagnostic only; PROOFS gives the arbitrary-E argument"}


def zero_example():
    n=5*7**8+81;j=2*7**8+32
    cert=make_row_certificate(5,n,7,8)
    assert cert and vp_binomial(n,j,7)==0
    out=force_exit_point(cert,j,"Z3")
    assert out["Z"]==0
    assert math.prod([19,23,71,929])==n-3
    witnesses=[]
    for p in [19,23,71,929]:
        assert verify_prime(p)
        a,b=vp_binomial(n,5,p),vp_binomial(n,j,p)
        assert a>0 and b>0
        witnesses.append({"p":p,"source_v":a,"target_v":b})
    return {"row_certificate":cert,"point_via_Z3":out,
            "avoided_original_p":7,"original_p_target_valuation":0,
            "source3_complete_factorization":[19,23,71,929],"common_primes":witnesses}


def mutations(row,point):
    cases=[]
    def bad_row(label,change):
        c=copy.deepcopy(row);change(c)
        assert not verify_row_certificate(c),label
        cases.append(label)
    bad_row("wrong_target",lambda c:c.update(i=3))
    bad_row("composite_source_base",lambda c:c.update(p=15))
    bad_row("source_below_threshold",lambda c:c.update(p=5))
    bad_row("wrong_high_layer",lambda c:c.update(H=c["H"]+1))
    bad_row("wrong_low_tail",lambda c:c.update(C=c["C"]+1))
    bad_row("wrong_top_coefficient",lambda c:c.update(A=c["A"]+1))
    bad_row("altered_q1",lambda c:c["q"].__setitem__(1,c["q"][1]+1))
    bad_row("altered_q3",lambda c:c["q"].__setitem__(3,c["q"][3]+1))
    bad_row("original_source_power_confused_with_high_layer",lambda c:c.update(source_valuation=c["H"]))
    bad_row("fabricated_zero_exit",lambda c:c.update(exits=["Z7"]))
    # Point statements must stay on the original row and legal target range.
    for label,key,value in [("illegal_j","j",6),("changed_point_branch","branch","unknown"),
                            ("wrong_quotient","u",point["u"]+1),
                            ("wrong_remainder","v",point["v"]+1)]:
        c=copy.deepcopy(point);c[key]=value
        assert not verify_point_certificate(row,c),label
        cases.append(label)
    # Complete Lucas certificates are checked, not just named.
    assert verify_prime(13,{"13":{"a":2,"factors":[[2,2],[3,1]]}})
    assert not verify_prime(13,{"13":{"a":2,"factors":[[2,2]]}})
    cases.append("incomplete_p_minus_1_factorization")
    # An isolated 5 in n-r does not make it a qualifying source for target 5.
    n=5**6+5+4
    assert vp_binomial(n,5,5)==0
    assert make_row_certificate(5,n,5,6) is None
    cases.append("isolated_endpoint5_is_not_a_source")
    return cases


def main():
    out={"status":"PASS_NEW_EXACT_ALGEBRA_AND_INSTANCES",
         "scope":"not Lean; no previous whole-chain replay; unlimited claims rest on PROOFS.md"}
    out["algebra"]=algebra();out["costs"]=costs()
    out["families"]=families();out["zero_example"]=zero_example()
    # Endpoint p=i=5: keep the entire original 5^2, while the work layer is 5^8.
    endpoint_n=5**8+4*5**2+3
    endpoint=make_row_certificate(5,endpoint_n,5,8)
    assert endpoint and endpoint_n%72==56
    assert valuation(endpoint_n-3,5)==2 and vp_binomial(endpoint_n,5,5)==1
    endpoint_point=make_point_certificate(endpoint,25)
    assert vp_binomial(endpoint_n,25,5)==0
    assert verify_point_certificate(endpoint,endpoint_point)
    out["endpoint5_example"]={"row_certificate":endpoint,"point":endpoint_point,
                              "original_source_power":25,"work_power":5**8,
                              "source_p5_valuation":1,"target_p5_valuation":0}
    # Explicitly record overlap, not novelty: these fixed examples pass old QIG's inequality.
    overlaps=[]
    for target,n in [(6,6*13**5+9*13+5),(6,2*13**27+11*13**12+5),(5,5*7**8+81)]:
        T4=math.prod(small_part(n-r,target) for r in range(4))
        strict=T4**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3
        assert strict
        overlaps.append({"i":target,"n":n,"strict_QIG_inequality":strict})
    out["overlap_diagnostic"]={"examples":overlaps,
        "scope":"inequality evaluation only; QIG is not a premise of any new proof; no full historical-union audit"}
    family=out["families"]["families"][0]
    row=family["row_certificate"];point=family["sample_point_certificates"][0]
    out["rejected_mutations"]=mutations(row,point)
    (ROOT/'evidence'/'verification.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({"status":out['status'],"two_native_i6_families":2,
                      "zero_example_verified":True,"rejected_mutations":len(out['rejected_mutations']),
                      "finite_original_problem_bottom":"none used"},ensure_ascii=False))

if __name__=='__main__':main()
