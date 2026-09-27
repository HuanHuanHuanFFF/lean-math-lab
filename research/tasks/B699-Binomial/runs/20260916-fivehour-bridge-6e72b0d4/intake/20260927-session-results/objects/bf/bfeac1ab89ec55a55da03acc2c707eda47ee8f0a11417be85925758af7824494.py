import math,json,time,sys
from collections import Counter
from pathlib import Path
sys.path.insert(0,'/mnt/data/intake_C_r4/B699-C-first-source-deficit-r3-20260926/scripts')
from discover import rough,jacobi,vp,binvp
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)
def saturate(T,N):
    c=math.gcd(T,N)
    while 1:
        d=math.gcd(T,c*c)
        if d==c:return c,T//c
        c=d
A=int(sys.argv[1]) if len(sys.argv)>1 else 2000
Z=int(sys.argv[2]) if len(sys.argv)>2 else 20
r=1;al=3;cnt=Counter();examples={};rows=[];tic=time.time()
for a in range(1,A+1):
    if a>1:
        d=((10-r*r)//al)*pow(2*r,-1,3)%3
        r+=d*al;al*=3
    for z in range(1,Z+1):
        if z%3==0:continue
        b=(r*z)%al;b=min(b,al-b)
        num=b*(al-b)+10*z*z;den=10*al*z*z
        if num%den:continue
        g=num//den;n=g*al;j=g*b
        if n%6 or j<7 or 2*j>=n:continue
        cnt['canonical']+=1
        k=n-j;H=al*al//3-40*z*z;C=math.gcd(rough(n-4),j-2)
        E4=math.gcd(rough(n-4),j*k)
        if math.isqrt(E4)**2!=E4 or jacobi(3,C)!=-1 or math.gcd(C,rough(n-4)//C)!=1:continue
        cnt['central']+=1
        T=H//C;N=n-1;D=math.gcd(T,N);I,O=saturate(T,N)
        near=(10*g*g*z*z-1)%rough(n-5)==0
        chI=jacobi(3,I);chO=jacobi(3,O)
        tag=f'{chI},{chO}'
        cnt[tag]+=1
        row={'a':a,'z':z,'C':C,'E4':E4,'D':D,'T_in':I,'T_out_digits':len(str(O)),'chi_in':chI,'chi_out':chO,'B720':n%720==450,'B18000':n%18000==14130,'q5near':near,'n_digits':len(str(n)),'gcdgC':math.gcd(g,C)}
        if D>1 or near:rows.append(row)
        if tag not in examples:examples[tag]=row
        if n%720==450:
            cnt['B720']+=1
            if 'B720_'+tag not in examples:examples['B720_'+tag]=row
        if n%18000==14130:
            cnt['B18000']+=1
            if 'B18000_'+tag not in examples:examples['B18000_'+tag]=row
        if near:
            cnt['q5near']+=1;examples['q5near']=row
    if a%250==0:print(a,dict(cnt),round(time.time()-tic,2),flush=True)
out={'A':A,'Z':Z,'counts':dict(cnt),'examples':examples,'contact_rows':rows}
Path('/mnt/data/r4_work/partition_probe.json').write_text(json.dumps(out,indent=2))
print(json.dumps(out['examples'],indent=2))
