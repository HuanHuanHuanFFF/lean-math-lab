import sys,json,random
from math import comb,gcd
from functools import reduce
from pathlib import Path
from content_kernel import *

def main():
    cases=layers=gates=0;ps=prime_list(72)
    for n in range(4,73):
        for i in range(1,min(14,n//2-1)+1):
            C=comb(n,i)
            for j in range(i+1,n//2+1):
                k=n-j;co=[comb(j,r)*comb(k,i-r) for r in range(i+1)]
                H=reduce(gcd,co);L=C//H
                assert C%H==0 and comb(n,j)%L==0
                ph=pl=1
                for p in ps:
                    if p>n:break
                    vH=vandermonde_exponent(i,j,k,p);vL=quotient_exponent(i,j,k,p)
                    r=vandermonde_witness(i,j,k,p)
                    assert vH==vp(H,p)==vp(co[r],p) and vL==vp(L,p)
                    assert vH+vL==choose_vp(n,i,p)
                    ph*=p**vH;pl*=p**vL;layers+=1
                assert ph==H and pl==L
                if i>=2:assert L>=2**i+i-1
                if i==3:
                    assert 27*L**4>=16*(n-1)**3
                    if n%4==0:
                        a=vp(n,2);assert vp(L,2)==a-min(a,vp(j,2))
                    if cubic_gate(n,j):
                        g=gcd(C,comb(n,j))
                        while g%2==0:g//=2
                        assert g>1;gates+=1
                cases+=1
    rng=random.Random(7731);rc=0
    for _ in range(160):
        n=rng.randrange(100,10**6);i=rng.randrange(2,15);j=rng.randrange(i+1,n//2+1);k=n-j
        co=[comb(j,r)*comb(k,i-r) for r in range(i+1)];H=reduce(gcd,co);L=comb(n,i)//H
        for p in prime_list(47):
            r=vandermonde_witness(i,j,k,p)
            assert vandermonde_exponent(i,j,k,p)==vp(H,p)==vp(co[r],p)
            assert quotient_exponent(i,j,k,p)==vp(L,p);rc+=1
    edge=[]
    for n,i,j,p in [(36,3,18,3),(30,3,10,5),(2198,13,14,13),(25,4,9,5),(27,4,10,5)]:
        co=[comb(j,r)*comb(n-j,i-r) for r in range(i+1)];H=reduce(gcd,co);L=comb(n,i)//H
        assert vandermonde_exponent(i,j,n-j,p)==vp(H,p) and quotient_exponent(i,j,n-j,p)==vp(L,p)
        edge.append({'n':n,'i':i,'j':j,'p':p,'v_choose_i':choose_vp(n,i,p),'v_choose_j':choose_vp(n,j,p),'v_H':vp(H,p),'v_L':vp(L,p)})
    out={'status':'passed','exhaustive_n_max':72,'exhaustive_i_max':14,'legal_triples':cases,
         'all_prime_content_comparisons':layers,'finite_cubic_gate_instances':gates,
         'random_seed':7731,'large_parameter_prime_checks':rc,'boundary_examples':edge}
    p=Path(sys.argv[1]);p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
