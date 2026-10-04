from reg3_source import *
import math
fs,gates,provenance=sources(); num=3*(u-1)*(y-1)*r; den=4*u*y
out={'chart':'z=4*u*y*r_original/(3*(u-1)*(y-1)); third stored variable is z','memory':memory(),'sources':provenance,'records':[]}
for name,f in (fs|gates).items():
    st=time.monotonic(); d=f.degree(r)
    cs=[R.from_dict({(a,b,0):c for (a,b,k),c in f.items() if k==j}) for j in range(d+1)]
    t=cs[d]; dp=R.one
    for j in range(d-1,-1,-1):
        dp*=den; t=t*num+cs[j]*dp
    raw=t; factors=[]
    for label,v in [('u',u),('y',y),('u-1',u-1),('y-1',y-1),('z',r)]:
        k=0
        while t and not t.rem(v):t=t.exquo(v);k+=1
        factors.append([label,k])
    dc=math.lcm(*[int(c.denominator) for c in t.values()]); content=math.gcd(*[int(c*dc) for c in t.values()]); scalar=QQ(content,dc); t/=scalar
    back=t*scalar
    for (lab,k),v in zip(factors,[u,y,u-1,y-1,r]):back*=v**k
    assert raw==back
    rec={'name':name,'r_degree':d,'factors':factors,'scalar':str(scalar),'stats':stats(t),'seconds':round(time.monotonic()-st,3)}
    path=OUT/f'balanced_{name}.json'; path.write_text(json.dumps(rec|{'variables':['u','y','z'],'terms':[[list(e),str(c)] for e,c in sorted(t.items())]},indent=2)+'\n',encoding='utf-8')
    rec['file']=path.name; rec['sha256']=hashlib.sha256(path.read_bytes()).hexdigest();out['records'].append(rec)
    (OUT/'04-balanced-chart.json').write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8');print(json.dumps(rec),flush=True)
