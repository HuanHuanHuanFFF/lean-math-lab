#!/usr/bin/env python3
"""Checker A: exact sparse polynomial arithmetic; exhaustive finite-field residues."""
import sys,json,itertools,math
from fractions import Fraction as F
sys.dont_write_bytecode=True

def need(ok,msg):
    if not ok: raise ValueError(msg)
def rat(q):
    need(isinstance(q,list) and len(q)==2 and all(type(i)==int for i in q) and q[1]>0,'rational encoding')
    return F(q[0],q[1])
def clean(a):return {m:c for m,c in a.items() if c}
def cn(c,n=1):return {} if not c else {(0,)*n:F(c)}
def vr(i,n=1):return {tuple(int(j==i) for j in range(n)):F(1)}
def add(a,b):
    z=dict(a)
    for m,c in b.items():z[m]=z.get(m,0)+c
    return clean(z)
def neg(a):return {m:-c for m,c in a.items()}
def sub(a,b):return add(a,neg(b))
def mul(a,b):
    z={}
    for m,c in a.items():
        for q,d in b.items():
            v=tuple(x+y for x,y in zip(m,q));z[v]=z.get(v,0)+c*d
    return clean(z)
def sc(a,c):return clean({m:v*c for m,v in a.items()})
def pw(a,k):
    n=len(next(iter(a))) if a else 1;z=cn(1,n)
    for _ in range(k):z=mul(z,a)
    return z
def eq(a,b,msg):need(clean(a)==clean(b),msg)
def readpoly(a):return clean({(i,):rat(c) for i,c in enumerate(a)})
def readsparse(a,n):
    need(len(a)<1000,'term bound');z={}
    for m,c in a:
        need(len(m)==n and all(type(i)==int and 0<=i<=10 for i in m),'monomial bound')
        need(tuple(m) not in z,'duplicate monomial');z[tuple(m)]=rat(c)
    return clean(z)
def ev(p,*xs):return sum(c*math.prod(F(x)**i for x,i in zip(xs,m)) for m,c in p.items())
def deriv(p):return {(i-1,):i*c for (i,),c in p.items() if i}
def compose(p,q):
    z={}
    for (i,),c in p.items():z=add(z,sc(pw(q,i),c))
    return z
def val(n,p):
    need(n!=0,'zero valuation');v=0
    while n%p==0:n//=p;v+=1
    return v
def vpbin(n,j,p):
    z=0;q=p
    while q<=n:z+=n//q-j//q-(n-j)//q;q*=p
    return z
