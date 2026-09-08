"""Decision probe for new full-power necessary conditions; not an original-target scan.

Build all small binomials directly, strip only primes below i, and compare actual V
to C(j,i), C(n-j,i), and full Kummer avoidance. Stop at first fixed input cap.
No baseline finite certificates or previous scan scripts are used.
"""
import argparse, json, math, platform, time
from pathlib import Path

def primes_to(n):
    flags=bytearray(b"\x01")*(n+1)
    flags[:2]=b"\x00\x00"
    for p in range(2,math.isqrt(n)+1):
        if flags[p]: flags[p*p:n+1:p]=b"\x00"*(((n-p*p)//p)+1)
    return [p for p in range(2,n+1) if flags[p]]

def factor_with(a, ps):
    fs={}
    for p in ps:
        if p*p>a: break
        if a%p==0:
            e=0
            while a%p==0: a//=p;e+=1
            fs[p]=e
    if a>1: fs[a]=fs.get(a,0)+1
    return fs

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("--max-n",type=int,default=200)
    ap.add_argument("--output",type=Path,required=True)
    args=ap.parse_args()
    started=time.time()
    ps=primes_to(args.max_n)
    choose=[[math.comb(n,k) for k in range(n+1)] for n in range(args.max_n+1)]
    counts={key:0 for key in ["rows","triples","radical_survivors","full_survivors","two_window_survivors","low_residue_survivors","no_common"]}
    examples={key:[] for key in ["radical_only","full_survivors","two_window_survivors","low_residue_survivors","no_common"]}
    for n in range(4,args.max_n+1):
        for i in range(1,(n-2)//3+1):
            A=choose[n][i]
            V=A
            for p in ps:
                if p>=i: break
                while V%p==0: V//=p
            fac={p:e for p,e in factor_with(A,ps).items() if p>=i}
            radical=math.prod(fac)
            counts["rows"]+=1
            for j in range(max(i+1,(3*i)//2+1),n//2+1):
                counts["triples"]+=1
                B=choose[j][i]
                if B%radical: continue
                counts["radical_survivors"]+=1
                if B%V:
                    if len(examples["radical_only"])<10:
                        examples["radical_only"].append(dict(n=n,i=i,j=j,V=V,radical=radical,B=B))
                    continue
                counts["full_survivors"]+=1
                D=math.gcd(A,choose[n][j])
                result=dict(n=n,i=i,j=j,A=A,V=V,B=B,C=choose[n-j][i],gcd=D,gcd_factors=factor_with(D,ps))
                if len(examples["full_survivors"])<15:examples["full_survivors"].append(result)
                if choose[n-j][i]%V: continue
                counts["two_window_survivors"]+=1
                if len(examples["two_window_survivors"])<15:examples["two_window_survivors"].append(result)
                low=all(j%(p**(e+int(p==i)))<=n%(p**(e+int(p==i))) for p,e in fac.items())
                if not low:continue
                counts["low_residue_survivors"]+=1
                if len(examples["low_residue_survivors"])<15:examples["low_residue_survivors"].append(result)
                if not any(p>=i for p in factor_with(D,ps)):
                    counts["no_common"]+=1;examples["no_common"].append(result)
    output=dict(purpose="Falsification of stronger-than-transfer candidates, not global B699 evidence",
                bounds=dict(n_min=4,n_max=args.max_n,indices="1<=i<j<=n/2 and 3i<2j"),
                definitions=dict(V="full p>=i prime-power part of exact math.comb(n,i)",
                    two_window="V divides both C(j,i) and C(n-j,i)",
                    low_residue="j mod p^(e+delta) <= n mod p^(e+delta), all actual factors",
                    no_common="independent exact math.comb/gcd factor check for surviving candidates"),
                counts=counts,examples=examples,python=platform.python_version(),elapsed_seconds=time.time()-started)
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(output,indent=2)+"\n",encoding="utf-8")
    print(json.dumps(output,indent=2))
if __name__=="__main__": main()

