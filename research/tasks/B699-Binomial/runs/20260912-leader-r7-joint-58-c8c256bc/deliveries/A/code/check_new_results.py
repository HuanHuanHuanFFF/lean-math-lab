"""Exact acceptance of the NEW finite obligations only.
Uses two frozen, differently implemented rational Padé receivers; no floating
point, optimization, old content replay, old big-integer replay, or Lean.
The infinite divisibility and interface-composition proofs are in notes/PROOFS.md.
"""
from fractions import Fraction as F
from pathlib import Path
import copy,hashlib,importlib.util,itertools,json,math,sys,time
from source_paths import ROOT as R,restore,sha256
P=(2,3,5,7);LOW={2:3,3:1,5:1,7:1};DEN=10000
RCONST=171603713767500
class InvalidCertificate(ValueError):pass

def need(test,message):
    if not test:raise InvalidCertificate(message)

def load_module(name,path):
    spec=importlib.util.spec_from_file_location(name,path)
    mod=importlib.util.module_from_spec(spec);sys.modules[name]=mod;spec.loader.exec_module(mod);return mod

def receiver_modules(sources):
    e=sources['effective']
    return load_module('frozen_primary_for_new_cuts',e/'code/verify_cuts.py'),load_module('frozen_grid_for_new_cuts',e/'code/check_cuts_grid.py')

def product_checks(data,cuts):
    need(data['denominator']==DEN,'product denominator')
    expected={(2,3):(5,7),(2,5):(3,7),(3,5):(2,7),(5,7):(2,3)}
    need(len(data['products'])==4,'four new complementary pairs required')
    seen=set();records=[]
    for row in data['products']:
        pair=tuple(row['complement']);collision=tuple(row['excluded_collision']);inds=row['cut_indices'];lam=row['lambda_numerator']
        need(pair in expected and expected[pair]==collision,'wrong collision/complement mapping')
        need(pair not in seen,'duplicate product pair');seen.add(pair)
        need(len(inds)==2 and all(isinstance(k,int) and 0<=k<len(cuts) for k in inds),'cut indices')
        chosen=[cuts[k] for k in inds]
        need(all({c['p'],c['q']}==set(pair) for c in chosen),'cut prime pair mismatch')
        branches=[]
        for choices in itertools.product((0,1),repeat=2):
            lower={p:0 for p in pair}
            for c,side in zip(chosen,choices):
                p=c['p'] if side==0 else c['q'];w=c['wp'] if side==0 else c['wq']
                lower[p]=max(lower[p],w)
            branches.append({'choices':choices,'lower':lower,'sum':sum(lower.values())})
        minimum=min(v['sum'] for v in branches)
        need(minimum>=lam>=3050,'overstated or insufficient product exponent')
        records.append({**row,'exact_minimum':minimum,'branches':branches})
    need(seen==set(expected),'coverage of all four new pairs')
    # Uniform high-branch contradiction: lambda >= 61/200.
    need(F(3050,DEN)==F(61,200),'minimum exponent')
    need(20*(48+10*F(61,200))==1021,'terminal exponent 1021')
    return records

def normal_family_list(allowed_pairs):
    result=[]
    for degree in (1,2):
        for high in itertools.combinations(P,degree):
            if degree==2 and high not in allowed_pairs:continue
            other=[p for p in P if p not in high]
            seeds=sorted(math.prod(p**a for p,a in zip(other,exps)) for exps in itertools.product(*(range(LOW[p]+1) for p in other)))
            for m in seeds:
                result.append({'kind':'one-high' if degree==1 else 'two-high','primes':list(high),'m':m,'min_exponents':[LOW[p]+1 for p in high]})
    return result

def canonical(fs):
    return sorted((f['kind'],tuple(f['primes']),f['m'],tuple(f['min_exponents'])) for f in fs)

