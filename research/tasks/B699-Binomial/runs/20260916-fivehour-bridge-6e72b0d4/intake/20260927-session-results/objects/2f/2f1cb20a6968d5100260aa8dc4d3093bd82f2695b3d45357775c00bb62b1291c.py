import time,json
P=461;A=4935340800;B=1941810;U0=973440
step=4899987162

def le(a,b):
    while a:
        if a%P>b%P:return False
        a//=P;b//=P
    return True

def digs(x):
    a=[]
    while x:a.append(x%P);x//=P
    return a or [0]
start=time.time();hit=None;c1=0
for m in range(1,5000001):
    c=step*m
    if not le(2*U0*c,(4*A+2*B)*c):continue
    c1+=1
    if le(U0*c*c,(6*A+B)*c*c):hit=(m,c);break
print('seconds',time.time()-start,'tested',m,'passfirst',c1,'hit',hit)
if hit:
    m,c=hit
    nn=[A+B+192,(4*A+2*B)*c,(6*A+B)*c*c,4*A*c**3,A*c**4]
    jj=[U0+192,2*U0*c,U0*c*c,0,0]
    rows=[]
    for i,(u,v) in enumerate(zip(nn,jj)):
        rows.append({'degree':i,'n_digits':digs(u),'j_digits':digs(v),'ok':le(v,u)})
    L0=max(len(digs(k)) for k in nn+jj)
    out={'prime':P,'step':step,'m':m,'c':c,'n_coeff':nn,'j_coeff':jj,'L0':L0,'digit_rows':rows}
    open('/mnt/data/r3_work/lacunary_seed.json','w').write(json.dumps(out,indent=2))
    print(json.dumps(out,indent=2))
