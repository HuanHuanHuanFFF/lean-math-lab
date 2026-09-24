#!/usr/bin/env python3
"""Checker B: degree-bounded grids, rational long division, Frobenius, digit carries.
No code or arithmetic routines are imported from checker A.
"""
import sys,json,math,itertools
from fractions import Fraction as Q
sys.dont_write_bytecode=True

def require(x,msg):
    if not x:raise ValueError(msg)
def number(r):
    require(type(r)==list and len(r)==2 and all(type(v)==int for v in r) and r[1]>0,'fraction')
    return Q(*r)
def tr(p):
    p=list(p)
    while len(p)>1 and not p[-1]:p.pop()
    return p

def decode(p):return tr([number(v) for v in p])
def plus(a,b):return tr([(a[i] if i<len(a) else 0)+(b[i] if i<len(b) else 0) for i in range(max(len(a),len(b)))])
def times(a,b):
    c=[Q(0)]*(len(a)+len(b)-1)
    for i,u in enumerate(a):
        for j,v in enumerate(b):c[i+j]+=u*v
    return tr(c)
def scale(a,t):return tr([v*t for v in a])
def minus(a,b):return plus(a,scale(b,-1))
def divrem(a,b):
    a=tr(a);b=tr(b);require(b!=[0],'division by zero');q=[Q(0)]*max(1,len(a)-len(b)+1)
    while a!=[0] and len(a)>=len(b):
        k=len(a)-len(b);c=a[-1]/b[-1];q[k]+=c
        a=minus(a,[Q(0)]*k+scale(b,c))
    return tr(q),a
def subst(p,u,v):
    r=[Q(0)]
    for c in reversed(p):r=plus(times(r,[u,v]),[c])
    return r
def at(p,x):
    z=0
    for c in reversed(p):z=z*x+c
    return z
def deriv(p):return tr([i*p[i] for i in range(1,len(p))] or [0])
def modp(a,p):return tr([int(x)%p for x in a])
def mplus(a,b,p):return modp(plus(a,b),p)
def mtimes(a,b,p):return modp(times(a,b),p)
def mrem(a,b,p):
    a=modp(a,p);b=modp(b,p)
    while a!=[0] and len(a)>=len(b):
        shift=len(a)-len(b);c=a[-1]*pow(b[-1],-1,p)%p
        a=mplus(a,[0]*shift+[-c*v for v in b],p)
    return a

def mpow_x(n,f,p):
    r=[1];x=[0,1]
    while n:
        if n&1:r=mrem(mtimes(r,x,p),f,p)
        x=mrem(mtimes(x,x,p),f,p);n//=2
    return r

def is_prime(p):
    if p<2:return False
    d=2
    while d*d<=p:
        if p%d==0:return False
        d+=1
    return True

def carry(n,j,p):
    a,b=j,n-j;c=0;v=0
    while a or b or c:
        a,r=divmod(a,p);b,s=divmod(b,p);c=(r+s+c)//p;v+=c
    return v

def choose3(n,r):
    z=1
    for k in range(1,r+1):z=z*(n-k+1)//k
    return z

