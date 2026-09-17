#!/usr/bin/env python3
"""Exact W6 closure certificate receiver. Python stdlib + a C++17 compiler.

This checks NEW finite certificates, not the adopted historical mathematics.
Every output directory is a fresh receipt; input evidence is never rewritten.
"""
from __future__ import annotations
import argparse
from collections import Counter
from copy import deepcopy
from fractions import Fraction
from functools import reduce
from itertools import combinations, combinations_with_replacement, product
import hashlib
import json
import math
import os
from pathlib import Path
import platform
import shutil
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[1]
PTS = [(r, s * (r-s)) for r in range(3, 9) for s in range(r//2+1)]
VS = {r: [v for rr,v in PTS if rr == r] for r in range(3,9)}
ENTRY = 14000001
HEIGHT = 1244000
AUX_BITS = 11950

def need(test: bool, message: str) -> None:
    if not test:
        raise ValueError(message)

def load(name: str):
    return json.loads((ROOT/'evidence'/name).read_text())

def monomials(d: int):
    return [(a,b) for b in range(d//2+1) for a in range(d-2*b+1)]

def dim(d: int) -> int:
    return len(monomials(d))

def poly_from_vector(v, d=6):
    need(len(v) == dim(d) and all(type(x) is int for x in v), 'coefficient vector schema')
    return {m:c for m,c in zip(monomials(d),v) if c}

def mul(f,g):
    h={}
    for (a,b),c in f.items():
        for (i,j),v in g.items():
            h[a+i,b+j]=h.get((a+i,b+j),0)+c*v
    return {k:v for k,v in h.items() if v}

def ev(f,r,v):
    return sum(c*r**a*v**b for (a,b),c in f.items())

def derivative(f, coordinate):
    h={}
    for (a,b),c in f.items():
        if coordinate==0 and a: h[a-1,b]=a*c
        if coordinate==1 and b: h[a,b-1]=b*c
    return h

def shifted_horner(f,r,v):
    """Independent two-variable affine substitution by Horner multiplication."""
    if not f:return {}
    groups={}
    for b in range(max(b for a,b in f)+1):
        amax=max([a for a,bb in f if bb==b], default=-1)
        out={}
        for a in range(amax,-1,-1):
            out=mul(out,{(1,0):1,(0,0):r})
            if f.get((a,b),0):out[0,0]=out.get((0,0),0)+f[a,b]
        groups[b]={k:c for k,c in out.items() if c}
    out={}
    for b in range(max(groups),-1,-1):
        out=mul(out,{(0,1):1,(0,0):v})
        for k,c in groups[b].items():out[k]=out.get(k,0)+c
        out={k:c for k,c in out.items() if c}
    return out

def source_shape(mask):
    need(type(mask) is int and 0<mask<1<<21,'source mask')
    counts=[sum(bool(mask>>i&1) for i,(rr,v) in enumerate(PTS) if rr==r) for r in range(3,9)]
    diagonal=[sum(bool(mask>>i&1) and 4*v==rr*rr for i,(rr,v) in enumerate(PTS) if rr==r) for r in range(3,9)]
    need(all(1<=z<=3 for z in counts),'row capacity/nonempty')
    return counts,diagonal

def profile(mask,degree,weights,strict_dimension=True):
    counts,diagonal=source_shape(mask)
    need(0<=degree<=23 and len(weights)==6 and all(type(m)is int and m>=0 for m in weights),'profile schema')
    ordinary=lambda m:m*(m+1)//2
    adapted=lambda m:sum(m-2*k for k in range((m+1)//2))
    rows=sum(z*ordinary(m)-dd*(ordinary(m)-adapted(m)) for z,dd,m in zip(counts,diagonal,weights))
    if strict_dimension:need(rows<dim(degree),'strict kernel dimension')
    w=sum(weights)
    loss=sum(m*(len(VS[r])-z) for r,m,z in zip(range(3,9),weights,counts))
    margin=ENTRY*(w-degree)-(12000+11*w+(HEIGHT+18)*loss)
    need(w>degree and margin>0,'strict arithmetic gain')
    return dict(d=degree,weights=weights,conditions=rows,columns=dim(degree),W=w,loss=loss,margin=margin)

def check_four(rec):
    mask=rec['mask'];d=rec['degree'];ms=rec['weights'];v=rec['vector']
    p=profile(mask,d,ms,False)
    need(p['conditions']==rec['rows']==156 and rec['columns']==dim(d)==156,'four kernel dimensions')
    f=poly_from_vector(v,d)
    need(bool(f) and math.gcd(*v)==1,'nonzero primitive kernel')
    need(sum(map(abs,v)).bit_length()==rec['l1_bits'] and sum(map(abs,v))<1<<AUX_BITS,'four kernel norm')
    rowcount=0;hornercount=0
    for bit,(r,x) in enumerate(PTS):
        if not mask>>bit&1:continue
        need(4*x!=r*r,'four kernels are ordinary points')
        m=ms[r-3]
        shifted=shifted_horner(f,r,x)
        for i in range(m):
            for h in range(m-i):
                val=sum(c*math.comb(a,i)*math.comb(b,h)*r**(a-i)*x**(b-h)
                        for (a,b),c in f.items() if a>=i and b>=h)
                need(val==0,'nonzero integer Taylor row')
                need(shifted.get((i,h),0)==0,'nonzero Horner Taylor row')
                rowcount+=1;hornercount+=1
    need(rowcount==156,'all integer rows checked')
    return dict(mask=mask,l1_bits=rec['l1_bits'],rows=rowcount,horner_rows=hornercount,margin=p['margin'])

def check_capacity():
    """Exhaust rational trace/pair coefficients; no polynomial-factor black box."""
    options={r:list(combinations_with_replacement(VS[r],3)) for r in VS}
    def interp(points,x):
        return sum((Fraction(y)*math.prod(Fraction(x-a,b-a) for a,_ in points if a!=b)
                    for b,y in points),Fraction())
    known={}
    for labels in combinations(range(4),3):
        roots=tuple(tuple(sorted(t*(r-t) for t in labels)) for r in range(3,9))
        f={(0,0):1}
        for t in labels:f=mul(f,{(0,1):1,(1,0):-t,(0,0):t*t})
        known[roots]=(labels,f)
    counts=Counter();accepted=[]
    for first in product(*(options[r] for r in (3,4,5))):
        counts['first_three']+=1
        trace=[(r,sum(xs))for r,xs in zip((3,4,5),first)]
        tails=[[xs for xs in options[r] if sum(xs)==interp(trace,r)]for r in (6,7,8)]
        for tail in product(*tails):
            roots=first+tail;counts['trace_pass']+=1
            if sum(len(set(xs)) for xs in roots)<14:continue
            counts['z14']+=1
            pairs=[(r,sum(xs[i]*xs[j]for i in range(3)for j in range(i))) for r,xs in zip(range(3,9),roots)]
            if interp(pairs[:5],8)!=pairs[5][1]:continue
            counts['pair_pass']+=1
            need(roots in known,'unclassified full-capacity profile')
            labels,f=known[roots]
            for r,xs in zip(range(3,9),roots):
                for x in xs:need(ev(f,r,x)==0,'product source roots')
            repeated=[x for x in set(roots[0]) if roots[0].count(x)>1]
            need(bool(repeated),'row3 repeated root')
            for x in repeated:need(ev(derivative(f,0),3,x)==0,'product derivative')
            wprime=math.prod(3-r for r in range(4,9))
            need(wprime!=0,'W prime at 3')
            accepted.append({'roots':roots,'labels':labels,'product':[list(k)+[v]for k,v in sorted(f.items())]})
    need(dict(counts)==dict(first_three=400,trace_pass=112,z14=15,pair_pass=4),'full-capacity counts')
    need(len(accepted)==4 and {tuple(x['labels']) for x in accepted}==set(combinations(range(4),3)), 'four products complete')
    return {'counts':dict(counts),'candidates':accepted}

def check_dense(records,rank_masks):
    need(len(records)==23 and len({r['mask']for r in records})==23,'dense records unique')
    need({r['mask']for r in records}==rank_masks[16]|rank_masks[17],'dense masks complete')
    pc=0;adapted=0;pcs=[];ads=[]
    for rec in records:
        mask=rec['mask'];cs,diags=source_shape(mask)
        need(sum(cs)==rec['z'],'dense source size')
        f=poly_from_vector(rec['T'])
        need(f.get((6,0),0)==0 and f.get((0,3),0)!=0,'pencil independence')
        need(sum(map(abs,rec['T']))<1<<300,'small pencil T')
        for i,(r,x) in enumerate(PTS):
            if mask>>i&1:need(ev(f,r,x)==0,'pencil integer rows')
        if rec['pc']:
            need(all(ev(f,r,x)==0 for r,x in [(1,0),(2,0),(2,1)]),'PC three source zeros')
            product_f={(0,0):rec['factor_constant']};degrees=[]
            for item in rec['factors']:
                g=poly_from_vector(item['vector']);need(g and max(a+2*b for a,b in g)>0,'nonconstant factor')
                need(type(item['exponent'])is int and item['exponent']>0,'factor exponent')
                degrees.extend([max(a+2*b for a,b in g)]*item['exponent'])
                for _ in range(item['exponent']):product_f=mul(product_f,g)
            need(len(degrees)>=2 and product_f==f,'exact reducible product')
            pcs.append(mask);pc+=1
        else:
            need(rec['z']==16 and sum(diags)>=2,'dense diagonal branch')
            cost=16*10-4*sum(diags)
            need(cost<dim(23),'dense adapted fourfold dimension')
            bound=AUX_BITS+24*11+4*(HEIGHT+(21-16)*318)
            need(bound<ENTRY,'dense pencil arithmetic')
            ads.append(mask);adapted+=1
    need((pc,adapted)==(20,3),'dense branch count')
    return dict(pc_masks=pcs,adapted_masks=ads,pc_count=pc,adapted_count=adapted)

def check_bounds():
    # All comparisons are exact integers, including squared Euclidean bounds.
    checks={
      'source_value': 8**6 <= 1<<18,
      'T_minor_row':15*8**12 <1<<40,
      'T_l1':15*(1<<(14*20)) <1<<300,
      'bootstrap_row':156*9**46 <1<<154,
      'bootstrap_l1':156*(1<<(155*77))<1<<AUX_BITS,
      'local_F_column':476*9**82 <1<<270,
      'local_H_column':476*9**12 <1<<50,
      'local_kernel_l1':819*(1<<(357*12025+119*135))<1<<4309000,
      'local_dimension':dim(41)-7*17==343 and dim(35)==342,
      'local_nonzero':4309000+42*11+49*12018 <ENTRY,
      'local_resultant':math.factorial(23).bit_length()+20*12000+3*4309000 <ENTRY,
      'bootstrap_resultant':math.factorial(14).bit_length()+11*HEIGHT+3*AUX_BITS <ENTRY,
      'bootstrap_factor':AUX_BITS+6+3 <12000,
      'pencil_z14':AUX_BITS+18*11+3*(HEIGHT+7*318)<ENTRY,
      'pencil_z15':AUX_BITS+24*11+4*(HEIGHT+6*318)<ENTRY,
      'PC':5000*HEIGHT+5463 <463*ENTRY,
      'count43':305//7==43,
      'arbitrary_F_factor':1243900+9 <HEIGHT,
    }
    need(all(checks.values()),'a height/dimension inequality failed')
    configurations=0
    for z in range(14,18):
        for n2 in range(z+1):
            for n3 in range(z-n2+1):
                n1=z-n2-n3;mu=n1+2*n2+3*n3
                if mu>17:continue
                locals_=n1*21+n2*15+n3*10
                conditions=z*28-locals_
                need(conditions<=7*mu and dim(41)-conditions>dim(35),'local quotient length')
                need(locals_<=357 and z*28<=476 and dim(41)+locals_<=819,'local matrix bounds')
                configurations+=1
    return dict(checks=checks,local_multiplicity_distributions=configurations,
      local_nonzero_exponent=4309000+42*11+49*12018,
      local_resultant_exponent=math.factorial(23).bit_length()+20*12000+3*4309000,
      bootstrap_resultant_exponent=math.factorial(14).bit_length()+11*HEIGHT+3*AUX_BITS,
      PC_margin=463*ENTRY-(5000*HEIGHT+5463))

def check_prime_power_diagnostics():
    ntest=0
    for p in (11,13,17):
        for e in range(1,6):
            Q=p**e
            for r in range(3,9):
                for s in range(r+1):
                    j=s+2*Q;k=r-s+3*Q;n=j+k;J=j*k;x=s*(r-s)
                    need((n-r)%Q==0 and (J-x)%Q==0,'full prime power congruence')
                    if 2*s==r:
                        need((J-s*s-s*(n-r))==6*Q*Q,'diagonal full square identity')
                    ntest+=1
    return {'necessary_congruence_diagnostics':ntest,'maximum_prime_power_exponent':5,
            'not_original_NC_examples':True}

def command(cmd,outfile,errfile=None):
    start=time.perf_counter()
    with outfile.open('w') as out:
        if errfile:
            with errfile.open('w')as err:cp=subprocess.run(cmd,stdout=out,stderr=err,check=False,timeout=40)
        else:cp=subprocess.run(cmd,stdout=out,stderr=subprocess.STDOUT,check=False,timeout=40)
    need(cp.returncode==0,f'command failed; inspect {outfile}')
    return {'argv':list(map(str,cmd)),'elapsed_seconds':time.perf_counter()-start,'returncode':cp.returncode}

def accept_ranks(out):
    compiler=shutil.which('g++');need(compiler is not None,'g++ required')
    receipts=[];bins={}
    for name in ('eval14_probe','eval_dense_probe','accept_source_ranks'):
        exe=out/name;bins[name]=exe
        receipts.append(command([compiler,'-std=c++17','-O2',str(ROOT/'code'/f'{name}.cpp'),'-o',str(exe)],out/f'compile_{name}.txt'))
    for p in (1000003,1000033):need(all(p%d for d in range(2,math.isqrt(p)+1)),'auxiliary modulus is prime')
    expected={14:{13:203,14:36077},15:{14:500,15:10180},16:{14:22,15:1898},17:{14:1,15:159}}
    frozen_masks={}
    for z in range(14,18):
        cmd=[str(bins['eval14_probe'])]if z==14 else [str(bins['eval_dense_probe']),str(z)]
        receipts.append(command(cmd,out/f'rank_first_{z}.txt',out/f'rank_first_{z}_summary.txt'))
        masks={int(x.split()[0]) for x in (out/f'rank_first_{z}.txt').read_text().splitlines()}
        frozen={int(x.split()[0])for x in (ROOT/f'evidence/eval{z}_lowrank.txt').read_text().splitlines()}
        need(masks==frozen,'first implementation source masks')
        counts=Counter()
        for line in (out/f'rank_first_{z}_summary.txt').read_text().splitlines():
            if '='in line:
                rank,n=line.split('=');counts[int(rank.split(',')[0])]+=int(n)
        need(dict(counts)==expected[z],'first implementation source counts')
        frozen_masks[z]=masks
    receipts.append(command([str(bins['accept_source_ranks'])],out/'rank_second.txt'))
    masks2={z:set()for z in range(14,18)};counts2={z:{}for z in range(14,18)}
    for line in (out/'rank_second.txt').read_text().splitlines():
        tag,z,a,b=line.split();z=int(z);a=int(a);b=int(b)
        if tag=='MASK':masks2[z].add(a)
        elif tag=='COUNT':counts2[z][a]=b
        else:raise ValueError('unknown rank receipt record')
    need(masks2==frozen_masks and counts2==expected,'independent rank replay mismatch')
    for exe in bins.values():exe.unlink() # binaries are reproducible and do not belong in delivery
    return frozen_masks,dict(total=49040,counts=expected,primes=[1000003,1000033],commands=receipts)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
    out=args.out.resolve()
    need(not out.exists() or not any(out.iterdir()),'use a new empty output directory')
    out.mkdir(parents=True,exist_ok=True);start=time.perf_counter()
    masks,ranks=accept_ranks(out)
    records=load('nonuniform_weights.json')
    need(len(records)==203 and {r['mask']for r in records}==masks[14], '203 profiles complete')
    specials=set();margins=[]
    for rec in records:
        cs,ds=source_shape(rec['mask']);need(cs==rec['counts'] and ds==rec['diags'],'source shape')
        if rec['solution']is None:specials.add(rec['mask']);continue
        sol=rec['solution'];checked=profile(rec['mask'],sol['d'],sol['weights'])
        need(checked==sol,'nonuniform profile fields');margins.append(sol['margin'])
    need(specials=={210927,226287,242671,829423} and len(margins)==199,'four exceptional profiles')
    four=[check_four(load(f'four_kernel_{m}.json')) for m in sorted(specials)]
    dense=check_dense(load('dense_certificates.json'),masks)
    capacity=check_capacity();bounds=check_bounds();diagnostics=check_prime_power_diagnostics()
    # Tests that must be rejected, not merely compared with stored output hashes.
    rejects=0
    for mask in sorted(specials):
        base=load(f'four_kernel_{mask}.json')
        for kind in ('zero','coefficient','weight','height','mask'):
            bad=deepcopy(base)
            if kind=='zero':bad['vector']=[0]*len(bad['vector'])
            if kind=='coefficient':bad['vector'][0]+=1
            if kind=='weight':bad['weights']=[1]*6
            if kind=='height':bad['l1_bits']+=1
            if kind=='mask':bad['mask']=1
            try:check_four(bad)
            except ValueError:rejects+=1
            else:raise ValueError('corrupted four-kernel certificate accepted')
    need(rejects==20,'mutation coverage')
    result=dict(status='PASS_NEW_WEIGHT6_CLOSURE43_REPLAY',elapsed_seconds=time.perf_counter()-start,
        python=platform.python_version(),platform=platform.platform(),ranks=ranks,
        nonuniform=dict(total=203,dimension_only=199,minimum_margin=min(margins),four_explicit=four),
        dense=dense,capacity=capacity,bounds=bounds,diagnostics=diagnostics,
        negative_tests_rejected=rejects,
        scope='NEW exact finite obligations; not Lean, not external review, not historical full-chain replay')
    (out/'REPLAY.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print(result['status']);print(f"source_subsets=49040 profiles=203 four_integer_rows=624 mutation_rejects={rejects}")
    print(f"elapsed_seconds={result['elapsed_seconds']:.6f}")
if __name__=='__main__':main()
