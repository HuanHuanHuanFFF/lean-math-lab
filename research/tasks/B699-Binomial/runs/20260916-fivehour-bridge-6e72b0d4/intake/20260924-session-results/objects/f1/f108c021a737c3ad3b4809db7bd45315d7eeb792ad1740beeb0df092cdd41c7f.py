#!/usr/bin/env python3
from fractions import Fraction
import json, math, pathlib, subprocess, sys

BASE=pathlib.Path(__file__).resolve().parents[1]

UNIVERSAL=[
    (23,277,20),(31,373,27),(47,1693,41),(59,31153,22),
    (61,733,38),(67,3217,25),(71,853,62),(101,1213,63),
]
EVEN_S=[
    (5,181,3),(11,489061,4),(13,6811741,8),(19,18405321661,7),(29,349,18),
]

def is_prime(n:int)->bool:
    if n<2:return False
    small=(2,3,5,7,11,13,17,19,23,29,31,37)
    for p in small:
        if n%p==0:return n==p
    d=n-1;s=0
    while d%2==0:s+=1;d//=2
    for a in (2,325,9375,28178,450775,9780504,1795265022):
        if a%n==0:continue
        x=pow(a,d,n)
        if x in (1,n-1):continue
        for _ in range(s-1):
            x=x*x%n
            if x==n-1:break
        else:return False
    return True

def mul(x,y,m):
    a,b=x;c,d=y
    return ((a*c+3*b*d)%m,(a*d+b*c)%m)

def pell_pair(n,m):
    z=(1,0);a=(2%m,1%m)
    while n:
        if n&1:z=mul(z,a,m)
        a=mul(a,a,m);n//=2
    return z

def crt_w(k,r,a):
    target=a*pow(pow(2,k,r),-1,r)%r
    for w in range(target, target+6*r, r):
        if w%2==1 and w%3==0:
            return w%(6*r)
    raise AssertionError('CRT construction failed')

def check_seed(r,p,a,universal=True):
    assert is_prime(r) and is_prime(p)
    assert pell_pair(r,p)[0]==0
    assert (-pow(8,-1,r))%r==a
    euler=pow(5,(p-1)//2,p)
    if universal:
        assert euler==p-1
        assert p%12==1 and p%60 in (13,37)
    else:
        assert euler==1
        assert pow(2,(p-1)//2,p)==p-1
        assert p%12==1 and p%120 in (61,109)
    samples=[]
    for rho in range(12,33):
        k=rho-3
        w=crt_w(k,r,a)
        q=(1<<k)*w
        t=8*q+1
        assert w%2==1
        assert q%(1<<(k+1))==(1<<k)
        assert q%3==0
        assert q%r==a and t%r==0
        assert t%4096==1
        samples.append({'rho':rho,'w_mod_6r':w,'q_mod_r':q%r})
    return {'r':r,'ell':p,'q_residue':a,'ell_mod_60':p%60,'ell_mod_120':p%120,
            'euler5':euler,'sample_crt':samples}

def main():
    sym=subprocess.run([sys.executable,str(BASE/'evidence'/'symbolic_verify.py')],capture_output=True,text=True,check=True)
    universal=[check_seed(*x,True) for x in UNIVERSAL]
    even=[check_seed(*x,False) for x in EVEN_S]
    surv=Fraction(1,1)
    for r,_,_ in UNIVERSAL:surv*=Fraction(r-1,r)
    eliminated=1-surv
    out={
        'status':'PASS',
        'symbolic_stdout':sym.stdout.strip(),
        'universal_bad_rank_seeds':universal,
        'even_s_parity_seeds':even,
        'formal_row_union_density':{
            'numerator':eliminated.numerator,
            'denominator':eliminated.denominator,
            'decimal':float(eliminated),
            'scope':'pairwise-coprime rank residue classes before m/P/Q recovery'
        },
        'claims_not_made':['all rho>=12 closed','full i=3','Lean','counterexample'],
    }
    p=BASE/'outputs'/'replay.json'
    p.write_text(json.dumps(out,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','universal_seeds':len(universal),'even_s_seeds':len(even),
                      'density':float(eliminated),'output':str(p)},ensure_ascii=False))

if __name__=='__main__':main()
