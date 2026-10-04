from reg3_source import *
import math
C,t=ring('t',QQ)
F4=2*t**4-8*t**3+14*t**2-12*t+5
F8=55*t**8-76*t**7+35*t**6-146*t**5+450*t**4-468*t**3+390*t**2-156*t+51
core=t**47*(t-1)**35*F4**2*F8**2
out={'factor_4':[[list(e),str(c)] for e,c in sorted(F4.items())],'factor_8':[[list(e),str(c)] for e,c in sorted(F8.items())],'core_exponents':{'t':47,'t-1':35,'factor_4':2,'factor_8':2},'cofactors':[],'coprimality_prime':32003}
for name in ['V0','V1']:
    data=json.loads((OUT/f'Ezero_res_{name}.json').read_text(encoding='utf-8'));res=C.from_dict({tuple(e):QQ(v) for e,v in data['coefficients']})
    q=res.exquo(core);dc=math.lcm(*[int(c.denominator) for c in q.values()]);co=math.gcd(*[int(c*dc) for c in q.values()]);sc=QQ(co,dc);q/=sc
    assert core*q*sc==res
    out['cofactors'].append({'name':name,'scale':str(sc),'primitive':[[list(e),str(c)] for e,c in sorted(q.items())]})
(OUT/'Ezero_resultant_core.json').write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'core_degree':core.degree(),'cofactor_degrees':[max(e[0] for e,c in d['primitive']) for d in out['cofactors']],'artifact_sha256':hashlib.sha256((OUT/'Ezero_resultant_core.json').read_bytes()).hexdigest()}))