def normal_checks(data,old):
    old_expected=normal_family_list(set(itertools.combinations(P,2))-{(3,5)})
    need(canonical(old['families'])==canonical(old_expected),'frozen 84-family domain mismatch')
    stage60=normal_family_list({(2,5)})
    wanted=[f for f in stage60 if f['kind']=='one-high' or f['m'] in [1,3]]
    removed_cuts=[f for f in old_expected if f not in stage60]
    removed_positions=[f for f in stage60 if f not in wanted]
    need(data['one_high']==56 and data['two_high']==2,'new family counts')
    need(canonical(data['families'])==canonical(wanted),'incomplete or overstated 58-family list')
    need(canonical(data['removed_by_new_cuts'])==canonical(removed_cuts),'24 removed cut families')
    need(canonical(data['removed_by_positions_and_7_divisibility'])==canonical(removed_positions),'two removed 7-divisible seed families')
    need(len(old_expected)==84 and len(stage60)==60 and len(wanted)==58,'family count arithmetic')
    need(len(removed_cuts)==24 and len(removed_positions)==2,'removed family arithmetic')
    return {'old':84,'intermediate':60,'remaining':58,'one_high':56,'two_high':2,'removed_by_cuts':24,'removed_by_positions':2,'remaining_double_seeds':[1,3]}

def position_checks(data):
    weighted=[]
    for a in range(9):
        for b in range(a+1):
            c=a-b
            need(max(6-b,0)+max(6-c,0)>=12-a,'triangle weight inequality')
            weighted.append((a,b,c))
    need(len(weighted)==45 and sum(6-b for b in range(6))==21,'weight degrees')
    possible=[];rejected=[]
    for c,r,s in itertools.permutations(range(9),3):
        W=sum(12-a for a in range(9) if a not in [c,r,s]);w=min(12-r,12-s)
        need(W==36+c+r+s and W<=57 and w>=4,'support/degree formula')
        if c+r+s>=6:
            need(W>=42 and 11*W+20*w-42<170*w,'uniform 2^170 cofactor bound')
            rejected.append((c,r,s))
        else:possible.append([c,r,s])
    need(data['all_collision_2_5_positions_c_r3_r7']==possible,'position list missing or has invalid member')
    doubles=[v[1:] for v in possible if v[0]==0]
    need(data['double_high_alpha_positions_r3_r7']==doubles,'double-high positions')
    sets=sorted({tuple(sorted(v)) for v in possible})
    need([tuple(v) for v in data['unordered_occupied_sets']]==sets,'unordered support sets')
    need(sets==[(0,1,2),(0,1,3),(0,1,4),(0,2,3)],'support classification')
    need(840<2**10 and 14_000_000*386>170*10000,'small-part and old 3/7-cut constants')
    # If 7|n, the only offsets with 7|(n-a), 0<=a<=8, are 0 and 7.
    # For c=0, each accepted r7 is neither, so the two seeds with 7|alpha
    # cannot be realized. This is a necessary congruence, not a sample scan.
    need(all(s not in [a for a in range(9) if a%7==0] for r,s in doubles),'7-divisible row not excluded')
    # If 3|n, the unique 9-multiple offset must be a multiple of 3.
    need(sorted({r for r,s in doubles if r%3==0})==[3],'3-divisible residual restriction')
    return {'triangle_cells':45,'ordered_position_cases':504,'excluded_by_weight':len(rejected),'remaining_ordered_positions':len(possible),'double_high_positions':len(doubles),'unordered_sets':[list(v) for v in sets],'forbidden_double_seed_factor':7}

def cells_check(cells):
    expected=[(a,b,a-b) for a in range(9) for b in range(a+1)]
    need([(t['a'],t['b'],t['c']) for t in cells]==expected,'triangle cells missing or misordered')
    masses=[F(t['mass']) for t in cells];need(all(m>=0 for m in masses),'negative mass')
    rows=[sum(m for t,m in zip(expected,masses) if t[0]==a) for a in range(9)]
    cols=[[sum(m for t,m in zip(expected,masses) if t[d]==b) for b in range(9)] for d in (1,2)]
    return expected,masses,rows,cols

