"""Independent direct-quotient evaluation; does not import generator or spec."""
from pathlib import Path
import json,sys

def check(obj):
    assert obj['period']==360
    templates={(-1,7,1),(1,7,1),(-1,5,1),(-1,5,2)}
    rows=obj['rows'];root_checks=0
    for r in rows:
        e,m,h,Q,X=(r[k] for k in ['epsilon','m','h','modulus','x_residue'])
        assert (e,m,h) in templates and Q>1 and Q%2 and 0<=X<Q
        assert pow(2,360,Q)==1
        vals=[]
        for U in range(Q):
            a=m*m*U;rho=3*m*m*h;D=X-e
            num=12*a*(a-3*D)*(a-6*D)-(rho*D-27*a)*(X*X-2)
            assert num%(3*m*m)==0
            vals.append((num//(3*m*m))%Q)
        assert vals==r['image'] and all(vals)
        root_checks+=Q
    expected={}
    # Reverse enumeration, exponents 1..360 rather than 0..359.
    for e,m,h in sorted(templates,reverse=True):
        X=m
        for S in range(1,361):
            X*=2
            if (X+e)%3 or (X+e)%9==0:continue
            hits=[i for i,r in enumerate(rows) if
                  (r['epsilon'],r['m'],r['h'])==(e,m,h) and X%r['modulus']==r['x_residue']]
            assert hits
            expected[(e,m,h,S%360)]=min(hits)
    received={tuple(t[:4]):t[4] for t in obj['mapping']}
    assert len(received)==len(obj['mapping']) and received==expected
    counts={'rows':len(rows),'root_checks':root_checks,'states':len(expected)}
    assert counts==obj['counts']
    return counts

if __name__=='__main__':
    out=Path(sys.argv[1]);obj=json.loads((out/'certificate.json').read_text())
    result={'status':'PASS','checked':check(obj),'algorithm':'uncancelled polynomial then exact integer quotient; reverse exponent enumeration'}
    (out/'independent-check.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
    print(json.dumps(result['checked'],sort_keys=True))
