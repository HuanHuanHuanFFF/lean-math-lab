"""Checker B: dense rational long division, bounded-grid identities, rational-root theorem, base-p carries.
No import from checker A or its arithmetic; no SymPy, floating point or CAS.
"""
import json,math,argparse
from fractions import Fraction as F
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def need(c,m):
    if not c:raise ValueError(m)
def trim(a):
    a=list(map(F,a))
    while len(a)>1 and a[-1]==0:a.pop()
    return a or [F(0)]
def add(a,b):return trim([(a[i] if i<len(a) else 0)+(b[i] if i<len(b) else 0) for i in range(max(len(a),len(b)))])
def neg(a):return [-v for v in a]
def sub(a,b):return add(a,neg(b))
def scale(a,c):return trim([v*c for v in a])
def mul(a,b):
    c=[F(0)]*(len(a)+len(b)-1)
    for i,v in enumerate(a):
        for j,w in enumerate(b):c[i+j]+=v*w
    return trim(c)
def power(a,n):
    r=[F(1)]
    for _ in range(n):r=mul(r,a)
    return r
def deriv(a):return trim([i*a[i] for i in range(1,len(a))] or [0])
def ev(a,x):
    r=F(0)
    for v in reversed(a):r=r*x+F(v)
    return r
def divrem(a,b):
    a,b=trim(a),trim(b);need(b!=[0],'division by zero');q=[F(0)]*max(1,len(a)-len(b)+1)
    while a!=[0] and len(a)>=len(b):
        d=len(a)-len(b);c=a[-1]/b[-1];q[d]+=c;a=sub(a,[F(0)]*d+scale(b,c))
    return trim(q),trim(a)
def compose(a,b):
    r=[F(0)]
    for v in reversed(a):r=add(mul(r,b),[F(v)])
    return r
def shapes(pair,a):
    a=F(a)
    if pair==[0,1]:return [-F(1,2),a,F(1)],[0,a-F(1,4),F(3,4)]
    if pair==[0,2]:return [-a-F(3,2),a,F(1)],[0,-F(3,2),F(1,2)]
    if pair==[1,2]:return [-3*a-F(7,2),a,F(1)],[-3*a-F(7,2),-a-F(7,4),F(1,4)]
    raise ValueError('case coverage')