def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def check(data):
    need(data['schema']=='B699-R8-v1','schema');need(data['threshold_power']==14,'threshold')
    need(data['claim']=='QUINTIC-RIGID; PURE2-QUINTIC; not QUINTIC-ALL','scope')
    stats={'generic_identities':0,'normalized_cases':0,'root_exclusions':0,'applications':0,'weak_examples':0,'mirror_examples':0}
    a,b,c,x=[vr(i,4) for i in range(4)];Ug=add(add(mul(a,pw(x,2)),mul(b,x)),c)
    need([z['k'] for z in data['generic']]==[0,1,2],'generic coverage')
    for row in data['generic']:
        k=row['k'];W=add(add(sc(c,k),sc(mul(b,x),F(2-k,2))),sc(mul(a,pw(x,2)),F(4-k,5)))
        th=F(3*k-2,10)
        r0=sc(mul(c,mul(sub(sc(mul(a,c),4),pw(b,2)),add(sc(mul(a,c),16),pw(b,2)))),th**3)
        r1=sc(mul(b,add(add(sc(mul(pw(a,2),pw(c,2)),48),sc(mul(mul(a,pw(b,2)),c),11)),pw(b,4))),-th**3)
        Q=readsparse(row['Q'],4)
        eq(mul(pw(a,2),pw(W,3)),add(add(mul(Ug,Q),r0),mul(r1,x)),'generic remainder identity')
        stats['generic_identities']+=1
    x=vr(0);one=cn(1)
    need(len(data['cases'])==6,'case count');seen=set()
    shifts={0:[2,-25,150,-280,200,-48],1:[2,50,-600,2000,-2080,672],2:[2,F(-25,4),0,35,-40,12]}
    for row in data['cases']:
        eta=rat(row['eta']);k=row['k'];need(eta in (F(1,4),F(-1,16)) and k in (0,1,2),'case domain')
        need((eta,k) not in seen,'case duplicate');seen.add((eta,k))
        U,W,V,f,iq,ir=[readpoly(row[z]) for z in ('U','W','V','f','inv_q','inv_r')]
        eq(U,add(add(pw(x,2),x),cn(eta)),'U anchor')
        eq(W,add(add(cn(k*eta),sc(x,F(2-k,2))),sc(pw(x,2),F(4-k,5))),'W anchor')
        th=F(3*k-2,10);ell=th**3*(48*eta*eta+11*eta+1)
        need(rat(row['ell'])==ell and ell!=0,'ell anchor')
        eq(mul(U,V),sub(f,one),'first product')
        eq(mul(mul(W,sub(W,U)),sub(W,sc(U,2))),mul(sc(x,ell),sub(f,cn(2))),'second product')
        eq(sub(mul(V,W),one),add(mul(U,iq),ir),'inverse residue')
        eq(sub(sc(W,ell),mul(sc(x,ell),sub(sc(deriv(W),3),sc(deriv(U),2)))),sc(U,k*ell),'ODE')
        if eta>0:
            t={0:F(2,9),1:F(-1,9),2:F(-4,9)}[k]
            eq(ir,sc(add(one,sc(x,2)),t),'nonzero repeated-root remainder')
        else:
            need(not ir,'squarefree inverse')
            product=cn(rat(row['factor_constant']));linear=[];quad=[]
            for z in row['factors']:
                need(z['multiplicity']==1,'factor multiplicity')
                p=readpoly(z['p']);product=mul(product,p);deg=max(m[0] for m in p)
                if deg==1:linear.append(p)
                elif deg==2:quad.append(p)
                else:raise ValueError('unexpected factor degree')
            eq(product,sub(f,cn(2)),'factorization')
            need(len(linear)==1 and len(quad)==2,'factor coverage')
            need(ev(linear[0],F(-5,4))==0,'rational root')
            for q in quad:
                dd=q.get((1,),0)**2-4*q[(2,)]*q.get((0,),0)
                need(dd.denominator==1 and dd>0 and math.isqrt(dd.numerator)**2!=dd.numerator,'quadratic irrational roots')
            shifted=compose(f,add(x,cn(F(-5,4))));eq(shifted,readpoly(row['shift']),'shift certificate')
            eq(shifted,{(i,):F(v) for i,v in enumerate(shifts[k]) if v},'shift anchor')
        stats['normalized_cases']+=1
    ca=data['canonical'];N=readpoly(ca['N']);S=readpoly(ca['Sig5'])
    eq(N,{(i,):F(v) for i,v in enumerate([2,25,150,280,200,48])},'F5 anchor')
    U=add(add(one,sc(x,6)),sc(pw(x,2),4));V=add(add(add(one,sc(x,19)),sc(pw(x,2),32)),sc(pw(x,3),12))
    eq(S,sc(mul(mul(x,add(sc(x,4),cn(5))),V),4),'sigma anchor')
    A1=add(add(cn(5),sc(x,10)),sc(pw(x,2),4));A2=add(add(cn(5),sc(x,20)),sc(pw(x,2),12))
    eq(sub(N,one),mul(U,V),'canonical first factor')
    eq(sub(N,cn(2)),mul(x,mul(A1,A2)),'canonical second factor')
    eq(sub(S,cn(5)),mul(sub(sc(x,12),one),mul(U,A1)),'sigma first slot')
    eq(sub(S,cn(10)),sc(mul(A2,add(add(add(cn(-1),sc(x,6)),sc(pw(x,2),18)),sc(pw(x,3),8))),2),'sigma second slot')
    eq(sub(sc(N,5),S),mul(add(x,cn(2)),mul(U,A2)),'original tau')
    eq(sub(sub(sc(N,5),S),cn(5)),mul(A1,V),'tau central slot')
    expected_rec={
      'H':sc(A1,F(1,5)),'C':sc(mul(x,A2),F(5,2)),
      'u':sc(mul(add(sc(x,4),cn(5)),add(x,cn(2))),F(1,9000)),
      'z':sub(sc(x,12),one),
      'delta':sc(add(add(add(cn(-2),sc(x,-13)),sc(pw(x,2),36)),sc(pw(x,3),36)),F(1,48)),
      'epsilon':sc(add(add(cn(-35),sc(x,42)),sc(pw(x,2),36)),F(1,125)),
      'T_rho':sc(add(add(add(cn(40),sc(x,-3)),sc(pw(x,2),-108)),sc(pw(x,3),108)),F(9,250))}
    require_rec=ca['recovery'];need(set(require_rec)==set(expected_rec),'recovery fields')
    for key,z0 in expected_rec.items():eq(readpoly(require_rec[key]),z0,'actual recovery '+key)
    hr,cr,ur,zr,dr,er,tr=[expected_rec[k] for k in ('H','C','u','z','delta','epsilon','T_rho')]
    eq(sub(sc(mul(cr,ur),576),mul(zr,pw(hr,2))),one,'same-input norm')
    eq(sc(mul(hr,dr),48),sub(sc(S,F(2,5)),N),'same-input delta')
    eq(sub(hr,sc(ur,1152)),er,'same-input epsilon')
    eq(sc(mul(ur,tr),576),add(mul(zr,pw(er,2)),one),'same-input T_rho')
    eq(add(mul(readpoly(ca['bezout_A']),N),mul(readpoly(ca['bezout_B']),S)),cn(24),'Bezout24')
    need(all(rat(q).denominator==1 for key in ('bezout_A','bezout_B','mod3125_quotient','mod27_quotient') for q in ca[key]),'integer quotient')
    eq(compose(N,add(cn(30),sc(x,125))),add(cn(2002),sc(readpoly(ca['mod3125_quotient']),3125)),'universal 3125 residue')
    eq(compose(N,add(one,sc(x,3))),add(cn(3),sc(readpoly(ca['mod27_quotient']),27)),'universal 27 residue')
    need(rat(ca['mirror'])==F(3,64)==ev(N,F(-5,4)),'mirror value')
    need(ev(S,F(-5,4))==0,'mirror endpoint')
    need([(r['p'],r['target']) for r in data['root_exclusions']]==[(7,1),(13,6),(751,169)],'field coverage')
    for row in data['root_exclusions']:
        p,target=row['p'],row['target'];need(prime(p),'prime field')
        need(all(int(ev(N,z))%p!=target for z in range(p)),'complete root exclusion')
        # A also binds the supplied Frobenius/Bezout certificate by evaluations.
        for z in range(p):
            fp=(int(ev(N,z))-target)%p
            rp=sum(v*pow(z,i,p) for i,v in enumerate(row['frob']))%p
            au=sum(v*pow(z,i,p) for i,v in enumerate(row['bezout_A']))%p
            bv=sum(v*pow(z,i,p) for i,v in enumerate(row['bezout_B']))%p
            need((au*fp+bv*rp)%p==1,'field Bezout evaluation')
        stats['root_exclusions']+=1
    E=data['exponent'];need(E=={'modulus':3125,'residue':2002,'order':2500,'power2_residue':601,'power3_residue':2494,'classes':[{'r':601,'p':751,'target':169},{'r':3101,'p':13,'target':6},{'r':5601,'p':7,'target':1}]},'exponent anchor')
    seq=[pow(2,s,3125) for s in range(2500)]
    need(seq.index(2002)==601 and len(set(seq))==2500,'power2 order/log')
    need([i for i,z in enumerate(seq) if 3*z%3125==2002]==[2494],'power3 log')
    for r in E['classes']:
        need(pow(2,r['r'],r['p'])==r['target'] and pow(2,7500,r['p'])==1,'period cover')
    need(7494%2500==2494 and 7494%6==0 and math.lcm(2500,6)==7500,'mixed exponent')
    w=data['weak_example'];yy=w['y'];nn=int(ev(N,yy));ss=int(ev(S,yy)/5);jj=nn-ss
    need((nn,jj,ss)==(w['n'],w['j'],w['sigma']) and 4<=jj<=nn//2,'weak recovery')
    need(nn%4==0 and math.gcd(nn,jj)==w['g']==24,'weak gcd')
    need(jj*(jj-1)%(nn-1)==0 and jj*(jj-1)*(jj-2)%((nn-2)//2)==0,'weak full windows')
    odd=nn//24
    while odd%2==0:odd//=2
    need(odd not in (1,3),'weak alpha failure')
    h=0
    for r in range(4):h=math.gcd(h,math.comb(jj,r)*math.comb(ss,3-r))
    need(h==w['content'],'actual content')
    expected=[math.comb(nn,3)//h,jj*math.comb(nn-1,2)//h,math.comb(jj,2)*(nn-2)//h,math.comb(jj,3)//h]
    need(expected==w['Psi'],'actual Psi coefficients')
    ll,bb,cc,dd=expected;I=bb*bb-3*ll*cc
    need(nn*I==3*ll*(bb-cc) and jj*I==bb*(bb-cc) and 3*(nn-2)*dd==cc*(jj-2),'actual Psi recovery')
    for z in w['witnesses']:
        p=z['p'];need(prime(p) and val(math.comb(nn,3),p)==z['v_n3']>0 and vpbin(nn,jj,p)==z['v_nj']>0,'weak witness')
    stats['weak_examples']=1
    for r in data['applications']:
        a0,b0,p,e=r['a'],r['b'],r['p'],r['e'];need(a0>0 and b0>0 and a0%2==b0%2==1 and prime(p) and p>2 and e>=1,'application parameters')
        u=add(add(one,sc(x,2*a0)),sc(pw(x,2),2*a0*a0))
        v=add(add(add(one,sc(x,2*b0)),sc(pw(x,2),2*b0*b0)),sc(pw(x,3),2*b0**3))
        f=add(one,mul(u,v));co=[int(f.get((i,),0)) for i in range(6)]
        need(co==r['coefficients'] and sum(co)==r['H'],'application polynomial')
        H=sum(co);T=p**e;need(T>=(2*(H+2))**14,'application threshold')
        nn=int(ev(f,T));need(nn==r['n'] and nn%4==0,'application n')
        need(2*co[2]==co[1]**2 and 25*co[2]!=6*co[1]**2,'noncanonical family')
        i0=next(i for i in range(1,6) if co[i]);EE=e*i0+val(co[i0],p)
        need(EE==r['source_E']==val(nn-2,p),'complete source exponent')
        stats['applications']+=1
    for r in data['mirror_examples']:
        m,yy,pe,ex=r['modulus'],r['y_residue'],r['period'],r['exponent']
        need(m%2==1 and (4*yy+5)%(5*m)==0 and yy%5==0,'mirror residue')
        need(pow(2,pe,m)==1 and ex>=40 and (ex+6)%pe==0,'mirror exponent')
        need((int(ev(N,yy))-3*pow(2,ex,m))%m==0 and int(ev(S,yy)/5)%m==0,'mirror congruences')
        stats['mirror_examples']+=1
    return stats
if __name__=='__main__':
    try: print(json.dumps({'status':'PASS_A','checks':check(json.load(open(sys.argv[1])))},sort_keys=True))
    except Exception as e: print(json.dumps({'status':'FAIL_A','error':str(e)}));sys.exit(1)
