#!/usr/bin/env python3
"""Discovery probe: exact finite-period square tests, not a finite q scan.
The bounded prime search is exploratory. The chosen mod29 theorem is separately certified.
"""
import math

def prime(n):return n>=2 and all(n%d for d in range(2,math.isqrt(n)+1))
def rows(m):
    d=y=1;out=[];seen=set()
    while (d,y) not in seen:
        seen.add((d,y));out.append((d,y))
        d,y=(18817*d+32592*y+9408)%m,(10864*d+18817*y+5432)%m
    assert (d,y)==(1,1)
    return out

def main():
    for p in range(3,200):
        if not prime(p):continue
        rs=rows(100*p);rp=len(rs)//math.gcd(len(rs),60)
        sq={i*i%p for i in range(p)};good=[];vals=[]
        for r in range(rp):
            d,y=rs[(45+60*r)%len(rs)];num=3*(d-1)
            assert num%100==0
            b=(num//100)%p;v=100*y
            s=(v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*b*y)%p
            vals.append(s)
            if s in sq:good.append(r)
        print(f'p={p} lifted_pell_period={len(rs)} full_r_period={rp} surviving_r_classes={len(good)}')
        if not good:print(f'COMPLETE PERIOD OBSTRUCTION at p={p}; residues={sorted(set(vals))}')
if __name__=='__main__':main()
