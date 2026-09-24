#!/usr/bin/env python3
"""Replay PHASE1024 certificates and two algorithmically distinct classifiers.

Writes only into a NEW output directory. Does not access or modify a repository.
Standard library only; --regenerate additionally requires SymPy.
"""
from __future__ import annotations
import argparse,copy,hashlib,json,platform,random,subprocess,sys,time
from pathlib import Path
from math import isqrt
import phase_a,phase_b,check_uniform

ROOT=Path(__file__).resolve().parents[1]

def write(path,data): path.write_text(json.dumps(data,indent=2,sort_keys=True)+'\n')

def cases():
    # No density or original-input conclusion is inferred from this list.
    values=list(range(1025,1281,2))
    values += [4097,4225,65537,67861,69961,1000001]
    for k in range(17):
        d=64*(k+1)**2+(1 if k%2==0 else 0)
        values.append(d*d+k) # inherited NS64 cross-check, not new coverage
    rng=random.Random(699_20260921)
    for bits in [16,32,64,128,256,512]:
        for _ in range(3): values.append((1<<(bits-1))|rng.getrandbits(bits-1)|1)
    d=10**20+4
    values.append(d*d+d+1)
    return sorted(set(values))

def main():
    p=argparse.ArgumentParser();p.add_argument('--output-dir',type=Path,required=True)
    p.add_argument('--regenerate',action='store_true');a=p.parse_args()
    if a.output_dir.exists(): raise SystemExit('output directory already exists; use a new path')
    a.output_dir.mkdir(parents=True)
    t0=time.monotonic()
    uniform=json.loads((ROOT/'certificates/uniform_phase.json').read_text())
    write(a.output_dir/'uniform_check.json',check_uniform.verify(uniform))
    results=[]; bresults=[]
    for h in cases():
        c=phase_a.classify(h); b=phase_b.classify(h)
        if not phase_a.verify_certificate(c): raise ArithmeticError('A self-certificate failed')
        if any(c[k]!=v for k,v in b.items()): raise ArithmeticError(f'A/B mismatch h={h}')
        results.append(c);bresults.append(b)
    write(a.output_dir/'phase_certificates_A.json',results)
    write(a.output_dir/'phase_results_B.json',bresults)
    by_h={c['h']:c for c in results}
    for k in range(17):
        d=64*(k+1)**2+(1 if k%2==0 else 0)
        if by_h[d*d+k]['chi']!=1: raise ArithmeticError('contradicts inherited NS64')
    # Semantic tamper tests: corruption must fail an actual checker.
    rejected=[]
    bad=copy.deepcopy(results[0]);bad['chi']^=1
    rejected.append({'mutation':'flip_chi','rejected':not phase_a.verify_certificate(bad)})
    bad=copy.deepcopy(results[0]);bad['floor_T']+=1
    rejected.append({'mutation':'wrong_floor','rejected':not phase_a.verify_certificate(bad)})
    bad=copy.deepcopy(results[0]);bad['lower'],bad['upper']=bad['upper'],bad['lower']
    rejected.append({'mutation':'reverse_root_bracket','rejected':not phase_a.verify_certificate(bad)})
    bad=copy.deepcopy(results[0]);bad['h']=1024
    rejected.append({'mutation':'even_h','rejected':not phase_a.verify_certificate(bad)})
    for mutation in ['margin_source','eliminant_quotient','domain_shift']:
        bad=copy.deepcopy(uniform)
        if mutation=='margin_source': bad['margins'][0]['coefficients'][0]+=1
        if mutation=='eliminant_quotient': bad['identities'][0]['quotient_h_y'][0][2]+=1
        if mutation=='domain_shift': bad['shift']=31
        try: check_uniform.verify(bad); ok=False
        except (ValueError,ArithmeticError): ok=True
        rejected.append({'mutation':mutation,'rejected':ok})
    if not all(t['rejected'] for t in rejected): raise ArithmeticError('bad certificate accepted')
    write(a.output_dir/'tamper_tests.json',rejected)
    regen=None
    if a.regenerate:
        new=a.output_dir/'uniform_regenerated.json'
        proc=subprocess.run([sys.executable,str(ROOT/'src/generate_uniform.py'),str(new)],
                            check=True,text=True,capture_output=True)
        regen={'generator_stdout':proc.stdout.strip(),
               'byte_identical':new.read_bytes()==(ROOT/'certificates/uniform_phase.json').read_bytes()}
        if not regen['byte_identical']: raise ArithmeticError('generator/frozen bytes mismatch')
    summary={'status':'PASS','certificate_inputs':len(results),
      'uniform_margins':14,'exact_eliminant_identities':2,'asymptotic_identity':True,
      'algorithm_A':'dyadic root isolation in y with rational endpoint floors',
      'algorithm_B':'integer sign bisection in two eliminated cubics',
      'bad_certificates_rejected':len(rejected),'NS64_cross_checks':17,
      'max_h_bits':max(h.bit_length() for h in cases()),
      'max_dyadic_steps':max(c['dyadic_steps'] for c in results),
      'regeneration':regen,'runtime_seconds':round(time.monotonic()-t0,4),
      'python':platform.python_version(),
      'scope_warning':'finite certificate replay is not a scan of NC3 or a proof of density'}
    write(a.output_dir/'SUMMARY.json',summary)
    print(json.dumps(summary,indent=2))
if __name__=='__main__':main()
