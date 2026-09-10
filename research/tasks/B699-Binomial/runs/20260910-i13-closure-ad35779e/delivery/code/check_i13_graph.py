"""Independent exhaustive orientation check, height constants and cube bridge.
No branch-and-bound solver, candidate generator or floating arithmetic imported.
"""
from pathlib import Path
from itertools import product, combinations
from math import factorial, prod
import json
if not __debug__:raise RuntimeError('Do not run proof checks with -O/-OO')
ROOT=Path(__file__).resolve().parents[1]
PS=[2,3,5,7,11]
def check(data):
    assert data['i']==13 and data['height_n_bits']==8192 and data['height_Y_bits']==8191
    cuts=data['cuts']; assert len(cuts)==11
    for row in cuts:
        assert row['p'] in PS and row['q'] in PS and row['p']!=row['q']
        assert 0<row['wp']<1000 and 0<row['wq']<1000
    vals=[]; col={pair:100000 for pair in combinations(range(5),2)}
    for signs in product(range(2),repeat=len(cuts)):
        z=[0]*5
        for x,s in zip(cuts,signs):
            p,w=(x['p'],x['wp']) if s==0 else (x['q'],x['wq'])
            ix=PS.index(p); z[ix]=max(z[ix],w)
        value=sum(w*x for w,x in zip(range(16,11,-1),sorted(z)))
        vals.append((value,sum(z),z))
        for a,b in col:
            col[a,b]=min(col[a,b],sum(z)+max(0,1000-z[a]-z[b]))
    tau=min(v[0] for v in vals);sigma=min(v[1] for v in vals);chi=min(col.values())
    assert tau==12183 and sigma==934 and chi==1309
    f=factorial(13); assert f<(1<<33)
    S=sum(range(4,17));T=sum(range(12,17));W=16
    gamma=1000*(S-8*9-T)+tau
    assert gamma==183
    pos_RHS_upper_bits=1000*W*33+1000*S+tau
    assert 8192*gamma>pos_RHS_upper_bits
    lam=14;E=126;t=5
    K=(1<<90)*prod(factorial(h) for h in range(1,10))**2*prod(factorial(h) for h in range(1,9))
    dc=1000*(lam*(13-t)-E)+chi*lam
    col_RHS_upper_bits=1000*lam*33+(1000+chi)*lam
    assert dc==4326 and 8192*dc>col_RHS_upper_bits
    # Old 3/4 threshold would have zero, not positive, exponent at i=13.
    oldJ=4*lam*13-lam*(3*t+1)-4*E
    assert oldJ==0
    # New threshold 7/10: at most one large small-prime part implies U^10<=n^(7t+3).
    J=10*lam*13-lam*(7*t+3)-10*E
    assert J==28
    H=10
    while K**10*(1<<(H*J)) <= (2*f)**(10*lam): H+=1
    # Cube-small cofactors: n^(.9)<=n/2 once n>=2^10.
    assert H>=10 and (1<<H)>=13*12
    cube={'threshold_n_bits':H,'small_part_exponent':[7,10],'net_exponent':J,
          'certificate_lhs_bits':(K**10*(1<<(H*J))).bit_length(),
          'certificate_rhs_bits':((2*f)**(10*lam)).bit_length()}
    return {'status':'PASS','orientations_checked':len(vals),'weighted_min':tau,'scalar_min':sigma,
            'collision_min':chi,'collision_pairs':[{'p':PS[a],'q':PS[b],'min':m} for (a,b),m in col.items()],
            'weighted_attainer':min(vals),'distinct_net_exponent':gamma,
            'distinct_height_bit_margin':8192*gamma-pos_RHS_upper_bits,
            'collision_net_exponent':dc,'collision_height_bit_margin':8192*dc-col_RHS_upper_bits,
            'source_Y_bits':8191,'height_n_bits':8192,'old_three_quarters_net_exponent':oldJ,'cube_bridge':cube,
            'parameters':{'i':13,'r':4,'s':9,'lambda':lam,'E':E,'K':str(K)}}
if __name__=='__main__':
    data=json.loads((ROOT/'input/i13_cuts.json').read_text());out=check(data)
    (ROOT/'outputs/i13_graph_check.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
