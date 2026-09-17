"""Exact, rank-free existence certificate. Does not construct a large kernel."""
from fractions import Fraction
from math import comb
from pathlib import Path
import hashlib, json, zipfile

ROOT=Path(__file__).resolve().parents[1]

def point_data(mu,weights):
    out=[]
    for r in range(1,9):
        for s in range(r//2+1):
            t=r-s
            m=weights[r-1]-(mu[s] if s<len(mu) else 0)-(mu[t] if t<len(mu) else 0)
            assert m>0
            count=sum(max(0,m-(2*h if s==t else h)) for h in range(m))
            out.append({'r':r,'s':s,'m':m,'count':count})
    return out

def make_certificate():
    D=550; L=386;mu=[27,23,19,13];w=[55,55,137,110,91,78,68,61]
    nodes=point_data(mu,w)
    rows=[]
    for r in range(1,9):
        rows.append({'r':r,'count':sum(p['count'] for p in nodes if p['r']==r),
                     'height_bits':((r+1)**L).bit_length()})
    R=sum(r['count'] for r in rows)
    C=sum(L-2*b+1 for b in range(L//2+1))
    K=sum(r['count']*(r['height_bits']+17) for r in rows)
    families=[{'dimension':d,'coefficient_bits':K//(C-R-d+1)+1} for d in [1,2,46]]
    input_file=ROOT/'sources/H012-joint-original.zip'
    return {'degree':D,'G_weighted_degree':L,'prefactor_multiplicities':mu,'row_weights':w,
            'nodes':nodes,'rows':rows,'n_rows':R,'n_columns':C,'dimension_gap':C-R,
            'image_height_sum':K,'families':families,'frozen_PC':[463,5000],
            'frozen_entry_exponent':14000001,'value_cost_bits':6072,
            'target_cap':193,'raw_int64_bytes':R*C*8,
            'input_sha256':hashlib.sha256(input_file.read_bytes()).hexdigest(),
            'execution_boundary':'Existence and height certificate; no coefficients/rank/resultant of this matrix computed.'}

def verify(data,check_source=True):
    D=data['degree'];L=data['G_weighted_degree'];mu=data['prefactor_multiplicities'];w=data['row_weights']
    assert D==2*sum(mu)+L
    assert len(mu)==4 and all(isinstance(x,int) and x>=0 for x in mu)
    assert len(w)==8 and all(isinstance(x,int) and x>0 for x in w)
    # Separate loop and closed-form counts.
    computed=point_data(mu,w)
    assert sorted(data['nodes'],key=lambda x:(x['r'],x['s']))==computed
    coverage=0
    for p in computed:
        r,s,m=p['r'],p['s'],p['m'];t=r-s
        alternate=(m+1)**2//4 if s==t else m*(m+1)//2
        assert alternate==p['count']
        coverage+=1 if s==t else 2
        assert s*t+1 <= (r+1)**2
        if s==t: assert s*s+s+1 <= (r+1)**2
    assert coverage==44
    bs=[(a,b) for b in range(L//2+1) for a in range(L-2*b+1)]
    C=len(bs)
    assert len(set(bs))==C and C==(L+2)**2//4
    assert all(a>=0 and b>=0 and a+2*b<=L for a,b in bs)
    assert C<2**16
    rows=sorted(data['rows'],key=lambda x:x['r'])
    assert [r['r'] for r in rows]==list(range(1,9))
    for row in rows:
        r=row['r']; assert row['count']==sum(p['count'] for p in computed if p['r']==r)
        h=row['height_bits']; val=(r+1)**L
        assert 2**(h-1)<=val<2**h
    R=sum(row['count'] for row in rows)
    K=sum(row['count']*(row['height_bits']+17) for row in rows)
    assert [R,C,C-R,K]==[data['n_rows'],data['n_columns'],data['dimension_gap'],data['image_height_sum']]
    assert C>R and data['raw_int64_bytes']==R*C*8
    assert data['frozen_PC']==[463,5000] # source value, not a newly verified Padé theorem
    assert data['frozen_entry_exponent']==14000001
    rho=Fraction(*data['frozen_PC'])
    z=min(w[:2]);W=sum(w[2:]);delta=Fraction(W)+z*rho-D
    assert delta>0
    cost=16+11*W+(z*(1+rho)).__ceil__()
    assert 1680<2**11 and data['value_cost_bits']>=cost
    assert data['target_cap']==L//2
    results=[]
    for fam in data['families']:
        d=fam['dimension'];b=fam['coefficient_bits'];gap=C-R-d+1
        assert d>=1 and gap>0 and b*gap>K
        bound=Fraction(b+data['value_cost_bits'],1)/delta
        assert bound<data['frozen_entry_exponent']
        assert b+(L+1).bit_length()<data['frozen_entry_exponent']
        results.append({'dimension':d,'coefficient_bits':b,'pigeonhole_margin':b*gap-K,
                        'nonzero_height_ceiling':bound.__ceil__()})
    assert sorted(r['dimension'] for r in results)==[1,2,46]
    if check_source:
        got=hashlib.sha256((ROOT/'sources/H012-joint-original.zip').read_bytes()).hexdigest()
        assert got==data['input_sha256']
        manifest=json.loads((ROOT/'evidence/source_manifest.json').read_text())
        assert manifest['input_sha256']==got
        with zipfile.ZipFile(ROOT/manifest['input_archive']) as zf:
            for item in manifest['copies']:
                raw=(ROOT/item['stored_path']).read_bytes()
                assert raw==zf.read(item['archive_member'])
                assert hashlib.sha256(raw).hexdigest()==item['sha256']
    return {'status':'PASS_RANK_FREE_EXISTENCE_PARAMETERS','matrix_shape':[R,C],
            'conditions':R,'monomials':C,'grid_points':coverage,'symmetric_nodes':len(computed),
            'degree_surplus':[delta.numerator,delta.denominator],'image_height_sum':K,
            'families':results,'target_cap':data['target_cap'],
            'coefficients_recovered':False,'matrix_materialized':False,'resultant_checked':False}

if __name__=='__main__':
    c=make_certificate()
    (ROOT/'evidence/small_kernel_certificate.json').write_text(json.dumps(c,indent=2))
    print(json.dumps(verify(c),indent=2))
