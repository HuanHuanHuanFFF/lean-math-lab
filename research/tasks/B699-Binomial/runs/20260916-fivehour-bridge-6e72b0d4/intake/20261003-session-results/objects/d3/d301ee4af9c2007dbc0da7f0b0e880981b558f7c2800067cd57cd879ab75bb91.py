#!/usr/bin/env python3
"""C R6 exact, offline verification. Standard library only; no Lean or repository I/O.
The proof of BFT is an adopted publication input, not something this code checks.
The local tests accompany general proofs; the power terminal is proof-bounded.
"""
from __future__ import annotations
import argparse, csv, hashlib, io, itertools, json, math, sys, zipfile
from fractions import Fraction
from pathlib import Path

PREVIOUS_SHA='b2cfde80b619fd1f67d803efb6b8499bd9097054456b77c7ec4097c1829a2c45'
PREVIOUS_ROOT='B699-C-R5-INNER4-SHORTPHASE-20261002/'
TARGET=(352,425,776,1026,1377,1450)
SMALL=(2,3,5)

def require(v,msg):
    if not v: raise AssertionError(msg)
def hsh(b):return hashlib.sha256(b).hexdigest()
def encode(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def rough(x):
    x=abs(x)
    if not x:return 0
    for p in SMALL:
        while x%p==0:x//=p
    return x

def rough_b(x):
    x=abs(x)
    if not x:return 0
    while True:
        q=math.gcd(x,30)
        if q==1:return x
        x//=q

def divs_a(n):
    out=[]
    for d in range(1,math.isqrt(n)+1):
        if n%d==0:
            out.append(d)
            if d*d!=n:out.append(n//d)
    return sorted(out)
def divs_b(n):
    # Independent factorization -> divisor product, not square-root pair collection.
    fs=[];p=2
    while p*p<=n:
        e=0
        while n%p==0:n//=p;e+=1
        if e:fs.append((p,e))
        p=3 if p==2 else p+2
    if n>1:fs.append((n,1))
    ds=[1]
    for p,e in fs:ds=[d*p**a for d in ds for a in range(e+1)]
    return sorted(ds,reverse=True)
def vp(n,p):
    if n==0:raise ValueError('valuation of zero is not finite')
    n=abs(n);v=0
    while n%p==0:n//=p;v+=1
    return v

def binom_v(n,k,p):
    def vfact(x):
        out=0
        while x:x//=p;out+=x
        return out
    return vfact(n)-vfact(k)-vfact(n-k)

def dependencies(root):
    zbytes=(root/'dependencies/PREVIOUS_ROUND.zip').read_bytes()
    require(hsh(zbytes)==PREVIOUS_SHA,'R5 ZIP SHA mismatch')
    checked={}
    with zipfile.ZipFile(io.BytesIO(zbytes)) as z:
        man=z.read(PREVIOUS_ROOT+'MANIFEST.sha256').decode()
        for ln in man.splitlines():
            if not ln.strip():continue
            hh,name=ln.split(None,1);name=name.strip().lstrip('*')
            require(hsh(z.read(PREVIOUS_ROOT+name))==hh,'R5 manifest mismatch: '+name)
            checked[name]=hh
        copies={'R5_HANDOFF.md':'HANDOFF.md','R5_PROOFS.md':'PROOFS.md','ACTUAL_SMALLPARTS_42.csv':'dependencies/ACTUAL_SMALLPARTS_42.csv'}
        for dst,src in copies.items():
            require((root/'dependencies'/dst).read_bytes()==z.read(PREVIOUS_ROOT+src),'R5 selected bytes mismatch')
    data=list(csv.DictReader((root/'dependencies/ACTUAL_SMALLPARTS_42.csv').open()))
    rows={int(r['a']):r for r in data if int(r['a']) in TARGET}
    require(len(rows)==6,'target table')
    for a,row in rows.items():
        ps=[]
        for r in (0,1,2):
            t=row[f'H_at_{r}'];require(t in ('H2','H3','H5'),'one active base required');ps.append(int(t[1:]))
        require(sorted(ps)==[2,3,5],'distinct actual active bases')
        for r in (3,4,5):require(row[f'H_at_{r}']=='1','inactive source required')
    return rows, {'previous_zip_sha256':PREVIOUS_SHA,'previous_manifest_members_checked':len(checked),'selected_copies_byte_equal':True,'previous_verifier_executed_by_this_script':False,'inherited_target_rows':list(TARGET),'inherited_csv_sha256':hsh((root/'dependencies/ACTUAL_SMALLPARTS_42.csv').read_bytes())}

def poly_mul(a,b):
    c={}
    for (i,j),x in a.items():
        for (k,l),y in b.items():c[i+k,j+l]=c.get((i+k,j+l),0)+x*y
    return {m:v for m,v in c.items() if v}

def padd(*terms):
    out={}
    for f in terms:
        for m,c in f.items():out[m]=out.get(m,0)+c
    return {m:c for m,c in out.items() if c}
def scale(f,c):return {m:c*v for m,v in f.items() if c*v}
def ppow(f,e):
    out={(0,0):1}
    for _ in range(e):out=poly_mul(out,f)
    return out
def pconst(c):return {(0,0):c} if c else {}
def pval(f,j,k):return sum(c*j**a*k**b for (a,b),c in f.items())

def centered_basis(polys):
    N={(1,0):1,(0,1):1};D={(1,0):-1,(0,1):1}
    nm=lambda c:padd(N,pconst(-c))
    S=ppow(D,2)
    P4=padd(ppow(D,4),poly_mul(padd(scale(N,-6),pconst(20)),S),scale(poly_mul(nm(2),nm(4)),3))
    forms=[P4,
      scale(poly_mul(poly_mul(D,nm(5)),padd(S,scale(N,-3),pconst(8))),4),
      scale(poly_mul(poly_mul(nm(5),nm(4)),padd(S,scale(N,-1),pconst(2))),6),
      scale(poly_mul(poly_mul(poly_mul(D,nm(5)),nm(4)),nm(3)),4),
      poly_mul(poly_mul(nm(5),nm(4)),poly_mul(nm(3),nm(2)))]
    matrix=[]
    for k in range(5):
        row=[]
        for b in range(5):
            row.append(sum(math.comb(b,u)*(-1)**(b-u)*math.comb(4-b,k-u) for u in range(b+1) if 0<=k-u<=4-b))
        actual=padd(*[scale(f,c) for f,c in zip(polys,row)])
        require(actual==forms[k],'centered four-coefficient polynomial identity')
        matrix.append(row)
    K=padd(ppow(D,6),poly_mul(padd(scale(N,-15),pconst(40)),ppow(D,4)),poly_mul(padd(scale(ppow(N,2),45),scale(N,-210),pconst(184)),S),scale(poly_mul(N,poly_mul(nm(2),nm(4))),-15))
    K2=padd(poly_mul(padd(S,scale(N,-9),pconst(20)),P4),scale(forms[2],-2))
    require(K==K2,'K6 centered identity')
    endpoints=[pval(P4,0,r)//24 for r in range(1,6)]
    require(endpoints==[1,2,4,8,16] and pval(P4,0,0)==24,'centered endpoint units')
    centers=[]
    for r in (2,4):
        shifted=shift(P4,r//2,r//2);c=shifted.get((1,0));require(c==shifted.get((0,1)) and abs(c)==6,'centered exact valuation coefficient')
        centers.append({'r':r,'linear_24B0':c})
    for p,e,r,u,v in itertools.product((7,11,23),(1,2,4),(2,4),(1,),(1,2)):
        Q=p**e;j=r//2+Q*u;k=r//2+Q*v
        require(vp(pval(P4,j,k),p)==e,'complete centered source order')
    return {'transform_matrix_from_a_to_B':matrix,
       'coefficient_polynomials_24B':[[[i,j,c] for (i,j),c in sorted(f.items())] for f in forms],
       'original_origin_constants_B':[pval(f,0,0)//24 for f in forms],
       'endpoint_values_B0_r1_to5':endpoints,'central_exact_linear':centers,
       'identities':'I|B_i; K6=24(d^2-9n+20)B0-48B2; w0=B0/I is positive under R4 d^2>15n and gcd(w0,q0*Dend*C2*C4)=1.',
       'K6_identity_not_an_independent_equation':True}

def integer_coefficients():
    # Return 24*a_b as integer bivariate polynomials in original j,k.
    ans=[]
    for b in range(5):
        f={(0,0):24//(math.factorial(b)*math.factorial(4-b))}
        for t in range(1,b+1):f=poly_mul(f,{(1,0):1,(0,0):-t})
        for t in range(1,5-b):f=poly_mul(f,{(0,1):1,(0,0):-t})
        ans.append(f)
    return ans

def shift(f,a,b):
    out={}
    for (i,j),v in f.items():
        for u in range(i+1):
            for w in range(j+1):
                c=v*math.comb(i,u)*math.comb(j,w)*a**(i-u)*b**(j-w)
                out[u,w]=out.get((u,w),0)+c
    return {m:v for m,v in out.items() if v}

def coeffs(n,j):return [math.comb(j-1,b)*math.comb(n-j-1,4-b) for b in range(5)]

def inner_content():
    polys=integer_coefficients();central=centered_basis(polys);table=[]
    for r in range(2,6):
        for b in range(1,r):
            terms=[shift(f,b,r-b) for f in polys]
            orders=[min(i+j for i,j in f) for f in terms]
            lx=terms[4].get((1,0),0);ly=terms[0].get((0,1),0)
            require(min(orders)==1 and min(orders)>0,'inner source vanishing')
            require(abs(lx) in (2,6) and abs(ly) in (2,6),'outer coefficient exact units')
            table.append({'r':r,'slot':b,'orders_24a':orders,'a4_j_linear_times24':lx,'a0_k_linear_times24':ly})
    allowed=[];rejected=[]
    for a,b in itertools.product(range(4),repeat=2):
        if a+b<=3:allowed.append([a,b]);continue
        z=max(0,4-b);require(z<=a,'residue nonvanishing witness')
        rejected.append({'j_minus1_residue':a,'k_minus1_residue':b,'coefficient_index_nonzero':z,'integer_product':math.comb(a,z)*math.comb(b,4-z)})
    local=[]
    for p,e in itertools.product((7,11,23),(1,2,4)):
        q=p**e
        for r in range(2,6):
            for b in range(1,r):
                for u,v in ((1,1),(1,2),(p,1),(1,p)):
                    require((u+v)%p!=0,'test requires exact source exponent')
                    j=b+q*u;k=r-b+q*v;n=j+k
                    vals=[vp(x,p) for x in coeffs(n,j)]
                    require(vp(n-r,p)==e and min(vals)==e,'exact inner content valuation')
                    local.append([p,e,r,b,u,v,vals])
    require(len(local)==360,'local sample count')
    bad=coeffs(51,8)
    require(vp(51-2,7)==2 and min(vp(a,7) for a in bad)==1,'prime-level countercheck')
    return {'theorem':'Under the full NC6 source windows, rough235(gcd(a0,...,a4))=I; hence rough235(gcd(v0,...,v4))=1. Not a converse to NC6.', 'centered_basis':central,'source_table':table,'allowed_small_residue_pairs':allowed,'excluded_small_residue_pairs':rejected,'local_full_power_tests':local,'test_count':len(local),'incomplete_window_counterexample':{'n':51,'j':8,'p':7,'source_exponent':2,'coefficient_content_exponent':1,'full_window_fails':True}}

def classify(rows):
    allseeds=[];empty=[];active=[];by=[]
    for res in TARGET:
        row=rows[res];cnt=rej=0
        for r in (3,4,5):
            s=int(row[f'kappa{r}']);aa=list(range(1,(s+1)//2))
            if not aa:empty.append({'residue':res,'r':r,'s':s,'reason':'no integer 1 <= a < s/2'})
            for a in aa:
                for b in range(r+1):
                    D=s*b-a*r
                    P=[math.prod(D+a*h-s*c for c in range(h+1)) for h in range(3)]
                    R=[rough(x) for x in P]
                    require(sum(x!=0 for x in P)>=2,'two nonzero source products')
                    # Independent integer evaluation of the three small products.
                    require(P==[D,(D+a)*(D+a-s),(D+2*a)*(D+2*a-s)*(D+2*a-2*s)],'transport identity')
                    seed={'id':len(allseeds),'residue':res,'r':r,'s':s,'a':a,'b':b,'D':D,'P':P,'R':R}
                    cnt+=1
                    if 1 in R:seed['status']='UNIT_REJECT';seed['reject_source']=R.index(1);rej+=1
                    else:seed['status']='BOUNDED_POWER_TERMINAL';active.append(seed)
                    allseeds.append(seed)
        by.append({'residue':res,'all_affine_seeds':cnt,'unit_reject':rej,'power_seeds':cnt-rej})
    require(len(allseeds)==250 and len(active)==76 and len(empty)==9,'classification checksum')
    require(sum(s['status']=='UNIT_REJECT' for s in allseeds)==174,'unit exits')
    return active,{'range':'012 six classes; r in {3,4,5}; all complete q_r assigned to one ORDINARY slot b','geometrically_empty_source_windows':empty,'affine_seeds':allseeds,'counts_by_residue':by,'all_affine_seeds':250,'unit_exits':174,'bounded_seeds':76,'geometric_empty_windows':9}

def heights(root,rows,seeds):
    contract=json.loads((root/'dependencies/BFT_CONTRACT.json').read_text())
    ex=contract['unordered_exception_pairs'];require(len(ex)==40,'BFT exception list count')
    require(not any(abs(a-b) in (1,2) for a,b in ex),'no difference-one/two exceptions')
    lam={tuple(map(int,k.split(','))):tuple(v) for k,v in contract['lambda'].items()}
    hs=[]
    for seed in seeds:
        row=rows[seed['residue']];ps=[int(row[f'H_at_{h}'][1:]) for h in range(3)];kap=[int(row[f'kappa{h}']) for h in range(3)];options=[]
        for i,j in itertools.combinations(range(3),2):
            if not seed['R'][i] or not seed['R'][j]:continue
            A,B=lam[tuple(sorted((ps[i],ps[j])))];C=max(kap[i]*seed['R'][i],kap[j]*seed['R'][j]);K=10
            while 2**((K-1)*A)<C**B:K+=1
            options.append((K,C,i,j,A,B))
        require(bool(options),'missing nonzero pair')
        K,C,i,j,A,B=min(options)
        require(2**((K-1)*A)>=C**B,'exact dyadic height')
        hs.append({**seed,'pair':[i,j],'K':K,'C':C,'lambda':[A,B],'ps':ps,'kappa':kap,'all_pair_options':[list(v) for v in options]})
    require(max(s['K'] for s in hs)==44 and min(s['K'] for s in hs)==11,'height range')
    return hs,{'large_segment_n_min':1003,'small_segment_included':True,'small_segment_n_max':1002,'exception_pairs_checked':40,'exception_matches':0,'applied_differences':[1,2],'dyadic_min':11,'dyadic_max':44,'candidate_upper_bound':'n < 2^44 (only within the single-ordinary-slot necessary domain)','seeds':hs,'BFT_is_adopted_not_proved':True}

def restored_details(seed,n,result,h,exp,q):
    if result[0]=='residue':return None
    j=result[1]
    require(rough(n-h)==q and vp(n-h,seed['ps'][h])==exp,'actual complete reconstruction exponent')
    require(result[0]=='source_bound','unexpected recorded terminal state')
    src=result[2];qs=result[3];D=abs(seed['P'][src]);deficit=qs[src]//math.gcd(qs[src],D)
    require(deficit>1,'missing full source deficit')
    pp=2
    while pp*pp<=deficit and deficit%pp:pp+=1
    prime=pp if pp*pp<=deficit else deficit
    require(prime>=7 and all(prime%k for k in range(2,math.isqrt(prime)+1)),'exact witness primality')
    e=vp(n-src,prime);power=prime**e
    require(j%power>src and n%power==src,'same original complete layer fails')
    vals=[binom_v(n,6,prime),binom_v(n,j,prime)]
    require(min(vals)>0,'same-prime original binomials')
    g=math.gcd(n,j)
    return {'seed_id':seed['id'],'n':n,'j':j,'g':g,'alpha':n//g,'beta':j//g,'d':n-2*j,'epsilon':(n-2*j)//g,
            'failed_source':src,'actual_complete_power':[prime,e,power], 'binomial_valuations':vals}

def filter_a(seed,n):
    if n%1800!=seed['residue']:return ['residue']
    r,s,a,b=seed['r'],seed['s'],seed['a'],seed['b']
    if (n-r)%s:return ['source_integrality']
    q=(n-r)//s
    if rough(n-r)!=q:return ['actual_s_r']
    j=b+a*q
    if not 7<=j<=n//2:return ['legal_j',j]
    actual=[rough(n-h) for h in range(3)]
    for h,(R,qh) in enumerate(zip(seed['R'],actual)):
        if qh<7:return ['unit_source',j,h,actual]
        if R and R%qh:return ['source_bound',j,h,actual]
    return ['PASS',j,actual]

def filter_b(seed,n):
    # CRT-component identification, independent q-stripping and j recovery.
    res=seed['residue']
    if any(n%m!=res%m for m in (8,9,25)):return ['residue']
    s=seed['s'];nom=seed['a']*n+seed['D']
    if nom%s:return ['original_j_integrality']
    j=nom//s
    if j<7 or j>n//2:return ['legal_j',j]
    if (n-seed['r'])//rough_b(n-seed['r'])!=s:return ['actual_s_r']
    actual=[rough_b(n-h) for h in range(3)]
    for h in range(3):
        if actual[h]==1:return ['unit_source',j,h,actual]
        if seed['P'][h]!=0 and abs(seed['P'][h])%actual[h]!=0:return ['source_bound',j,h,actual]
    return ['PASS',j,actual]

def recover_a(hs):
    records=[];survivors=[];counts={};byseed=[];details=[]
    for seed in hs:
        h=seed['pair'][0];p=seed['ps'][h];k=seed['kappa'][h];bound=1<<seed['K'];e=3 if p==2 else 2;P=p**e;num=0
        while P<bound:
            for q in divs_a(seed['R'][h]):
                if q<7:continue
                n=h+k*P*q
                if n>=bound:continue
                res=filter_a(seed,n);detail=restored_details(seed,n,res,h,e,q)
                if detail is not None:details.append(detail)
                records.append([seed['id'],h,e,q,n,res]);num+=1;counts[res[0]]=counts.get(res[0],0)+1
                if res[0]=='PASS':survivors.append([seed['id'],n,res[1],res[2]])
            P*=p;e+=1
        byseed.append([seed['id'],num])
    return {'direction':'A: first selected actual source, ascending powers and paired divisors','generated_records':len(records),'stage_counts':counts,'by_seed_counts':byseed,'records':records,'same_prime_rejections':details,'survivors':sorted(survivors)}

def recover_b(hs):
    records=[];survivors=[];counts={};byseed=[];details=[]
    for seed in reversed(hs):
        h=seed['pair'][1];p=seed['ps'][h];k=seed['kappa'][h];bound=2**seed['K'];e=3 if p==2 else 2;P=pow(p,e);powers=[]
        while P<bound:powers.append((e,P));e+=1;P=pow(p,e)
        num=0
        for q in divs_b(seed['R'][h]):
            if q==1:continue
            for e,P in reversed(powers):
                n=k*q*P+h
                if n>=bound:continue
                res=filter_b(seed,n);detail=restored_details(seed,n,res,h,e,q)
                if detail is not None:details.append(detail)
                records.append([seed['id'],h,e,q,n,res]);num+=1;counts[res[0]]=counts.get(res[0],0)+1
                if res[0]=='PASS':survivors.append([seed['id'],n,res[1],res[2]])
        byseed.append([seed['id'],num])
    return {'direction':'B: other selected actual source, reverse powers and factorization-generated divisors','generated_records':len(records),'stage_counts':counts,'by_seed_counts':byseed,'records':records,'same_prime_rejections':details,'survivors':sorted(survivors)}

def coverage():
    n,j=425,136;k=n-j;g=math.gcd(n,j);vals=coeffs(n,j);raw=math.gcd(*vals);I=rough(raw);v=[x//I for x in vals]
    require(I==7 and math.gcd(*v)==45,'weak coefficient model')
    qs=[rough(n-r) for r in range(6)];ss=[(n-r)//q for r,q in enumerate(qs)]
    require(g==qs[0]==17 and n//g==ss[0]==25,'real origin recovery')
    require(all((a-v[0])%g==0 for a in v),'common coefficient residue')
    require(all(n%17**h>=j%17**h for h in range(1,4)),'all original 17 levels')
    d=n-2*j;K=d**6-(15*n-40)*d**4+(45*n*n-210*n+184)*d*d-15*n*(n-2)*(n-4)
    T=Fraction(K,g*math.prod(qs[1:]));require(T.denominator!=1,'not an actual integral phase')
    require(n%53==1 and j%53==30,'actual source1 failure')
    w=[binom_v(n,6,53),binom_v(n,j,53)];require(min(w)>0,'same-prime witness')
    require(rough(math.gcd(*v))==1,'rough-primitive property')
    family=[]
    for m in (0,1,2,3,10):
        e=4*m+1;N=60*7**e+5
        require(N%1800==425 and rough(N-5)==7**e and (N-5)//rough(N-5)==60,'infinite row-family samples')
        family.append({'m':m,'e':e,'n':N,'q5':7**e})
    # Ordinary slot and symmetric group must not be confused.
    require(14%7==0 and 14%11==3 and 77%7==0 and 77%11==0,'two endpoint slots')
    require(14%77!=0 and (14-3)%77!=0,'not single ordinary slot')
    return {'proved_new_condition':'If n mod1800 in TARGET and some r in {3,4,5} has complete q_r | (j-b), 0<=b<=r, then Common6(n,j). This is not whole-class closure.',
            'necessary_support_corollary':{'ordinary_slots_per_q3_q4_q5_min':2,'omega_each_q3_q4_q5_min':2,'total_distinct_rough_primes_q0_through_q5_min':9},
            'whole_row_corollary':'Any q3, q4 or q5 which is one complete prime power forces Common6 for ALL legal j in these six classes.',
            'infinite_row_family':{'formula':'n=60*7^(4m+1)+5, integer m>=0; all legal j','proof_of_residue':'7^4=1 mod30 and 7^(4m+1)=7 mod30','full_source_exponents_unbounded':True,'samples_only_not_proof':family},
            'weak_model':{'n':n,'j':j,'g':g,'alpha':n//g,'q':qs,'s':ss,'coefficient_content':raw,'I_weak':I,'a':vals,'v':v,'gcd_v':math.gcd(*v),'all_source0_layers_pass':True,'all_five_inner_coefficients_integral':True,'I_weak_is_not_Q_over_a_full_Dend':True,'T_actual':[T.numerator,T.denominator],'original_source1_failure_witness':{'p':53,'n_mod_p':1,'j_mod_p':30,'valuations':w},'is_NC6':False,'is_t0_model':False},
            'symmetric_group_not_ordinary_slot':{'n':80,'j':14,'r':3,'q3':77,'two_complete_prime_blocks':[7,11],'slots':[0,3],'both_in_E3':True,'single_ordinary_slot':False,'NC6_not_asserted':True},
            'frontier':{'closed_full_residue_classes_new':0,'remaining_full_residue_classes':42,'certified_historical_net_reduction':0,'R7':[3,4,5,6,7,8,9],'epsilon_absolutely_bounded':False,'all_t0_central_closed':False}}

def generate(root):
    rows,src=dependencies(root);content=inner_content();seeds,cl=classify(rows);hs,hei=heights(root,rows,seeds)
    fw=recover_a(hs);bw=recover_b(hs)
    require(fw['generated_records']==1286 and bw['generated_records']==3748,'full power record counts')
    require(fw['survivors']==bw['survivors']==[],'terminal exact set comparison')
    return {'SOURCE_BINDING.json':src,'INNER4_EXACT_CONTENT.json':content,'AFFINE_SLOT_CLASSIFICATION.json':cl,'BFT_POWER_HEIGHTS.json':hei,'TERMINAL_FORWARD.json':fw,'TERMINAL_REVERSE.json':bw,'COVERAGE_AND_FAILURE.json':coverage()}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,required=True);ap.add_argument('--output',type=Path,required=True);ap.add_argument('--check',type=Path)
    args=ap.parse_args();root=args.root.resolve();out=args.output.resolve();require(out!=root/'certificates' or args.check is None,'check output must not overwrite certified input')
    objects=generate(root);out.mkdir(parents=True,exist_ok=True);hashes={}
    if args.check:require(set(p.name for p in args.check.glob('*.json'))==set(objects),'certificate set mismatch')
    for name,obj in sorted(objects.items()):
        b=encode(obj);(out/name).write_bytes(b);hashes[name]=hsh(b)
        if args.check:
            orig=(args.check/name).read_bytes()
            require(json.loads(orig)==obj,'certificate JSON mismatch: '+name)
            require(orig==b,'certificate byte mismatch: '+name)
    print(json.dumps({'status':'PASS','certificate_count':len(objects),'certificate_sha256':hashes,'affine_seeds':250,'geometric_empty_windows':9,'unit_exits':174,'power_terminal_seeds':76,'proof_upper_bound':'n<2^44 in the covered necessary subdomain','forward_records':1286,'reverse_records':3748,'source_bound_survivors':0,'same_original_input_restored':True,'local_full_power_tests':360,'BFT_reproved':False,'Lean_run':False,'repository_operations':False,'network_used_by_verifier':False},ensure_ascii=False,sort_keys=True,indent=2))

if __name__=='__main__':main()
