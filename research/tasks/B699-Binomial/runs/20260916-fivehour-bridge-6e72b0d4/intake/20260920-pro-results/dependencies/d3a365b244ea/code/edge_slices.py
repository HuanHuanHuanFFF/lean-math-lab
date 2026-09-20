"""Leading-X jet slices of the SAME monic zero-excess residual polynomial.
Exact integer construction; discovery uses rational sparse row elimination.
"""
from __future__ import annotations
import math,json,time,argparse
from pathlib import Path
from fractions import Fraction as Q
from collections import defaultdict
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
VALUES=tuple(tuple(s*(r-s) for s in range(r//2+1)) for r in range(3,9))

def inverse_roots(exps,vals,L):
    # prod (1-v T)^(-m), through degree L, including v=0 multiplicity in M only.
    b=[1]+[0]*L
    for m,v in zip(exps,vals):
        if m and v:
            c=[math.comb(m+i-1,i)*v**i for i in range(L+1)]
            b=[sum(b[j]*c[i-j] for j in range(i+1)) for i in range(L+1)]
    return b

def rows(h,vv,L):
    mons=[(ell,d) for ell in range(L+1) for d in range(2*ell+1)]
    index={x:i for i,x in enumerate(mons)};out=[];labs=[]
    for ri,r in enumerate(range(3,9)):
        sigma=r//2 if r%2==0 else 0
        lower=[max(x-vv[ri],0) for x in OFF[ri]]
        b=max(DIAG[ri]-vv[ri],0)
        for a in range(2*L+1):
            exps=[max(x-a,0) for x in lower]
            if DIAG[ri]:exps.append((max(b-a,0)+1)//2)
            M=sum(exps);gap=h-M
            if gap>=L:break
            B=inverse_roots(exps,VALUES[ri],L)
            # f_k = [u^a X^(h-k)] H(r+u,X+sigma*u).
            ff=[]
            for k in range(L+1):
                f={}
                for ell in range(k+1):
                    shift=k-ell;ad=a-shift
                    if ad<0 or ad>2*ell or (sigma==0 and shift):continue
                    c=math.comb(h-ell,shift)*sigma**shift
                    for d in range(ad,2*ell+1):
                        x=c*math.comb(d,ad)*r**(d-ad)
                        if x:f[index[ell,d]]=x
                ff.append(f)
            for k in range(max(0,gap+1),L+1):
                eq=defaultdict(int)
                for j in range(k+1):
                    for c,x in ff[j].items():eq[c]+=B[k-j]*x
                eq={c:x for c,x in eq.items() if x}
                if eq:
                    out.append(eq);labs.append((r,a,k,M))
    return mons,labs,out

def add_scaled(dst,src,k):
    for c,x in src.items():
        val=dst.get(c,Q(0))+k*x
        if val:dst[c]=val
        elif c in dst:del dst[c]

def exact_probe(A,track=False):
    piv={};ops={}
    for no,row in enumerate(A):
        cur={c:Q(v) for c,v in row.items()};rep={no:Q(1)} if track else None
        while cur:
            c=max(cur)
            if c==0:
                if not track:return {'inconsistent':True,'last_row':no,'rank':len(piv)}
                den=math.lcm(*(x.denominator for x in rep.values()));vec={i:int(den*x) for i,x in rep.items()};g=math.gcd(*vec.values());vec={i:x//g for i,x in vec.items()}
                rhs=sum(x*A[i].get(0,0) for i,x in vec.items())
                return {'inconsistent':True,'last_row':no,'rank':len(piv),'relation':[[i,x] for i,x in sorted(vec.items())],'constant':rhs}
            if c not in piv:
                k=cur[c];piv[c]={j:x/k for j,x in cur.items()}
                if track:ops[c]={j:x/k for j,x in rep.items()}
                break
            k=cur[c];add_scaled(cur,piv[c],-k)
            if track:add_scaled(rep,ops[c],-k)
    return {'inconsistent':False,'rank':len(piv)}

def check_relation(A,cert):
    z=defaultdict(int)
    for row,c in cert['relation']:
        for k,v in A[row].items():z[k]+=c*v
    z={k:v for k,v in z.items() if v}
    assert z=={0:cert['constant']} and cert['constant']!=0

def probe(states,levels,out):
    results=[];begin=time.monotonic()
    for no,s in enumerate(states):
        h,v=s['h'],s['v'];rec={'h':h,'v':v,'status':'not_excluded','tested':[]}
        for L in levels:
            mons,labels,A=rows(h,v,L);p=exact_probe(A);rec['tested'].append({'L':L,'equations':len(A),'variables':len(mons)-1,**p})
            if p['inconsistent']:
                cert=exact_probe(A,True);check_relation(A,cert)
                rec.update(status='excluded',L=L,certificate=cert);break
        results.append(rec)
        print('EDGE_SLICE',no,h,v,rec['status'],rec.get('L'),round(time.monotonic()-begin,3),flush=True)
        out.write_text(json.dumps(results,separators=(',',':'),sort_keys=True)+'\n')
    return results

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--states',type=Path,required=True);p.add_argument('--out',type=Path,required=True);p.add_argument('--levels',type=int,nargs='+',default=[1,2,3,4,6,8]);a=p.parse_args()
    obj=json.loads(a.states.read_text());ss=obj.get('equality_vertical_states',obj) if isinstance(obj,dict) else obj
    probe(ss,a.levels,a.out)
