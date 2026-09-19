#!/usr/bin/env python3
"""Reject altered proof data. This is not a search over (n,j) or exponents."""
from pathlib import Path
import copy,json,subprocess,sys,tempfile
ROOT=Path(__file__).resolve().parents[1]
def main():
    base=json.loads((ROOT/'outputs/certificate.json').read_text())
    cases=[]
    def add(name,edit):
        c=copy.deepcopy(base);edit(c);cases.append((name,c))
    add('changed_polynomial_coefficient',lambda c:c['identities'][0]['left'][0].__setitem__(1,c['identities'][0]['left'][0][1]+1))
    add('omitted_identity',lambda c:c['identities'].pop())
    add('wrong_v2_eta_intercept',lambda c:c['valuation_certificate']['dyadic_exponents']['eta'].__setitem__(0,2))
    add('wrong_strict_gap',lambda c:c['valuation_certificate']['dyadic_exponents']['strict_gap'].__setitem__(0,-7))
    add('truncated_odd_prime_power',lambda c:c['valuation_certificate'].__setitem__('odd_saturation','arbitrary divisor'))
    add('deleted_isolated_three_case',lambda c:c['source_contract']['allowed_lambda_mu'].pop())
    add('unsupported_general_cross_closure',lambda c:c['scope'].__setitem__('general_cross_domain_closed',True))
    add('reversed_parity',lambda c:c['valuation_certificate'].__setitem__('eta_dyadic_valuation_parity','even'))
    results=[]
    with tempfile.TemporaryDirectory(prefix='certificate-rejection-') as td:
        for name,data in cases:
            path=Path(td)/(name+'.json');path.write_text(json.dumps(data))
            run=subprocess.run([sys.executable,str(ROOT/'src/verify.py'),str(path)],capture_output=True,text=True,timeout=10)
            rejected=run.returncode!=0
            results.append({'case':name,'rejected':rejected,'exit_code':run.returncode,'output':run.stdout.strip()})
    assert all(x['rejected'] for x in results),'accepted a corrupt certificate'
    summary={'status':'PASS','cases':len(results),'all_rejected':True,'details':results}
    (ROOT/'outputs/corruption.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'PASS','cases':len(results),'all_rejected':True}))
if __name__=='__main__':main()
