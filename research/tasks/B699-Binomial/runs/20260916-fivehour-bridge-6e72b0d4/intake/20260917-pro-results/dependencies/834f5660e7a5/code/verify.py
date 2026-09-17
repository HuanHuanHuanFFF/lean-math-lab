"""Receiving: standard-library exact arithmetic, complete finite classification.
No old verification script, symbolic factorization, floating point, or n scan.
"""
from pathlib import Path
from fractions import Fraction as Q
from itertools import combinations,product
from math import prod,gcd
import json,time
from exact_poly import *
from classification import ROWS,VALUES,classify,graph_table
ROOT=Path(__file__).resolve().parents[1]

def require(c,msg):
    if not c:raise ValueError(msg)

def verify(data,complete=True):
    t=time.perf_counter();cnt={}
    expected={'entry':14000001,'factor_log_height':1290000,'weighted_degree':305,'coefficient_eval_bits':915,'cost_bound':1680,'interpolation_denominator':120,'linear_norm_bits':20,'bad_value_exponent':10,'triple_height_bits':12909203,'pc_power':5000,'pc_n_power':463,'pc_two_power':5463,'small_product_bits':32,'finite_curve_height_bits':358,'minimum_weighted_degree':5,'component_bound':61}
    require(data.get('schema')=='B699-i9-mixed-quartic-v1','schema')
    require(data['constants']==expected,'constants')
    require(305//5==61 and 5*62>305, 'component-count consequence')
    # Uniform coefficient-height and interpolation inequalities.
    require(3*305==915,'evaluation bound')
    require(1680<2**11 and 120+3*120*16*81<2**20,'cost/norm')
    require(53+915*10+10*1290000==12909203<14000001,'triple height')
    require(11+5*(915+1290000)<14000001,'empty hit set height')
    require(3*14000001>4*(1290000+2),'large B dominance')
    require(5463+5000*32<463*358<463*14000001,'PC final height')
    triples=0;interps=0;max_norm=0;max_m=0
    for rr in combinations(ROWS,3):
        triples+=1;m=sum(len(VALUES[r])-1 for r in rr);max_m=max(max_m,m)
        for yy in product(*(VALUES[r] for r in rr)):
            p=scale(vandermonde(rr,yy),120);interps+=1
            require(all(c.denominator==1 for c in p),'universal denominator')
            require(all(val(p,r)==120*v for r,v in zip(rr,yy)),'triple interpolation')
            norm=120+sum(abs(x) for x in p);max_norm=max(max_norm,int(norm))
            require(norm<2**20,'triple norm')
    require(max_m==10,'complete lost-power budget')
    cnt.update(triples=triples,triple_value_interpolations=interps,triple_max_norm=max_norm,maximum_lost_exponent=max_m)
    # Values are distinct mod every rough prime: differences are 7-smooth.
    diff_checks=0
    for r in ROWS:
        for x,y in combinations(VALUES[r],2):
            z=abs(x-y)
            for p in (2,3,5,7):
                while z%p==0:z//=p
            require(z==1,'distinct rough residue classes');diff_checks+=1
    cnt['rough_distinct_difference_checks']=diff_checks
    graphs=graph_table(vandermonde)
    require([enc(p) for p in graphs]==data['small_graphs'],'graph table')
    require(set(graphs)=={trim((-s*s,s)) for s in range(4)},'four illegal graphs')
    cnt['small_graph_complete_cases']=18
    if complete:
        bs,found,stats=classify(vandermonde)
        require([enc(b) for b in bs]==data['B_table'],'B table completeness')
        require(stats==data['statistics'],'classification counts')
        require(len(found)==len(data['quadratics']),'quadratic count')
        require([(enc(b),enc(c),[list(x) for x in h]) for b,c,h in found]==[(r['b'],r['c'],r['hits']) for r in data['quadratics']],'quadratic table completeness')
        cnt.update(stats)
    graph_count=row_count=0;maxproduct=0;maxgraphheight=0
    for rec in data['quadratics']:
        b,c=dec(rec['b']),dec(rec['c'])
        require(len(b)<=3 and len(c)<=5,'degrees')
        hits=[[v for v in VALUES[r] if v*v+val(b,r)*v+val(c,r)==0] for r in ROWS]
        require(hits==rec['hits'] and all(hits) and sum(len(x)==2 for x in hits)>=4,'actual hit pattern')
        if rec['method']=='two_graphs':
            require(len(rec['roots'])==2,'two roots')
            p,q=map(dec,rec['roots'])
            require(len(p)<=3 and len(q)<=3,'root polynomial degree')
            require(neg(add(p,q))==b and mul(p,q)==c,'factor identity')
            for v in (p,q):
                from math import lcm
                d=lcm(*(x.denominator for x in v));h=d+sum(abs(d*x) for x in v)
                require(h<2**20,'small graph coefficient bound');maxgraphheight=max(maxgraphheight,int(h))
            graph_count+=1
        elif rec['method']=='first_two_windows':
            a,bi,ci=primitive_quadratic(b,c)
            require((a,list(bi),list(ci))==(rec['primitive_a'],rec['primitive_b'],rec['primitive_c']),'primitive normalization')
            v=[int(a*x*x+val(bi,r)*x+val(ci,r)) for r,x in [(1,0),(2,0),(2,1)]]
            require(v==rec['window_values'] and all(v),'r1/r2 nonzero values')
            z=abs(prod(v));require(z<2**32,'r1/r2 product');maxproduct=max(maxproduct,z);row_count+=1
        else:raise ValueError('unknown receiving route')
    require((graph_count,row_count)==(35,15),'complete disjunction')
    cnt.update(graph_factorizations=graph_count,first_two_window_certificates=row_count,maximum_graph_integer_norm=maxgraphheight,maximum_window_product=maxproduct)
    return {'status':'PASS_NEW_BRANCH_CONCENTRATION_AND_MIXED_QUARTIC','counts':cnt,'seconds':time.perf_counter()-t,'arithmetic':'integers and fractions.Fraction only','not_run':['historical matrices','historical content/finite blocks','actual unknown kernel factorization','Lean']}

if __name__=='__main__':
    import argparse
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,default=ROOT/'evidence/new_certificate.json');ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    result=verify(json.loads(a.certificate.read_text()));a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n');print(json.dumps(result,ensure_ascii=False))
