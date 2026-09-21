#!/usr/bin/env python3
"""Feed damaged certificates directly to both arithmetic checkers, without hashes."""
from __future__ import annotations
import copy,json,os,subprocess,sys,tempfile
from pathlib import Path

ROOT=Path(__file__).resolve().parent

def mutations(base):
    cases=[]
    def add(name,fn):
        c=copy.deepcopy(base);fn(c);cases.append((name,c))
    add('changed_norm_coefficient',lambda c:c['identities'][0]['terms'][0].__setitem__(1,c['identities'][0]['terms'][0][1]+2))
    add('changed_source_coefficient',lambda c:c['identities'][1]['terms'][-1].__setitem__(1,c['identities'][1]['terms'][-1][1]+2))
    add('eta_min_reduced',lambda c:c['contract'].__setitem__('eta_min',2))
    add('missing_minus_orientation',lambda c:c['contract'].__setitem__('orientations',[1]))
    add('rational_high_multiplier',lambda c:c['contract'].__setitem__('chi','arbitrary positive rational'))
    add('aggregate_instead_of_source',lambda c:c['contract'].__setitem__('source_D','arbitrary odd aggregate divisor'))
    add('unjustified_small_Q',lambda c:c['contract'].__setitem__('minimum_source_power',3))
    add('degree_box_changed',lambda c:c['identities'][0]['degrees'].__setitem__(0,1))
    add('identity_omitted',lambda c:c['identities'].pop())
    add('negative_positive_gap_weight',lambda c:c['positive_gap_coefficients'].__setitem__(0,-3))
    add('sos_weight_omitted',lambda c:c['terminal_sos_weights'].__setitem__(1,0))
    add('rational_kappa_falsified',lambda c:c['diagnostics']['rational_high_coefficient'].__setitem__('kappa','1'))
    return cases

def main():
    base=json.loads((ROOT/'certificates/certificate.json').read_text())
    results=[];env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    with tempfile.TemporaryDirectory(prefix='sq_high_bad_') as tmp:
        for name,cert in mutations(base):
            target=Path(tmp)/(name+'.json');target.write_text(json.dumps(cert))
            rejected=[]
            for script in ('check_primary.py','check_independent.py'):
                p=subprocess.run([sys.executable,'-B',str(ROOT/script),'--certificate',str(target)],capture_output=True,text=True,env=env,timeout=20)
                if p.returncode==0 or 'CertificateError' not in p.stderr:
                    raise RuntimeError(f'{script} failed to reject {name} for an arithmetic/contract reason: {p.stdout} {p.stderr}')
                rejected.append(script)
            results.append({'mutation':name,'rejected_by':rejected})
    print(json.dumps(results,ensure_ascii=False,indent=2))
    print('PASS_BAD_SQ_HIGH_CERTIFICATE_REJECTION')
    print('Mutations:',len(results),'| Both checkers invoked directly; no hash-only rejection.')
if __name__=='__main__':main()
