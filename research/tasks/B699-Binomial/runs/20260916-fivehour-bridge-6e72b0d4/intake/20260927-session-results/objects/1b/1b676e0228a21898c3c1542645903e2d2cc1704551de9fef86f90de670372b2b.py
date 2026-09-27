"""Optional discovery uses SymPy for factor search; receiver is standard library.
Every selected prime is certified by a complete-factorization order criterion.
"""
import csv,json,math,time,sys
from pathlib import Path
import sympy as sp
from arithmetic import v_p,vp_binom
ROOT=Path(__file__).resolve().parents[1]
CERT={2:{'g':1,'factors':[]}}
FACT={}

def factor(n):
    if n not in FACT:FACT[n]=sorted((int(p),int(e)) for p,e in sp.factorint(n).items())
    return FACT[n]

def certify(p):
    if p in CERT:return
    fac=factor(p-1)
    for r,e in fac:certify(r)
    for g in range(2,p):
        if pow(g,p-1,p)==1 and all(math.gcd(pow(g,(p-1)//r,p)-1,p)==1 for r,e in fac):break
    else:raise AssertionError('no full-order certificate')
    CERT[p]={'g':g,'factors':fac}

def run():
    t=time.perf_counter()
    actual=json.loads((ROOT.parent/'k6_work'/'real_rows.json').read_text())
    fields=['eps','z','a','n','j','source','prime','exponent','modulus','residue','v_binom3','v_binomj']
    records=[]
    for r in actual:
        for src in (0,2):
            source=r['n']-src
            if src==2:remain=r['T2']//math.gcd(r['T2'],r['Lambda'])
            else:remain=r['T0']//math.gcd(r['T0'],r['j'])
            assert remain>1
            prime=factor(remain)[0][0];certify(prime)
            E=v_p(source,prime);modulus=prime**E;residue=r['j']%modulus
            assert prime>=3 and (prime!=3 or E>=2)
            assert residue not in range(src+1)
            v3=vp_binom(r['n'],3,prime);vj=vp_binom(r['n'],r['j'],prime)
            assert v3>0 and vj>0
            records.append([r['eps'],r['z'],r['a'],r['n'],r['j'],src,prime,E,modulus,residue,v3,vj])
    with (ROOT/'certificates'/'actual-source-witnesses.csv').open('w',newline='') as f:
        w=csv.writer(f,lineterminator='\n');w.writerow(fields);w.writerows(records)
    (ROOT/'certificates'/'prime-certificates.json').write_text(json.dumps({str(p):CERT[p] for p in sorted(CERT)},indent=2)+'\n')
    # All 33 difficult size-pass models get exact P,Q factorizations; no claims of NC.
    exc=json.loads((ROOT/'certificates'/'size-pass-audit.json').read_text())
    for r in exc:
        r['P_factors']=factor(r['P']);r['Q_factors']=factor(r['Q']);r['F_factors']=factor(r['n']-2)
        for fac in [r['P_factors'],r['Q_factors'],r['F_factors']]:
            for p,e in fac:certify(p)
        r['real_distinct_powers']=len(r['P_factors'])==len(r['Q_factors'])==1 and r['P_factors'][0][0]!=r['Q_factors'][0][0]
    (ROOT/'certificates'/'size-pass-audit.json').write_text(json.dumps(exc,indent=2)+'\n')
    (ROOT/'certificates'/'prime-certificates.json').write_text(json.dumps({str(p):CERT[p] for p in sorted(CERT)},indent=2)+'\n')
    log={'status':'PASS','actual_rows':len(actual),'source_witnesses':len(records),'sources':[0,2],
         'complete_order_prime_certificates':len(CERT),'max_witness_prime':max(x[6] for x in records),
         'source2_full_3power_examples':sum(x[5]==2 and x[6]==3 for x in records),
         'seconds':time.perf_counter()-t,
         'discovery_only_dependency':'SymPy factor search; offline receiver checks certificates deterministically'}
    (ROOT/'logs'/'witness-discovery.json').write_text(json.dumps(log,indent=2)+'\n')
    print(json.dumps(log,indent=2))

if __name__=='__main__':run()
