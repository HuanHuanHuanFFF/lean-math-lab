# Adopted unchanged from prior seven-index certificate package (except this provenance line).
#!/usr/bin/env python3
"""Exact symbolic pair maxima with provably exhaustive singleton fast paths.
No cofactor enumeration: each Q*A-R*B=d has a bounded arithmetic progression.
"""
from __future__ import annotations
from crt_bound_probe import params, get_M, primes, vp


def bound(row: dict,H: int) -> dict:
    par=params(row);i=row['i'];M=get_M(par,H);start=max(i*(i-1),M+1)
    if start>=H:raise ValueError('No useful high branch at this height')
    fam=[]
    for p in primes(i):
        v=vp(i,p);h=v+1;Q=p**h;cap=M//p**v
        while Q<H:
            amin=max(1,(start-i)//Q+1);amax=min(cap,(H-1)//Q)
            if amin<=amax:fam.append((p,h,Q,amin,amax))
            h+=1;Q*=p
    pair_count=0;nonempty=0;terms=0;maximum=start-1;attainer=None;mode_counts=[0,0,0]
    width=i-1
    for ix,(p,h,Q,amin,amax) in enumerate(fam):
        for q,k,R,bmin,bmax in fam[ix+1:]:
            if p==q:continue
            pair_count+=1
            if R>amax:
                mode_counts[0]+=1
                inv=pow(Q,-1,R);a=(-width*inv)%R
                for d in range(-width,width+1):
                    if amin<=a<=amax:
                        u=Q*a;b=(u-d)//R
                        if bmin<=b<=bmax:
                            v=R*b;left=max(start,u,v);right=min(H-1,u+width,v+width)
                            if left<=right:
                                nonempty+=1;terms+=1
                                if right>maximum:
                                    maximum=right;attainer=[p,h,q,k,d,a,b,left,right]
                    a+=inv
                    if a>=R:a-=R
            elif Q>bmax:
                mode_counts[1]+=1
                inv=pow(R,-1,Q);b=(width*inv)%Q
                for d in range(-width,width+1):
                    if bmin<=b<=bmax:
                        v=R*b;a=(v+d)//Q
                        if amin<=a<=amax:
                            u=Q*a;left=max(start,u,v);right=min(H-1,u+width,v+width)
                            if left<=right:
                                nonempty+=1;terms+=1
                                if right>maximum:
                                    maximum=right;attainer=[p,h,q,k,d,a,b,left,right]
                    b-=inv
                    if b<0:b+=Q
            else:
                mode_counts[2]+=1
                inv=pow(Q,-1,R);a0=(-width*inv)%R;period=Q*R
                for d in range(-width,width+1):
                    b0=(Q*a0-d)//R;base=Q*a0
                    left=base+max(0,-d);right=base+width-max(d,0)
                    lo=max(-((a0-amin)//R),-((b0-bmin)//Q),-((right-start)//period))
                    hi=min((amax-a0)//R,(bmax-b0)//Q,(H-1-left)//period)
                    if lo<=hi:
                        nonempty+=1;terms+=hi-lo+1
                        end=min(H-1,right+period*hi)
                        if end>maximum:
                            maximum=end;attainer=[p,h,q,k,d,a0+R*hi,b0+Q*hi,
                                max(start,left+period*hi),end]
                    a0+=inv
                    if a0>=R:a0-=R
    a=None
    if attainer:
        p,h,q,k,d,A,B,left,right=attainer
        a={'p':p,'h':h,'q':q,'k':k,'difference':d,'A':str(A),'B':str(B),
           'n':str(right),'interval_start':str(left)}
    return dict(i=i,H=str(H),M=str(M),start=str(start),next_H=str(maximum+1),
        prime_power_families=len(fam),prime_power_pairs=pair_count,
        nonempty_CRT_families=nonempty,progression_terms_with_multiplicity=str(terms),
        max_attainer=a,fast_path_pair_counts=mode_counts)
