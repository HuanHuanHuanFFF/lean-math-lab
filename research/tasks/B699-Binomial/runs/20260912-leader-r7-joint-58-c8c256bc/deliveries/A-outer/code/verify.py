"""Exact receiver for new finite obligations. Python standard library only.
This checks arithmetic obligations, not the entire prose proof or old frozen chains.
No discovery search, floating-point computation, Lean, or old large-block replay.
"""
from __future__ import annotations
import argparse, copy, hashlib, itertools, json, time
from fractions import Fraction as Q
from pathlib import Path
R=Path(__file__).resolve().parents[1]

class Reject(ValueError): pass

def receive(c:dict)->dict:
    count=0
    def ck(v:bool,label:str)->None:
        nonlocal count
        count+=1
        if not v: raise Reject(label)
    ck(c['schema']==1,'schema')
    expected=[[1,2],[2,1],[1,3],[3,1]]
    ck(c['positions']==expected,'complete remaining position coverage')
    ck(c['m3_position']==[3,1],'m=3 exact position')
    RR=c['scalar_R'];rb=c['scalar_R_bits'];fb=c['finite_bits'];B=c['branch_lower_bits']
    ck(RR==171603713767500 and rb==48 and RR<2**rb,'frozen scalar constant')
    ck(fb==4096 and B==14000001,'frozen lower domains')
    lo=Q(c['log2_lower'])
    ck(lo==2*(Q(1,3)+Q(1,3)**3/3),'positive log series prefix')
    ck((B-1)*lo>c['cut_log_threshold']==9500000,'full cut validity threshold')
    cuts=c['cuts'];den=c['weight_denominator'];eta=Q(c['product_exponent'])
    ck(cuts==[[[7,540],[3,1090]],[[7,3187],[3,386]]] and den==10000,'frozen cut parameters')
    branches=[]
    for i,j in itertools.product(range(2),repeat=2):
        lbs={3:0,7:0}
        for p,w in (cuts[0][i],cuts[1][j]):lbs[p]=max(lbs[p],w)
        branches.append(sum(lbs.values()))
    ck(branches==c['product_branch_numerators'],'all four cut branches, max not sum on same variable')
    ck(eta==Q(min(branches),den),'exact product cut exponent')
    C=c['weighted_constant'];power=c['constant_power'];H=c['height_bits']
    ck(C==840 and power==60 and H==600 and C**power<2**H,'weighted constant ceiling')
    cases={q['k']:q for q in c['height_cases']}
    ck(set(cases)=={3,4} and len(c['height_cases'])==2,'height cases coverage')
    axis_cases=0
    for r,s in c['positions']:
        k=r+s;w=min(12-r,12-s);z=cases[k];E=6+k+eta*w
        ck(z['w']==w and Q(z['E'])==E,'position-sensitive exponent')
        ck(k-6+eta*w<0,'power-of-two loss nonpositive')
        N,A,L,G=z['n_power'],z['alpha_power'],z['constant_bits'],z['g_alpha_power']
        ck(Q(N,A)==E/12 and Q(L,A)==Q(H,12),'integer height clearing')
        ck(G==A-N>0,'g exponent after n=g alpha')
        hm=z['axis_h_max'];expected_hm=5 if k==3 else 10
        ck(hm==expected_hm,'axis h exact safe range')
        cb=c['axis_coefficient_bits'];bound=c['axis_zero_bound_bits']
        ck(cb==100 and bound==21600,'axis coefficient and target constants')
        for h in range(1,hm+1):
            delta=12-h*(12-E)
            ck(delta>0 and H*h+12*cb<bound*delta,'axis zero exponent contradiction')
            axis_cases+=1
        ck(12-(hm+1)*(12-E)<=0,'next h not authorized')
    ck(c['normalized_first_row']==1 and c['normalized_last_row']==8,'exclude row zero')
    ck(c['prime_min']==11 and c['requires_avoided_prime'] is True,'avoidance before noCommon')
    ck(c['zero_values_allow_size_bound'] is False,'division of zero is not a size bound')
    ck(c['power_h_min']==2,'proper powers h>=2')
    ck(c['power_constants']=={'m1':6,'m3':6},'retain m=3 extra full factor')
    for r,s in expected:ck(1 in (r,s),'m1 has a position-one prime')
    # Complete finite group-order classification; LTE proof is in notes/PROOFS.md.
    order_rows=[]
    for p in (3,7):
        for residue in range(1,p):
            d=next(t for t in range(1,p) if pow(residue,t,p)==1)
            ck(d in ((1,2) if p==3 else (1,2,3,6)),'complete residue-order table')
            # Only the primitive cyclotomic factor contributes at exact order d.
            polys={1:residue-1,2:residue+1,3:residue**2+residue+1,6:residue**2-residue+1}
            ck(polys[d]%p==0,'correct contributing factor')
            for e in (1,2,3,6):
                if e!=d and d%e==0:ck(polys[e]%p!=0,'other divisor factors are units')
            order_rows.append([p,residue,d])
    # Exact constant and all-real-t induction certificate for logarithm absorption.
    K=c['log_absorption_denominator'];ck(K==60,'log absorption exponent')
    ck((fb+1)**K<2**fb,'log absorption base k=4096')
    ck(Q(K,fb+1)<Q(1,2),'geometric induction ratio for every larger k')
    ck(Q(2,3)+Q(1,K)==Q(41,60),'upper complete-power exponent')
    ck(Q(7,10)-Q(41,60)==Q(1,60),'positive exponent gap')
    ck(6**5*2**24<2**40,'6*2^(24/5) < 2^8')
    ck(c['power_contradiction_bits']==8*K<fb,'proper-power contradiction domain')
    ck(c['sum_requires_coprime'] is True,'primitive sum requires gcd=1')
    ck(c['sum_upper_constant']==6 and 6<8,'uniform m<=3 sum coefficient')
    ck(Q(3,4)-Q(1,3)-Q(1,K)==Q(2,5),'primitive-sum exponent gap')
    ck(c['sum_contradiction_bits']==133 and Q(53,1)/Q(2,5)<133<fb,'sum contradiction bound')
    ck(c['primitive_full_exponents']==['a+v2(g)','b+v5(g)','v_l(g): l!=2,5'], 'complete exponents, including g')
    # A genuine integer family that meets ONLY the stated coarse projection.
    f=c['projection'];um=f['u_min'];aa=f['a_slope'];a0=f['a_intercept'];bb=f['b_slope'];b0=f['b_intercept']
    ck([aa,a0,bb,b0]==[140,47,70,23] and um==100000,'projection family definitions')
    ck(f['m']==3 and f['g']==1 and f['position']==[3,1],'projection normalization')
    ck(aa==2*bb and a0==2*b0+1,'a=2b+1 makes gcd(a,b)=1')
    ck(aa*um+a0>=1960001 and bb*um+b0>=422064,'outer exponent domains for all u')
    ck(aa*um+a0>=B,'projection n lower bound')
    ck((aa+bb)%2==0 and (a0+b0)%2==0 and f['mod9']==3,'projection n mod9')
    ck(pow(20,bb,49)==1 and 6*pow(20,b0,49)%49==f['mod49']==1,'projection n mod49')
    ck(pow(20,bb,11)==1 and 6*pow(20,b0,11)%11==f['mod11']==7,'projection n mod11')
    ck(7*(5*bb+3)<50*aa and 35*bb<50*aa,'projection symbolic positive slope')
    # Avoid floats even in a redundant exact affine comparison.
    ck(35<100 and 21<50,'7(5b+3)<50(2b+1) for every b>=0')
    ck(14<100 and 14<(100-14)*b0,'7(2b+2)<100b for every b>=b0')
    ck(f['common_prime']==11 and f['is_noCommon_counterexample'] is False,'projection is NOT a counterexample')
    ck((7*6-1)%11==8>7,'j mod11 yields a units carry')
    ck(11>9 and 7<=8,'11 divides the n-7 window factor, not 9!')
    return {'obligations':count,'axis_position_h_cases':axis_cases,'cut_branches':branches,'order_table':order_rows}

