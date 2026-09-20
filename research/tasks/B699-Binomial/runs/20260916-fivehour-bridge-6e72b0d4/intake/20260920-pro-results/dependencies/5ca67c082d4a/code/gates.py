#!/usr/bin/env python3
"""Exact root gates for NF59 and SAT96/102. Discovery-side implementation.
Adapted mathematical scheme: frozen verify_geometry.py / verify_saturation_genus.py,
Git blobs 0ca57f4921d70d73e8a9e6aed93035b81acc1b40 /
20abda112fc2168bcbf46e32a8ab002f8aaca20d. New degrees, genus for NF,
all nine source lines, and explicit residual records. No old verification rerun.
"""
import json, math, argparse, time
from fractions import Fraction
from itertools import combinations_with_replacement as cwr, product
from collections import Counter, defaultdict
from pathlib import Path
RR=tuple(range(3,9)); VV={r:tuple(s*(r-s) for s in range(r//2+1)) for r in RR}
FD=(-1,5,-10,10,-5,1)
PIV={3:(4,5,6),4:(3,5,6),5:(3,4,6),6:(3,4,5),7:(3,4,5),8:(3,4,5)}
def tables(q):
    T={}; L={}
    for r in RR:
        D=defaultdict(list); ls=[]
        for rt in cwr(VV[r],q):
            cc=Counter(rt); S=sum(rt); E=(S*S-sum(v*v for v in rt))//2
            ob=(rt,E,len(cc),tuple(cc[t*(r-t)] for t in range(9)),sum(m*(m-1)//2 for m in cc.values()))
            D[S].append(ob); ls.append((S,ob))
        T[r]=D;L[r]=ls
    return T,L

def nf_gate(q,h):
    T,L=tables(q); piv=PIV[h]; good=[r for r in RR if r!=h]; weights={}
    for r in RR:
        w=[Fraction(math.prod(r-t for t in piv if t!=s),math.prod(s-t for t in piv if t!=s)) for s in piv]
        den=math.lcm(*(x.denominator for x in w));weights[r]=(den,[int(x*den) for x in w])
    low=[]
    for rt in cwr(VV[h],q-1):
        cc=Counter(rt);S=sum(rt);E=(S*S-sum(v*v for v in rt))//2
        low.append((rt,S,E,len(cc),tuple(cc[t*(h-t)] for t in range(9)),sum(m*(m-1)//2 for m in cc.values())))
    cache={}; stats=Counter(); out=[]; hist=Counter()
    for ss in product(*(tuple(T[r]) for r in piv)):
        sums={}
        for r in RR:
            den,w=weights[r];v,rem=divmod(sum(a*b for a,b in zip(ss,w)),den)
            if rem or (r!=h and v not in T[r]):break
            sums[r]=v
        if len(sums)!=6:continue
        sh=sums[h]
        if sh not in cache:
            dd=defaultdict(list)
            for rt,S,E,z,line,gen in low:
                lam=sh-S
                if lam in VV[h] and lam not in rt:continue
                dd[E+lam*S].append((rt,z,line,gen,lam))
            cache[sh]=dd
        for ch in product(*(T[r][sums[r]] for r in good)):
            zsum=sum(x[2] for x in ch)
            if zsum+len(VV[h])<14:continue
            target,rem=divmod(-sum(FD[r-3]*x[1] for r,x in zip(good,ch)),FD[h-3])
            if rem:continue
            for rt,z,line,gen,lam in cache[sh].get(target,()):
                if zsum+z<14:continue
                stats['complete_gates']+=1
                sl=[line[t]+sum(x[3][t] for x in ch) for t in range(9)]
                if any(v>2*q for v in sl[:5]): stats['old_line_forced']+=1;continue
                stats['after_old_lines']+=1
                if any(v>2*q for v in sl[5:]):stats['new_line_forced']+=1;continue
                stats['after_all_lines']+=1
                genus=gen+sum(x[4] for x in ch);hist[genus]+=1
                if genus>(q-1)**2:stats['genus_forced']+=1;continue
                roots=dict(zip(good,(x[0] for x in ch)));roots[h]=rt
                out.append({'q':q,'h':h,'roots':[roots[r] for r in RR],'lambda':lam,'genus_cost':genus})
                stats['jet_residual']+=1
    return out,dict(stats),dict(hist)

def sat_gate(q):
    T,L=tables(q); look={r:defaultdict(list) for r in RR}
    for r in RR:
        for S,ob in L[r]:look[r][S,ob[1]].append(ob)
    stats=Counter();hist=Counter();out=[]
    for aa in product(L[3],L[4],L[5]):
        sums=[x[0] for x in aa]
        for _ in range(3):sums.append(3*sums[-1]-3*sums[-2]+sums[-3])
        if any(sums[r-3] not in T[r] for r in (6,7,8)):continue
        ab=tuple(x[1] for x in aa)
        for d,f in product(T[6][sums[3]],T[8][sums[5]]):
            num=ab[0][1]-5*ab[1][1]+10*ab[2][1]-10*d[1]-f[1]
            E7,rem=divmod(num,-5)
            if rem:continue
            for e in look[7].get((sums[4],E7),()):
                rows=ab+(d,e,f);stats['complete_gates']+=1
                if sum(x[2] for x in rows)<14: stats['small_z']+=1;continue
                stats['z14_gates']+=1
                sl=[sum(x[3][t] for x in rows) for t in range(9)]
                if any(v>2*q for v in sl[:5]):stats['old_line_forced']+=1;continue
                stats['after_old_lines']+=1
                if any(v>2*q for v in sl[5:]):stats['new_line_forced']+=1;continue
                stats['after_all_lines']+=1
                genus=sum(x[4] for x in rows);hist[genus]+=1
                if genus>(q-1)**2:stats['genus_forced']+=1;continue
                out.append({'q':q,'h':0,'roots':[x[0] for x in rows],'lambda':None,'genus_cost':genus});stats['jet_residual']+=1
    return out,dict(stats),dict(hist)

def main():
    p=argparse.ArgumentParser();p.add_argument('mode',choices=['nf','sat']);p.add_argument('q',type=int);p.add_argument('--h',type=int);p.add_argument('--out',type=Path,required=True);args=p.parse_args()
    start=time.monotonic()
    out,st,hi = nf_gate(args.q,args.h) if args.mode=='nf' else sat_gate(args.q)
    obj={'mode':args.mode,'q':args.q,'h':args.h,'stats':st,'genus_histogram':hi,'records':sorted(out,key=lambda c:(c['h'],c['roots'],c['lambda'] or 0))}
    args.out.write_text(json.dumps(obj,sort_keys=True,separators=(',',':'))+'\n')
    print(json.dumps({k:v for k,v in obj.items() if k not in ['records','genus_histogram']},sort_keys=True),'seconds',round(time.monotonic()-start,3),flush=True)
if __name__=='__main__':main()
