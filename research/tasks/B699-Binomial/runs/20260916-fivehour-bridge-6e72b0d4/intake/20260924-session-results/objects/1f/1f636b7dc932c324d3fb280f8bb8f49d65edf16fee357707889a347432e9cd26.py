"""Certificate consumer independently rebuilding source orders from a divisor.
Uses integer arithmetic only.  This is a same-author cross-check, not Lean.
"""
from pathlib import Path
import json,sys
ROOT=Path(__file__).resolve().parents[1]
OFF={3:(77,74),4:(67,57),5:(51,54,46),6:(40,43,48),7:(31,34,39,45),8:(25,28,33,39)}
W={4:56,6:41,8:52}

def reconstruct(h,v,exponents):
    e=h-sum(exponents)
    off={};weight={}
    for r in range(3,9):
        off[r]=[]
        for s,a in enumerate(OFF[r]):
            # The two lines are distinct for an off-diagonal point.
            assert s!=r-s
            off[r].append(max(a-v[r-3]-exponents[s]-exponents[r-s],0))
        if r in W:weight[r]=max(W[r]-v[r-3]-2*exponents[r//2],0)
    return e,off,weight

def loads(off,weight):
    # This implementation evaluates incidence via t*(r-t)=s*(r-s).
    result=[]
    for t in range(9):
        value=0
        for r in range(3,9):
            for s,m in enumerate(off[r]):
                if t*(r-t)==s*(r-s):value+=m
            if r==2*t:value+=weight[r]
        result.append(value)
    return result

def verify(out):
    raw=json.loads((ROOT/'inputs/frozen_signatures.json').read_text())
    data=json.loads((out/'source_descent_all347.json').read_text());assert len(data)==347
    passed=[];killed=[]
    for a in data:
        idx=a['index'];st=a['state'];z=a['descent'];exponents=[0]*9
        for s in z['steps']:
            e,off,w=reconstruct(st['h'],st['v'],exponents)
            assert e==s['e_before'] and 2*e==s['restriction_degree_upper_bound']
            n=loads(off,w)[s['t']]
            assert n==s['forced_zero_order'] and n>2*e
            assert n-2*e==s['strict_excess']
            exponents[s['t']]+=1
        assert exponents==z['factors']
        e,off,w=reconstruct(st['h'],st['v'],exponents)
        assert e==z['residual_e']
        row=[sum(off[r])+(w.get(r,0)+1)//2 for r in range(3,9)]
        assert row==z['row_degree_lower_bounds']
        if z['status']=='row_degree_contradiction':
            assert any(v>e for v in row)
            assert a['elimination']=='forced_line_conflicts_with_specialization_degree'
            killed.append(idx);continue
        assert all(v<=e for v in row)
        cap=[2*e-2*sum(off[r])-w.get(r,0) for r in range(3,9)]
        assert cap==z['capacity'] and loads(off,w)==z['line_loads']
        assert all(x<=2*e for x in z['line_loads'])
        if 'quotient_ledger' in a:
            q=a['quotient_ledger'];assert q['capacity']==cap
            active=[s for s in raw if all(s[1][i]<=cap[i] for i in range(6))]
            assert len(active)==q['active_named_signatures']==99
            alpha=q['dual_alpha'];price=q['dual_prices'];assert all(p>=0 for p in price)
            margins=[s[0]+sum(c*p for c,p in zip(s[1],price))-alpha for s in active]
            assert margins==q['nonnegative_dual_margins'] and min(margins)>=0
            bnd=8*alpha-sum(p*c for p,c in zip(price,cap))
            assert bnd==q['dual_bound']==q['minimum_eight_degree']==96
            assert bnd>e and e==70
            witness=q['minimum_witness'];assert len(witness)==8
            assert all(s in raw for s in witness)
            used=[sum(s[1][i] for s in witness) for i in range(6)]
            assert all(x<=y for x,y in zip(used,cap))
            assert sum(s[0] for s in witness)==bnd
            killed.append(idx)
        else:passed.append(idx)
    assert killed==[875,931,934,1019]
    final=[int(l.split()[0]) for l in (out/'final_E0_frontier.tsv').read_text().splitlines()[1:]]
    assert final==passed and len(passed)==343
    assert min(a['state']['h'] for a in data if a['index'] in set(passed))==73
    # A mutation that raises alpha by one is rejected by the tight S5 row.
    s5=next(s for s in raw if s[2]=='S5')
    assert s5[0]+14*s5[1][2]+8*sum(s5[1][3:])<41
    return dict(status='PASS_INDEPENDENT_INTEGER_CERTIFICATE_CONSUMER',input_states=347,
                consumed_forced_steps=5,row_contradictions=3,dual_exclusions=1,
                consumed_named_dual_inequalities=99,remaining=343,minimum_h=73)

if __name__=='__main__':
    if len(sys.argv)!=2:raise SystemExit('usage: check_certificates.py OUTPUT_DIRECTORY')
    print(json.dumps(verify(Path(sys.argv[1])),sort_keys=True))
