from reg3_source import *
import sympy as sp, threading,os
T=sp.Symbol('t')
F=[2*T**4-8*T**3+14*T**2-12*T+5,55*T**8-76*T**7+35*T**6-146*T**5+450*T**4-468*T**3+390*T**2-156*T+51]
all_data={n:json.loads((OUT/f'Ezero_{n}.json').read_text(encoding='utf-8')) for n in ['P5','V0','V1','N','K']}
summary=[]
def timeout():
    print('TIMEOUT_60_SECONDS_NO_CONCLUSION',flush=True);os._exit(124)
watch=threading.Timer(60,timeout);watch.daemon=True;watch.start()
for f in F:
    st=time.monotonic();fp=sp.Poly(f,T,domain=QQ);assert fp.is_irreducible
    K=QQ.alg_field_from_poly(fp,alias='a'); C,z=ring('z',K);a=K([1,0])
    def loadp(n):
        cs={}
        for (i,j),v in all_data[n]['polynomial']:cs[(j,)]=cs.get((j,),K.zero)+K.convert(QQ(v))*a**i
        return C.from_dict(cs)
    def pack(p):
        out=[]
        for (j,),v in sorted(p.items()):
            co=v.to_list();degree=len(co)-1
            for k,c in enumerate(co):
                if c:out.append([[degree-k,j],str(c)])
        return out
    P,Q,W,N,KK=[loadp(n) for n in ['P5','V0','V1','N','K']]
    s,t,g0=P.gcdex(Q); aa,bb,g=g0.gcdex(W)
    multipliers=[aa*s,aa*t,bb];assert sum((m*p for m,p in zip(multipliers,[P,Q,W])),C.zero)==g
    target=None
    for name,v in [('1',C.one),('z',z),('N',N),('K',KK),('NK',N*KK)]:
        quot,rem=v.div(g)
        if not rem:target=(name,v,quot);break
    d={'factor':str(f),'degree':fp.degree(),'gcd_P_V0':str(g0.as_expr()),'gcd_P_V0_V1':str(g.as_expr()),'N':str(N.as_expr()),'K':str(KK.as_expr()),'elapsed_seconds':round(time.monotonic()-st,3)}
    if target:
        name,v,quot=target;ms=[quot*m for m in multipliers];assert sum((m*p for m,p in zip(ms,[P,Q,W])),C.zero)==v
        d['terminal_target']=name
        cert={'factor_coefficients':[[[int(e[0]),0],str(c)] for e,c in fp.terms()],'target':name,'target_coefficients':pack(v),'source_names':['P5','V0','V1'],'multipliers':[pack(m) for m in ms],'identity_interpretation':'target=sum multipliers*source modulo factor; t!=0,1 on branch','source_sha256':{n:hashlib.sha256((OUT/f'Ezero_{n}.json').read_bytes()).hexdigest() for n in all_data}}
        path=OUT/f'Ezero_terminal_degree_{fp.degree()}.json';path.write_text(json.dumps(cert,indent=2)+'\n',encoding='utf-8');d['certificate_sha256']=hashlib.sha256(path.read_bytes()).hexdigest()
    else:d['terminal_target']='NOT_FOUND'
    summary.append(d);(OUT/'07-E-zero-terminals.json').write_text(json.dumps(summary,indent=2)+'\n',encoding='utf-8');print(json.dumps(d),flush=True)
watch.cancel()

