#!/usr/bin/env python3
"""Finite diagnostics only; infinite quantifiers are proved in notes/PROOFS.md."""
from pathlib import Path
from math import comb,gcd,isqrt
import json,argparse
ROOT=Path(__file__).resolve().parents[1]
HS=((0,2,4),(0,2,5),(0,2,6))
def order(n,p):
    e=0
    while n%p==0:e+=1;n//=p
    return e

def location(n,H):
    return all(max(order(n-r,p) for r in range(7))==max(order(n-r,p) for r in H) for p in (2,3,5))
def cval(n,j,p):
    z=0;q=p
    while q<=n:z+=n//q-j//q-(n-j)//q;q*=p
    return z

def main(out):
    rows=accepted=checked=bridged8=bridged9=0;small_witness_examples=[]
    for n in range(16,601):
        checked+=n//2-7
        if not any(location(n,H) for H in HS):continue
        rows+=1;source=comb(n,7);i8=comb(n,8);i9=comb(n,9)
        for j in range(8,n//2+1):
            d=gcd(source,comb(n,j))
            for p in (2,3,5):
                while d%p==0:d//=p
            assert d>1,(n,j,'new consumer failed exact gcd');accepted+=1
            if n%49>=7:
                assert d%7
                if j>=9:assert i8%d==0;bridged8+=1
                if j>=10:assert i9%d==0;bridged9+=1
            elif d%7==0 and len(small_witness_examples)<4:
                small_witness_examples.append({'n':n,'j':j,'valuation7_source':cval(n,7,7),'valuation7_target':cval(n,j,7)})
    # Endpoints: one must not silently replace a complete layer with the next
    # lower power. (50,7,8) is itself inside H025 and has the witness p=i=7.
    endpoint={'m':7,'n':50,'j':8,'r':1,'Q':49,'source_v7':cval(50,7,7),'target_v7':cval(50,8,7),
              'full_layer_carry':8%49>50%49,'weakened_layer_carry':8%7>50%7}
    assert location(50,(0,2,5)) and endpoint['source_v7']==endpoint['target_v7']==1
    assert endpoint['full_layer_carry'] and not endpoint['weakened_layer_carry']
    # Two newly removed coefficient families: exact tests of selected fractions
    # do not establish the unbounded theorem (which uses the inherited roles).
    family_count=0
    for c in (10,70):
        for a in range(0,5):
            alpha=c*3**a
            betas=sorted({1,alpha//3,alpha//2-1})
            for g in (1,2,3,11):
                n=g*alpha
                for beta in betas:
                    j=g*beta
                    if gcd(beta,alpha)!=1 or not 7<j<=n//2:continue
                    d=gcd(comb(n,7),comb(n,j))
                    for p in (2,3,5):
                        while d%p==0:d//=p
                    assert d>1;(family_count:=family_count+1)
    result={'status':'PASS_FINITE_DIAGNOSTICS','domain_n':[16,600],'legal_configurations_inspected':checked,
            'rows_accepted_by_union':rows,'actual_gcd_checks_on_new_union':accepted,
            'full_rough_gcd_transfers_to_i8':bridged8,'full_rough_gcd_transfers_to_i9':bridged9,
            'removed_family_spot_checks':family_count,'endpoint':endpoint,'small_witness_examples':small_witness_examples,
            'not_claimed':'These finite diagnostics do not prove infinite coverage or constitute a search for counterexamples outside the consumers.'}
    Path(out).write_text(json.dumps(result,sort_keys=True,indent=2)+'\n');print(json.dumps(result,ensure_ascii=False))
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'evidence/regression.json'));args=ap.parse_args();main(args.out)