def check(d):
    require(d['schema']=='B699-R8-v1' and d['threshold_power']==14,'scope/header')
    require(d['claim']=='QUINTIC-RIGID; PURE2-QUINTIC; not QUINTIC-ALL','not full closure')
    require([t['k'] for t in d['generic']]==[0,1,2],'generic coverage')
    grid_count=0
    for row in d['generic']:
        k=row['k'];terms=[];seen=set()
        for powers,coef in row['Q']:
            require(len(powers)==4 and all(type(i)==int and i>=0 for i in powers),'generic monomial')
            require(tuple(powers) not in seen,'duplicate monomial');seen.add(tuple(powers))
            for shift in [(1,0,0,2),(0,1,0,1),(0,0,1,0)]:
                require(all(i+j<=bound for i,j,bound in zip(powers,shift,(5,5,3,6))),'proved degree bound')
            z=number(coef)*1000;require(z.denominator==1,'cleared coefficients');terms.append((powers,int(z)))
        for a,b,c,x in itertools.product(range(6),range(6),range(4),range(7)):
            U=a*x*x+b*x+c;W10=10*k*c+5*(2-k)*b*x+2*(4-k)*a*x*x
            witness=sum(co*math.prod(v**i for v,i in zip((a,b,c,x),m)) for m,co in terms)
            q=(3*k-2)**3
            rhs=U*witness+q*c*(4*a*c-b*b)*(16*a*c+b*b)-q*b*(48*a*a*c*c+11*a*b*b*c+b**4)*x
            require(a*a*W10**3==rhs,'bounded-degree remainder grid');grid_count+=1
    require(len(d['cases'])==6,'case count');seen=set()
    wanted_shifts={0:[2,-25,150,-280,200,-48],1:[2,50,-600,2000,-2080,672],2:[2,Q(-25,4),0,35,-40,12]}
    for row in d['cases']:
        eta=number(row['eta']);k=row['k'];require(eta in (Q(1,4),Q(-1,16)) and k in (0,1,2),'case domain')
        require((eta,k) not in seen,'duplicate case');seen.add((eta,k))
        U=[eta,Q(1),Q(1)];W=[k*eta,Q(2-k,2),Q(4-k,5)]
        ell=Q(3*k-2,10)**3*(48*eta*eta+11*eta+1)
        require(decode(row['U'])==U and decode(row['W'])==tr(W) and number(row['ell'])==ell,'case anchors')
        product=times(times(W,minus(W,U)),minus(W,scale(U,2)))
        f,rem=divrem(product,[Q(0),ell]);require(rem==[0],'linear factor');f=plus(f,[Q(2)])
        V,rem=divrem(minus(f,[1]),U);require(rem==[0],'first factor')
        require(V==decode(row['V']) and f==decode(row['f']),'reconstructed V,f')
        iq,ir=divrem(minus(times(V,W),[1]),U)
        require(iq==decode(row['inv_q']) and ir==decode(row['inv_r']),'recomputed inverse')
        if eta>0:
            r={0:Q(2,9),1:Q(-1,9),2:Q(-4,9)}[k]
            require(ir==[r,2*r],'repeated root fails inverse')
        else:
            require(ir==[0],'full inverse')
            factors=[(decode(z['p']),z['multiplicity']) for z in row['factors']]
            require(sorted(len(p)-1 for p,m in factors)==[1,2,2] and all(m==1 for p,m in factors),'factor coverage')
            product=[number(row['factor_constant'])]
            for p,m in factors:
                product=times(product,p)
                if len(p)==2:require(at(p,Q(-5,4))==0,'unique rational root')
                else:
                    delta=p[1]**2-4*p[0]*p[2]
                    require(delta.denominator==1 and delta>0 and math.isqrt(delta.numerator)**2!=delta.numerator,'irrational quadratic roots')
            require(product==minus(f,[2]),'rational-root factorization')
            shifted=subst(f,Q(-5,4),Q(1))
            require(shifted==decode(row['shift'])==wanted_shifts[k],'origin shifts')
    ca=d['canonical'];N=[Q(v) for v in [2,25,150,280,200,48]]
    S=times(times([0,4],[5,4]),[1,19,32,12])
    require(N==decode(ca['N']) and S==decode(ca['Sig5']),'canonical anchor')
    U=[1,6,4];V=[1,19,32,12];A1=[5,10,4];A2=[5,20,12]
    require(minus(N,[1])==times(U,V) and minus(N,[2])==times([0,1],times(A1,A2)),'source factorization')
    require(minus(S,[5])==times([-1,12],times(U,A1)),'sigma-1 source')
    require(minus(S,[10])==scale(times(A2,[-1,6,18,8]),2),'sigma-2 source')
    require(minus(scale(N,5),S)==times([2,1],times(U,A2)),'tau source')
    require(minus(minus(scale(N,5),S),[5])==times(A1,V),'tau-1 source')
    rec={k:decode(v) for k,v in ca['recovery'].items()}
    fixed={'H':scale(A1,Q(1,5)),'C':scale(times([0,1],A2),Q(5,2)),
       'u':scale(times([5,4],[2,1]),Q(1,9000)),'z':[Q(-1),Q(12)],
       'delta':scale([-2,-13,36,36],Q(1,48)),
       'epsilon':scale([-35,42,36],Q(1,125)),
       'T_rho':scale([40,-3,-108,108],Q(9,250))}
    require(rec==fixed,'actual canonical recovery')
    require(minus(scale(times(rec['C'],rec['u']),576),times(rec['z'],times(rec['H'],rec['H'])))==[1],'same-input norm')
    require(scale(times(rec['H'],rec['delta']),48)==minus(scale(S,Q(2,5)),N),'same-input delta')
    require(minus(rec['H'],scale(rec['u'],1152))==rec['epsilon'],'same-input epsilon')
    require(scale(times(rec['u'],rec['T_rho']),576)==plus([1],times(rec['z'],times(rec['epsilon'],rec['epsilon']))),'same-input T_rho')
    require(plus(times(N,decode(ca['bezout_A'])),times(S,decode(ca['bezout_B'])))==[24],'gcd bound')
    q3125,rem=divrem(minus(subst(N,Q(30),Q(125)),[2002]),[Q(3125)])
    q27,rem2=divrem(minus(subst(N,Q(1),Q(3)),[3]),[Q(27)])
    require(q3125==decode(ca['mod3125_quotient']) and q27==decode(ca['mod27_quotient']),'residue quotients')
    require(all(q.denominator==1 for q in q3125+q27+decode(ca['bezout_A'])+decode(ca['bezout_B'])),'integral congruences')
    require(number(ca['mirror'])==at(N,Q(-5,4))==Q(3,64) and at(S,Q(-5,4))==0,'rational mirror')
    require([(r['p'],r['target']) for r in d['root_exclusions']]==[(7,1),(13,6),(751,169)],'field coverage')
    for row in d['root_exclusions']:
        p,target=row['p'],row['target'];require(is_prime(p),'prime modulus')
        f=modp(minus(N,[target]),p)
        r=mrem(mplus(mpow_x(p,f,p),[0,-1],p),f,p)
        require(r==tr(row['frob']),'computed Frobenius remainder')
        lhs=mplus(mtimes(row['bezout_A'],f,p),mtimes(row['bezout_B'],r,p),p)
        require(lhs==[1],'Frobenius Bezout')
    E=d['exponent'];require(E['modulus']==3125 and E['residue']==2002 and E['order']==2500 and E['power2_residue']==601 and E['power3_residue']==2494,'exponent data')
    require(pow(2,2500,3125)==1 and pow(2,1250,3125)!=1 and pow(2,500,3125)!=1,'exact cyclic order')
    require(pow(2,601,3125)==2002 and 3*pow(2,2494,3125)%3125==2002,'logs')
    require(sorted(r['r'] for r in E['classes'])==[601,3101,5601],'complete exponent classes')
    for r in E['classes']:
        require((r['p'],r['target']) in [(7,1),(13,6),(751,169)],'root table link')
        require(pow(2,7500,r['p'])==1 and pow(2,r['r'],r['p'])==r['target'],'period transfer')
    require([x for x in [2494,4994,7494] if x%6==0]==[7494],'mixed class')
    w=d['weak_example'];yy=w['y'];nn=int(at(N,yy));sig=at(S,yy)/5;require(sig.denominator==1,'weak endpoint integrality');sig=int(sig);j=nn-sig
    require((nn,j,sig)==(w['n'],w['j'],w['sigma']) and 4<=j<=nn//2 and math.gcd(nn,j)==w['g']==24,'weak original pair')
    require(nn%4==0 and j*(j-1)%(nn-1)==0 and j*(j-1)*(j-2)%((nn-2)//2)==0,'weak full windows')
    alpha=nn//24
    while alpha%2==0:alpha//=2
    require(alpha not in (1,3),'weak NOT NC alpha')
    coeff=[choose3(j,i)*choose3(sig,3-i) for i in range(4)];h=math.gcd(*coeff)
    psi=[sum(coeff[i]*choose3(i,t) for i in range(t,4))//h for t in range(4)]
    require(h==w['content'] and psi==w['Psi'],'direct convolution Psi')
    l,b,c,dd=psi;I=b*b-3*l*c
    require(nn*I==3*l*(b-c) and j*I==b*(b-c) and 3*(nn-2)*dd==c*(j-2),'three actual recoveries')
    for r in w['witnesses']:
        require(is_prime(r['p']) and carry(nn,3,r['p'])==r['v_n3']>0 and carry(nn,j,r['p'])==r['v_nj']>0,'digit-carry witness')
    for row in d['applications']:
        a,b,p,e=row['a'],row['b'],row['p'],row['e']
        require(a>0 and b>0 and a%2==b%2==1 and is_prime(p) and p>2 and e>=1,'application domain')
        f=plus([1],times([1,2*a,2*a*a],[1,2*b,2*b*b,2*b**3]));H=sum(f);T=p**e
        require(f==row['coefficients'] and H==row['H'] and T>=(2*(H+2))**14,'application coefficients/gate')
        nn=at(f,T);require(nn==row['n'] and nn%4==0,'application exact row')
        require(2*f[2]==f[1]**2 and 25*f[2]!=6*f[1]**2,'exclude canonical family')
        z=nn-2;E0=0
        while z%p==0:z//=p;E0+=1
        require(E0==row['source_E'],'actual source valuation')
    for r in d['mirror_examples']:
        m,y0,period,exponent=r['modulus'],r['y_residue'],r['period'],r['exponent']
        require(m%2 and (4*y0+5)%(5*m)==0 and y0%5==0 and exponent>=40,'mirror setup')
        require(pow(2,period,m)==1 and (exponent+6)%period==0,'mirror exponent setup')
        require((int(at(N,y0))-3*pow(2,exponent,m))%m==0 and int(at(S,y0)/5)%m==0,'mirror congruences')
    return {'generic_grid_evaluations':grid_count,'normalized_cases':len(d['cases']),'frobenius_exclusions':len(d['root_exclusions']),'applications':len(d['applications']),'weak_examples':1,'mirror_examples':len(d['mirror_examples'])}
if __name__=='__main__':
    try:print(json.dumps({'status':'PASS_B','checks':check(json.load(open(sys.argv[1])))},sort_keys=True))
    except Exception as e:print(json.dumps({'status':'FAIL_B','error':str(e)}));sys.exit(1)
