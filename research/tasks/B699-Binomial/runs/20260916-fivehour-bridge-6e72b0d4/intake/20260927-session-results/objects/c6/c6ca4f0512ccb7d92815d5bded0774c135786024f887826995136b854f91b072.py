exec(open('/mnt/data/r3_work/probe_first.py').read().split('pneg=')[0])
from collections import Counter
start=time.time();r=1;al=3;stats=Counter();found=[];first=[]
for a in range(1,28):
    if a>1:
        r=next(r+t*al for t in range(3) if ((r+t*al)**2-10)%(3*al)==0);al*=3
    for z in range(1,isqrt(al//40)+1):
        if z%3==0:continue
        stats['slots']+=1
        be=r*z%al;be=min(be,al-be)
        num=be*(al-be)+10*z*z;den=10*al*z*z
        if num%den:continue
        g=num//den
        if g<2 or g%2:continue
        n=g*al;j=g*be
        if not 7<=j<n/2:continue
        stats['S']+=1
        H=al*al//3-40*z*z;C=gcd(rough(n-4),j-2);T=H//C;E4=gcd(rough(n-4),j*(n-j));D=gcd(T,n-1)
        central=isqrt(E4)**2==E4 and jac(3,C)==-1 and gcd(C,T)==1
        near=((j-1)*(n-j-1))%rough(n-5)==0
        stats['central']+=central;stats['all_near']+=near
        if D>1 or near or central:
            import sympy
            fs={int(p):e for p,e in sympy.factorint(D).items()}
            rec={'a':a,'z':z,'n':n,'j':j,'g':g,'H':H,'C':C,'E4':E4,'D':D,'D_factors':fs,'central':central,'all_near':near,'q5':rough(n-5),'B720':n%720==450,'B18000':n%18000==14130}
            checks=[]
            for p in fs:
                if jac(3,p)==jac(10,p)==-1 and v(T,p)%2:
                    checks.append({'p':p,'vN':v(n-1,p),'vT':v(T,p),'vbin':vb(n,j,p)})
            rec['checks']=checks
            found.append(rec)
print('seconds',time.time()-start,'stats',dict(stats))
print(json.dumps(found,indent=2))
open('/mnt/data/r3_work/small_probe.json','w').write(json.dumps({'stats':dict(stats),'a_max':27,'candidates':found},indent=2))
