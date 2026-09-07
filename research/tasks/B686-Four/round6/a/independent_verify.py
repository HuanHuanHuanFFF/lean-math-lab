"""Fresh algebra and finite-sign transcription audits; not a Lean replacement."""
from pathlib import Path
from fractions import Fraction as Q
from math import prod
from datetime import datetime, timezone
import hashlib, importlib.util, json, time
import sympy as s
HERE=Path(__file__).resolve().parent
root=HERE.parents[3]
started=time.monotonic(); audits={}
source=HERE.parents[1]/'round5/main/contact_search.py'
spec=importlib.util.spec_from_file_location('prior_contact_search',source)
prior=importlib.util.module_from_spec(spec);spec.loader.exec_module(prior)
rows=json.loads((HERE/'contact-certificates.json').read_text())['rows']
for row in rows:
    fresh=prior.search(row['slots']); old=json.loads((HERE.parents[1]/'round5/main/contact_search.json').read_text())['rows']
    assert fresh==next(r for r in old if r['slots']==row['slots'])
    combined={}
    for a,aux in zip(row['combination'],fresh['auxiliaries']):
        for i,j,c in aux['terms']:combined[i,j]=combined.get((i,j),0)+a*c
    assert [[a,b,c] for (a,b),c in sorted(combined.items()) if c]==row['terms']
    for branch in fresh['branches'].values():
        coeff=prior.evaluate(combined,list(map(Q,branch)),6)
        assert all(x==0 for x in coeff)
audits['fresh_saturated_kernels']=4
z,d,w=s.symbols('z d w');F=sum(c*z**a*d**b for (a,b),c in prior.F.items())
identities=0
for row in rows:
    H=sum(c*z**a*d**b for a,b,c in row['terms'])
    for cert in row['certificates']:
        U=sum(c*w**a*d**b for a,b,c in cert['quotient'])
        R=sum(c*w**a*d**b for a,b,c in cert['remainder'])
        assert s.Poly(cert['denominator']*H.subs(z,w+cert['root'])-U*F.subs(z,w+cert['root'])-R,w,d).is_zero
        assert all(a+b>=6 for (a,b),c in s.Poly(R,w,d).terms())
        identities+=1
audits['independent_sympy_local_identities']=identities
finite=json.loads((HERE/'finite-data.json').read_text())['rows']
last=finite[0]['cutoff']-1
for row in finite:
    delta=row['d']
    def raw(t):return prod(t+delta+i for i in range(1,6))-4*prod(t+i for i in range(1,6))
    while raw(last+1)>0:last+=1
    assert last==row['cutoff']
    assert raw(last)==row['lower_sign']>0 and raw(last+1)==row['upper_sign']<0
audits['independent_monotone_finite_scan']=len(finite)
audits['elapsed_seconds']=time.monotonic()-started
audits['utc']=datetime.now(timezone.utc).isoformat()
audits['evidence']='Independent exact finite/algebra audit; Lean acceptance remains separate'
audits['sha256']={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in HERE.iterdir() if p.suffix in ('.lean','.py','.json') and p.name!='independent-verification.json'}
(HERE/'independent-verification.json').write_text(json.dumps(audits,indent=2)+'\n')
print(json.dumps({k:v for k,v in audits.items() if k!='sha256'},indent=2))
