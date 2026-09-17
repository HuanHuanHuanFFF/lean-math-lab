#!/usr/bin/env python3
"""Standard-library acceptance of the fixed algebra contract.
Independent sparse-polynomial arithmetic; no SymPy or generator import.
This checks finite identities and constants, not an automatic proof of every paragraph.
"""
from pathlib import Path
from math import comb,gcd
import json
ROOT=Path(__file__).resolve().parents[1]

def c(v,d=2): return {(0,)*d:v} if v else {}
def var(i,d=2): return {tuple(int(j==i) for j in range(d)):1}
def add(*ps):
    out={}
    for p in ps:
        for m,a in p.items():out[m]=out.get(m,0)+a
    return {m:a for m,a in out.items() if a}
def scale(p,a):return {m:v*a for m,v in p.items() if v*a}
def sub(p,q):return add(p,scale(q,-1))
def mul(*ps):
    if not ps:return c(1)
    d=len(next(iter(ps[0]),(0,0)));out=c(1,d)
    for p in ps:
        ans={}
        for m,a in out.items():
            for n,b in p.items():
                k=tuple(x+y for x,y in zip(m,n));ans[k]=ans.get(k,0)+a*b
        out={k:v for k,v in ans.items() if v}
    return out
def power(p,k):
    d=len(next(iter(p),(0,0)));r=c(1,d)
    for _ in range(k):r=mul(r,p)
    return r
def packed(p):return [[*m,a] for m,a in sorted(p.items())]
def unpack(rows):
    out={}
    for t in rows:
        m=tuple(t[:-1]);v=t[-1]
        if not isinstance(v,int) or not v or m in out:raise AssertionError('noncanonical polynomial')
        out[m]=v
    return out
def taylor(p,point,order):
    z=0
    for m,a in p.items():
        if all(v>=u for v,u in zip(m,order)):
            v=a
            for e,b,h in zip(m,point,order):v*=comb(e,h)*b**(e-h)
            z+=v
    return z
def compose(p,values):
    d=len(next(iter(values[0]),(0,)));ans={}
    for mon,a in p.items():
        w=c(a,d)
        for e,v in zip(mon,values):w=mul(w,power(v,e))
        ans=add(ans,w)
    return ans

def local_small(n,i):
    out=1;left=n
    for p in range(2,i):
        if any(p%d==0 for d in range(2,int(p**0.5)+1)):continue
        while left%p==0:left//=p;out*=p
    if i in (5,7) and n%i==0 and n%(i*i):out*=i
    return out

def vp_binomial(n,j,p):
    q=p;v=0
    while q<=n:v+=n//q-j//q-(n-j)//q;q*=p
    return v

