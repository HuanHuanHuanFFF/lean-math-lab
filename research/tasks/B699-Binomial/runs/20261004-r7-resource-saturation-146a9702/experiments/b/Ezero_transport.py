from reg3_source import *
import math
R2,t,z=ring('t,z',QQ)
fs,gates,provenance=sources();log=[]
def emit(d):
    log.append(d);(OUT/'05-E-zero-transport.json').write_text(json.dumps(log,indent=2)+'\n',encoding='utf-8');print(json.dumps(d),flush=True)
emit({'map':'u=(t-1)/t,y=t,r=z','resource':memory()})
for name,f in (fs|gates).items():
    st=time.monotonic(); du=f.degree(u);p=R2.zero
    tp=[t**i for i in range(50)];mp=[(t-1)**i for i in range(24)];zp=[z**i for i in range(10)]
    for (a,b,c),v in f.items():p+=v*mp[a]*tp[du-a+b]*zp[c]
    raw=p; fac=[]
    for label,g in [('t',t),('t-1',t-1),('z',z)]:
        k=0
        while p and not p.rem(g):p=p.exquo(g);k+=1
        fac.append([label,k])
    content=math.gcd(*[int(c) for c in p.values()]);p/=content
    chk=p*content
    for (lab,k),g in zip(fac,[t,t-1,z]):chk*=g**k
    assert chk==raw
    d={'name':name,'u_denominator_power':du,'factors':fac,'scalar':str(content),'terms':len(p),'degrees':[p.degree(t),p.degree(z)],'seconds':round(time.monotonic()-st,3)}
    path=OUT/f'Ezero_{name}.json';path.write_text(json.dumps(d|{'variables':['t','z'],'polynomial':[[list(e),str(c)] for e,c in sorted(p.items())]},indent=2)+'\n',encoding='utf-8');d['sha256']=hashlib.sha256(path.read_bytes()).hexdigest();emit(d)
