"""Independent verifier: s-first enumeration, subset CRT in j, trial primality.
Does not import the generator or its parameter/root functions.
"""
import argparse,json
from functools import lru_cache
from math import gcd
from pathlib import Path

def need(ok,message):
    if not ok: raise ValueError(message)

def cube_floor(N):
    need(N>=0,'negative cube root')
    a,b=0,1
    while b*b*b<=N:b*=2
    while a+1<b:
        m=(a+b)//2
        if m*m*m<=N:a=m
        else:b=m
    return a

@lru_cache(None)
def is_prime(n):
    if n<2:return False
    if n in (2,3):return True
    if n%2==0 or n%3==0:return False
    k=5
    while k*k<=n:
        if n%k==0 or n%(k+2)==0:return False
        k+=6
    return True

def inverse(a,m):
    if m==1:return 0
    u,v=1,0;x,y=a,m
    while y:
        q=x//y;x,y=y,x-q*y;u,v=v,u-q*v
    need(x==1,'nonunit inverse');return u%m

def expected_rows(B):
    out=[];budget=108*B**3
    for c in (1,3):
        alpha=2*c
        while c**4*alpha**2<budget:
            maxg=min(cube_floor((budget-1)//(c**4*alpha**2)), cube_floor((27*B-1)//c**4))
            for g in range(1,maxg+1):
                if c==3 and g%3==0:continue
                n=alpha*g
                if n<8 or n%4:continue
                low=max(1,(4+g-1)//g,cube_floor(c**4*alpha**2*g**3//108)+1)
                high=min(B,alpha//2)
                if low<=high:out.append((c,g,alpha,n,low,high))
            alpha*=2
    return sorted(out)

def verify(cert,expected_B=2**20):
    need(cert.get('schema')=='B699-i3-reduced-numerator-v1','schema')
    need(type(cert.get('B')) is int and cert['B']==expected_B,'wrong quantified B')
    need(cert.get('coefficient')==108 and cert.get('c_exponent')==4,'height constants')
    B=cert['B']; need(1<=B<=2**24,'resource bound')
    rows=cert['rows']; actual=[tuple(r[:6]) for r in rows]
    need(len(actual)==len(set(actual)),'duplicate parameter row')
    need(sorted(actual)==expected_rows(B),'incomplete or altered parameter box')
    first=[];second=[];prime_values=set();choices=0;largest=0
    for row in rows:
        need(len(row)==7,'row shape')
        c,g,alpha,n,low,high,fs=row
        M=(n-1)//gcd(n-1,3); qs=[];product=1;last=1
        for pe in fs:
            need(len(pe)==2,'factor format');p,e=pe
            need(type(p) is int and type(e) is int and p>last and e>=1,'sorted positive factors')
            need(is_prime(p),'composite base')
            q=p**e;product*=q;qs.append(q);prime_values.add(p);last=p
        need(product==M,'incomplete prime-power factorization')
        # Enumerate all splits M=d*e with gcd(d,e)=1. j is 0 mod d, 1 mod e.
        for mask in range(1<<len(qs)):
            d=1
            for k,q in enumerate(qs):
                if mask>>k&1:d*=q
            e=M//d;r=d*inverse(d,e)%M
            # Also require g|j; gcd(g,M)=1 follows from g|n.
            need(gcd(g,M)==1,'g and M not coprime')
            r2=r+M*((-r)*inverse(M,g)%g);mod=M*g
            for z in range(-((r2-g*low)//mod),(g*high-r2)//mod+1):
                j=r2+z*mod;need(j%g==0,'j divisibility')
                b=j//g
                if gcd(b,alpha)>1:continue
                need(4<=j<=n//2 and gcd(n,j)==g,'legal reduced parameters')
                need(c**4*n*n*g<108*b**3,'strict height')
                need(3*j*(j-1)%(n-1)==0,'first divisibility')
                qrow=[n,j,c,g,alpha,b];first.append(qrow)
                # Equivalent second divisibility, without multiplying by 6.
                if j*(j-1)*(j-2)%((n-2)//gcd(n-2,6))==0:second.append(qrow)
        choices+=1<<len(qs);largest=max(largest,1<<len(qs))
    first.sort();second.sort()
    need(len(first)==len({tuple(x) for x in first}),'duplicate reconstructed pair')
    need(first==cert['first_candidates'],'first-candidate coverage mismatch')
    need(second==cert['second_candidates'],'second-candidate coverage mismatch')
    need(not second,'nonempty terminal: no closure certified')
    return {'B':B,'parameter_rows':len(rows),'root_choices':choices,'largest_root_count':largest,
            'distinct_prime_bases':len(prime_values),'first_candidates':len(first),'second_candidates':len(second),
            'max_n_in_rows':max((r[3] for r in rows),default=0),
            'max_n_after_first':max((r[0] for r in first),default=0),'status':'PASS'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);ap.add_argument('--B',type=int,default=2**20);ap.add_argument('--out',type=Path,required=True)
    ar=ap.parse_args();result=verify(json.loads(ar.certificate.read_text()),ar.B)
    ar.out.parent.mkdir(parents=True,exist_ok=True);ar.out.write_text(json.dumps(result,sort_keys=True,indent=2)+'\n');print(json.dumps(result,sort_keys=True))
if __name__=='__main__':main()