def relaxation_check(data,cuts,old_cuts):
    need(data['not_an_integer_counterexample'] is True,'must label relaxation, not B699 counterexample')
    t={int(p):F(v) for p,v in data['max_power_log_exponents'].items()}
    x={int(p):F(v) for p,v in data['cofactor_log_exponents'].items()}
    need(set(t)==set(x)==set(P) and all(x[p]+t[p]==1 and 0<=t[p]<=1 for p in P),'cofactor exponents')
    need(t[2]+t[5]==1 and sum(t.values())>=F(27,10),'collision or scalar exponent constraint')
    old=[c for c in old_cuts if c['p'] in P and c['q'] in P]
    for c in cuts+old:need(x[c['p']]>=F(c['wp'],DEN) or x[c['q']]>=F(c['wq'],DEN),'cut rejected relaxation witness')
    small=list(map(F,data['small_mass_by_row']));need(small==[t[2]+t[5],t[3],t[7]]+[F(0)]*6,'small-mass placement')
    _,mass,rows,cols=cells_check(data['cells'])
    need(all(rows[a]+small[a]==1 for a in range(9)),'row mass conservation')
    need(all(v<=1 for col in cols for v in col),'marginal capacity')
    return {'status':'PASS_EXACT_SPECIFIED_LINEAR_RELAXATION_WITNESS','new_cuts':len(cuts),'old_cut_entries':len(old),'cells':45,'large_mass':str(sum(mass)),'cofactor_exponents':data['cofactor_log_exponents'],'not_integer_counterexample':True}

def scalar_lp_check(data):
    row=list(map(F,data['row_weights']));left=list(map(F,data['left_weights']));right=list(map(F,data['right_weights']))
    need(len(row)==len(left)==len(right)==9,'primal dimensions')
    need(all(v>=0 for v in row+left+right),'primal sign')
    need(all(row[a]+left[b]+right[a-b]>=1 for a in range(9) for b in range(a+1)),'primal inequality')
    _,m,rows,cols=cells_check(data['dual_cells'])
    need(all(v<=1 for v in rows+cols[0]+cols[1]),'dual capacity')
    need(sum(row+left+right)==sum(m)==F(data['optimum'])==F(63,10),'weak-duality matching objectives')
    return {'status':'PASS_EXACT_PRIMAL_DUAL_EQUALITY_FOR_SPECIFIED_MODEL','optimum':'63/10','primal_variables':27,'constraints':45}

def scalar_constants():
    C0=80640;K=2**42*math.prod(math.factorial(h) for h in range(1,7))**3
    need(C0**10==K*RCONST and RCONST==2**2*3**5*5**4*7**10,'scalar constant')
    need(RCONST<2**48 and RCONST<109**7,'scalar constant bounds')
    # n>=2^84 gives 2^144*n^9 <= 2^60*n^10.
    need(144-84==60 and 2**6==64 and 128<216,'cubic constants')
    need(1021<4096<14_000_001,'height ordering')
    return {'R':str(RCONST),'cubic_input_n_bits':84,'finite_exclusion_n_bits':4096,'bridge_input_n_bits':14000001,'bridge_output_n_bits':169,'new_high_branch_contradiction_n_bits':1021}

