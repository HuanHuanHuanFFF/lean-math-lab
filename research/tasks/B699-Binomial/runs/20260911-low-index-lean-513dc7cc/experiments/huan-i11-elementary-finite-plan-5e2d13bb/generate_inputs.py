from pathlib import Path
from fractions import Fraction as F
from math import factorial, gcd
from datetime import datetime,timezone
import hashlib,importlib.util,json,sys,time
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent

def load(name,path):
    spec=importlib.util.spec_from_file_location(name,path)
    mod=importlib.util.module_from_spec(spec);sys.modules[name]=mod;spec.loader.exec_module(mod)
    return mod

ri=load('rational_intervals',RUN/'experiments/huan-i18-adoption-5e2d13bb/code/vendor/rational_intervals.py')
gen=load('i11_growth_generator',RUN/'experiments/huan-pade-growth-certificates-5e2d13bb/generate_certificates.py')
check=load('i11_growth_checker',RUN/'experiments/huan-pade-growth-certificates-5e2d13bb/check_certificates.py')
steps=load('i11_D_steps',OUT/'check_D_steps.py')
consumer=load('i11_frozen_consumers',RUN/'experiments/huan-G-rational-weight-test-5e2d13bb/check_rational_weights.py')
gen.SLACK=F(1,10**5)

def compact(cert):
    old=F(cert['lambda']);num=ri.ceilq(old*2**96);lam=F(num,2**96)
    cert.update({'previous_lambda':str(old),'lambda':str(lam),'lambda_grid_bits':96,'lambda_grid_numerator':str(num)})
    for leaf in cert['leaves']:leaf['strict_gap']=str(F(leaf['strict_gap'])+lam-old)
    return cert

def F_certificate(c,d):
    a,b=c+d,c-d;beta=gen.beta_base(c,d)
    U=steps.prod([[a+j,a] for j in range(1,a)])
    W=steps.prod([[d+j,d] for j in range(1,d)]*2+[[b+j,b] for j in range(1,b)])
    residual=steps.sub(steps.scale(steps.mul(steps.prod([[2,1]]*3),W),beta.numerator*b*d*d),
                       steps.scale(steps.mul([3,1],U),a*beta.denominator))
    assert all(v>0 for v in residual)
    ks=[gen.prefactor_K(c,d,delta) for delta in (0,1)]
    assert all(0<K<F(1,2) for K in ks)
    return {'c':c,'d':d,'beta':str(beta),'K':[str(k) for k in ks],
            'certificate_variable':'x=m-1','positive_certificate':steps.encode(residual),
            'status':'known accepted pair' if (c,d) in {(5,4),(5,3)} else 'new exact certificate, Lean pending'}

def main():
    started=time.perf_counter()
    source=RUN/'experiments/huan-G-rational-ratio-search-5e2d13bb/joint-candidates.json'
    candidate=next(r for r in json.loads(source.read_text())['candidates'] if r['i']==11)
    dest=OUT/'qe-certificates';dest.mkdir(exist_ok=True)
    rows=[]
    for idx,row in enumerate(candidate['rows']):
        c,d=row['c'],row['d'];z=F(row['D0'],row['a']*row['p']**row['k0'])
        qc=compact(gen.certificate(c,d,z,'Q'));ec=compact(gen.certificate(c,d,z,'E'))
        qcheck=check.check_core(qc,c,d,z,'Q');echeck=check.check_core(ec,c,d,z,'E')
        Fcert=F_certificate(c,d)
        constants=[]
        for delta in (0,1):
            K=gen.prefactor_K(c,d,delta)
            jq=gen.weight_moment(c,d,z,'Q',delta);je=gen.weight_moment(c,d,z,'E',delta)
            assert jq==check.weight_mass('Q',c,d,z,delta)
            assert je==check.weight_mass('E',c,d,z,delta)
            CQ=K*jq/F(qc['lambda']);CE=K*je/F(ec['lambda'])
            assert 0<CQ<1 and 0<CE<1
            constants.append({'delta':delta,'K':str(K),'JQ':str(jq),'JE':str(je),'CQ':str(CQ),'CE':str(CE)})
        record={'row_index':idx,'seed_row':row,'z':str(z),'Q':qc,'E':ec,'independent_checks':{'Q':qcheck,'E':echeck},
                'factorial_certificate':Fcert,'constants':constants,
                'max_CQ':str(max(F(x['CQ']) for x in constants)),'max_CE':str(max(F(x['CE']) for x in constants)),
                'status':'exact local certificates and constants; new Lean instances pending','worker_lean_invocations':0}
        path=dest/f'row-{idx:02d}.json';path.write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
        summary={'index':idx,'c':c,'d':d,'path':str(path.relative_to(OUT)),'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
                 'leaves_Q':len(qc['leaves']),'leaves_E':len(ec['leaves']),
                 'CQ_display':float(F(record['max_CQ'])),'CE_display':float(F(record['max_CE'])),
                 'factorial_status':Fcert['status']}
        rows.append(summary);print(json.dumps(summary),flush=True)
    graphs=[]
    for reduction in range(8):
        cuts=[dict(row,weights=[row['wp']-reduction,row['wq']-reduction]) for row in candidate['rows']]
        S,mask,x=min((sum(x),m,x) for m,x in consumer.corners(candidate['primes'],cuts,'weights'))
        delta=11*(7000+S)-84000
        graphs.append({'uniform_reduction':reduction,'S':S,'Delta':delta,'witness':{'mask':mask,'x':dict(zip(candidate['primes'],x))}})
    peak=gen.peak_bytes();assert peak is not None and peak<200_000_000
    result={'utc':datetime.now(timezone.utc).isoformat(),'rows':rows,'weight_reduction_graphs':graphs,
            'relative_kernel_slack':str(gen.SLACK),'lambda_grid_bits':96,'peak_working_set_bytes':peak,
            'seconds':time.perf_counter()-started,'worker_lean_invocations':0}
    (OUT/'finite-inputs.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'graphs':graphs,'peak_bytes':peak,'seconds':result['seconds']}),flush=True)

if __name__=='__main__':main()
