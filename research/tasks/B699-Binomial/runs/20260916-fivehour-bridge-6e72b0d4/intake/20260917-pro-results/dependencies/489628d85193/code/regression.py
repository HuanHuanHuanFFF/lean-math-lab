#!/usr/bin/env python3
"""Finite diagnostics only. They do not prove any unbounded claim."""
from pathlib import Path
from math import gcd,comb,prod
from fractions import Fraction
import json,time
ROOT=Path(__file__).resolve().parents[1]

def small(n,i):
    x=n;s=1
    for p in ((2,3) if i==5 else (2,3,5)):
        while x%p==0:x//=p;s*=p
    if i==5 and x%5==0 and x%25:s*=5
    return s

def strip_lower(n,i):
    for p in ((2,3) if i==5 else (2,3,5)):
        while n%p==0:n//=p
    return n

def lowpart(x,i):
    assert x>0
    ans=1
    for p in(2,3,5,7):
        if p<i:
            while x%p==0:x//=p;ans*=p
    return ans

def factor(x):
    fs=[];p=2
    while p*p<=x:
        e=0
        while x%p==0:x//=p;e+=1
        if e:fs.append((p,e))
        p=3 if p==2 else p+2
    if x>1:fs.append((x,1))
    return fs

def vp(n,j,p):
    q=p;v=0
    while q<=n:v+=n//q-j//q-(n-j)//q;q*=p
    return v

def omega(t,i):
    return sum(1 for p,e in factor(t) if p>i or (p==i and e>=2))

