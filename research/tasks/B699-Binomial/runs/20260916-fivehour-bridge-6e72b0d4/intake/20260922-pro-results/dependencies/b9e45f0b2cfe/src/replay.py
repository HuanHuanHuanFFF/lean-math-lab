#!/usr/bin/env python3
"""Replay the delivered finite certificates, two algorithms and semantic refusal tests.
This does not pretend to kernel-check the general paper proof.
"""
from __future__ import annotations
import argparse, copy, hashlib, json, subprocess, sys
from pathlib import Path
from math import comb
import check_a, check_b
ROOT=Path(__file__).resolve().parents[1]

def save(p,o):p.write_text(json.dumps(o,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def row(c,m,d,p,e):
    T=p**e;n=c*(m*T+1)**d;E=e+check_a.val(m*d,p)
    return dict(kind='affine_power',label='deliberately-invalid-scope',c=c,m=m,d=d,p=p,e=e,T=T,n=n,
      source_offset=c,transport_offset=3-c,full_source_exponent=E,full_source=p**E,
      threshold=32*(9 if c==2 else 64)**d*m**((2 if c==2 else 3)*d-1),
      f=[c*comb(d,k)*m**k for k in range(d+1)])

def bad_tests(data):
    tests=[]
    def put(name,mut):tests.append((name,mut))
    put('composite_working_base',lambda x:x['rows']['rows'].__setitem__(0,row(2,1,3,15,10)))
    put('valid_arithmetic_but_below_threshold',lambda x:x['rows']['rows'].__setitem__(0,row(2,1,3,3,2)))
    put('even_m_outside_claimed_contract',lambda x:x['rows']['rows'].__setitem__(0,row(2,2,3,5,20)))
    put('cut_high_3_source_to_working_base',lambda x:x['rows']['rows'][4].update(full_source_exponent=15,full_source=3**15))
    put('incorrect_n',lambda x:x['rows']['rows'][0].update(n=x['rows']['rows'][0]['n']+2))
    put('incorrect_threshold_contract',lambda x:x['rows']['rows'][1].update(threshold=1))
    put('wrong_transport_source',lambda x:x['rows']['rows'][0].update(transport_offset=1))
    put('unsupported_irreducibility_claim',lambda x:x['rows']['rows'][0].update(kind='all_positive_polynomials_are_irreducible'))
    put('duplicate_sparse_positions',lambda x:x['rows']['rows'][-1].update(positions=[101,101,307,307]))
    put('wrong_sparse_coefficient',lambda x:x['rows']['rows'][-1]['f'].__setitem__(307,9))
    put('zero_resultant',lambda x:x['resultants']['cases'][0]['witnesses'][0].update(R=0))
    put('corrupt_bezout_identity',lambda x:x['resultants']['cases'][0]['witnesses'][0]['U'].__setitem__(0,x['resultants']['cases'][0]['witnesses'][0]['U'][0]+1))
    put('out_of_digit_box',lambda x:x['resultants']['cases'][0]['J'].__setitem__(0,10))
    put('corrupt_resultant_product',lambda x:x['resultants']['cases'][0].update(R_product=x['resultants']['cases'][0]['R_product']+1))
    put('false_big_prime_order_witness',lambda x:x['primes']['certificates']['57912614113275649087721'].update(base=0))
    put('false_negative_no_carry_example',lambda x:x['regressions']['negative_examples'][0].update(j=4))
    result=[]
    for name,mut in tests:
        altered=copy.deepcopy(data);mut(altered);rejected=[]
        for checker in [check_a.check_bundle,check_b.check_bundle]:
            try:checker(altered)
            except (AssertionError,ValueError,KeyError,IndexError,ZeroDivisionError):rejected.append(True)
            else:rejected.append(False)
        assert all(rejected),f'bad certificate accepted: {name} {rejected}'
        result.append({'name':name,'A_rejected':True,'B_rejected':True})
    return result

def main(out:Path,regenerate:bool):
    out.mkdir(parents=True,exist_ok=False)
    cert=ROOT/'certificates';data=check_a.load(cert)
    a=check_a.check_bundle(data);b=check_b.check_bundle(check_b.load(cert));refusals=bad_tests(data)
    save(out/'checker_a.json',a);save(out/'checker_b.json',b);save(out/'bad_certificate_rejection.json',refusals)
    rec={'status':'PASS','checker_a':a,'checker_b':b,'bad_certificates':len(refusals),
         'certificate_sha256':{p.name:digest(p) for p in sorted(cert.glob('*.json'))},
         'evidence_limit':'Finite certificate/implementation replay; general theorem remains paper proof; not Lean or external peer review.'}
    if regenerate:
        dest=out/'regenerated'
        p=subprocess.run([sys.executable,str(ROOT/'src/generate.py'),'--output-dir',str(dest)],capture_output=True,text=True,check=False)
        (out/'generation.log').write_text(p.stdout+p.stderr)
        if p.returncode:raise RuntimeError('generation failed; inspect generation.log')
        assert {x.name for x in cert.glob('*.json')}=={x.name for x in dest.glob('*.json')}
        assert all((dest/x.name).read_bytes()==x.read_bytes() for x in cert.glob('*.json'))
        rec['regeneration']='BYTE_IDENTICAL'
    save(out/'replay.json',rec)
    print(json.dumps({'status':'PASS','bad_certificates':len(refusals),'regeneration':rec.get('regeneration','not requested')},sort_keys=True))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--output-dir',type=Path,required=True);p.add_argument('--regenerate',action='store_true');a=p.parse_args();main(a.output_dir,a.regenerate)
