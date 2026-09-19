#!/usr/bin/env python3
"""Complete NEW obligations only. Python standard library, no network or CAS.
Usage: python3 -B code/reproduce.py --out /absolute/nonexistent/directory
Frozen evidence is adopted through SOURCE_ADOPTION.md, not silently replayed.
"""
from __future__ import annotations
import argparse, hashlib, json, sys, time, platform
from pathlib import Path
from fractions import Fraction as Q
import verify_geometry as G
import verify_saturation_genus as S
import verify_support as T
import verify_ledger as L
import verify_next_budget as N

def negative_tests(out:Path, geometry:Path):
    checks=[]
    def rejects(name, fn):
        try: fn()
        except (AssertionError,ValueError,ZeroDivisionError): checks.append(name); return
        raise AssertionError('invalid input accepted: '+name)
    rejects('composite_irreducibility_modulus',lambda:T.irreducible_check([1,0,1],4))
    rejects('reducible_specialization',lambda:T.irreducible_check([1,2,1],101))
    rejects('specialization_degree_drop',lambda:T.irreducible_check([1,0,101],101))
    rejects('nonsquare_minor',lambda:G.det_mod([[1,2]],101))
    rejects('zero_modular_minor',lambda:G.need(G.det_mod([[1,2],[2,4]],101)!=0,'zero minor'))
    rejects('zero_integer_minor',lambda:G.need(G.bareiss([[1,2],[2,4]])!=0,'zero integer minor'))
    rejects('mixed_sign_leading_polynomial',lambda:G.bernstein({(0,1):8,(2,0):-1},1))
    rejects('unadopted_genus_degree',lambda:S.verify(16,out))
    roots={(3,((0,),(0,),(0,),(0,),(0,),(0,)),2)}
    rejects('missing_complete_root_gate',lambda:G.need(set()==roots,'root gate omission'))
    rejects('duplicate_complete_root_gate',lambda:G.need(len(list(roots)*2)==len(set(list(roots)*2)),'duplicate gate'))
    rejects('zero_polynomial_ordinary_profile',lambda:G.profile({},1))
    # The exact affine solve must include every equation, not just pivot rows.
    c=json.loads((G.ROOT/'evidence/nf41_front_certificate.json').read_text())[365]
    model=G.Model(7);_,A,_=model.build(c);base=[Q(*x) for x in c['base']];base[0]+=1
    rejects('corrupted_affine_base',lambda:G.need(all(sum(Q(x)*y for x,y in zip(a[:-1],base))==a[-1] for a in A),'not all affine rows solved'))
    src=L.source_data();rejects('wrong_K152_source_order',lambda:G.need(L.L(src[0],0)==150,'original source mismatch'))
    G.write(out/'negative_tests.json',{'status':'PASS_NEGATIVE_TESTS','rejected':checks,'count':len(checks)})
    return len(checks)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True,type=Path);a=ap.parse_args()
    if not a.out.is_absolute():ap.error('--out must be an absolute path')
    if a.out.exists():ap.error('--out must NOT already exist (never overwrite evidence)')
    a.out.mkdir(parents=True);start=time.monotonic()
    results=[]
    for q in (6,7,8,9):
        results.append(G.verify_one(q,'front',a.out))
        if q!=6:results.append(G.verify_one(q,'tail',a.out))
    sat=[S.verify(q,a.out) for q in (14,15)]
    support=T.run(a.out,a.out);ledger=L.run(a.out);negative=negative_tests(a.out,a.out)
    N.run(a.out)
    explicit=[]
    for item in results:
        for ex in item['exception_details']:
            if ex['kind'] in ('fixed_large_point_nonvanishing','one_rational_parameter_boundary'):
                explicit.append({'q':item['q'],'part':item['part'],**ex})
    G.write(a.out/'explicit_polynomials.json',explicit)
    nsys=sum(x['residual_systems'] for x in results)
    nbad=sum(x['counts'].get('inconsistent',0) for x in results)
    G.need((nsys,nbad)==(19747,19739),'near-saturation finite obligations count')
    G.need(sum(len(x['nonzero_augmented_minors']) for x in sat)==694,'saturation obligations count')
    G.need(ledger['cover']==13 and ledger['edge13_requires_zero_excess'],'COVER13/EDGE13 not established')
    summary={'status':'PASS_NEW_GENUS_TANGENCY_COVER13','new_near_saturation_systems':nsys,
      'new_near_saturation_inconsistent':nbad,'new_saturated_genus_jet_systems':694,
      'complete_vertical_states':ledger['complete_vertical_states'],'cover':ledger['cover'],
      'edge13_requires_zero_excess':True,'negative_tests':negative,
      'evidence_grade':'author proof plus deterministic exact certificates; frozen author inputs adopted; no Lean; no external independent review'}
    G.write(a.out/'acceptance_summary.json',summary)
    files={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(a.out.glob('*.json'))}
    G.write(a.out/'output_hashes.json',files)
    G.write(a.out/'run_stats.json',{'python':platform.python_version(),'platform':platform.platform(),'elapsed_seconds':round(time.monotonic()-start,6),'command':sys.argv,'exit_status':0})
    print(summary['status'],json.dumps(summary,sort_keys=True),flush=True)
if __name__=='__main__':main()
