"""Generate a prime-cover and residual-prime certificate for FINITE4.

This is not a triangular original-problem scan. It uses proved H4 cutoffs
and certified top-prime omissions, then tests only the residual original pairs.
"""
from pathlib import Path
from math import isqrt, comb, gcd
from bisect import bisect_right
import json,sys,subprocess
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parent
N_GLOBAL=528980

def sieve(n):
    a=bytearray(b'\1')*(n+1); a[0:2]=b'\0\0'
    for d in range(2,isqrt(n)+1):
        if a[d]: a[d*d:n+1:d]=b'\0'*((n-d*d)//d+1)
    return a,[p for p in range(2,n+1) if a[p]]

def cover(N,ps):
    N=4*(N//4)
    # Computing a downward prime-distance bound on rows n=0 mod 4.
    at=0; G=0; extremal=[]
    for n in range(16,N+1,4):
        while at+1<len(ps) and ps[at+1]<=n: at+=1
        g=n-ps[at]
        if g>G: G=g; extremal=[n,ps[at]]
    # A proof needs only primality of the selected lower witnesses, not
    # completeness of the prime list or primality of a next endpoint.
    records=[]; first=16
    while first<=N:
        p=ps[bisect_right(ps,first)-1]
        last=min(N,4*((p+G)//4))
        assert p<=first and first<=last and last-p<=G
        records.append([first,last,p]); first=last+4
    return dict(n_min=16,n_max=N,step=4,index_cap=G,
                extremal_row_and_prime=extremal,intervals=records)

def legendre(n,k,p):
    q=p; e=0; powers=[]
    while q<=n:
        term=n//q-k//q-(n-k)//q
        assert term in (0,1)
        if term: e+=1; powers.append(q)
        q*=p
    return e,powers

def run():
    prime_flags,ps=sieve(N_GLOBAL)
    height=json.loads((ROOT/'height-certificate.json').read_text())
    rows={r['i']:r for r in height['rows']}
    stages=[]
    c=cover(N_GLOBAL,ps); c['source']='FINITE4'; stages.append(c)
    I=c['index_cap']
    assert I<=1023
    while True:
        N=max((r['n_max'] for i,r in rows.items() if i<=I and r['j_max']>i),default=16)
        c=cover(N,ps); c['input_index_cap']=I; c['source']='H4 cutoff maximum'
        stages.append(c)
        if c['index_cap']>=I:
            assert c['index_cap']==I
            break
        I=c['index_cap']
    N=stages[-1]['n_max']
    assert N<=N_GLOBAL
    # TOP: i<=n-p for every known prime p<=n under noCommon.
    residual=[]; omitted=0; legal=0
    omitted_intervals=[]
    for i in range(3,I+1):
        J=min(rows[i]['j_max'],N//4)
        start=None; last=None; current_p=None
        for j in range(i+1,J+1):
            legal+=1; n=4*j; p=ps[bisect_right(ps,n)-1]
            if i>n-p:
                omitted+=1
                if current_p==p and last is not None and j==last+1:
                    last=j
                else:
                    if start is not None: omitted_intervals.append([i,start,last,current_p])
                    start=last=j; current_p=p
            else:
                if start is not None: omitted_intervals.append([i,start,last,current_p])
                start=last=current_p=None
                residual.append([i,j])
        if start is not None: omitted_intervals.append([i,start,last,current_p])
    certificate=dict(scope='finite closure from H4 and TOP, no EEES',
                     n_global=N_GLOBAL,stages=stages,final_i_cap=I,
                     final_n_cap=N,pre_filter_pairs=legal,
                     top_prime_omitted_pairs=omitted,
                     omitted_intervals=omitted_intervals,
                     residual_pair_count=len(residual),residual_pairs=residual)
    (ROOT/'finite-cover.json').write_text(json.dumps(certificate,indent=2)+'\n')
    # Recoverable checkpoint before doing any residual witness work.
    subprocess.run([sys.executable,str(ROOT.parent/'checkpoint.py')],check=True)
    print('FINITE DOMAIN',json.dumps({k:v for k,v in certificate.items()
                                     if k not in ('stages','omitted_intervals','residual_pairs')}),flush=True)
    print('STAGES',[(c['n_max'],c['index_cap'],len(c['intervals'])) for c in stages],flush=True)
    witnesses=[]
    for i,j in residual:
        n=4*j; C=comb(n,i)
        # Trial factors of the much smaller first binomial, retaining the
        # actual valuation. Primality of p follows from this generated list.
        p_witness=None
        for p in ps:
            if p<i: continue
            if p>n: break
            if C%p: continue
            ej,powers_j=legendre(n,j,p)
            if not ej: continue
            ei,powers_i=legendre(n,i,p)
            assert ei>=1
            p_witness=p
            witnesses.append(dict(i=i,j=j,n=n,p=p,valuation_i=ei,valuation_j=ej,
                                  carry_powers_i=powers_i,carry_powers_j=powers_j,
                                  Cni=str(C)))
            break
        if p_witness is None:
            failure=dict(i=i,j=j,n=n,Cni=str(C),Cnj=str(comb(n,j)))
            (ROOT/'UNRESOLVED.json').write_text(json.dumps(failure,indent=2))
            raise AssertionError(('no witness',i,j))
    out=dict(status='every residual pair has a prime witness',count=len(witnesses),
             p_equals_i_count=sum(r['p']==r['i'] for r in witnesses),
             max_i=max((r['i'] for r in witnesses),default=0),
             max_j=max((r['j'] for r in witnesses),default=0),witnesses=witnesses)
    (ROOT/'witnesses.json').write_text(json.dumps(out,indent=2)+'\n')
    print('WITNESSES',json.dumps({k:v for k,v in out.items() if k!='witnesses'}),flush=True)
if __name__=='__main__': run()
