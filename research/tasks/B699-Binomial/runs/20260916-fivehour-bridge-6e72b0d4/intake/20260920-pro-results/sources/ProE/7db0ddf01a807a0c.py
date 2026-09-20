"""Negative tests: corruptions of proof-relevant data must be rejected."""
from copy import deepcopy
from kernel_crt import verify as crt_verify
from check_sturm import verify as sturm_verify


def run(cert):
    half=next(i for i,r in enumerate(cert['jobs']) if r['parameters']['den']==2)
    def omit_half(c):del c['jobs'][half]
    def duplicate(c):c['jobs'][1]=deepcopy(c['jobs'][0])
    def coefficient(c):c['jobs'][0]['parameters']['coeff'][0]+=1
    def kernel_constant(c):c['jobs'][0]['parameters']['C']+=1
    def determinant(c):c['jobs'][0]['parameters']['e']+=1
    def denominator(c):c['jobs'][half]['parameters']['den']=3
    def root_bound(c):c['jobs'][0]['crt']['bound']=0
    def raw_recovery(c):del c['raw_roots'][-1]
    def injected_root(c):c['jobs'][0]['crt']['integer_roots'].append(999)
    checks=[('omitted_half_integer_job',omit_half),('duplicated_job',duplicate),('changed_quartic_coefficient',coefficient),('false_kernel_constant',kernel_constant),('non_unimodular_change',determinant),('invalid_integer_basis_denominator',denominator),('false_global_root_bound',root_bound),('omitted_raw_solution',raw_recovery),('fabricated_integer_root',injected_root)]
    rows=[]
    for name,mutate in checks:
        c=deepcopy(cert);mutate(c)
        for checker in (crt_verify,sturm_verify):
            try:checker(c)
            except (ValueError,AssertionError,KeyError,TypeError):pass
            else:raise ValueError('corruption accepted by '+checker.__module__+': '+name)
        rows.append(dict(test=name,CRT='REJECT',Sturm='REJECT'))
    return dict(status='PASS_BAD_CERTIFICATE_REJECTION',tests=rows)
