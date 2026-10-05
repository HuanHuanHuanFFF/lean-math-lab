#!/usr/bin/env python3
"""Offline exact proof certificates for C Round8 / SOURCE01-CUBIC012.
The publication BFT and historical unit-window theorem are ADOPTED inputs.
No Lean, network, repository actions, or previous-round programs are run here.
"""
from __future__ import annotations
import argparse,csv,hashlib,io,itertools,json,math,sys,zipfile
from collections import Counter
from fractions import Fraction as F
from pathlib import Path
from exact import (need,clean,add,scale,mul,power,val,sub,rows,poly,frac,
                   sign_certificate,bernstein_certificate,from_vector,N,J,ONE)
PREV_SHA='98aef16bd397d0260a67e111b157c117706cef312f51a7b3e86453d82933fa4c'
PREV_ROOT='B699-C-R7-PAIRCONIC012-20261002/'
TARGET=(352,425,776,1026,1377,1450)
EXPECTED_RESIDUAL=[((0,2),(1,2),(1,4)),((0,2),(1,3),(1,3)),((0,2),(1,4),(1,3)),
 ((0,2),(2,3),(1,3)),((0,2),(2,4),(1,3)),((0,3),(1,2),(1,3)),
 ((0,3),(2,3),(1,2)),((0,3),(2,3),(1,3)),((0,3),(2,3),(2,3)),((0,3),(2,3),(2,4))]

