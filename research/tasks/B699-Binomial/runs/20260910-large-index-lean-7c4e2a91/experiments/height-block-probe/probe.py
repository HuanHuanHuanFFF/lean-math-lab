"""Exact directed-integer feasibility probe. Not a Lean acceptance record."""
from pathlib import Path
import json,time,math
B=48
N=20000000
MAX=5000
start=time.monotonic()
def mul(x,y,up=False):
    m=x[0]*y[0]; d=max(0,m.bit_length()+1-B)
    den=1<<d
    return ((m+den-1)//den if up else m//den,x[1]+y[1]+d)
def powd(x,k,up=False):
    if not k:return (1,0)
    h=powd(x,k//2,up);z=mul(h,h,up)
    return z if k%2==0 else mul(z,x,up)
def lt(x,y):
    if x[0]==0:return y[0]>0
    if y[0]==0:return False
    if x[1]<=y[1]:
        d=y[1]-x[1]
        return True if x[0].bit_length()<=d else x[0]<y[0]*(1<<d)
    d=x[1]-y[1]
    return False if y[0].bit_length()<=d else x[0]*(1<<d)<y[0]
def log2(x):return math.log2(x[0])+x[1] if x[0] else float('-inf')
fd=[(1,0)];fu=[(1,0)];wd=[(1,0)];dd=[(1,0)]
for k in range(1,MAX+1):
    fd.append(mul((k,0),fd[-1]))
    fu.append(mul((k,0),fu[-1],True))
    wd.append(mul(wd[-1],fd[-1]))
    dd.append(mul((N-k+1,0),dd[-1]))
sieve=[True]*(MAX+1);sieve[:2]=[False,False]
for p in range(2,math.isqrt(MAX)+1):
    if sieve[p]:
        for n in range(p*p,MAX+1,p):sieve[n]=False
cnt=[0]
for i in range(MAX):cnt.append(cnt[-1]+int(sieve[i]))
def check(L,U,r=None,s=None):
    m=(L-1)//3
    if r is None:r=L-2*m-1
    if s is None:s=2*m
    q=2*s-r;t=cnt[U]
    v=U-r
    degree=s*(s+1)+(v-1)*v//2
    e=t*q+degree
    lhs=mul(powd(fu[U],q,True),powd((N,0),e,True),True)
    const=mul(mul((1,s*(s+1)),powd(wd[s],2)),wd[L-r-1])
    rhs=mul(const,powd(dd[L],q))
    return {'L':L,'U':U,'r':r,'s':s,'N':N,'t':t,'degree':degree,'exponent':e,'lhs':lhs,'rhs':rhs,'passed':2<=L and s<L and U<=N and e<=L*q and lt(lhs,rhs),'log2_margin_diagnostic_only':log2(rhs)-log2(lhs)}
representatives=[check(i,i) for i in [1000,2000,4882]]
blocks=[];L=1000
while L<=4882:
    lo=L;hi=4882
    if not check(L,L)['passed']:raise RuntimeError('singleton failure '+str(L))
    while lo<hi:
        mid=(lo+hi+1)//2
        if check(L,mid)['passed']:lo=mid
        else:hi=mid-1
    # Avoid tiny proof margins and keep concrete arithmetic robust.
    U=max(L,lo-2)
    row=check(L,U)
    blocks.append(row);L=U+1
out={'status':'exact external directed-integer feasibility; Lean validation pending','bits':B,'representatives':representatives,'blocks':blocks,'block_count':len(blocks),'elapsed_seconds':time.monotonic()-start}
Path(__file__).with_name('probe.json').write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'representatives':representatives,'block_count':len(blocks),'first_blocks':blocks[:3],'last_block':blocks[-1],'elapsed_seconds':out['elapsed_seconds']},indent=2))
