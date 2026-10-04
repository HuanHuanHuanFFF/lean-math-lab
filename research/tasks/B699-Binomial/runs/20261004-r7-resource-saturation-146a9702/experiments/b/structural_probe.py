from reg3_source import *
import sympy as sp
fs,gates,provenance=sources()
x,y0,z=sp.symbols('u y r')
log=[]
def emit(d):
    log.append(d); print(json.dumps(d),flush=True)
    (OUT/'02-structural-probe.json').write_text(json.dumps(log,indent=2)+'\n',encoding='utf-8')
emit({'memory':memory()})
for name,f in (gates|fs).items():
    ex=f.as_expr(); deg=f.degree(r)
    data={'name':name,'r_degree':deg,'coefficients':{}}
    for j in ([0,deg] if name!='K' else range(deg+1)):
        c=sp.Poly(ex,z).nth(j); data['coefficients'][str(j)]=str(sp.factor(c))
    emit(data)
