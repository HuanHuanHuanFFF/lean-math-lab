"""Generate only new k6 regression data, not any previous ledger."""
import csv,hashlib,json,math,time
from pathlib import Path
import sympy as sp
from arithmetic import lucas,vp_binom,v_p
ROOT=Path(__file__).resolve().parents[1]

def integer_hash(x):return hashlib.sha256(x.to_bytes((x.bit_length()+7)//8,'big')).hexdigest()

def run():
    start=time.perf_counter();n=199644;P=181;Q=1103;candidate=35296
    F3=math.comb(n,3);fac=sorted([[int(p),int(e)] for p,e in sp.factorint(F3).items() if p>=3])
    # Sources here are tiny; primality independently checked by the receiver.
    path=ROOT/'certificates'/'complete-small-row.csv'
    freq={};pairs=0
    with path.open('w',newline='') as f:
        w=csv.writer(f,lineterminator='\n');w.writerow(['j','prime','v_binom3','v_binomj'])
        for j in range(4,n//2+1):
            for p,e in fac:
                l=lucas(n,j,p);v=vp_binom(n,j,p)
                assert l==(v==0)
                if not l:
                    assert v>0
                    w.writerow([j,p,e,v]);freq[p]=freq.get(p,0)+1;pairs+=1
                    break
            else:raise AssertionError('regression common-prime failure')
    picks=sorted(set(list(range(4,20))+[31,47,64,100,1000,candidate,n//2]))
    direct=[]
    for j in picks:
        val=math.comb(n,j)
        vals=[[p,v_p(val,p),vp_binom(n,j,p)] for p,e in fac]
        assert all(a==b for p,a,b in vals)
        assert any(a>0 for p,a,b in vals)
        direct.append({'n':n,'j':j,'binomial_bytes_sha256':integer_hash(val),'valuations':vals})
    obj={'n':n,'P':P,'Q':Q,'candidate':candidate,'odd_binom3_factors':fac,
         'complete_pairs':pairs,'witness_counts':freq,'small_row_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
         'direct_binomial':direct,'boundary':'Complete for this one small regression row only, not the terminal proof.'}
    (ROOT/'certificates'/'binomial-regression.json').write_text(json.dumps(obj,indent=2)+'\n')
    (ROOT/'logs'/'regression-generation.json').write_text(json.dumps({'status':'PASS','pairs':pairs,'direct_pairs':len(direct),'seconds':time.perf_counter()-start},indent=2)+'\n')
    print(json.dumps({'pairs':pairs,'direct_pairs':len(direct),'odd_factors':fac,'seconds':time.perf_counter()-start},indent=2))
if __name__=='__main__':run()