def dependency_metadata(sources,cuts):
    e=sources['effective'];tail=json.loads((e/'evidence/content_tail.json').read_text())
    families=sorted({tuple(c['content_canonical']) for c in cuts if c['content_source']=='new_permutation_content'})
    results=[]
    for fam in families:
        p=e/('evidence/accepted_content_family_'+'_'.join(map(str,fam))+'.json');obj=json.loads(p.read_text())
        t=next(t for t in tail['rows'] if tuple(t[k] for k in ['e','d','f'])==fam)
        need(obj['all_permutations'] and obj['status']=='ACCEPTED_PAPER_PLUS_EXACT_CERTIFICATE_UNLEANED','frozen family status')
        need(obj['M']==t['M'] and F(obj['g'])==F(t['g']),'family finite/tail alignment')
        need(obj['deltas']==[0,1] and sorted(map(tuple,obj['permutations']))==sorted(set(itertools.permutations(fam))),'all permutations and both deltas required')
        need(t['passed'] and F(t['margin'])>0 and len(t['rows'])==obj['tail']['terms'],'frozen tail acceptance metadata')
        for row in [c for c in cuts if c.get('content_canonical')==list(fam)]:
            need(tuple(sorted(row[k] for k in ['e','d','f']))==fam and row['m0']==obj['m0'] and F(row['g'])==F(obj['g']),'adopted permutation/threshold mismatch')
        results.append({'family':fam,'g':obj['g'],'m0':obj['m0'],'M':obj['M'],'metadata_sha256':sha256(p),'acceptance_metadata':obj,'tail_record':t,'old_finite_and_tail_replay_this_turn':False})
    i=sources['i14'];local=[]
    for p,q in itertools.combinations(P,2):
        path=i/f'evidence/blocks/blocks_{p}_{q}.tsv'
        local.append({'pair':[p,q],'certificate_bytes':path.stat().st_size,'certificate_sha256':sha256(path),'original_header':path.read_text().splitlines()[:2],'full_large_integer_replay_this_turn':False})
    return {'content_families':results,'adopted_content_finite_blocks':sum(f['acceptance_metadata']['finite']['blocks'] for f in results),'adopted_content_tail_terms':sum(f['acceptance_metadata']['tail']['terms'] for f in results),'local_cubic_pair_certificates':local,'frozen_block_acceptance':json.loads((i/'evidence/blocks_check.json').read_text()),'frozen_block_acceptance_replayed_this_turn':False,'A9_finite_replayed_this_turn':False,'i14_global_theorem_used_as_cross_index_implication':False,'Lean':'NOT_RUN'}

def negative_tests(primary,cuts,products,normals,oldnormal,positions,witness,oldcuts,lp):
    cases=[]
    def reject(name,action):
        try:action()
        except (AssertionError,InvalidCertificate,ValueError,KeyError,IndexError) as err:
            cases.append({'mutation':name,'result':'REJECTED','exception':type(err).__name__});return
        raise InvalidCertificate('negative test unexpectedly accepted: '+name)
    for name,key,value in [('seed-D','D0',2),('content-growth','g','5'),('content-start','m0',1),('permutation-key','content_canonical',[9,10,19]),('cut-too-strong','wp',9900)]:
        bad=copy.deepcopy(cuts[0]);bad[key]=value
        reject(name,lambda bad=bad:primary.obligations(bad,19_000_000,13))
    bad=copy.deepcopy(products);bad['products'][0]['lambda_numerator']=4000
    reject('overstated-product',lambda:product_checks(bad,cuts))
    bad2=copy.deepcopy(products);bad2['products'][0]['excluded_collision']=[2,5]
    reject('wrong-collision-complement',lambda:product_checks(bad2,cuts))
    missing=copy.deepcopy(normals);missing['families'].pop()
    reject('missing-necessary-family',lambda:normal_checks(missing,oldnormal))
    false_remaining=copy.deepcopy(normals);false_remaining['families'].append(copy.deepcopy(normals['removed_by_positions_and_7_divisibility'][0]))
    reject('retained-m7-family',lambda:normal_checks(false_remaining,oldnormal))
    badpos=copy.deepcopy(positions);badpos['all_collision_2_5_positions_c_r3_r7'].append([0,1,5])
    reject('sum6-support-included',lambda:position_checks(badpos))
    badw=copy.deepcopy(witness);badw['cells'][0]['mass']='1/100'
    reject('row-mass-corruption',lambda:relaxation_check(badw,cuts,oldcuts))
    badlp=copy.deepcopy(lp);badlp['row_weights'][8]='0'
    reject('invalid-scalar-primal',lambda:scalar_lp_check(badlp))
    baddual=copy.deepcopy(lp);baddual['dual_cells'][0]['mass']='2'
    reject('invalid-scalar-dual',lambda:scalar_lp_check(baddual))
    return {'status':'PASS_SEMANTIC_MUTATION_REJECTION','count':len(cases),'cases':cases}

