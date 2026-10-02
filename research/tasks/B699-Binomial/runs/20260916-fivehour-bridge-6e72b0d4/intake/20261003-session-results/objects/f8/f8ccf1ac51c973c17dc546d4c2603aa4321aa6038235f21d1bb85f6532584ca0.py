#!/usr/bin/env python3
"""Offline exact certificates for C R7 / PAIRCONIC012.
Only the Python standard library is used. This does not execute previous-round
research scripts, use Lean, call a network, or access a repository. Finite slot
classification is separate from the proof-bounded original-input terminal.
"""
from __future__ import annotations
import argparse, csv, hashlib, io, itertools, json, math, sys, zipfile
from fractions import Fraction as F
from pathlib import Path

PREVIOUS_SHA='4eedcd5c1c38761d1dfcd1251e846e9662e35e7db4c58f5566abbbbbf04309b0'
PREVIOUS_ROOT='B699-C-R6-SLOT012-EXACTCONTENT-20261002/'
TARGET=(352,425,776,1026,1377,1450)
H=(3,4,5)
MONS=((0,2),(1,1),(0,1),(2,0),(1,0),(0,0)) # n^a j^b
EXCEPTION=((1,3),(1,2),(0,2))

def need(value,message):
    if not value: raise AssertionError(message)
