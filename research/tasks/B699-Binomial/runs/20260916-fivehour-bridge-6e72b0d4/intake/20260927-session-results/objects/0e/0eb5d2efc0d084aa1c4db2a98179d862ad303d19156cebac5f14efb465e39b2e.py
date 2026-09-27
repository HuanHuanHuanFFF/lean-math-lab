import math,sys,json,time
from pathlib import Path
sys.set_int_max_str_digits(0)
sys.path.insert(0,'/mnt/data/intake_C_r4/B699-C-first-source-deficit-r3-20260926/scripts')
from discover import vp,rough,jacobi,binvp

def root(a):
    m=1;x=1
    while m<a:
        m=min(a,2*m);Q=3**m
        x=((x+10*pow(x,-1,Q))*pow(2,-1,Q))%Q
    return x
p=17;f=3;mod=p**f;per=8*p**(f-1)
rows=[];counts={'tried':0,'canonical_even':0,'contact':0};tic=time.time()
for z in [1,2,4]:
    aps=[a for a in range(2,per+2) if (pow(3,2*a-1,mod)-40*z*z)%mod==0]
    print('z roots',z,aps,flush=True)
    for ii in range(160):
        a=aps[0]+ii*per
        al=3**a;r=root(a);b=(z*r)%al;b=min(b,al-b)
        v=b*(al-b)+10*z*z;den=10*al*z*z
        counts['tried']+=1
        if v%den:continue
        g=v//den
        if g%2:continue
        counts['canonical_even']+=1
        n=g*al;j=g*b;N=n-1
        if N%p:continue
        counts['contact']+=1
        e=vp(N,p);H=al*al//3-40*z*z
        hf=vp(H,p);C=math.gcd(rough(n-4),j-2);E4=math.gcd(rough(n-4),j*(n-j))
        row={'a':a,'z':z,'p':p,'e':e,'f':hf,'C':C,'E4':E4,'chi_C':jacobi(3,C),'central_complete':math.gcd(C,rough(n-4)//C)==1,'bin_v':binvp(n,j,p),'seconds':time.time()-tic}
        print(row,flush=True);rows.append(row)
        if hf>e and e%2==1 and hf%2==1 and jacobi(3,C)==-1 and math.gcd(C,rough(n-4)//C)==1 and math.isqrt(E4)**2==E4:
            Path('/mnt/data/r4_work/overflow_central_seed.json').write_text(json.dumps({'counts':counts,'row':row},indent=2))
            sys.exit(0)
        if time.time()-tic>30:break
print(counts)
