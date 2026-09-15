#!/usr/bin/env python3
"""Second complete reduction, using ALL eligible rows and a uniform small part.
Does not read certificate.json and does not import either primary implementation.
"""
from __future__ import annotations
import argparse,hashlib,json,math,time
from pathlib import Path

def run_target(m:int)->dict:
    L=1
    for v in range(1,m+1): L=L*v//math.gcd(L,v)
    size=(m-1)*L+1
    spf=list(range(size+1))
    for p in range(2,math.isqrt(size)+1):
        if spf[p]==p:
            for v in range(p*p,size+1,p):
                if spf[v]==v: spf[v]=p
    ps=[p for p in range(2,m) if spf[p]==p]
    is_endpoint=spf[m]==m
    caps={}
    for p in ps:
        q=p
        while q<m:q*=p
        caps[p]=q
    D=math.prod(q//p for p,q in caps.items())*(m if is_endpoint else 1)
    def fac(v):
        ans={}
        while v>1:
            p=spf[v];ans[p]=ans.get(p,0)+1;v//=p
        return ans
    def small(v):
        out=1
        for p in ps:
            while v%p==0:out*=p;v//=p
        if is_endpoint and v%m==0 and v%(m*m)!=0:out*=m
        return out
    def positive_divisors(f):
        z=[1]
        for p in sorted(f):
            base=z.copy()
            for e in range(1,f[p]+1):z.extend(x*p**e for x in base)
        return z
    stats={'row_templates':0,'positive_divisors':0,'eligible_occurrences':0,'norm_divisions':0}
    eligible=set();rejections=[]
    for a in range(2,L+1):
        if L%a:continue
        for b in range(1,a//2+1):
            if math.gcd(a,b)!=1:continue
            norms={};factored={}
            for r in range(1,m):
                if r%a==0:continue
                fs={}
                for h in range(r+1):
                    term=abs(a*h-r*b)
                    if not term:raise ArithmeticError('zero norm')
                    for p,e in fac(term).items():
                        if p>=m:fs[p]=fs.get(p,0)+e
                factored[r]=fs;norms[r]=math.prod(p**e for p,e in fs.items())
            for r,fs in factored.items():
                stats['row_templates']+=1;full=fs.copy()
                for p,e in fac(D).items():full[p]=full.get(p,0)+e
                for d in positive_divisors(full):
                    stats['positive_divisors']+=1;n=d+r
                    if n%a:continue
                    j=(n//a)*b
                    if j<=m or j>n//2:continue
                    if is_endpoint and a%m==0 and n%(m*m)==0:continue
                    if any((n-r)%q==0 for q in caps.values()):continue
                    stats['eligible_occurrences']+=1;key=(n,a,b)
                    if key in eligible:continue
                    eligible.add(key)
                    for rr,B in norms.items():
                        stats['norm_divisions']+=1
                        if B%((n-rr)//small(n-rr)):
                            rejections.append([n,a,b,rr]);break
                    else:raise ArithmeticError(('unexcluded alternative candidate',m,n,j,a,b))
    data=json.dumps(sorted(rejections),separators=(',',':')).encode()
    return {'m':m,'L':L,'uniform_D':D,'caps':[[p,q] for p,q in caps.items()],**stats,
            'unique_candidates':len(eligible),'max_candidate_n':max((n for n,a,b in eligible),default=0),
            'rejections_sha256':hashlib.sha256(data).hexdigest(),'remaining':0}

def main(out:Path)->None:
    start=time.perf_counter();rows=[run_target(m) for m in range(4,9)]
    result={'status':'PASS_INDEPENDENT_ALL_POSITION_REDUCTION','targets':rows,
            'totals':{k:sum(x[k] for x in rows) for k in ('row_templates','positive_divisors','eligible_occurrences','norm_divisions','unique_candidates','remaining')},
            'scope':'Independent exact domain; same conversation author, not external review'}
    out.mkdir(parents=True,exist_ok=True)
    (out/'all_positions.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'totals':result['totals'],'seconds':time.perf_counter()-start},sort_keys=True))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);main(p.parse_args().out)
