from math import gcd,isqrt
import json,time

def v(x,p):
    if not x:return -1
    k=0
    while x%p==0:x//=p;k+=1
    return k

def rough(x):
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def jac(a,n):
    s=1;a%=n
    while a:
        while a%2==0:
            a//=2
            if n%8 in (3,5):s=-s
        a,n=n,a
        if a%4==n%4==3:s=-s
        a%=n
    return s if n==1 else 0

def vb(n,j,p):
    s=0;pp=p
    while pp<=n:
        s+=n//pp-j//pp-(n-j)//pp;pp*=p
    return s

pneg=[p for p in range(7,500) if all(p%d for d in range(2,isqrt(p)+1)) and jac(3,p)==jac(10,p)==-1]
r=1;al=3;counts={};examples={};records=[];start=time.time()
for a in range(1,2001):
    if a>1:
        r=next(r+t*al for t in range(3) if ((r+t*al)**2-10)%(3*al)==0);al*=3
    for z in (1,2,4,5,7,8,10,11,13,16):
        be=r*z%al;be=min(be,al-be)
        num=be*(al-be)+10*z*z;den=10*al*z*z
        if num%den:continue
        g=num//den
        if g<=0 or g%2:continue
        n=g*al;j=g*be
        if not (7<=j<n//2):continue
        H=al*al//3-40*z*z;de=al-2*be;q4=rough(n-4);C=gcd(q4,j-2)
        if not C or H%C:continue
        T=H//C;E4=gcd(q4,j*(n-j))
        central=isqrt(E4)**2==E4 and jac(3,C)==-1 and gcd(C,T)==1
        D=gcd(T,n-1)
        base={'a':a,'z':z,'g':str(g),'n':str(n),'j':str(j),'C':str(C),'T':str(T),'E4':str(E4),'D':str(D),'chi3_D':jac(3,D),'central':central,'coarse_B':n%18000==14130,'B720':n%720==450}
        if D>1:
            for label,test in [('Dnegative',jac(3,D)==-1),('central_Dnegative',central and jac(3,D)==-1),('central_no_D',False)]:
                if test:
                    counts[label]=counts.get(label,0)+1
                    if label not in examples:examples[label]=base
        for p in pneg:
            if T%p or (n-1)%p:continue
            rec={**base,'p':p,'vH':v(H,p),'vN':v(n-1,p),'vbin':vb(n,j,p)}
            label='first_negative_prime'
            if label not in examples:examples[label]=rec
            if central and 'central_first_negative_prime' not in examples:examples['central_first_negative_prime']=rec
            if rec['vH']%2==1 and rec['vbin']==0:
                label='odd_no_carry'+('_central' if central else '')
                counts[label]=counts.get(label,0)+1
                if label not in examples:examples[label]=rec
        if central:
            counts['central']=counts.get('central',0)+1
            if 'central_D' not in examples and D>1:examples['central_D']=base
            if 'central_D1' not in examples and D==1:examples['central_D1']=base
            if n%18000==14130:
                counts['central_coarseB']=counts.get('central_coarseB',0)+1
                if 'central_coarseB' not in examples:examples['central_coarseB']=base
out={'bounds':{'a':2000,'z':[1,2,4,5,7,8,10,11,13,16]},'counts':counts,'examples':examples,'seconds':time.time()-start}
open('/mnt/data/r3_work/first_probe.json','w').write(json.dumps(out,indent=2))
print(json.dumps({k:v for k,v in out.items() if k!='examples'},indent=2))
for k,v in examples.items():print(k, {t:v[t] for t in v if t in ('a','z','p','vH','vN','vbin','C','E4','chi3_D','central','coarse_B','B720')})
