from reg3_source import *
import sympy as sp
import threading,os
S,z,t=ring('z,t',QQ)
def read(name):
    p=OUT/f'Ezero_{name}.json';d=json.loads(p.read_text(encoding='utf-8'));return S.from_dict({(e[1],e[0]):QQ(c) for e,c in d['polynomial']})
P=read('P5'); log=[]
def emit(d):
    log.append(d);(OUT/'06-E-zero-resultants.json').write_text(json.dumps(log,indent=2)+'\n',encoding='utf-8');print(json.dumps(d),flush=True)
def timeout():
    emit({'status':'TIMEOUT_AFTER_60_SECONDS','meaning':'algorithm budget only; no mathematical conclusion'});os._exit(124)
watch=threading.Timer(60,timeout);watch.daemon=True;watch.start()
emit({'resource':memory(),'fixed_r_degree_P5':P.degree(z),'planned':'two characteristic-zero bivariate resultants, then exact gcd'})
res=[]
for name in ['V0','V1']:
    q=read(name);st=time.monotonic();v=P.resultant(q);res.append(v)
    data={'name':name,'fixed_r_degree':q.degree(z),'resultant_degree':v.degree(),'terms':len(v),'bits':max(abs(int(c.numerator)).bit_length() for c in v.values()),'seconds':round(time.monotonic()-st,3)}
    (OUT/f'Ezero_res_{name}.json').write_text(json.dumps(data|{'coefficients':[[list(e),str(c)] for e,c in sorted(v.items())]},indent=2)+'\n',encoding='utf-8');emit(data)
g=res[0].gcd(res[1]); fac=g.factor_list();emit({'gcd_degree':g.degree(),'factorization':str(fac),'elapsed_status':'COMPLETED'})
(OUT/'Ezero_resultant_gcd.json').write_text(json.dumps({'coefficients':[[list(e),str(c)] for e,c in sorted(g.items())],'factorization':str(fac)},indent=2)+'\n',encoding='utf-8')
watch.cancel()