def divisors(n):
    n=abs(n);r=set()
    for a in range(1,math.isqrt(n)+1):
        if n%a==0:r.update([a,n//a])
    return r
def rational_roots(co):
    co=list(map(F,co));den=math.lcm(*(v.denominator for v in co));a=[int(v*den) for v in co];need(1<len(a)<=3 and a[0]!=0 and a[-1]!=0,'unproved factor type')
    return {F(s*p,q) for p in divisors(a[0]) for q in divisors(a[-1]) for s in (-1,1) if ev(a,F(s*p,q))==0}
def isprime(p):return type(p) is int and p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def vp(n,p):
    need(n>0 and p>=2,'valuation arguments');e=0
    while True:
        n,r=divmod(n,p)
        if r:return e
        e+=1
def carry_map(j,k,p):
    carry=0;level=0;out={}
    while j or k or carry:
        j,u=divmod(j,p);k,v=divmod(k,p);carry=(u+v+carry)//p;level+=1;out[level]=carry
    return out

def verify(c):
    need(c['schema']=='B699-round7-v1','schema')
    need(c['statements']=={'quartic_exponent':12,'primary_threshold':'3e>=2d','balanced_interval':'d/3<e<2d/3','NC3_sufficiency':False},'statement contract')
    need([r['pair'] for r in c['ode_cases']]==[[0,1],[0,2],[1,2]],'complete case set')
    counts={'ode_cases':0,'grid_checks':0,'row_applications':0,'cubic_carries':0}
    R=[F(0),F(-1),F(1)]
    for rec in c['ode_cases']:
        # Bound: input a-degree<=3, at most5 monic cancellation steps => remainder a-degree<=8.
        # Certificates and factor products are explicitly checked to fit the grid bound10.
        for i in (0,1):
            rr=rec['remainder_'+str(i)];need(type(rr['denominator']) is int and rr['denominator']>0,'denominator')
            need(len(rr['constant'])<=9 and len(rr['ell_coefficient'])<=9,'remainder degree bound')
        need(sum((len(v['coefficients'])-1)*v['multiplicity'] for v in rec['eliminant']['factors'])<=10,'eliminant degree bound')
        for av in range(-5,6):
            U,W=shapes(rec['pair'],av);k,l=rec['pair']
            ode=add(sub(scale(mul(R,deriv(W)),3),mul(deriv(R),W)),sub(mul([-k,k+l],U),scale(mul(R,deriv(U)),2)))
            need(ode==[0],'ODE grid identity')
            for le in (0,1):
                actual=divrem(add(power(W,3),scale(R,le)),U)[1];expected=[]
                for i in (0,1):
                    rr=rec['remainder_'+str(i)];expected.append((ev(rr['ell_coefficient'],av)*le+ev(rr['constant'],av))/rr['denominator'])
                need(actual==trim(expected),'remainder grid identity');counts['grid_checks']+=1
            r0,r1=rec['remainder_0'],rec['remainder_1'];elim=ev(r1['ell_coefficient'],av)*ev(r0['constant'],av)-ev(r0['ell_coefficient'],av)*ev(r1['constant'],av)
            product=F(rec['eliminant']['scalar'])
            for fac in rec['eliminant']['factors']:
                need(type(fac['multiplicity']) is int and fac['multiplicity']>0,'multiplicity');product*=ev(fac['coefficients'],av)**fac['multiplicity']
            need(product==elim,'eliminant grid identity');counts['grid_checks']+=1
        roots=set()
        for fac in rec['eliminant']['factors']:roots|=rational_roots(fac['coefficients'])
        roots={q for q in roots if ev(shapes(rec['pair'],q)[0],0)!=0 and ev(shapes(rec['pair'],q)[0],1)!=0}
        need(roots=={F(rec['ratio'])},'rational root exhaustion')
        U,W=shapes(rec['pair'],F(rec['ratio']));V=list(map(F,rec['V']));f=list(map(F,rec['f']));ell=F(rec['ell_value'])
        need(U==list(map(F,rec['U'])) and trim(W)==trim(list(map(F,rec['W']))),'template normalization')
        need(ell!=0 and mul(U,V)==sub(f,[1]),'factor recovery')
        need(divrem(sub(mul(V,W),[1]),U)[1]==[0],'first inverse')
        need(mul(mul(W,sub(W,U)),sub(W,scale(U,2)))==scale(mul(R,sub(f,[2])),ell),'second polynomial identity')
        if rec['canonical_affine'] is None:need(f[-1]<0,'negative-leading exclusion')
        else:need(f==compose([2,16,60,64,20],list(map(F,rec['canonical_affine']))),'canonical map')
        counts['ode_cases']+=1
    canon=list(map(F,c['canonical_quartic']));need(canon==list(map(F,[2,16,60,64,20])),'canonical coefficients')
    need(sub(canon,[2])==scale(mul(mul([0,1],[1,1]),[4,11,5]),4),'origin factorization')
    need(not rational_roots([4,11,5]),'rational original origins')
    need(list(map(F,c['canonical_shift_minus_one']))==compose(canon,[-1,1]),'shift coefficients')
    need(F(c['canonical_shift_minus_one'][2])<0,'negative quadratic origin')
    # The denominator of a rational dilation has fourth power dividing20; elementary divisor check.
    need([q for q in divisors(20) if 20%(q**4)==0]==[1],'integer dilation')
    need(all(int(v)%4==0 for v in canon[1:]),'mod4 all-integer obstruction')
    u=[0,1];U=[1,6];V=scale(add(add(scale(power(U,2),2),scale(U,3)),[-3]),F(1,2));W=scale(sub(U,[1]),F(2,3))
    need(mul(mul(W,sub(W,U)),sub(W,scale(U,2)))==scale(sub(mul(U,V),[1]),F(8,27)),'constant quotient recovery')
    tau=mul(mul([2,3],[1,4]),[1,6]);nn=[2,27,162,216];Z=scale(mul(mul([2,3],[1,6]),mul([1,21,36],[23,78,72])),2)
    need(scale(mul(mul(tau,sub(tau,[1])),sub(tau,[2])),54)==mul(sub(nn,[2]),Z),'uniform 3-adic identity')
    need(all(v.denominator==1 and int(v)%3==(2 if i==0 else 0) for i,v in enumerate(Z)),'full modulus3 polynomial')
    for row in c['applications']:
        co=row['coefficients'];need(all(type(v) is int and v>=0 for v in co) and co[0]==2 and co[-1]>0,'nonnegative f')
        p,e=row['p'],row['e'];need(isprime(p) and p!=2 and type(e) is int and e>0,'single odd prime-power base')
        d=len(co)-1;H=sum(co);threshold=(2*(H+2))**(2*d+4);T=p**e;n=int(ev(co,T))
        need((str(T),str(n),str(threshold))==(row['T'],row['n'],row['threshold']),'original row values')
        need(T>=threshold and n%2==0 and row['parity_exit']==(n%4!=0),'threshold/parity')
        i0=next(i for i in range(1,d+1) if co[i]);E=e*i0+vp(co[i0],p);need(E==row['source_exponent']==vp(n-2,p),'complete p source')
        if row['kind']=='quartic':need(d==4,'quartic scope')
        elif row['kind']=='primary_equal':
            r,m=row['extra']['r'],row['extra']['m'];need(r>=2 and m>=1 and d==3*r,'equality family scope')
            up=[0]*(r+1);up[0]=1;up[1]=4*m;up[r]=4*m;vp0=[1]+[0]*(2*r-1)+[2]
            need(list(map(F,co))==add(mul(up,vp0),[1]) and row['extra']['V']==vp0,'boundary factorization')
            need(3*(len(vp0)-1)==2*d,'genuine2/3 equality')
        else:raise ValueError('unknown scope')
        counts['row_applications']+=1
    for row in c['cubic_carries']:
        u=int(row['u']);n=int(ev(nn,u));tt=int(ev(tau,u));j=min(tt,n-tt);E=vp(n-2,3)
        need(u>0 and str(n)==row['n'] and str(j)==row['j'] and E==row['E']>=4,'exception original values')
        need(vp(tt*(tt-1)*(tt-2),3)==E-3,'three full valuation levels')
        layers=carry_map(j,n-j,3);need(row['layers']==[E-2,E-1,E] and all(layers.get(i)==1 for i in row['layers']),'digit carry layers')
        need(sum(layers.values())>=3 and vp(n*(n-1)*(n-2)//6,3)==E-1,'same common3')
        counts['cubic_carries']+=1
    weak=c['weak_model'];T=weak['T'];t=2*T;n=int(ev(canon,t));ss=t*(3*t+5)*(10*t*t+12*t+1)//2;j=min(ss,n-ss);g=math.gcd(n,j);odd=n//g
    while odd%2==0:odd//=2
    need((str(n),str(j),str(g),str(odd))==(weak['n'],weak['j'],weak['g'],weak['alpha_odd']),'weak original recovery')
    need(isprime(T) and T>512 and n%4==2 and weak['NC3'] is False and odd not in (1,3),'weak not NC3')
    need(sum(carry_map(j,n-j,T).values())==0 and vp(n*(n-1)*(n-2)//6,T)>0,'weak base carries')
    need(weak['common_prime']==3 and weak['common_valuations']==[vp(n*(n-1)*(n-2)//6,3),sum(carry_map(j,n-j,3).values())] and min(weak['common_valuations'])>0,'weak same-input common witness')
    return {'status':'PASS','checker':'B-dense-grid-and-digits',**counts}

def main():
    pa=argparse.ArgumentParser();pa.add_argument('certificate',nargs='?',default=str(ROOT/'certificates'/'round7.json'));args=pa.parse_args();print(json.dumps(verify(json.loads(Path(args.certificate).read_text())),indent=2))
if __name__=='__main__':main()
