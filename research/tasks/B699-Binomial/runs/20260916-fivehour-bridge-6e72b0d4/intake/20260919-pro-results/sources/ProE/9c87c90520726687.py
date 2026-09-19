#!/usr/bin/env python3
"""Regenerate without searching, verify independently, and reject damaged certificates."""
from pathlib import Path
from datetime import datetime, timezone
import argparse, subprocess, json, sys, copy, hashlib, platform
import check
p=argparse.ArgumentParser();p.add_argument('--out',type=Path);p.add_argument('--verify-only',action='store_true');a=p.parse_args()
root=Path(__file__).resolve().parents[1]
out=a.out or root/'replays'/datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S.%fZ')
out.mkdir(parents=True,exist_ok=False)
if a.verify_only:
    cert=root/'outputs'/'certificate.json';gen='not requested'
else:
    cert=out/'certificate.json'
    proc=subprocess.run([sys.executable,str(root/'src'/'generate.py'),'--out',str(cert)],capture_output=True,text=True,check=True)
    gen=proc.stdout.strip();(out/'generator.log').write_text(gen+'\n')
obj=json.loads(cert.read_text()); verified=check.validate(obj);verified['source_files_verified']=check.verify_sources(root)
# All mutations are local in-memory copies. Never change an adopted source or original certificate.
mutations=[]
def test(label,mutate):
    bad=copy.deepcopy(obj);mutate(bad)
    try:check.validate(bad)
    except (ValueError,TypeError,KeyError,AssertionError,IndexError):mutations.append({'case':label,'result':'REJECT'})
    else:raise RuntimeError('damaged certificate accepted: '+label)
test('missing_identity',lambda b:b['cases'].pop('moment_clear'))
test('extra_identity',lambda b:b['cases'].update({'bogus':{'terms':[],'positive':False}}))
test('wrong_version',lambda b:b.update(version=2))
test('variable_permutation',lambda b:b['variables'].reverse())
test('changed_coefficient',lambda b:b['cases']['weighted_quartic']['terms'][0].__setitem__(1,999))
test('false_positive_flag',lambda b:b['cases']['finite_shift_positive'].update(positive=False))
test('wrong_mod9_residue',lambda b:b['shell_mod9']['plus'].update(residue=0))
test('missing_Psi_identity',lambda b:b['cases'].pop('Psi_d_recovery'))
test('changed_scope',lambda b:b.update(scope='all NC3 proved'))
test('duplicate_term',lambda b:b['cases']['source_minimum']['terms'].append(copy.deepcopy(b['cases']['source_minimum']['terms'][0])))
test('noninteger_coefficient',lambda b:b['cases']['source_minimum']['terms'][0].__setitem__(1,410.0))
test('negative_exponent',lambda b:b['cases']['source_minimum']['terms'][0][0].__setitem__(0,-1))
sha=hashlib.sha256(cert.read_bytes()).hexdigest()
frozen=root/'outputs'/'certificate.json'
if frozen.exists() and frozen!=cert and hashlib.sha256(frozen.read_bytes()).hexdigest()!=sha:raise RuntimeError('regenerated certificate differs from frozen bytes')
ans={'status':'PASS','checker':verified,'damage_tests':mutations,'certificate_sha256':sha,
 'generator':gen,'python':platform.python_version(),'searches':{'input_pairs':0,'primes':0,'exponents':0,'modulus_sweeps':0},
 'limits':'symbolic checks do not independently verify the paper proof or the adopted NC3 interfaces'}
(out/'verification.json').write_text(json.dumps(ans,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'status':'PASS','output':str(out),'symbolic_cases':verified['symbolic_cases'],'positive_cases':verified['positive_cases'],'damage_rejections':len(mutations),'certificate_sha256':sha},sort_keys=True))