def encode(value): return (json.dumps(value,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(data): return hashlib.sha256(data).hexdigest()
def frac(q):
    q=F(q);return {'num':q.numerator,'den':q.denominator}
def rough(n):
    n=abs(n)
    if n==0:return 0
    for p in (2,3,5):
        while n%p==0:n//=p
    return n

def dependencies(root):
    data=(root/'dependencies/PREVIOUS_ROUND.zip').read_bytes()
    need(sha(data)==PREVIOUS_SHA,'R6 archive SHA-256 mismatch')
    checked={}
    with zipfile.ZipFile(io.BytesIO(data)) as z:
        manifest=z.read(PREVIOUS_ROOT+'MANIFEST.sha256').decode()
        for line in manifest.splitlines():
            if not line.strip():continue
            h,name=line.split(None,1);name=name.strip().lstrip('*')
            need(sha(z.read(PREVIOUS_ROOT+name))==h,'R6 member SHA mismatch: '+name)
            checked[name]=h
        copies={'R6_HANDOFF.md':'HANDOFF.md','R6_PROOFS.md':'PROOFS.md',
                'ACTUAL_SMALLPARTS_42.csv':'dependencies/ACTUAL_SMALLPARTS_42.csv'}
        for dest,src in copies.items():
            need((root/'dependencies'/dest).read_bytes()==z.read(PREVIOUS_ROOT+src),'R6 selected copy mismatch: '+dest)
    table=list(csv.DictReader((root/'dependencies/ACTUAL_SMALLPARTS_42.csv').open(encoding='utf-8')))
    need(len(table)==42,'Frozen activity table must contain 42 rows')
    rows={int(r['a']):r for r in table if int(r['a']) in TARGET}
    need(len(rows)==6,'012 table')
    fixed={}
    for a,r in rows.items():
        need(sorted(r[f'H_at_{h}'] for h in (0,1,2))==['H2','H3','H5'],'012 activity required')
        need(all(r[f'H_at_{h}']=='1' for h in H),'inactive source small parts required')
        fixed[a]=[int(r[f'kappa{h}']) for h in H]
    need(fixed=={352:[1,12,1],425:[2,1,60],776:[1,4,3],1026:[3,2,1],1377:[6,1,4],1450:[1,6,5]},'012 small-part values')
    receipt=json.loads((root/'dependencies/R6_LOCAL_REPLAY_RECEIPT.json').read_text())
    need(receipt['status']=='PASS' and receipt['archive_sha256']==PREVIOUS_SHA,'R6 local replay receipt binding')
    return fixed,{'previous_archive_sha256':PREVIOUS_SHA,'previous_archive_bytes':len(data),
       'previous_manifest_members_checked':len(checked),'selected_source_copies_byte_equal':True,
       'previous_verifier_executed_by_this_script':False,'R6_replay_receipt_status':'PASS',
       'R6_receipt_certificate_count':receipt['certificates_regenerated'],
       'frozen_42_row_csv_sha256':sha((root/'dependencies/ACTUAL_SMALLPARTS_42.csv').read_bytes()),
       'new_proof_uses_BFT':False,'old_unit_window_theorem_adopted_not_reproved':True,
       'Overview_requested_raw_SHA_newly_verified':False,'target':list(TARGET)}

# Small exact bivariate-polynomial routines; tuples are exponents of X,D.
def padd(*polys):
    out={}
    for p in polys:
        for m,c in p.items():out[m]=out.get(m,0)+c
    return {m:c for m,c in out.items() if c}
def pmul(p,q):
    out={}
    for (a,b),c in p.items():
        for (x,y),d in q.items():out[a+x,b+y]=out.get((a+x,b+y),0)+c*d
    return {m:c for m,c in out.items() if c}
def pscale(p,c):return {m:c*v for m,v in p.items() if c*v}
def ppow(p,e):
    out={(0,0):1}
    for _ in range(e):out=pmul(out,p)
    return out

def eval_conic(coeff,n,j):return sum(c*n**a*j**b for c,(a,b) in zip(coeff,MONS))
def shifted(coeff):
    np={(0,0):14,(1,0):2,(0,1):1};jp={(0,0):7,(1,0):1}
    return padd(*(pscale(pmul(ppow(np,a),ppow(jp,b)),c) for c,(a,b) in zip(coeff,MONS)))
def direct_conic(pairs):
    sums=[b+c for b,c in pairs];products=[b*c for b,c in pairs]
    need(sums[0]-2*sums[1]+sums[2]==0,'Affine sums needed for conic')
    u=sums[1]-sums[0];v=sums[0]-3*u
    p,q,r=products
    return [2,-2*u,-2*v,p-2*q+r,-9*p+16*q-7*r,20*p-30*q+12*r]

def matrix(pairs):return [[b*b,h*b,b,h*h,h,1] for h,pair in zip(H,pairs) for b in pair]
def determinant(a):
    a=[[F(v) for v in row] for row in a];out=F(1);n=len(a)
    for col in range(n):
        pivot=next((r for r in range(col,n) if a[r][col]),None)
        if pivot is None:return 0
        if pivot!=col:a[pivot],a[col]=a[col],a[pivot];out=-out
        t=a[col][col];out*=t
        for r in range(col+1,n):
            f=a[r][col]/t
            for k in range(col+1,n):a[r][k]-=f*a[col][k]
            a[r][col]=0
    need(out.denominator==1,'integer determinant');return out.numerator

def nullvector(a):
    a=[[F(v) for v in row] for row in a];nr=len(a);nc=len(a[0]);rank=0;piv=[]
    for col in range(nc):
        pick=next((r for r in range(rank,nr) if a[r][col]),None)
        if pick is None:continue
        a[rank],a[pick]=a[pick],a[rank]
        t=a[rank][col];a[rank]=[v/t for v in a[rank]]
        for r in range(nr):
            if r!=rank:
                t=a[r][col];a[r]=[x-t*y for x,y in zip(a[r],a[rank])]
        piv.append(col);rank+=1
    free=[k for k in range(nc) if k not in piv]
    need(rank==5 and len(free)==1,'conic kernel dimension must be one')
    v=[F(0)]*nc;v[free[0]]=1
    for i,col in reversed(list(enumerate(piv))):v[col]=-sum(a[i][k]*v[k] for k in free)
    need(v[0]!=0,'nonzero j^2 coefficient')
    v=[q*2/v[0] for q in v]
    need(all(q.denominator==1 for q in v),'normalized conic must have integral coefficients')
    return [q.numerator for q in v]

def all_pairs():return list(itertools.product(*[list(itertools.combinations(range(h+1),2)) for h in H]))

def classify():
    patterns=all_pairs();ap=[];detrows=[];opens=[];bounds=[0]*6
    for idx,pairs in enumerate(patterns):
        sums=[sum(v) for v in pairs];delta=sums[0]-2*sums[1]+sums[2]
        gaps=math.prod(c-b for b,c in pairs)
        det=determinant(matrix(pairs));need(det==2*delta*gaps,'six-point determinant formula')
        detrows.append({'id':idx,'pairs':[list(p) for p in pairs],'delta':delta,'determinant':det})
        if delta:continue
        coeff=direct_conic(pairs);other=nullvector(matrix(pairs))
        need(coeff==other,'independent nullspace construction mismatch')
        for h,(b,c) in zip(H,pairs):
            # Equality as a polynomial in j, not merely two root values.
            need(coeff[0]==2,'leading coefficient')
            need(coeff[1]*h+coeff[2]==-2*(b+c),'source linear coefficient')
            need(coeff[3]*h*h+coeff[4]*h+coeff[5]==2*b*c,'source constant coefficient')
        shift=shifted(coeff)
        sign=1 if all(v>=0 for v in shift.values()) else (-1 if all(v<=0 for v in shift.values()) else 0)
        if sign:need(sign*shift.get((0,0),0)>0,'strict shifted constant')
        else:opens.append(pairs)
        norm=sum(F(abs(c),2**b*352**(2-a-b)) for c,(a,b) in zip(coeff,MONS))
        need(norm<17,'strict conic norm constant')
        bounds=[max(v,abs(c)) for v,c in zip(bounds,coeff)]
        ap.append({'id':idx,'pairs':[list(p) for p in pairs],'sums':sums,'coeff_order':['j^2','n*j','j','n^2','n','1'],
          'coefficients':coeff,'shift_j7_kj':[{'X':a,'D':b,'coefficient':v} for (a,b),v in sorted(shift.items())],
          'sign':sign,'nonzero_method':'shifted_coefficient_sign' if sign else 'actual_source1_plus_unit_window',
          'norm_coefficient_n_ge352':frac(norm)})
    need(len(patterns)==900 and len(ap)==84 and opens==[EXCEPTION],'pair classification counts and exception')
    need(bounds==[2,8,22,12,84,144],'coefficient maxima')
    coeff=direct_conic(EXCEPTION)
    need(coeff==[2,2,-14,-1,5,0],'exception equation')
    vals=[eval_conic(coeff,1,b) for b in (0,1)]
    need(vals==[4,-6] and all(rough(v)==1 for v in vals),'exception original source1 units')
    universal=F(2,4)+F(8,2)+12+(F(22,2)+84)/352+F(144,352**2)
    need(universal<17,'universal max-based norm')
    return patterns,ap,{'ordinary_pair_patterns':900,'affine_sum_patterns':84,'nonaffine_patterns':816,
      'nonzero_by_shifted_sign':83,'source1_exception_patterns':1,
      'coefficient_absolute_maxima':bounds,'universal_norm_upper':frac(universal),
      'strict_norm_claim':'|F(n,j)|<17*n^2 for n>=352 and 7<=j<=n/2',
      'determinant_monomial_order':['j^2','n*j','j','n^2','n','1'],
      'determinant_formula':'2*(S3-2*S4+S5)*(c3-b3)*(c4-b4)*(c5-b5)',
      'all_pattern_determinants':detrows,'conics':ap,
      'exception':{'pairs':[list(p) for p in EXCEPTION],'coefficients':coeff,'F_at_source1':vals,
                   'unit_prime_support_of_source1_values':[2,3],'zero_exclusion_adopts_unit_window':True}}

def height_table(fixed):
    rows=[];orig=[]
    need(F(1)-F(12,352)==F(85,88),'product loss constant')
    for a in TARGET:
        S=math.prod(fixed[a]);bound=F(88*S,5)
        candidates=list(range(a,math.ceil(bound),1800))
        for n in candidates:need(F(n)<bound,'strict height candidate')
        rows.append({'residue':a,'s3_s4_s5':fixed[a],'S':S,'strict_n_upper':frac(bound),'candidate_original_n':candidates})
        orig.extend(candidates)
    need(orig==[425],'only proof-bounded original row is 425')
    return {'lower_product':'(n-3)(n-4)(n-5)>(85/88)*n^3 for n>=352',
      'divisor':'q3*q4*q5 divides F != 0','upper_polynomial':'|F|<17*n^2',
      'conclusion':'n<88*S/5','rows':rows,'candidate_n_union':[425],
      'no_epsilon_or_prime_exponent_cutoff':True,'BFT_used':False}

def prime_trial(p):
    if p<2:return False
    return all(p%d for d in range(2,math.isqrt(p)+1))
def vp(n,p):
    need(n!=0,'valuation of zero')
    n=abs(n);v=0
    while n%p==0:v+=1;n//=p
    return v
def choose_v(n,j,p):
    out=0;power=p
    while power<=n:
        out+=n//power-j//power-(n-j)//power;power*=p
    return out

def terminal():
    n=425;p=421
    need(prime_trial(p),'421 primality')
    first=[]
    for j in range(7,n//2+1):
        need(n%p==4 and j%p>4,'actual source4 failure')
        a=choose_v(n,6,p);b=choose_v(n,j,p)
        need(a==b==1,'factorial valuations')
        first.append([n,j,p,a,b])
    second=[]
    cn6=math.comb(n,6)
    for j in range(n//2,6,-1):
        cnj=math.comb(n,j);d=math.gcd(cn6,cnj)
        need(d%p==0,'direct integer gcd same prime')
        second.append([n,j,p,vp(cn6,p),vp(cnj,p)])
    second.reverse();need(first==second,'entire two-way witness lists')
    need(len(first)==206,'425 terminal length')
    # Small source1 CRT check is a separate alternative; not needed for main terminal.
    origin_one=[j for j in range(7,213) if j%17==0 and j%53 in (0,1)]
    need(origin_one==[],'origin and source1 alternative terminal')
    return {'scope':'n=425, all 7<=j<=212, no slot-pattern or phase filter',
       'n_height_established_before_terminal':True,'same_prime':421,'source':4,'actual_complete_source_exponent':1,
       'primality_method':'trial division of every integer 2..20','primality_remainders':[[d,p%d] for d in range(2,21)],
       'pair_count':206,'forward_method':'original source4 layer and factorial valuations',
       'reverse_method':'direct big-integer choose gcd and valuations in reverse j order',
       'full_sets_equal':True,'witness_records':first,'witness_records_sha256':sha(encode(first)),
       'NC_survivors':[],'independent_origin_source1_survivors':origin_one,
       'not_a_new_489_or_4096_scan':True}

def full_power_tests(ap):
    digest=hashlib.sha256();count=0;samples=[]
    for row in ap:
        for h,pair in zip(H,row['pairs']):
            for b in pair:
                for p in (7,11,13):
                    for e in (1,2,3,4):
                        Q=p**e;n=h+40*Q
                        need(vp(n-h,p)==e,'actual exact source exponent in local test')
                        for lift in (7,11):
                            j=b+lift*Q
                            need(7<=j<=n//2 and j%Q==b,'local source legal point')
                            value=eval_conic(row['coefficients'],n,j)
                            need(value%Q==0,'full p^e conic divisibility')
                            rec=[row['id'],h,b,p,e,n,j,value]
                            digest.update(encode(rec));count+=1
                            if len(samples)<12:samples.append(rec)
    need(count==12096,'full-power local test count')
    coeff=direct_conic(((0,3),(0,4),(0,5)))
    value=eval_conic(coeff,52,7)
    need(value==-630 and value%7==0 and value%49!=0,'radical-only negative control')
    return {'test_count':count,'tested_primes':[7,11,13],'tested_exact_exponents':[1,2,3,4],
       'test_record_stream_sha256':digest.hexdigest(),'first_samples':samples,
       'purpose':'local code regression only; arbitrary full exponents are covered by the integer polynomial proof',
       'negative_control':{'n':52,'j':7,'source':3,'actual_full_power':49,'radical':7,'F':value,
        'radical_divides':True,'complete_power_divides':False,'not_a_NC_model':True}}

def endpoint_coverage(fixed,patterns,ap):
    audits=[]
    for a in TARGET:
        for h,k in itertools.combinations(H,2):
            sh=fixed[a][h-3];sk=fixed[a][k-3]
            lower=F(196*(a-h)*(a-k),sh*sk*a*a)
            need(lower>1,'full endpoint pair contradiction')
            audits.append({'residue':a,'sources':[h,k],'smallpart_product':sh*sk,
              'lower_4g2qhqk_over_n2_at_g7_nmin':frac(lower)})
    need(max(r['smallpart_product'] for r in audits)==120,'endpoint uniform fixed cost')
    need(F(88*120,343)<49,'uniform g^2 endpoint contradiction')
    idsap={r['id'] for r in ap};idsep=set()
    sym=[]
    for i,pairs in enumerate(patterns):
        if sum(pair==(0,h) for pair,h in zip(pairs,H))>=2:idsep.add(i)
        if all(sum(pair)==h for pair,h in zip(pairs,H)):sym.append(i)
    need(len(idsap)==84 and len(idsep)==29 and len(idsap&idsep)==5,'union inputs')
    gone=idsap|idsep;left=set(range(900))-gone
    need(len(gone)==108 and len(left)==792 and len(sym)==12 and set(sym)<=idsap,'support coverage counts')
    return {'endpoint_theorem':'At most one of E3=q3,E4=q4,E5=q5 can hold in NC012',
      'endpoint_full_source_pair_audits':audits,'endpoint_uniform_forced_g2_upper':frac(F(88*120,343)),
      'restricted_directory':'each q3,q4,q5 occupies exactly two ordinary slots; NOT the unrestricted frontier',
      'restricted_pattern_count':900,'affine_sum_excluded_count':84,'two_endpoint_sources_excluded_count':29,
      'intersection_count':5,'union_excluded_count':108,'remaining_restricted_patterns':792,
      'excluded_pattern_ids':sorted(gone),'remaining_pattern_ids':sorted(left),
      'twelve_symmetric_pair_ids':sym,'twelve_symmetric_pairs':[[list(p) for p in patterns[i]] for i in sym],
      'ordinary_slots_not_symmetric_groups':True,
      'complete_residue_classes_before':42,'complete_residue_classes_after':42,
      'new_complete_indices':0,'R7_global':[3,4,5,6,7,8,9],
      'certified_historical_net_difference':0,'positive_historical_difference_certified':False}

def boundaries(patterns):
    # Ratios from the five centered coefficients are identities, not added constraints.
    ratio_tests=0
    for n in range(28,90):
        for j in (7,n//3,n//2):
            d=n-2*j
            b3=F(d*(n-5)*(n-4)*(n-3),6)
            b4=F((n-5)*(n-4)*(n-3)*(n-2),24)
            b2=F((n-5)*(n-4)*(d*d-n+2),4)
            need((n-2)*b3==4*d*b4,'centered ratio identity')
            need((n-3)*(n-2)*b2==6*(d*d-n+2)*b4,'second centered ratio identity')
            ratio_tests+=1
    # General legal zero of the exceptional conic; not in R012.
    ex=direct_conic(EXCEPTION);n=784;j=287
    need(7<=j<=n//2 and eval_conic(ex,n,j)==0,'exceptional conic has a legal zero in general')
    need(n%29==1 and j%29==26 and choose_v(n,6,29)>0 and choose_v(n,j,29)>0,'actual missing source1')
    return {'partial_pair_blocks':'B_h is the product of complete source powers in the chosen two slots; R_h=q_h/B_h',
      'partial_pair_residual_bound':'F!=0 => n<(88/5)*s3*s4*s5*R3*R4*R5; no uniform bound on the R_h or epsilon',
      'partial_pair_zero_boundary':'the one conic zero is excluded only with the actual NC source1 / adopted unit window',
      'partial_endpoint_bound':'R_h*R_k > 343*g^2/(88*s_h*s_k), only a lower residual bound',
      'nonaffine_conic_kernel':'det=2*delta*gap3*gap4*gap5 !=0: no nonzero polynomial of total degree <=2 on those six points',
      'not_an_impossibility_theorem_for_other_methods':True,
      'five_coefficient_ratio_identities_only':[
        '(n-2)*w3=4*d*w4','(n-3)*(n-2)*w2=6*(d^2-n+2)*w4'],
      'coefficient_ratio_regression_tests':ratio_tests,
      'generic_zero_witness':{'n':n,'j':j,'F':0,'in_R012':False,'actual_source1_prime':29,
        'v_choose_n6':choose_v(n,6,29),'v_choose_nj':choose_v(n,j,29),'NC6':False,
        'use':'only rejects asserting that the exceptional polynomial has no legal zero anywhere'},
      'old_R6_weak_model_not_relabelled_as_NC':True,
      'no_uniform_epsilon_bound_obtained':True,'full_t0_central_corridor_closed':False,
      'remaining_unbounded':['epsilon','n','j','d','g','alpha','beta','gamma','three active prime exponents',
        'rough source primes and complete exponents','ordinary slot blocks','R3','R4','R5','Uend','Vinner','I',
        'T6','Z','r_phase','t_phase','w0','w1','w2','w3','w4','W','z','eta','theta']}

def generate(root):
    fixed,binding=dependencies(root)
    patterns,ap,conics=classify()
    return {'SOURCE_BINDING.json':binding,'PAIRCONIC_CLASSIFICATION.json':conics,
      'HEIGHT_012.json':height_table(fixed),'TERMINAL_425.json':terminal(),
      'COMPLETE_POWER_TESTS.json':full_power_tests(ap),
      'ENDPOINT_PAIR_COVERAGE.json':endpoint_coverage(fixed,patterns,ap),
      'METHOD_BOUNDARIES.json':boundaries(patterns)}

def main():
    p=argparse.ArgumentParser();p.add_argument('--root',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True);p.add_argument('--check',type=Path)
    a=p.parse_args();root=a.root.resolve();out=a.output.resolve()
    need(out!=root/'certificates' or a.check is None,'Do not overwrite frozen certificates while checking')
    result=generate(root);out.mkdir(parents=True,exist_ok=True)
    hashes={}
    for name,value in result.items():
        data=encode(value);(out/name).write_bytes(data);hashes[name]=sha(data)
        if a.check:
            old=(a.check/name).read_bytes()
            need(json.loads(old)==value,'Frozen certificate JSON mismatch: '+name)
            need(old==data,'Frozen certificate bytes mismatch: '+name)
    if a.check:need({x.name for x in a.check.glob('*.json')}==set(result),'certificate filename set mismatch')
    print(json.dumps({'status':'PASS','certificate_count':len(result),'certificate_sha256':hashes,
      'affine_pair_patterns':84,'ordinary_pair_directory':900,'newly_excluded_restricted_patterns':108,
      'nonzero_sign_patterns':83,'source1_zero_exceptions_discharged':1,'proof_bounded_n_rows':[425],
      'terminal_pairs':206,'terminal_survivors':0,'full_power_local_tests':12096,
      'complete_mod1800_classes':'42 -> 42','certified_historical_net_difference':0,
      'BFT_used_by_new_proof':False,'Lean_run':False,'network_used':False,
      'repository_operations':False,'previous_research_scripts_executed':False},ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()
