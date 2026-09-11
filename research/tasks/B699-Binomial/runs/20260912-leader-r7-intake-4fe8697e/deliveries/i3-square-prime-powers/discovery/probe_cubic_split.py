from math import gcd
import json
from pathlib import Path

def ceildiv(a,b):return -((-a)//b)
def run():
    C={'parameter_assignments':0,'integer_d':0,'legal_canonical':0,'first_pass':0,'second_pass':0,'normalized':0}
    rows=[]
    for g in range(1,31):
        for u in range(1,2721,2):
            klo=ceildiv(-999-12*g,u); khi=(999-12*g)//u
            for k in range(klo+(1-klo)%2,khi+1,2):
                T=12*g+k*u
                assert T%2==1
                for ep in [-1,1]:
                    C['parameter_assignments']+=1
                    num=3*u*u-2*ep*k
                    if num%T:continue
                    d=num//T
                    if d<33:continue
                    C['integer_d']+=1
                    X=d*u+ep;n=X*X;beta=d**3;j=g*beta
                    if not (4<=j<n//2 and n%4==0 and gcd(n,j)==g and gcd(beta,n-1)==d and beta>2**20):continue
                    if 4*(n-2)>=243*d**3:continue
                    if n*n*g>=108*beta**3:continue
                    C['legal_canonical']+=1
                    first=3*j*(j-1)%(n-1)==0
                    second=6*j*(j-1)*(j-2)%(n-2)==0
                    C['first_pass']+=first
                    C['second_pass']+=first and second
                    a=n//g;c=1
                    while a%2==0:a//=2
                    normalized=a in [1,3] and not(a==3 and g%3==0)
                    C['normalized']+=first and second and normalized
                    rows.append({'g':g,'u':u,'T':T,'k':k,'eps':ep,'d':d,'n':n,'j':j,'beta':beta,'first':first,'second':second,'normalized':normalized})
    return {'counts':C,'rows':rows}
if __name__=='__main__':
    obj=run();Path('/mnt/data/b699-i3-c-combination/outputs/probe_cubic_split.json').write_text(json.dumps(obj,indent=2)+'\n');print(json.dumps(obj)[:3000])