def check_certificate(z):
    assert z['schema']=='paired-midpoint-v1' and z['targets']==[5,6,7,8]
    x=var(0);y=var(1);one=c(1);n=add(x,y);P=mul(x,y)
    f=mul(x,y,sub(x,one),sub(y,one),sub(sub(scale(x,2),y),c(2)),sub(sub(scale(y,2),x),c(2)))
    assert packed(f)==z['F_terms']
    assert z['degree']==max(sum(m) for m in f)==6
    assert z['origin_order']==min(sum(m) for m in f)==2
    expected=[]
    for r,bs in [(1,range(2)),(2,[1]),(3,range(4)),(4,range(5))]:
        for b in bs:expected.append(dict(r=r,b=b,order=3 if r==1 else 2 if (r,b) in ((2,1),(4,2)) else 1))
    assert z['nodes']==expected
    count=0
    for e in expected:
        for a in range(e['order']):
            for b in range(e['order']-a):assert taylor(f,(e['b'],e['r']-e['b']),(a,b))==0;count+=1
    # In coordinates (N,Z), rebuild the elimination and both extremal identities.
    N=var(0);Z=var(1)
    fn=mul(Z,add(Z,scale(N,-1),c(1)),add(scale(Z,9),scale(power(N,2),-2),scale(N,-2),c(4)))
    assert packed(fn)==z['F_NZ_terms']
    assert compose(fn,[n,P])==f
    upper=mul(sub(power(N,2),scale(Z,4)),add(scale(power(Z,2),144),scale(mul(Z,power(N,2)),4),power(N,4)))
    assert upper==sub(power(N,6),scale(mul(power(Z,2),sub(scale(Z,9),scale(power(N,2),2))),64))
    assert packed(upper)==z['upper_positive_identity']
    A=N
    lower=mul(power(sub(scale(Z,27),scale(A,4)),2),add(scale(Z,27),scale(A,2)))
    assert lower==sub(scale(power(A,3),32),scale(mul(power(Z,2),sub(scale(A,2),scale(Z,9))),2187))
    assert packed(lower)==z['lower_identity']
    D=mul(power(sub(N,c(1)),3),sub(N,c(3)),sub(N,c(4)))
    tail=compose(sub(scale(D,8),scale(power(N,5),7)),[add(var(0,1),c(80,1)),c(0,1)])
    assert packed(tail)==z['tail_terms'] and all(v>0 for v in tail.values())
    assert z['joint_bound_cutoff']==80 and z['negative_bound_cutoff']==64 and z['joint_constant']==56
    assert z['constant_margin']==2187*64**3-2048*65**3==10876928>0
    # Four-variable midpoint syzygies.
    xx,yy,LL,ss=[var(h,4) for h in range(4)];nn=add(xx,yy)
    assert [v['a'] for v in z['midpoints']]==[2,3]
    for v in z['midpoints']:
        a=v['a'];m=2*a-1
        K=add(scale(LL,m*m),scale(mul(ss,nn),-a*(a-1)),scale(ss,-a*a))
        U=add(scale(xx,m),scale(nn,-(a-1)),c(-a,4));V=add(scale(yy,m),scale(nn,-(a-1)),c(-a,4))
        assert packed(K)==v['K_terms']
        assert sub(sub(mul(sub(nn,c(1,4)),K),mul(ss,U,V)),scale(sub(mul(sub(nn,c(1,4)),LL),mul(ss,xx,yy)),m*m))=={}
        assert packed({(m[0],m[1]):c0 for m,c0 in U.items()})==v['U_terms']
        assert packed({(m[0],m[1]):c0 for m,c0 in V.items()})==v['V_terms']
    costs=[]
    for i in (5,6):
        for r in range(1800):
            if r%72 not in (18,56) or (i==6 and r%5 not in (0,2)):continue
            # Different representative of each residue class from the generator.
            a,b,c0=(local_small(r+9000-h,i) for h in (1,3,4))
            costs.append(dict(i=i,residue=r,s1=a,s3=b,s4=c0,Aprime=a**3*b*c0))
    assert costs==z['costs']
    assert max(a['Aprime'] for a in costs if a['i']==5)==750
    assert max(a['Aprime'] for a in costs if a['i']==6)==6
    w=z['weak_lift_example'];n0=w['n'];j=w['j'];k=n0-j;gg=gcd(n0,j)
    assert (n0,j,w['i'])==(1503090,5202,5) and n0%72==18 and j>5 and 2*j<=n0
    assert w['s']==local_small(n0-1,5)==1 and gg==w['g']==18
    assert j*k%(n0-1)==0 and j*k//(n0-1)==w['L']==5184
    assert w['t']==w['L']//(gg*gg)==16
    q=(n0-4)//local_small(n0-4,5)
    assert q==w['q4']==169*4447
    assert gcd(q,3*w['L']-4)==w['widehat_M4']==169
    assert gcd(q,j-2)==w['actual_M4']==13
    K=9*w['L']-2*(n0+2)
    assert K==w['K4'] and K%169==0 and K%(169**2)!=0
    assert vp_binomial(n0,5,13)==vp_binomial(n0,j,13)==2
    zz=z['zero_case'];assert zz==dict(n=16,i=5,j=6) and 3*zz['j']-zz['n']-2==0
    return {'status':'PASS_NEW_ALGEBRA','taylor_zero_conditions':count,'polynomial_terms':len(f),
            'tail_positive_coefficients':len(tail),'cost_classes':len(costs),'midpoint_identities':2,
            'weak_lift_witness':{'n':n0,'i':5,'j':j,'prime':13,'source_valuation':2,'target_valuation':2},
            'scope':'Exact finite algebra acceptance; infinite deductions remain the written proof.'}

if __name__=='__main__':
    z=json.loads((ROOT/'evidence/new-certificate.json').read_text());ans=check_certificate(z)
    (ROOT/'evidence/check.json').write_text(json.dumps(ans,indent=2,sort_keys=True)+'\n')
    print(json.dumps(ans))