def main():
    start=time.monotonic()
    stats={'range_n':3000,'i5_pairs':0,'i6_pairs':0,'center5_accept':0,'cube5_accept':0,'amplified5_accept':0,'union5_accept':0,'center6_accept':0,'cube6_accept':0,'amplified6_accept':0,'native6_t_support_accept':0,'native6_row_groups_accept':0,'union6_accept':0,'bridge5to6_checks':0,'two_base_checks':0,'old_trio_not_accept_new_center_examples':[]}
    for n in range(18,3001):
        if n%72 not in(18,56):continue
        qs5=[(n-r)//small(n-r,5) for r in range(5)]
        qs6=[(n-r)//small(n-r,6) for r in range(5)]
        src5=comb(n,5);src6=comb(n,6)
        nj=comb(n,5)
        for j in range(6,n//2+1):
            nj=nj*(n-j+1)//j;k=n-j;g=gcd(n,j)
            c=gcd(qs5[2],j-1);h=gcd(qs5[4],j-2)
            f1=(h==1);f2=(g*c)**3>=3*n
            W=(j//g)*(k//g)*((k-j)//g)*(j-1)*(k-1)
            amp5=(j==k) or lowpart(W,5)*(g*c)**3>=3*n
            part5=strip_lower(gcd(src5,nj),5)
            stats['i5_pairs']+=1;stats['center5_accept']+=f1;stats['cube5_accept']+=f2;stats['amplified5_accept']+=amp5
            if f1 or f2 or amp5:
                assert part5>1;stats['union5_accept']+=1
                if j>=7 and n%25>=5:
                    assert part5%5!=0 and src6%part5==0
                    stats['bridge5to6_checks']+=1
            olds=[gcd(qs5[3],j*k),gcd(qs5[3],(j-1)*(k-1)),gcd(qs5[4],j*k)]
            if f1 and min(olds)>1 and len(stats['old_trio_not_accept_new_center_examples'])<4:
                tt=Fraction(j*k,g*g*qs5[1])
                stats['old_trio_not_accept_new_center_examples'].append({'n':n,'j':j,'old_gcds':olds,'new_H4':h,'t':[tt.numerator,tt.denominator],'gcd5':part5})
            tt=Fraction(j*k,g*g*qs5[1])
            if tt.denominator==1 and omega(tt.numerator,5)<=2 and (g*qs5[2])**3>=3*n:
                assert part5>1;stats['two_base_checks']+=1
            if j>=7 and n%5 in(0,2):
                c6=gcd(qs6[2],j-1);h6=gcd(qs6[4],j-2)
                f3=h6==1;f4=25*(g*c6)**3>=3*n
                amp6=(j==k) or 25*lowpart(W,6)*(g*c6)**3>=3*n
                tr=Fraction(j*k,g*g*(n-1))
                f5=tr.denominator!=1 or omega(tr.numerator,6)<=1
                fg=min(gcd(qs6[3],j*k),gcd(qs6[3],(j-1)*(k-1)),gcd(qs6[4],j*k),h6)==1
                good=strip_lower(gcd(src6,nj),6)
                stats['i6_pairs']+=1;stats['center6_accept']+=f3;stats['cube6_accept']+=f4;stats['amplified6_accept']+=amp6
                stats['native6_t_support_accept']+=f5;stats['native6_row_groups_accept']+=fg
                if f3 or f4 or f5 or fg or amp6:
                    assert good>1;stats['union6_accept']+=1
    # Non-vacuous exact divisibility regression with PARTIAL avoiding source
    # blocks. Here s is not claimed to be 1/5 and no constant bound is applied.
    partial={'pairs':0,'nonunit_C2':0,'nonunit_H4':0,'product_divisibilities':0,'positive_quotient_checks':0,'smallprime_divisibilities':0,'max_smallprime_gain':1}
    for i in(5,6):
        for n in range(2*(i+1),261):
            bases=[]
            for r in range(5):bases.append([(p,e) for p,e in factor(n-r) if p>i or(p==i and e>=2)])
            for j in range(i+1,(n-1)//2+1):
                k=n-j;g=gcd(n,j);d=n-2*j
                q=[prod(p**e for p,e in fs if vp(n,j,p)==0) for fs in bases]
                s=(n-1)//q[1]
                assert j*k%(g*g*q[1])==0
                t=j*k//(g*g*q[1]);L=g*g*t
                c=gcd(q[2],j-1);e3=gcd(q[3],t);f3=gcd(q[3],L-s)
                e4=gcd(q[4],t);f4=gcd(q[4],L-s);h4=gcd(q[4],j-2)
                assert e3*f3==q[3] and e4*f4*h4==q[4]
                assert t%(e3*e4)==0
                assert (L-s)%(c*c*f3*f4)==0
                assert (d//g)%(c*h4)==0
                assert g*c**3*q[3]*q[4]<=d*t*(L-s)
                assert (d*t*(L-s))%(g*c**3*q[3]*q[4])==0
                quotient=(d*t*(L-s))//(g*c**3*q[3]*q[4])
                W=(j//g)*(k//g)*((k-j)//g)*(j-1)*(k-1)
                H=lowpart(W,i)
                assert quotient>0 and quotient%H==0
                assert H%2==0
                if n%2==0 and g%2==1:assert H%16==0
                partial['positive_quotient_checks']+=1;partial['smallprime_divisibilities']+=1;partial['max_smallprime_gain']=max(partial['max_smallprime_gain'],H)
                partial['pairs']+=1;partial['nonunit_C2']+=c>1;partial['nonunit_H4']+=h4>1;partial['product_divisibilities']+=3
    stats['partial_avoiding']=partial
    controls=[]
    for n,j,r,p,e in[(128,26,3,5,3),(704,6,4,5,2)]:
        assert vp(n,5,p)>0 and vp(n,j,p)>0
        assert j%(p**e)>n%(p**e)
        assert not(j%(p**(e-1))>n%(p**(e-1)))
        controls.append({'n':n,'j':j,'r':r,'p':p,'e':e,'source_v':vp(n,5,p),'target_v':vp(n,j,p)})
    stats['full_power_controls']=controls
    # A source prime equal to 5 is not silently promoted to a target-6 witness.
    assert vp(200,5,5)>0 and vp(200,7,5)>0
    stats['native6_without_bridge_example']={'n':200,'j':7,'n_mod25':0,'gcd5':strip_lower(gcd(comb(200,5),comb(200,7)),5),'gcd6':strip_lower(gcd(comb(200,6),comb(200,7)),6)}
    assert stats['native6_without_bridge_example']['gcd6']>1
    generic={'n_range':[90,600],'strict_half_pairs':0,'exact_accept':0,'simple_accept':0,'amplified_accept':0,'targets':{}}
    def sg(n,i):
        z=n;s=1
        for p in(2,3,5,7):
            if p>=i:continue
            while z%p==0:z//=p;s*=p
        if i in(5,7) and z%i==0 and z%(i*i)!=0:s*=i
        return s
    for i in(5,6,7,8):
        cts={'pairs':0,'exact_accept':0,'simple_accept':0,'amplified_accept':0}
        for n in range(90,601):
            ss=[sg(n-r,i) for r in range(5)];qq=[(n-r)//ss[r] for r in range(5)]
            A=ss[1]**2*ss[3]*ss[4];D=(n-1)**2*(n-3)*(n-4)
            src=comb(n,i);choose=src
            for j in range(i+1,(n-1)//2+1):
                choose=choose*(n-j+1)//j;k=n-j;g=gcd(n,j);c=gcd(qq[2],j-1)
                exact=(g*c)**3*D>A*(n-2*j)*j*k*(j-1)*(k-1)
                simple=50*(g*c)**3>=A*n
                W=(j//g)*(k//g)*((k-j)//g)*(j-1)*(k-1)
                amplified=50*lowpart(W,i)*(g*c)**3>=A*n
                cts['pairs']+=1;cts['exact_accept']+=exact;cts['simple_accept']+=simple;cts['amplified_accept']+=amplified
                if exact or simple or amplified:
                    v=gcd(src,choose)
                    for p in(2,3,5,7):
                        if p<i:
                            while v%p==0:v//=p
                    assert v>1
        generic['targets'][str(i)]=cts
        generic['strict_half_pairs']+=cts['pairs'];generic['exact_accept']+=cts['exact_accept'];generic['simple_accept']+=cts['simple_accept'];generic['amplified_accept']+=cts['amplified_accept']
    stats['generic_center_product']=generic
    stats['status']='PASS';stats['seconds']=time.monotonic()-start
    (ROOT/'outputs/regression.json').write_text(json.dumps(stats,ensure_ascii=False,indent=2)+'\n');print(json.dumps(stats,ensure_ascii=False))
if __name__=='__main__':main()
