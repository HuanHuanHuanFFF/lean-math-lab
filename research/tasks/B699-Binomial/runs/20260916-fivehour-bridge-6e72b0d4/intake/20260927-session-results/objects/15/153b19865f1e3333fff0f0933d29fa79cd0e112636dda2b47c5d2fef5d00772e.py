"""Regenerate NEW certificates in a working copy only. No old scans are called."""
from pathlib import Path
import json, math, time
from core import *
from algebra import verify_algebra
ROOT=Path(__file__).resolve().parents[1]
def dump(name,obj):
    (ROOT/'certificates'/name).write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n')

def full_row():
    P,Q=263,809;n=P*Q+1;stats={'p_fail':0,'q_fail_after_p':0,'both_pass':0}
    originals=[]
    for j in range(4,n//2+1):
        lp=lucas(n,j,P);lq=lucas(n,j,Q)
        assert lp==(vbinom(n,j,P)==0) and lq==(vbinom(n,j,Q)==0)
        if not lp:stats['p_fail']+=1
        elif not lq:stats['q_fail_after_p']+=1
        else:
            stats['both_pass']+=1;originals.append(j)
            assert vbinom(n,j,61)>0 and vbinom(n,3,61)>0
    return {'P':P,'Q':Q,'n':n,'j_count':n//2-3,'counts':stats,'originals':originals,
        'method':'entire half-row, two full Lucas tests AND Legendre valuations; witness 61 for the original CRT candidate'}

def direct_checks():
    n=212768;records=[]
    for j in list(range(4,132))+[74429]:
        c=math.comb(n,j)
        vals={str(p):vp(c,p) for p in [3,61,263,809]}
        assert all(v==vbinom(n,j,int(p)) for p,v in vals.items())
        records.append({'n':n,'j':j,'valuations':vals})
    return {'count':len(records),'method':'actual arbitrary-precision math.comb followed by exact division','rows':records}

def main():
    t=time.perf_counter();dump('algebra.json',verify_algebra())
    ex,data=exhaustion(1000000,'bit');dump('hensel_exhaustion.json',ex)
    (ROOT/'certificates/hensel_ledger.csv').write_bytes(data)
    params=[(7,13,1,61),(15,22,1,179453),(19,29,1,3),(19,29,-1,7),
        (27,44,-1,3115769),(31,50,1,166631),(31,50,-1,3),
        (20059,38779,1,7),(5147,8364,1,43)]
    rr=[actual_record(*x) for x in params]
    dump('actual_rows.json',{'rows':rr,'count':len(rr),
        'nontrivial_power_count':sum(max(x['P_power'][1],x['Q_power'][1])>1 for x in rr),
        'two_lucas_pass':sum(x['p_lucas'] and x['q_lucas'] for x in rr),
        'old_EDGE3_rows':0})
    dump('full_row.json',full_row());dump('binomial_checks.json',direct_checks())
    dump('weak_hensel_family.json',{'claim':'unbounded actual v2(n) in an integer weak family, BUT all violate original T0; prime powers and full Lucas not guaranteed',
        'm_range':[3,64],'rows':[weak_family(m) for m in range(3,65)]})
    res=[]
    for z in [7,11,15,23,31,47,103,1007]:
        w=reconstruct(z,2*z-4,1);A=3*z-4;B=6*z-5
        assert w['Q']==A*B and math.gcd(A,B)==1 and A>1 and B>1
        assert w['T0_j_remainder']!=0
        res.append({k:w[k] for k in ['z','a','P','Q','n','j','T0','T0_j_remainder']}|
                    {'Q_coprime_factors':[A,B],'not_prime_power':True})
    dump('resonance_audit.json',{'actual_prime_power_domain':'EMPTY; do not count as new NC deletion','rows':res})
    weak=[]
    fact=[({'3':1,'5':2,'7':1,'41':2},{'43':1,'229':1,'269':1}),
          ({'7':2,'193':1,'3992221':1},{'113263549691':1})]
    for c,(p,q) in zip(ex['candidates'],fact):weak.append(c|{'P_factorization':p,'Q_factorization':q})
    dump('finite_weak_candidates.json',{'rows':weak,'no_actual_NC':True})
    log={'status':'PASS','new_hensel_limit':1000000,'new_hensel_z_values':ex['z_values'],
      'weak_candidates':ex['candidate_count'],'T0_pass':ex['T0_pass'],
      'elapsed_seconds':time.perf_counter()-t,'old_scans_called':False}
    (ROOT/'logs/discovery.json').write_text(json.dumps(log,indent=2)+'\n');print(json.dumps(log))
if __name__=='__main__':main()