def encode(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(b):return hashlib.sha256(b).hexdigest()
def rough(n):
    n=abs(n)
    if n==0:return 0
    for p in (2,3,5):
        while n%p==0:n//=p
    return n

def split_a(n):
    q=n;s=1
    for p in (2,3,5):
        while q%p==0:q//=p;s*=p
    return s,q

def split_b(n):
    q=n
    while True:
        c=math.gcd(q,30)
        if c==1:return n//q,q
        q//=c

def vp(n,p):
    need(n>0,'valuation input must be positive')
    z=0
    while n%p==0:n//=p;z+=1
    return z

def vp_choose(n,j,p):
    v=0;P=p
    while P<=n:v+=n//P-j//P-(n-j)//P;P*=p
    return v

def divisors(n):
    out=[]
    for d in range(1,math.isqrt(n)+1):
        if n%d==0:
            out.append(d)
            if d*d!=n:out.append(n//d)
    return sorted(out)

def bind_sources(root):
    path=root/'dependencies/PREVIOUS_ROUND.zip';data=path.read_bytes()
    need(sha(data)==PREV_SHA,'previous archive hash mismatch')
    with zipfile.ZipFile(io.BytesIO(data)) as z:
        manifest=z.read(PREV_ROOT+'MANIFEST.sha256').decode();hashes={}
        for ln in manifest.splitlines():
            h,name=ln.split(None,1);name=name.strip().lstrip('*');hashes[name]=h
            need(sha(z.read(PREV_ROOT+name))==h,'previous manifest mismatch '+name)
        mapping={'R7_HANDOFF.md':'HANDOFF.md','R7_PROOFS.md':'PROOFS.md',
                 'ACTUAL_SMALLPARTS_42.csv':'dependencies/ACTUAL_SMALLPARTS_42.csv',
                 'R7_TERMINAL_425.json':'certificates/TERMINAL_425.json'}
        copied={}
        for dst,src in mapping.items():
            b=(root/'dependencies'/dst).read_bytes();need(b==z.read(PREV_ROOT+src),'copied dependency mismatch '+dst)
            copied[dst]=sha(b)
    rec=json.loads((root/'dependencies/R7_LOCAL_REPLAY_RECEIPT.json').read_text())
    need(rec['status']=='PASS' and rec['archive_sha256']==PREV_SHA,'previous local replay receipt mismatch')
    csvs=list(csv.DictReader((root/'dependencies/ACTUAL_SMALLPARTS_42.csv').read_text().splitlines()))
    cls=[]
    for a in TARGET:
        x=next(x for x in csvs if int(x['a'])==a)
        ps=[next(p for p in (2,3,5) if int(x['r'+str(p)])==h) for h in range(3)]
        ks=[int(x['kappa'+str(h)]) for h in range(6)]
        need([x['H_at_'+str(h)] for h in (3,4,5)]==['1']*3,'tail not inactive')
        cls.append({'a':a,'p':ps,'kappa':ks,'sigma':math.prod(ks[3:])})
    return {'previous_archive_sha256':PREV_SHA,'previous_manifest_members_checked':len(hashes),
       'copied_member_sha256':copied,'previous_programs_run_by_this_verifier':False,
       'earlier_local_replay_receipt':'dependencies/R7_LOCAL_REPLAY_RECEIPT.json',
       'old_Overview_raw_sha_verified':False,'classes':cls},cls

def factor_proof(p,proof):
    kind=proof['type']
    if kind=='translated_sign':return sign_certificate(p,proof['sign'])
    if kind=='smooth_source':
        h=proof['source'];vs=[val(p,h,b) for b in range(h+1)]
        need(all(type(x) is int and x!=0 and rough(x)==1 for x in vs),'smooth source zero-exit failed')
        return {'source':h,'values':vs,'rough_product':rough(math.prod(vs)),
                'uses_unit_window_exit':True}
    raise AssertionError('unknown factor proof')

def nonzero_proof(p,proof):
    typ=proof['type']
    if typ=='translated_sign':return factor_proof(p,proof)
    if typ=='factor_nonzero':
        product={(0,0):proof['content']};rs=[]
        need(proof['content']!=0,'zero factor content')
        for r in proof['factors']:
            q=poly(r['coefficients']);need(r['exponent']>=1 and q,'invalid factor')
            product=mul(product,power(q,r['exponent']))
            rs.append({'coefficients':rows(q),'exponent':r['exponent'],'proof':factor_proof(q,r['proof'])})
        need(product==p,'factor multiplication mismatch')
        return {'content':proof['content'],'factors':rs,'product_checked':True}
    if typ=='bernstein_box':
        need(proof['n_min']==352,'Bernstein domain changed')
        return bernstein_certificate(p,proof['sign'],proof['u_intervals'])
    if typ=='coprime_13':
        product={(0,0):proof['content']};ob=[]
        for x in proof['factors']:
            q=poly(x['coefficients']);product=mul(product,power(q,x['exponent']))
            if q==J:
                ob.append({'factor':rows(q),'reason':'original j>=7'})
            else:
                v0=val(q,0,0);v2=[val(q,2,b) for b in range(3)]
                need(abs(v0)==13 and all(v2) and rough(math.prod(v2))==13,'13-coprime obstruction mismatch')
                ob.append({'factor':rows(q),'origin_value':v0,'source2_values':v2,
                  'necessary_full_q0':13,'necessary_full_q2':13,'contradiction':'gcd(q0,q2)=1'})
        need(product==p and len(ob)==2,'13 factor identity failed')
        return {'factor_identity_checked':True,'factors':ob,'uses_unit_window_exit':True}
    need(typ=='open_zero_branch','unknown zero proof type')
    return {'proved_nonzero':False,'necessary_remaining_equation':'this exact cubic F(n,j)=0'}

def certify_cubics(root):
    inp=json.loads((root/'inputs/CUBIC_WITNESSES.json').read_text())['records']
    old=[p for p in itertools.product(*[list(itertools.combinations(range(h+1),2)) for h in (3,4,5)])
         if sum(p[0])-2*sum(p[1])+sum(p[2])!=0 and sum(p[h-3]==(0,h) for h in (3,4,5))<2]
    need(len(old)==792,'frozen remaining signature domain mismatch')
    keys=[tuple(tuple(x) for x in r['pairs']) for r in inp]
    need(keys==old,'witnesses do not equal previous residual domain')
    out=[];types=Counter();residual=[];polys={};maxnorm=F(0)
    for r,pairs in zip(inp,keys):
        p=from_vector(r['basis_vector']);polys[pairs]=p
        need(p and (0,0) not in p and max(a+b for a,b in p)<=3,'nonzero origin cubic missing')
        src=[(0,0),(1,0),(1,1)]+[(h,b) for h,bs in zip((3,4,5),pairs) for b in bs]
        need(all(val(p,n,j)==0 for n,j in src),'source-anchored cubic does not vanish')
        norm=sum(F(abs(c),2**b)*F(352)**(a+b-3) for (a,b),c in p.items())
        need(norm<88,'cubic norm bound failed');maxnorm=max(maxnorm,norm)
        typ=r['proof']['type'];types[typ]+=1;pr=nonzero_proof(p,r['proof'])
        out.append({'pairs':pairs,'basis_vector':r['basis_vector'],'polynomial':rows(p),'source_points':src,
          'degree':max(a+b for a,b in p),'norm_bound':frac(norm),'proof_type':typ,'proof':pr})
        if typ=='open_zero_branch':
            vs=[val(p,2,b) for b in range(3)];need(all(vs),'unbounded source2 zero slot')
            D=rough(math.prod(vs));ds=[d for d in divisors(D) if d>1]
            assignments={str(d):{str(p0):[b for b,v in enumerate(vs) if v%p0==0] for p0 in divisors(d) if p0>1 and all(p0%t for t in range(2,math.isqrt(p0)+1))} for d in ds}
            residual.append({'pairs':pairs,'polynomial':rows(p),'source2_values':vs,
                'complete_q2_divides':D,'possible_q2_values':ds,'source2_prime_slot_lists':assignments,
                'equation_is_only_necessary':True,'recovered_NC_input':False})
    need(dict(types)=={'translated_sign':621,'factor_nonzero':152,'bernstein_box':8,'coprime_13':1,'open_zero_branch':10},'nonzero classification changed')
    need([r['pairs'] for r in residual]==EXPECTED_RESIDUAL,'residual list changed')
    qvals=sorted(set(v for r in residual for v in r['possible_q2_values']))
    need(qvals==[7,13,19,29,133],'q2 residual set mismatch')
    need(maxnorm==F(10790807,123904),'max exact norm mismatch')
    c={'scope':'same original NC012; three complete rough sources each contained in two ordinary slots',
      'previous_residual_signatures':792,'new_nonzero_proofs':782,'remaining_zero_equations':10,
      'proof_type_counts':dict(types),'max_norm':frac(maxnorm),'universal_strict_norm':88,
      'origin_factor_divided':'actual g','complete_source_divisor':'q1*q3*q4*q5 divides F/g',
      'all_records':out}
    rc={'scope':'only the exact-two-slot residual subdomain; not all original inputs or residue classes',
        'q2_allowed_values':qvals,'q2_absolute_bound':133,'complete_q2_is_squarefree_in_this_subdomain':True,
        'original_inputs_recovered':False,'records':residual}
    return c,rc,polys

def height_contract(root,cls):
    bft=json.loads((root/'inputs/BFT_CONTRACT.json').read_text());ex=bft['exception_pairs']
    need(len(ex)==40 and all(abs(x-y)!=1 for x,y in ex),'BFT distance1 exceptions mismatch')
    need(bft['lambdas']=={'2,3':[57,200],'2,5':[129,500],'3,5':[27,125]},'BFT exact lambda contract changed')
    hs=[]
    for c in cls:
        a=c['a'];sig=c['sigma'];B=92*sig;k0,k1=c['kappa'][:2];C=F(max(k0,k1)*B,7)
        A,D=bft['lambdas'][','.join(map(str,sorted(c['p'][:2])))];K=10
        while 2**((K-1)*A)*C.denominator**D<C.numerator**D:K+=1
        need(K==10 or 2**((K-2)*A)*C.denominator**D<C.numerator**D,'height rounding not minimal')
        N0=k0*k1*B+1
        need(N0>=1002,'low/high cutoff must cover publication small-value range')
        hs.append({**c,'q0q1_strict_bound':B,'BFT_pair':sorted(c['p'][:2]),'lambda':[A,D],
         'cofactor_bound':frac(C),'height_exponent_K':K,'height':'n<2^K',
         'CRT_high_start':N0,'full_power_product_proof':'P0P1=n(n-1)/(kappa0*kappa1*q0*q1)>n for n>=cutoff',
         'small_publication_values_retained':True})
    need([h['height_exponent_K'] for h in hs]==[27,43,30,35,31,46],'expected heights changed')
    need(F(88*88,85)<92,'mass constant bound changed')
    return {'new_original_row_consumer':'n in R012 and q0*q1<92*s3*s4*s5 => Common6 for every original legal j',
      'proof_bounded_before_enumeration':True,'BFT_publication_adopted_not_reproved':True,
      'used_actual_values':['n=kappa0*p0^e0*q0','n-1=kappa1*p1^e1*q1'],
      'exception_pair_count':40,'distance1_matches':[], 'rows':hs},hs

def powers_a(p,K):
    e=3 if p==2 else 2;P=p**e;out=[]
    while P<2**K:out.append((e,P));P*=p;e+=1
    return out

def inv_b(a,b):
    r0,r1=a,b;s0,s1=1,0
    while r1:q=r0//r1;r0,r1=r1,r0-q*r1;s0,s1=s1,s0-q*s1
    need(r0==1,'noncoprime inverse');return s0%b

def powers_b(p,K):
    pp=1;lst=[]
    for e in range(1,K+1):
        pp*=p
        if e>=(3 if p==2 else 2) and pp<1<<K:lst.append((e,pp))
    return list(reversed(lst))

def enumerate_rows(hs,reverse=False):
    split=split_b if reverse else split_a;big=[];small=[];kept=[];stats=[]
    for h in hs:
        a=h['a'];p0,p1=h['p'][:2];K=h['height_exponent_K'];N0=h['CRT_high_start'];B=h['q0q1_strict_bound']
        pw0=powers_b(p0,K) if reverse else powers_a(p0,K);pw1=powers_b(p1,K) if reverse else powers_a(p1,K)
        disposition=Counter();steps=[]
        loop=itertools.product(pw1,pw0) if reverse else itertools.product(pw0,pw1)
        for x,y in loop:
            (e,P),(f,Q)=(y,x) if reverse else (x,y)
            n=1+Q*((-inv_b(Q,P))%P) if reverse else P*pow(P,-1,Q)
            if n<N0:why='below_high_cutoff'
            elif n>=1<<K:why='outside_absolute_height'
            elif ((n%8,n%9,n%25)!=(a%8,a%9,a%25) if reverse else n%1800!=a):why='wrong_residue'
            elif ((n%(P*p0)==0 or (n-1)%(Q*p1)==0) if reverse else (vp(n,p0)!=e or vp(n-1,p1)!=f)):why='not_exact_complete_power'
            else:
                qs=[split(n-r)[1] for r in range(6)]
                if qs[0]*qs[1]>=B:why='q0q1_bound_fails'
                elif min(qs)==1:why='adopted_unit_window'
                else:why='retained';kept.append(n)
            disposition[why]+=1;steps.append([a,e,f,n,why])
        low=list(range(a,N0,1800))
        if reverse:low.reverse()
        low_kept=[]
        for n in low:
            sq=[split(n-r) for r in range(6)];q=[v[1] for v in sq]
            why='q0q1_bound_fails' if q[0]*q[1]>=B else 'adopted_unit_window' if 1 in q else 'retained'
            small.append({'n':n,'a':a,'smallparts':[v[0] for v in sq],'roughparts':q,'status':why})
            if why=='retained':kept.append(n);low_kept.append(n)
        big+=steps;stats.append({'a':a,'power_pairs':len(steps),'high_dispositions':dict(sorted(disposition.items())),
          'low_original_rows_checked':len(low),'low_retained':sorted(low_kept),'maximum_allowed_exponents':[max(e for e,P in pw0),max(f for f,Q in pw1)]})
    need(len(big)==2663,'full-power pair count mismatch');need(len(small)==13,'low residue representatives incomplete')
    need(sorted(set(kept))==[352,425,1377],'proof-bounded original rows changed')
    need(not any(r[-1]=='retained' for r in big),'unexpected high representative')
    return {'method':'reverse independent Euclid / CRT / gcd30 / descending full powers' if reverse else 'forward pow inverse / CRT / repeated division / ascending full powers',
      'full_power_pairs':len(big),'all_pair_records':sorted(big),'low_rows':sorted(small,key=lambda a:a['n']),
      'per_class':stats,'retained_original_rows':sorted(set(kept)),
      'high_retained_original_rows':[],'arbitrary_CRT_lifts_discarded_only_after_P0P1_gt_n_proof':True}

def terminal(root):
    witness={352:(349,3),1377:(1373,4)};A=[];B=[];primechecks=[]
    for n,(p,h) in witness.items():
        tests=[[d,p%d] for d in range(2,math.isqrt(p)+1)]
        need(all(r for _,r in tests),'terminal witness not prime')
        need(vp(n-h,p)==1 and n%p==h and n//2<p,'terminal full source exponent incorrect')
        primechecks.append({'n':n,'p':p,'source':h,'complete_exponent':1,'primality_trial_remainders':tests})
        for j in range(7,n//2+1):
            e6,ej=vp_choose(n,6,p),vp_choose(n,j,p)
            need(j%p>h and e6>0 and ej>0,'original source witness failed')
            A.append([n,j,p,e6,ej])
    for n in sorted(witness,reverse=True):
        p,h=witness[n]
        for j in range(n//2,6,-1):
            c6=math.comb(n,6);cj=math.comb(n,j);common=math.gcd(c6,cj)
            need(common%p==0,'direct same-prime binomial gcd failed')
            B.append([n,j,p,vp(c6,p),vp(cj,p)])
    A.sort();B.sort();need(A==B and len(A)==852,'new whole terminal witness sets disagree')
    prev=json.loads((root/'dependencies/R7_TERMINAL_425.json').read_text())
    need(prev['pair_count']==206 and prev['NC_survivors']==[],'adopted 425 terminal receipt mismatch')
    allrec=sorted(A+prev['witness_records']);need(len(allrec)==1058,'combined original terminal coverage changed')
    return {'new_original_rows':[352,1377],'newly_recomputed_original_pairs':852,
      'new_forward_reverse_full_sets_equal':True,'new_prime_certificates':primechecks,
      'new_witness_records':A,'adopted_previously_completed_row':425,'adopted_pairs':206,
      'adopted_record_sha256':sha((root/'dependencies/R7_TERMINAL_425.json').read_bytes()),
      'old_425_not_rerun_by_this_verifier':True,'total_original_rows':[352,425,1377],
      'total_original_pairs':1058,'combined_witness_records':allrec,'NC_survivors':[],
      'domain':'each retained n, ALL original 7<=j<=floor(n/2), no slot or phase filter'}

def arithmetic_controls(polys,cls):
    tests=0;origin=0;failure=None
    for key,p in polys.items():
        for h,slots in zip((3,4,5),key):
            for b in slots:
                for prime,e,u,v in [(7,2,1,1),(11,3,2,1),(13,2,1,2)]:
                    Q=prime**e;n=h+Q*u;j=b+Q*v
                    need(vp(n-h,prime)==e and val(p,n,j)%Q==0,'full-power local lift failed');tests+=1
        for g in (7,49,121):
            need(val(p,19*g,8*g)%g==0,'actual origin g divisor failed');origin+=1
        if failure is None:
            for h,slots in zip((3,4,5),key):
                for b in slots:
                    n=h+49;j=b+7
                    if val(p,n,j)%7==0 and val(p,n,j)%49!=0:
                        failure={'pairs':key,'source':h,'n':n,'j':j,'p':7,'complete_power':49,
                         'polynomial_value':val(p,n,j),'mod7':0,'mod49':val(p,n,j)%49,
                         'meaning':'passes only first prime layer; fails actual full-power layer; not an NC model'};break
                if failure:break
    need(tests==14256 and origin==2376 and failure is not None,'full-power controls incomplete')
    # Two whole rough sources supported on ordinary slots {0,1}.
    costs=[]
    for c in cls:
        for h,k in itertools.combinations((3,4,5),2):
            cost=c['kappa'][h]*c['kappa'][k]
            need(F(88*cost,343)<77,'low-near-pair full-source contradiction failed')
            need(F(352*cost,343)<92*c['sigma'],'high-near-pair row consumer threshold failed')
            costs.append({'a':c['a'],'sources':[h,k],'smallpart_product':cost,
                 'j_pair_gq1_upper':frac(F(88*cost,343)),
                 'k_pair_gq1_upper':frac(F(352*cost,343))})
    return {'full_power_local_tests':tests,'origin_actual_g_tests':origin,'radical_is_not_a_substitute':failure,
      'near_pair_consumer':'distinct h,k in {3,4,5}: q_h*q_k divides j(j-1) OR k_orig(k_orig-1) => Common6',
      'third_source_slot_count_unrestricted':True,'cost_certificates':costs,
      'partial_block_failure':'B_h=q_h/R_h only gives g*q1<92*sigma*R3*R4*R5 when F!=0; no R upper bound'}

def make(root,out,check=None):
    out.mkdir(parents=True,exist_ok=True)
    source,cls=bind_sources(root)
    cubics,residual,polys=certify_cubics(root)
    heights,hs=height_contract(root,cls)
    a=enumerate_rows(hs);b=enumerate_rows(hs,True)
    need(a['retained_original_rows']==b['retained_original_rows'],'independent row recoveries differ')
    need(a['all_pair_records']==b['all_pair_records'],'complete CRT pair sets differ')
    need(a['low_rows']==b['low_rows'],'low interval row recoveries differ')
    term=terminal(root);controls=arithmetic_controls(polys,cls)
    outputs={'SOURCE_BINDING.json':source,'ANCHORED_CUBICS.json':cubics,'SOURCE01_HEIGHT.json':heights,
      'POWER_FORWARD.json':a,'POWER_REVERSE.json':b,'ORIGINAL_TERMINAL.json':term,
      'RESIDUAL_TEN.json':residual,'COMPLETE_POWER_AND_FAILURES.json':controls}
    hashes={}
    for name,obj in outputs.items():
        data=encode(obj);(out/name).write_bytes(data);hashes[name]=sha(data)
        if check:
            need((check/name).exists(),'missing frozen certificate '+name)
            need(json.loads((check/name).read_text())==json.loads(data),'frozen certificate JSON differs '+name)
            need((check/name).read_bytes()==data,'frozen certificate bytes differ '+name)
    summary={'status':'PASS','certificate_count':len(outputs),'certificate_sha256':hashes,
      'existing_pair_domain':792,'new_nonzero_cubic_signatures':782,'remaining_cubic_zero_signatures':10,
      'remaining_complete_q2_values':residual['q2_allowed_values'],'full_power_pairs_per_direction':2663,
      'low_rows_before_filter':13,'terminal_original_rows':[352,425,1377],
      'new_original_witness_pairs':852,'adopted_425_pairs':206,'terminal_NC_survivors':0,
      'full_power_local_tests':controls['full_power_local_tests'],'complete_mod1800_classes':'42 -> 42',
      'certified_historical_net_difference':0,'BFT_adopted_not_reproved':True,'unit_window_adopted_not_reproved':True,
      'previous_research_programs_executed':False,'Lean_run':False,'network_used':False,'repository_operations':False}
    print(json.dumps(summary,ensure_ascii=False,sort_keys=True,indent=2))
    return summary

def main():
    p=argparse.ArgumentParser();p.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);p.add_argument('--output',type=Path,required=True);p.add_argument('--check',type=Path)
    a=p.parse_args();make(a.root.resolve(),a.output.resolve(),a.check.resolve() if a.check else None)
if __name__=='__main__':main()
