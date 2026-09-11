"""New i9 structural probe. Finite exponent coverage, NOT a global i9 height theorem."""
from pathlib import Path
from itertools import combinations,permutations
from math import log,log2,ceil,factorial,prod
import json,time
R=Path(__file__).resolve().parents[1];PS=(2,3,5,7);H=4096;GAP=8
PROFILES={'asymmetric':(4,1,2,30,13,2**53),'symmetric':(20,7,2**35,20,7,2**35)}

def floor_log_power(p,N):
    k=int(log(N)/log(p));x=p**k
    while x>N:k-=1;x//=p
    while x*p<=N:k+=1;x*=p
    return k

def stream(profile,p,q):
    u,v,C,w,z,D=PROFILES[profile];r=u-v;s=w-z;top=floor_log_power(p,2**H-1)
    K=max(1,ceil(48/log2(p)));first=K;blocks=[]
    while K<=top:
        P=p**K
        if P<=GAP:K+=1;first=K;continue
        target=(P-GAP)**s;B0=int((s*K*log(p)-log(D))/(w*log(q)))
        B0=max(0,B0);Q=q**B0
        while D*Q**w>target:B0-=1;Q//=q
        while D*(Q*q)**w<=target:B0+=1;Q*=q
        if B0<1:K+=1;first=K;blocks=[];continue
        inv=pow(P,-1,Q);rho=min((d*inv)%Q or Q for d in range(-GAP,GAP+1))
        L=int((r*log(rho)-log(C)-v*K*log(p))/(u*log(p)))
        L=min(L,top-K)
        while L>=0 and rho**r<=C*p**(v*K+u*L):L-=1
        if L<0:K+=1;first=K;blocks=[];continue
        while K+L<top and rho**r>C*p**(v*K+u*(L+1)):L+=1
        blocks.append([K,L,B0]);K+=L+1
    h=ceil((log2(C)+u*(first-1)*log2(p))/r)+1
    while (2**h-GAP)**r<=C*p**(u*(first-1)):h+=1
    while h>4 and (2**(h-1)-GAP)**r>C*p**(u*(first-1)):h-=1
    return {'profile':profile,'p':p,'q':q,'first':first,'top':top,'prefix_height_bits':h,'blocks':blocks}

def main():
    t0=time.monotonic();K9=2**42*prod(factorial(h)**3 for h in range(1,7));C0=2*factorial(8)
    assert C0**10<K9*32**10
    assert 9**13<2**42 and 9**21<2**68
    rows=[stream('asymmetric',p,q) for p,q in permutations(PS,2)]+[stream('symmetric',p,q) for p,q in combinations(PS,2)]
    out={'status':'GENERATED_CONDITIONAL_FINITE_HEIGHT_I9_PROBE','input_height_bits':H,'gap':GAP,'profiles':{k:list(v) for k,v in PROFILES.items()},'K9':str(K9),'C0':C0,'stream_count':len(rows),'output_height_bits':max(7,max(r['prefix_height_bits'] for r in rows)),'block_count':sum(len(r['blocks']) for r in rows),'rows':rows,'seconds':round(time.monotonic()-t0,3),'does_not_prove_global_i9_height':True,'does_not_close_i9':True}
    (R/'evidence/i9/block_probe.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({k:v for k,v in out.items() if k!='rows'}),flush=True)
if __name__=='__main__':main()
