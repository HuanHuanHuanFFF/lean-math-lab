"""Optional certificate discovery. Needs SymPy; NOT used by the offline verifier."""
from pathlib import Path
import json
import sympy as s
from algebra_spec import GENERAL_NAMES,ZERO_NAMES,general_spec,zero_spec
ROOT=Path(__file__).resolve().parents[1]

def block(names,spec):
    symbols=s.symbols(' '.join(names));V=dict(zip(names,symbols))
    generators,checks=spec(V)
    output=[]
    for name,expr in checks.items():
        quotients,remainder=s.reduced(s.expand(expr),generators,*symbols)
        assert s.expand(remainder)==0,(name,remainder)
        qs=[]
        for q in quotients:
            p=s.Poly(q,*symbols,domain=s.ZZ)
            qs.append([[list(m),int(c)] for m,c in sorted(p.terms()) if c])
        output.append({'name':name,'quotients':qs})
    return {'variables':names,'identities':output}

if __name__=='__main__':
    obj={'general':block(GENERAL_NAMES,general_spec),'zero':block(ZERO_NAMES,zero_spec)}
    (ROOT/'certificates/algebra.json').write_text(json.dumps(obj,indent=2)+'\n')
    print(json.dumps({'status':'PASS','identities':sum(len(v['identities']) for v in obj.values())}))