def run(outdir):
    start=time.monotonic();outdir=Path(outdir);outdir.mkdir(parents=True,exist_ok=True)
    sources=restore();primary,alternate=receiver_modules(sources)
    data=lambda f:json.loads((R/'evidence'/f).read_text())
    cutdata=data('selected_cuts.json');cuts=cutdata['cuts']
    need(cutdata['denominator']==DEN and len(cuts)==9,'nine final selected cuts')
    primary_rows=[];alternate_rows=[]
    for ix,row in enumerate(cuts):
        a=primary.obligations(row,19_000_000,13);need(a['passed'],'primary cut failed')
        b=alternate.check(row,19_000_000,13)
        need(all(F(v)>0 for v in a['margins'].values()),'primary exact signs')
        need(all(int(v[0])>0 for v in b['margins']),'alternate exact signs')
        primary_rows.append({'index':ix,'input':row,'certificate':a});alternate_rows.append({'index':ix,'certificate':b})
    need(F(14_000_000)*primary.logq(F(2)).lo>9_500_000,'height to log threshold')
    numeric={'status':'PASS_NINE_CUTS_TWO_EXACT_ARITHMETIC_IMPLEMENTATIONS','x0':9500000,'window_difference':13,'primary':primary_rows,'alternate':alternate_rows,'grid_scale':str(alternate.SCALE),'positive_threshold_margins':90}
    (outdir/'cut_numerics.json').write_text(json.dumps(numeric,indent=2)+'\n')
    products=data('product_certificates.json');normals=data('normal_forms_58.json');positions=data('residual_positions.json');witness=data('residual_relaxation_witness.json');lp=data('scalar_lp_optimality.json')
    oldnormal=json.loads((sources['A']/'evidence/alpha_normal_forms.json').read_text());oldcuts=json.loads((sources['effective']/'input/cuts.json').read_text())['cuts']
    small={'products':product_checks(products,cuts),'normal_forms':normal_checks(normals,oldnormal),'positions':position_checks(positions),'relaxation':relaxation_check(witness,cuts,oldcuts),'scalar_lp':scalar_lp_check(lp),'scalar_constants':scalar_constants()}
    (outdir/'small_exact_checks.json').write_text(json.dumps(small,indent=2)+'\n')
    deps=dependency_metadata(sources,cuts);(outdir/'frozen_dependency_metadata.json').write_text(json.dumps(deps,indent=2)+'\n')
    neg=negative_tests(primary,cuts,products,normals,oldnormal,positions,witness,oldcuts,lp);(outdir/'negative_tests.json').write_text(json.dumps(neg,indent=2)+'\n')
    summary={'status':'PASS_NEW_EXACT_OBLIGATIONS_58_FAMILIES','cut_rows':9,'arithmetic_implementations':2,'positive_threshold_margins':90,'four_disjunction_branches_per_product':4,'new_product_pairs':4,'old_families':84,'remaining_families':58,'removed_complete_families':26,'remaining_double_high_seeds':[1,3],'weighted_triangle_cells':45,'position_cases':504,'residual_double_high_positions':8,'negative_tests':neg['count'],'exact_relaxation_witness':'PASS_NOT_AN_INTEGER_COUNTEREXAMPLE','exact_scalar_primal_dual':'PASS_SPECIFIED_MODEL_ONLY','old_content_blocks_replayed':False,'old_i14_big_blocks_replayed':False,'old_i9_finite_replayed':False,'Lean':'NOT_RUN','seconds':round(time.monotonic()-start,6)}
    (outdir/'acceptance.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,ensure_ascii=False),flush=True);return summary
