"""Symbolic two-colour CRT descent. Discovery computes maxima, never expands huge t ranges."""
from pathlib import Path
from math import factorial, prod
from itertools import combinations
import json, sys, time
R=Path(__file__).resolve().parents[1]
PS=(2,3,5,7,11,13); HMIN={2:3,3:2,5:1,7:1,11:1,13:1}
D=13; K=2**90*prod(factorial(h)**3 for h in range(1,10)); B=(2*factorial(13))**14

def ceildiv(a,b): return -((-a)//b)
def root_floor(n,k):
    if n<2:return n
    x=1<<ceildiv(n.bit_length(),k)
    while True:
        y=((k-1)*x+n//x**(k-1))//k
        if y>=x:break
        x=y
    while (x+1)**k<=n:x+=1
    while x**k>n:x-=1
    return x

def threshold(H):
    t=ceildiv(B*H**23,K);m=root_floor(t,70)
    if m**70<t:m+=1
    assert K*m**70>=B*H**23 and (m==1 or K*(m-1)**70<B*H**23)
    return m

def families(H,M):
    start=max(182,M+14);by={p:[] for p in PS}
    for p in PS:
        h=HMIN[p];Q=p**h
        while Q<H:
            lo=max(1,ceildiv(start-D,Q));hi=min(M,(H-1)//Q)
            if lo<=hi:by[p].append((Q,lo,hi,h))
            Q*=p;h+=1
    return start,by

def one_step(H):
    t0=time.monotonic();M=threshold(H);start,by=families(H,M)
    best=min(H-1,start-1);witness={'kind':'small_prefix','n':best}
    pairs=branches=nonempty=progression_terms=0
    for p,q in combinations(PS,2):
        for Q,al,ah,hp in by[p]:
            for T,bl,bh,hq in by[q]:
                pairs+=1;v=pow(Q,-1,T)
                a0=(-D*v)%T
                for d in range(-D,D+1):
                    branches+=1;b0=(Q*a0-d)//T
                    lo=max(ceildiv(al-a0,T),ceildiv(bl-b0,Q))
                    hi=min((ah-a0)//T,(bh-b0)//Q)
                    if lo<=hi:
                        nonempty+=1;progression_terms+=hi-lo+1
                        A=a0+T*hi;BB=b0+Q*hi;N1=Q*A;N2=T*BB
                        assert al<=A<=ah and bl<=BB<=bh and N1-N2==d
                        top=min(N1+D,N2+D,H-1)
                        assert max(N1,N2,start)<=top
                        if top>best:
                            best=top;witness={'kind':'CRT','p':p,'q':q,'hp':hp,'hq':hq,'d':d,'t':hi,'A':A,'B':BB,'n':top}
                    a0+=v
                    if a0>=T:a0-=T
    return {'H':str(H),'M':str(M),'start':str(start),'out_H':str(best+1),'family_count':sum(map(len,by.values())), 'power_pairs':pairs,'signed_branches':branches,'nonempty_branches':nonempty,'symbolic_progression_terms':str(progression_terms),'maximum_witness':{k:str(v) if isinstance(v,int) else v for k,v in witness.items()},'seconds':round(time.monotonic()-t0,3)}

def main():
    bits=int(sys.argv[1]) if len(sys.argv)>1 else 192
    output=Path(sys.argv[2]) if len(sys.argv)>2 else R/'evidence/crt_descent.json'
    H=1<<bits;rows=[]
    for stage in range(30):
        row=one_step(H);row['stage']=stage+1;rows.append(row)
        output.write_text(json.dumps({'status':'DISCOVERY_SYMBOLIC_CRT_CHAIN','start_height_bits':bits,'K':str(K),'B':str(B),'rows':rows},indent=2)+'\n')
        print(json.dumps({k:row[k] for k in ['stage','H','out_H','M','family_count','power_pairs','symbolic_progression_terms','seconds']}),flush=True)
        HH=int(row['out_H']);assert HH<=H
        if HH==H:break
        H=HH
    else:raise RuntimeError('no fixed point in safety iteration cap; checkpoint retained')
if __name__=='__main__':
    if not __debug__:raise RuntimeError('assertions are required')
    main()