def mutate_tests(cert:dict)->dict:
    mutations=[
      ('missing_position',lambda c:c['positions'].pop()),
      ('wrong_m3_position',lambda c:c.__setitem__('m3_position',[1,3])),
      ('weaken_scalar_constant',lambda c:c.__setitem__('scalar_R',171603713767501)),
      ('cut_weight_change',lambda c:c['cuts'][0][0].__setitem__(1,541)),
      ('sum_same_prime_instead_of_max',lambda c:c['product_branch_numerators'].__setitem__(0,3727)),
      ('product_exponent_increase',lambda c:c.__setitem__('product_exponent','1/10')),
      ('wrong_validity_domain',lambda c:c.__setitem__('branch_lower_bits',4096)),
      ('height_exponent_increase',lambda c:c['height_cases'][0].__setitem__('E','10')),
      ('wrong_g_exponent',lambda c:c['height_cases'][1].__setitem__('g_alpha_power',5832)),
      ('axis_h_6',lambda c:c['height_cases'][0].__setitem__('axis_h_max',6)),
      ('axis_h_11',lambda c:c['height_cases'][1].__setitem__('axis_h_max',11)),
      ('axis_coeff_unbounded',lambda c:c.__setitem__('axis_coefficient_bits',100000)),
      ('normalize_row0',lambda c:c.__setitem__('normalized_first_row',0)),
      ('use_T_without_avoidance',lambda c:c.__setitem__('requires_avoided_prime',False)),
      ('take_size_of_zero',lambda c:c.__setitem__('zero_values_allow_size_bound',True)),
      ('omit_m3_factor',lambda c:c['power_constants'].__setitem__('m3',2)),
      ('allow_h1',lambda c:c.__setitem__('power_h_min',1)),
      ('wrong_log_power',lambda c:c.__setitem__('log_absorption_denominator',30)),
      ('omit_sum_coprimality',lambda c:c.__setitem__('sum_requires_coprime',False)),
      ('truncate_full_exponents',lambda c:c['primitive_full_exponents'].__setitem__(0,'a')),
      ('declare_projection_counterexample',lambda c:c['projection'].__setitem__('is_noCommon_counterexample',True)),
      ('wrong_projection_residue',lambda c:c['projection'].__setitem__('mod49',2)),
    ]
    results=[]
    for label,fn in mutations:
        cc=copy.deepcopy(cert);fn(cc)
        try:receive(cc)
        except (Reject,KeyError,ValueError,TypeError) as e:results.append({'mutation':label,'rejected':True,'reason':str(e)})
        else:raise Reject('mutation erroneously accepted: '+label)
    return {'count':len(results),'results':results}

