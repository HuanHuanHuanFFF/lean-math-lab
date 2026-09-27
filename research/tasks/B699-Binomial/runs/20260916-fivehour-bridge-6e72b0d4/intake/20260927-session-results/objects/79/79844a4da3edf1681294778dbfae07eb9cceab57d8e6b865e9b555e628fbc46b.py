"""Generate this round's ledger; never run in a frozen extraction."""
import csv,hashlib,json,time
from pathlib import Path
from collections import Counter
from math import isqrt
from enumerate_a import rows as rows_a
from enumerate_b import rows as rows_b
from schema import FIELDS
from arithmetic import primes_up_to,prime_power,lucas,vp_binom

ROOT=Path(__file__).resolve().parents[1]

def run():
    (ROOT.parent/'k6_work').mkdir(parents=True,exist_ok=True)
    t=time.perf_counter(); summaries={}; exception_rows=[]
    for eps in (-1,1):
        dest=ROOT/'certificates'/f'k6-e{eps}.csv'
        c=Counter(); maxima={}
        with dest.open('w',newline='',encoding='ascii') as f:
            writer=csv.writer(f,lineterminator='\n');writer.writerow(FIELDS)
            for row in rows_a(eps):
                writer.writerow(row);r=dict(zip(FIELDS,row));c['total']+=1
                c['zero_slots']+=bool(r['zero_slots'])
                c['size_fail']+=r['T2']>r['Lambda']
                c['divisibility_fail_after_size']+=r['T2']<=r['Lambda'] and r['T2_remainder']!=0
                c['T2_pass']+=r['T2_remainder']==0
                c['T0_pass']+=r['T0_remainder']==0
                c['both_pass']+=r['T2_remainder']==0 and r['T0_remainder']==0
                if r['T2']<=r['Lambda']:exception_rows.append(r)
                for key in ['P','Q','n','j','a','z','alpha']:
                    maxima[key]=max(maxima.get(key,0),r[key])
        summaries[str(eps)]={'counts':dict(c),'maxima':maxima,'sha256':hashlib.sha256(dest.read_bytes()).hexdigest()}
        # Independent second stream in scratch, byte equality and coverage.
        tmp=ROOT.parent/'k6_work'/f'algorithm-b-e{eps}.csv'
        with tmp.open('w',newline='',encoding='ascii') as f:
            writer=csv.writer(f,lineterminator='\n');writer.writerow(FIELDS)
            writer.writerows(rows_b(eps))
        assert dest.read_bytes()==tmp.read_bytes()
        summaries[str(eps)]['independent_bytes_equal']=True
    elapsed_enum=time.perf_counter()-t
    maxq=max(x['maxima']['Q'] for x in summaries.values())
    primes=primes_up_to(isqrt(maxq)+50)
    fields=['eps','z','a','P','Q','p','rho','P_first_prime','P_cofactor',
            'q','sigma','Q_first_prime','Q_cofactor','real_distinct_powers',
            'lucas_p','lucas_q','valuation_p','valuation_q']
    cache={};audit_counts={};real_rows=[]
    dest=ROOT/'certificates'/'prime-power-audit.csv'
    with dest.open('w',newline='',encoding='ascii') as f:
        w=csv.writer(f,lineterminator='\n');w.writerow(fields)
        for eps in (-1,1):
            c=Counter()
            for row in rows_a(eps):
                r=dict(zip(FIELDS,row));P,Q=r['P'],r['Q']
                for x in (P,Q):
                    if x not in cache:cache[x]=prime_power(x,primes)
                p,rho,divp,cp=cache[P];q,sigma,divq,cq=cache[Q]
                real=bool(p and q and p!=q)
                lp=lq=vp=vq=-1
                c['records']+=1;c['P_single_base']+=bool(p);c['Q_single_base']+=bool(q)
                if real:
                    lp=int(lucas(r['n'],r['j'],p));lq=int(lucas(r['n'],r['j'],q))
                    vp=vp_binom(r['n'],r['j'],p);vq=vp_binom(r['n'],r['j'],q)
                    assert lp==(vp==0) and lq==(vq==0)
                    c['real_distinct_powers']+=1
                    c['nontrivial_power']+=rho>1 or sigma>1
                    c['both_Lucas_pass']+=bool(lp and lq)
                    c['both_Lucas_pass_nontrivial']+=bool(lp and lq and (rho>1 or sigma>1))
                    real_rows.append(dict(r,p=p,rho=rho,q=q,sigma=sigma,lucas_p=lp,lucas_q=lq))
                w.writerow([eps,r['z'],r['a'],P,Q,p,rho,divp,cp,q,sigma,divq,cq,int(real),lp,lq,vp,vq])
            audit_counts[str(eps)]=dict(c)
    summary={'schema_version':1,'enumeration':summaries,'prime_power_audit':audit_counts,
             'prime_power_audit_sha256':hashlib.sha256(dest.read_bytes()).hexdigest(),
             'largest_Q':maxq,'prime_sieve_bound':isqrt(maxq)+50,
             'zero_slots_total':sum(v['counts']['zero_slots'] for v in summaries.values()),
             'comparison':'full ASCII CSV equality, A: (z,a), B: (d,P)',
             'claims':'Only a necessary-condition superset, not historical NC survivors.'}
    (ROOT/'certificates'/'terminal-summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    (ROOT/'certificates'/'size-pass-audit.json').write_text(json.dumps(exception_rows,indent=2)+'\n')
    (ROOT.parent/'k6_work'/'real_rows.json').write_text(json.dumps(real_rows)+'\n')
    log={'status':'PASS','enumeration_seconds':elapsed_enum,'total_seconds':time.perf_counter()-t,
         'counts':{e:summaries[e]['counts'] for e in summaries},'prime_power_audit':audit_counts,
         'not_executed':'old k5/k4/k3 and Hensel ledgers; repository writes'}
    (ROOT/'logs'/'discovery.json').write_text(json.dumps(log,indent=2)+'\n')
    print(json.dumps(log,indent=2))

if __name__=='__main__':run()
