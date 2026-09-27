import time,json
P=461;A=4935340800;B=1941810;U0=973440;step=294;L=21

def le(a,b):
    while a:
        if a%P>b%P:return False
        a//=P;b//=P
    return True

def digs(x):
    a=[]
    while x:a.append(x%P);x//=P
    return a or [0]
start=time.time();hit=None;digcount=0
for m in range(1,1000001):
    c=step*m
    if not le(2*U0*c,(4*A+2*B)*c) or not le(U0*c*c,(6*A+B)*c*c):continue
    digcount+=1
    if (1+c*pow(P,L,31))%31 not in (1,30):continue
    t47=(1+c*pow(P,L,47))%47
    if not t47:continue
    t41=(1+c*pow(P,L,41))%41
    if (U0*t41*t41+190)%41==0:continue
    t27=(1+c*pow(P,L,27))%27
    alpha27=(A//6*t27**4+B//6*t27*t27+32)%27
    if alpha27 not in (9,18):continue
    hit=(m,c);break
print('seconds',time.time()-start,'tested',m,'digpass',digcount,'hit',hit)
if hit:
    m,c=hit
    nn=[A+B+192,(4*A+2*B)*c,(6*A+B)*c*c,4*A*c**3,A*c**4]
    jj=[U0+192,2*U0*c,U0*c*c,0,0]
    rows=[]
    for i,(u,v) in enumerate(zip(nn,jj)):
        rows.append({'degree':i,'n_digits':digs(u),'j_digits':digs(v),'ok':le(v,u)})
    L0=max(len(digs(k)) for k in nn+jj)
    import sympy as sp
    mods=[27,47,41,31]
    orders={str(q):int(sp.n_order(P,q)) for q in mods}
    from math import lcm
    period=lcm(*orders.values())
    out={'prime':P,'step':step,'m':m,'c':c,'n_coeff':nn,'j_coeff':jj,'L0':L0,'digit_rows':rows,'L_start':L,'period':period,'orders':orders}
    open('/mnt/data/r3_work/lacunary_seed.json','w').write(json.dumps(out,indent=2))
    print(json.dumps(out,indent=2))