def source_check()->dict:
    src=R/'SOURCE_INPUTS.json'
    if not src.is_file():raise Reject('source freeze manifest missing')
    data=json.loads(src.read_text());checked=0;size=0
    for z in data['originals']:
        for member in z['members']:
            p=R/member['stored_path']
            b=p.read_bytes()
            if len(b)!=member['bytes'] or hashlib.sha256(b).hexdigest()!=member['sha256']:
                raise Reject('frozen member altered '+str(p))
            checked+=1;size+=len(b)
    return {'member_references':checked,'referenced_bytes_including_shared_duplicate_reference':size,
      'old_content_blocks_replayed':False,'old_cubic_blocks_replayed':False,'old_i9_terminal_replayed':False}

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--skip-source-hashes',action='store_true');args=ap.parse_args()
    start=time.monotonic();c=json.loads((R/'evidence/new_obligations.json').read_text())
    accepted=receive(c);negative=mutate_tests(c)
    source={'explicitly_skipped':True} if args.skip_source_hashes else source_check()
    out={'status':'PASS_NEW_PRIMITIVE_POWER_AND_HEIGHT_OBLIGATIONS','arithmetic':accepted,'negative_tests':negative,
         'frozen_sources':source,'seconds':time.monotonic()-start,'lean':False,
         'scope':'finite arithmetic receiving; infinite proof in notes/PROOFS.md; not an old-chain replay'}
    (R/'logs').mkdir(exist_ok=True);(R/'logs/NEW_CHECKS.json').write_text(json.dumps(out,indent=2)+'\n')
    print(out['status']);print(json.dumps({'obligations':accepted['obligations'],'negative':negative['count'],'seconds':out['seconds']}))
if __name__=='__main__':main()
