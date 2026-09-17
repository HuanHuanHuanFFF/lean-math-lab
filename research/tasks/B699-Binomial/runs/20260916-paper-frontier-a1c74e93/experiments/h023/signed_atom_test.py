"""One parent-authorized pool update test, bounded to at most 60 seconds."""
from pathlib import Path
from fractions import Fraction
import json,math,time
from probe_gcd_frontier import pool
from probe_dual import LP,PTS,RS

ROOT=Path(__file__).resolve().parent

def main():
    start=time.time();fs=pool()
    q=json.loads((ROOT/'quartic_followup.json').read_text())
    fs.append(dict(poly=q['poly'],degree=4,orders=q['orders'],origin_order=1,
                   coefficient_norm=206,source='signed-quartic-with-NC7-nonzero-proof'))
    N=len(fs);A=[];b=[]
    for i,p in enumerate(PTS):
        A.append([-f['orders'][i] for f in fs]+[int(sum(p)==r) for r in RS]);b.append(0)
    degrees=[f['degree'] for f in fs]+[0]*len(RS)
    A.extend([degrees,[-z for z in degrees]]);b.extend([1,-1])
    output=[]
    for tau in (Fraction(0),Fraction(2,7)):
        assert time.time()-start<60,'time checkpoint'
        v=LP(A,b,[float(tau*f['origin_order']) for f in fs]+[1]*len(RS)).solve()
        assert v is not None
        fr=[Fraction(float(x)).limit_denominator(10**7) for x in v]
        scale=math.lcm(*(x.denominator for x in fr));vv=[int(x*scale) for x in fr]
        common=math.gcd(*vv);vv=[x//common for x in vv]
        selected=[dict(f,weight=vv[i]) for i,f in enumerate(fs) if vv[i]]
        row_weights=dict(zip(RS,vv[N:]))
        D=sum(f['degree']*f['weight'] for f in selected)
        T=sum(f['origin_order']*f['weight'] for f in selected)
        W=sum(row_weights.values())
        assert all(x>=0 for x in vv)
        assert all(sum(f['orders'][i]*f['weight'] for f in selected)>=row_weights[sum(p)] for i,p in enumerate(PTS))
        norm_exp=sum(f['weight']*f['coefficient_norm'].bit_length() for f in selected)
        def val(x,p):
            e=0
            while x%p==0:x//=p;e+=1
            return e
        costs={p:max(sum(w*val(abs(r-h),p) for r,w in row_weights.items()) for h in (0,2,3)) for p in (2,3,5)}
        costs[7]=max(row_weights.values())
        binary_cost=costs[2]+2*costs[3]+3*costs[5]+3*costs[7]
        rec=dict(tau=str(tau),D=D,W=W,T=T,delta=D-W,row_weights=row_weights,
                 exact_cover=True,signed_atom_used=any(f.get('source')=='signed-quartic-with-NC7-nonzero-proof' for f in selected),
                 factors=len(selected),crude_binary_numerator=W+binary_cost+norm_exp,
                 polynomials=selected)
        if W>D:rec['absolute_height_bit_upper']=(rec['crude_binary_numerator']+W-D-1)//(W-D)
        output.append(rec)
        print(json.dumps({k:v for k,v in rec.items() if k!='polynomials'}),flush=True)
        if W>D:break
    result=dict(elapsed=time.time()-start,pool_size=N,tests=output,
                strict_height_found=any(c['W']>c['D'] for c in output),
                frozen_main_certificate_changed=False,stop_after_this_test=True)
    (ROOT/'signed_atom_test.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps({k:v for k,v in result.items() if k!='tests'}),flush=True)

if __name__=='__main__':main()
