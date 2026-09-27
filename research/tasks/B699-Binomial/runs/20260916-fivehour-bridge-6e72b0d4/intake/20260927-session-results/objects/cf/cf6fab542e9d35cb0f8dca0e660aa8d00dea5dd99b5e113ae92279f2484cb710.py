exec(open('/mnt/data/r3_work/probe_first.py').read().split('pneg=')[0])
import sympy
from collections import Counter
import sys
W=int(sys.argv[1]) if len(sys.argv)>1 else 2000
counts=Counter();examples={};models=[];start=time.time()
for w in range(1,W+1):
    U=10*w*w
    fac=dict(sympy.factorint(U));fac.update(sympy.factorint(U-1))
    ds=sympy.divisors(U*(U-1))
    for x in ds:
        if x*x>U*(U-1):break
        y=U*(U-1)//x;n=x+y+2*U;j=x+U
        if n%6:continue
        g=gcd(n,j);al=n//g
        if al%3 or al%2==0:continue
        if w%g:raise ValueError()
        z=w//g;H=al*al//3-40*z*z;C=gcd(rough(n-4),j-2)
        if H%C:raise ValueError()
        T=H//C;E4=gcd(rough(n-4),j*(n-j));D=gcd(T,n-1)
        central=isqrt(E4)**2==E4 and jac(3,C)==-1 and gcd(C,T)==1
        near=((j-1)*(n-j-1))%rough(n-5)==0
        counts['norm']+=1;counts['central']+=central;counts['near']+=near
        base={'w':w,'x':int(x),'y':int(y),'n':int(n),'j':int(j),'g':g,'alpha':al,'z':z,'C':C,'E4':E4,'H':H,'T':T,'D':D,'central':central,'q5_all_near':near,'q5':rough(n-5),'B720':n%720==450,'B18000':n%18000==14130,'alpha_power3':al//(3**v(al,3))==1}
        if near and 'near' not in examples:examples['near']=base
        if central and near:
            counts['central_near']+=1
            models.append(base)
            if 'central_near' not in examples:examples['central_near']=base
        if central and D>1:
            for p in sympy.factorint(D):
                p=int(p)
                if jac(3,p)==jac(10,p)==-1 and v(T,p)%2:
                    va=vb(n,j,p)
                    rec={**base,'p':p,'e':v(n-1,p),'f':v(T,p),'vbin':va}
                    key='central_negative_first'+('_nocarry' if va==0 else '_carry')
                    counts[key]+=1
                    if key not in examples:examples[key]=rec
                    if near:
                        if key+'_near' not in examples:examples[key+'_near']=rec
print('W',W,'seconds',time.time()-start,dict(counts))
for k,vv in examples.items():print(k,vv)
open('/mnt/data/r3_work/divisor_probe.json','w').write(json.dumps({'w_bound':W,'counts':dict(counts),'examples':examples,'central_near_models':models},indent=2))
