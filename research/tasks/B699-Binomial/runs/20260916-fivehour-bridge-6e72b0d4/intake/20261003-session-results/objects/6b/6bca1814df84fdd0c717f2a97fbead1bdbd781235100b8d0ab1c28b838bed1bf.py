#!/usr/bin/env python3
"""Offline exact proof-certificate verifier for C Round11. Standard library only.

Discovery kernels are inputs, not trusted theorems. This program checks their
integer coefficients, all required original source jets, nonzero certificates,
integer-valued contents, exact bounds, adopted contract linkage, and coverage.
It does not run older research programs, Lean, or network/repository operations.
"""
from __future__ import annotations
import argparse, collections, copy, functools, hashlib, itertools, json, math, sys, zipfile
from fractions import Fraction as Q
from pathlib import Path, PurePosixPath
from polynomial import add,mul,scale,power,compose,value,poly,rows,bareiss,sylvester

EXPECTED_PREV='6c3d9013971da12c720343d501c5ad6caf3dea8de14e89c5aee5ddda4b4aebf6'
MON=tuple((a,d-a) for d in range(7) for a in range(d,-1,-1))
INDEX={e:i for i,e in enumerate(MON)}
CLASSES=(352,425,776,1026,1377,1450)
GAMMA=(53874,6762389,33812,5636,90166,140884)
TAIL=((1,12,1),(2,1,60),(1,4,3),(3,2,1),(6,1,4),(1,6,5))
P012=((2,3,5),(5,2,3),(2,5,3),(3,5,2),(3,2,5),(5,3,2))
K012=((1,1,2),(1,1,1),(1,1,2),(2,1,1),(1,1,1),(2,1,1))
NVAR={(1,0):1};XVAR={(0,1):1};ONE={(0,0):1}

def require(cond,msg):
    if not cond:raise ValueError(msg)
def jbytes(obj):return (json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode('utf-8')
def shab(b):return hashlib.sha256(b).hexdigest()
def objsha(obj):return shab(jbytes(obj))
def frac(q):q=Q(q);return [q.numerator,q.denominator]
def canonical(obj):return json.dumps(obj,ensure_ascii=False,sort_keys=True,separators=(',',':'))
def vector(p):return tuple(p.get(e,0) for e in MON)
def makepoly(data):
    require(isinstance(data,list),'polynomial input must be list')
    p={}
    for item in data:
        require(len(item)==3 and all(isinstance(x,int) for x in item),'integer polynomial term')
        a,b,c=item
        require(a>=0 and b>=0 and a+b<=6 and c!=0 and (a,b) not in p,'invalid/repeated term')
        p[a,b]=c
    require(bool(p),'zero polynomial forbidden')
    return p

def old_exit(slots):
    for i,j in itertools.combinations(range(3),2):
        if len(slots[i])!=2 or len(slots[j])!=2:continue
        hi,hj=i+3,j+3
        if slots[i]==(0,hi) and slots[j]==(0,hj):return 'old_end'
        if slots[i]==(0,1) and slots[j]==(0,1):return 'old_low'
        if slots[i]==(hi-1,hi) and slots[j]==(hj-1,hj):return 'old_high'
    return None

def expected_layouts():
    shapes=sorted(set(itertools.permutations((4,2,2)))|set(itertools.permutations((3,3,2))))
    ret=[]
    for shape in shapes:
        if any(sz>h+1 for h,sz in zip((3,4,5),shape)):continue
        for slots in itertools.product(*(itertools.combinations(range(h+1),sz) for h,sz in zip((3,4,5),shape))):
            ret.append(slots)
    return ret

@functools.lru_cache(None)
def eval_row(n,x,dn=0,dx=0):
    return tuple(math.prod(range(a-dn+1,a+1))*math.prod(range(b-dx+1,b+1))*n**(a-dn)*x**(b-dx)
                 if a>=dn and b>=dx else 0 for a,b in MON)
def dot(v,w):return sum(c*d for c,d in zip(v,w))
def val(v,n,x,dn=0,dx=0):return dot(v,eval_row(n,x,dn,dx))

@functools.lru_cache(None)
def shift_mono(a,b):
    out={}
    for i in range(a+1):
        for j in range(a-i+1):
            c=math.comb(a,i)*math.comb(a-i,j)*21**(a-i-j)*2**i
            for k in range(b+1):
                e=i+k,j;out[e]=out.get(e,0)+c*math.comb(b,k)*7**(b-k)
    return out
@functools.lru_cache(None)
def translated(v):
    out={}
    for (a,b),c in zip(MON,v):
        if not c:continue
        for e,d in shift_mono(a,b).items():out[e]=out.get(e,0)+c*d
    return {e:c for e,c in out.items() if c}
def shift_sign(p):
    z=translated(vector(p));ss={1 if c>0 else -1 for c in z.values()}
    require(len(ss)==1 and z.get((0,0),0)!=0,'not strictly same-sign on j=7+x,d=7+y')
    return {'sign':next(iter(ss)),'constant':z[(0,0)],'expanded_nonzero_terms':len(z),'expansion_sha256':objsha(rows(z))}

def rough235(n):
    n=abs(n);require(n>0,'rough235 of zero')
    for p in (2,3,5):
        while n%p==0:n//=p
    return n

def check_nonzero(p,proof,depth=0):
    require(depth<12,'excessive proof nesting');kind=proof.get('type')
    if kind=='shift_sign':return {'type':kind,**shift_sign(p)}
    if kind=='source_unit':
        r=proof['source'];require(r in (0,1,2),'invalid source nonzero exit')
        vals=[value(p,r,b) for b in range(r+1)]
        require(all(vals) and rough235(math.prod(vals))==1,'source nonzero exit leaves a rough prime or zero')
        return {'type':kind,'source':r,'values':vals,'uses_old_unit_window':True}
    if kind=='factor_product':
        c=proof['constant'];require(isinstance(c,int) and c!=0,'factor scalar')
        product={(0,0):c};children=[]
        for item in proof['factors']:
            f=makepoly(item['terms']);e=item['power'];require(isinstance(e,int) and 1<=e<=6,'factor multiplicity')
            product=mul(product,power(f,e));children.append({'terms_sha256':objsha(item['terms']),'power':e,'proof':check_nonzero(f,item['proof'],depth+1)})
        require(product==p,'factorization identity mismatch')
        return {'type':kind,'constant':c,'factors':children}
    if kind=='lift_nonzero':
        parent=makepoly(proof['parent_terms']);factor=makepoly(proof['factor']);c=proof['scalar']
        require(isinstance(c,int) and c!=0 and scale(mul(factor,p),c)==parent,'lifted nonzero identity mismatch')
        return {'type':kind,'scalar':c,'factor':rows(factor),'parent_sha256':objsha(rows(parent)),'parent_proof':check_nonzero(parent,proof['parent_proof'],depth+1)}
    raise ValueError('unrecognized standalone nonzero proof '+repr(kind))

def check_pair(pid,pr,kernels):
    ids=pr['kernels'];require(len(ids)==2,'paired nonzero kernel count')
    ps=[makepoly(kernels[k]['terms']) for k in ids]
    H=makepoly(pr['common_terms']);qs=[makepoly(z) for z in pr['quotients']]
    require(len(qs)==2 and all(mul(H,q)==p for p,q in zip(ps,qs)),'common-factor decomposition mismatch')
    common_certificate=shift_sign(H)
    require(all(max(b for a,b in q)>=1 for q in qs),'X-constant resultant cannot be used as a no-common-root certificate')
    result={(0,):pr['resultant_constant']};factor_checks=[]
    for f in pr['resultant_factors']:
        fp={(a,):c for a,c in f['terms']};e=f['power']
        require(e>=1 and fp and len(fp)==len(f['terms']),'invalid resultant factor')
        result=mul(result,power(fp,e))
        shift={}
        for (a,),c in fp.items():
            for i in range(a+1):shift[(i,)]=shift.get((i,),0)+c*math.comb(a,i)*352**(a-i)
        shift={k:v for k,v in shift.items() if v}
        require(shift.get((0,),0)!=0 and len({x>0 for x in shift.values()})==1,'resultant factor is not certified nonzero for N>=352')
        factor_checks.append({'factor':f,'shift352':[[a,c] for (a,),c in sorted(shift.items())]})
    M=sylvester(*qs);sz=len(M)
    row_degree=sum(max((a for p in row for (a,),c in p.items()),default=0) for row in M)
    deg_res=max(a for (a,) in result)
    degree=max(row_degree,deg_res)
    samples=[]
    for n in range(degree+1):
        det=bareiss([[value(p,n) for p in row] for row in M]);expected=value(result,n)
        require(det==expected,'resultant interpolation identity mismatch')
        samples.append([n,det])
    return {'id':pid,'kernel_ids':ids,'common_nonzero':common_certificate,'Sylvester_size':sz,'determinant_degree_bound':row_degree,'resultant_degree':deg_res,'exact_identity_points':degree+1,'exact_identity_values':samples,'factors_nonzero':factor_checks,'argument':'bounded-degree polynomial identity, not a finite-N nonzero scan'}

@functools.lru_cache(None)
def bernstein_map(degree):
    den=16**degree*math.factorial(degree);mat=[]
    for interval in range(8):
        for k in range(degree+1):
            row=[]
            for b in range(degree+1):
                v=0
                for z in range(min(b,k)+1):
                    v+=math.comb(b,z)*interval**(b-z)*16**(degree-b)*(math.factorial(degree)//math.comb(degree,z))*math.comb(k,z)
                row.append(v)
            mat.append(tuple(row))
    return den,tuple(mat)

@functools.lru_cache(None)
def high_bound(v,degree):
    lead=[v[INDEX[degree-b,b]] for b in range(degree+1)]
    den,M=bernstein_map(degree);nums=[dot(lead,r) for r in M]
    return Q(max(map(abs,nums)),den),objsha(nums)

def check_bernstein_maps():
    ret=[]
    for d in (5,6):
        den,M=bernstein_map(d)
        # Independently expand each Bernstein combination into the power basis
        # of u, for each monomial t^b on t=(interval+u)/16.
        for it in range(8):
            for b in range(d+1):
                out=[Q(0)]*(d+1)
                for k in range(d+1):
                    B=Q(M[it*(d+1)+k][b],den)
                    for l in range(d-k+1):out[k+l]+=B*math.comb(d,k)*math.comb(d-k,l)*(-1)**l
                target=[Q(math.comb(b,z)*it**(b-z),16**b) if z<=b else Q(0) for z in range(d+1)]
                require(out==target,'Bernstein map identity mismatch')
        ret.append({'degree':d,'intervals':8,'monomial_identities_checked':8*(d+1),'integer_denominator':den})
    return ret

@functools.lru_cache(None)
def triangular_grid(d):return tuple((u,v) for u in range(d+1) for v in range(d+1-u))
@functools.lru_cache(None)
def grid_eval(a,d):return tuple(eval_row(a+1800*u,v) for u,v in triangular_grid(d))
@functools.lru_cache(None)
def newton_matrix(d):
    grid=triangular_grid(d)
    return tuple(tuple((-1)**(u+v-i-j)*math.comb(u,i)*math.comb(v,j) if i<=u and j<=v else 0 for i,j in grid) for u,v in grid)

def fixed_content(v,a,d):
    vals=tuple(dot(v,line) for line in grid_eval(a,d));coefs=tuple(dot(vals,line) for line in newton_matrix(d))
    g0=math.gcd(*vals);g1=math.gcd(*coefs)
    require(g0==g1 and g0>0,'Newton integer-value gcd mismatch')
    fixed=g0//rough235(g0)
    require(fixed>=1 and rough235(fixed)==1 and all(c%fixed==0 for c in coefs),'bad 235 fixed divisor')
    for u,x in ((7,9),(11,8)):
        predicted=sum(c*math.comb(u,i)*math.comb(x,j) for c,(i,j) in zip(coefs,triangular_grid(d)))
        require(predicted==val(v,a+1800*u,x),'Newton expansion consistency check failed')
    return fixed,{'D235':fixed,'degree':d,'triangular_grid_values':len(vals),'newton_coefficients_sha256':objsha(coefs),'value_gcd':g0,'newton_gcd':g1,'mixed_Newton_coefficients_divisible':True}

def fee(v,weights,meta,content):
    deg=max(sum(e) for e,c in zip(MON,v) if c);T=min(sum(e) for e,c in zip(MON,v) if c)
    require(deg==sum(weights) and deg in (5,6),'degree/complete tail fee balance mismatch')
    n0=meta['NC_n_min'];a=meta['a'];M=sum(h*w for h,w in zip((3,4,5),weights));require(n0>M,'invalid lower product threshold')
    H,bsha=high_bound(v,deg)
    Lnum=sum(abs(c)*2**(deg-b)*n0**(i+b) for (i,b),c in zip(MON,v) if i+b<deg)
    L=Q(Lnum,2**deg*n0**deg);C=H+L
    D=content['D235'];sigw=math.prod(ss**w for ss,w in zip(meta['small_tail'],weights))
    U=Q(n0,n0-M)*C*sigw/(D*7**(T-1))
    return {'a':a,'degree':deg,'origin_order':T,'tail_orders':weights,'tail_linear_loss':M,'weighted_smallpart':sigw,'NC_n_min':n0,'D235':D,'homogeneous_bound':frac(H),'homogeneous_Bernstein_sha256':bsha,'lower_degree_bound':frac(L),'C':frac(C),'strict_q0q1_upper':frac(U),'adopted_Gamma':meta['Gamma'],'inside_adopted_consumer':U<=meta['Gamma']}


def adoption(root,seed):
    arc=root/'dependencies/R10_FROZEN.zip';require(shab(arc.read_bytes())==EXPECTED_PREV,'wrong direct R10 ZIP')
    with zipfile.ZipFile(arc) as z:
        prefix='B699-C-R10-TRIPLEJET012-20261002/'
        man=z.read(prefix+'MANIFEST.sha256').decode();checks={}
        for line in man.splitlines():
            h,fn=line.split('  ',1);require(shab(z.read(prefix+fn))==h,'R10 member hash mismatch '+fn);checks[fn]=h
        listed=set(checks);actual={n[len(prefix):] for n in z.namelist() if not n.endswith('/') and n!=prefix+'MANIFEST.sha256'}
        require(listed==actual,'R10 manifest file-set mismatch')
        for fn in ('HANDOFF.md','PROOFS.md','SOURCE_ADOPTION.md'):
            require((root/f'dependencies/R10_{fn}').read_bytes()==z.read(prefix+fn),'R10 adopted document byte mismatch')
        cb=json.loads(z.read(prefix+'certificates/COFACTOR_BOUNDS.json'))
        require((root/'dependencies/R10_COFACTOR_BOUNDS.json').read_bytes()==z.read(prefix+'certificates/COFACTOR_BOUNDS.json'),'Gamma source mismatch')
        require((root/'dependencies/ACTUAL_SMALLPARTS_42.csv').read_bytes()==z.read(prefix+'dependencies/ACTUAL_SMALLPARTS_42.csv'),'smallpart source mismatch')
    require(len(seed['classes'])==6,'wrong class count');classes=[]
    for i,m in enumerate(seed['classes']):
        require(m['a']==CLASSES[i] and m['Gamma']==GAMMA[i],'class/Gamma contract was changed')
        require(m['small_tail']==list(TAIL[i]) and m['p012']==list(P012[i]) and m['kappa012']==list(K012[i]),'incorrect native 012 source identity')
        row=next(r for r in cb['classes'] if r['a']==m['a']);require(row['Gamma']==m['Gamma'] and row['sigma']==math.prod(m['small_tail'])==m['sigma'],'copied ROW-GAMMA does not match frozen source')
        minimum=math.prod(k*p**(3 if p==2 else 2) for k,p in zip(m['kappa012'][:2],m['p012'][:2]))
        require(minimum==m['minimum_s0s1'],'actual complete activity lower bound')
        bound=math.isqrt(m['Gamma']*minimum)+1;require(bound==m['NC_n_min'],'NC n lower bound mismatch')
        require((bound-1)**2<=m['Gamma']*minimum<bound**2,'square-root certificate')
        classes.append({**m,'derived_from':'NC implies q0q1>=Gamma, n(n-1)=s0s1*q0q1','integer_square_comparison':[(bound-1)**2,m['Gamma']*minimum,bound**2]})
    return {'status':'PASS_HASH_ONLY','direct_archive_sha256':EXPECTED_PREV,'R10_manifest_members_checked':len(checks),'old_programs_run':False,'old_replay_claim':'not re-executed; inherited page statements not upgraded','classes':classes}


def analyze(root,seed):
    source=adoption(root,seed);require(check_bernstein_maps(),'Bernstein initialization')
    kernels=seed['kernels'];pairs=seed['pairs'];nz={};kdata={};jets={}
    for kid,k in sorted(kernels.items()):
        p=makepoly(k['terms']);v=vector(p);d=max(map(sum,p));T=min(map(sum,p))
        require(kid=='K'+shab(canonical(k).encode())[:16],'kernel ID binding mismatch')
        w=k['tail_orders'];require(len(w)==3 and all(x in(1,2) for x in w),'tail orders invalid')
        require(d==sum(w) and d in(5,6) and T>=1,'wrong kernel degree/origin/fee')
        require(val(v,0,0)==0 and val(v,1,0)==0 and val(v,1,1)==0,'original source0/1 root missing')
        kdata[kid]=(p,v,d,T,w)
        if k['nonzero']['type']!='paired':nz[kid]=check_nonzero(p,k['nonzero'])
        else:require(k['nonzero']['pair'] in pairs,'missing paired proof')
        jets[kid]={'degree':d,'origin_order':T,'tail_orders':w,'source01_roots':True,'terms_sha256':objsha(k['terms'])}
    pcs={pid:check_pair(pid,p,kernels) for pid,p in sorted(pairs.items())}
    metas={m['a']:m for m in seed['classes']};contents={};fees={}
    for kid,(p,v,d,T,w) in kdata.items():
        contents[kid]={};fees[kid]={}
        for a,m in metas.items():
            D,c=fixed_content(v,a,d);contents[kid][str(a)]=c;fees[kid][str(a)]=fee(v,w,m,c)
    required=expected_layouts();layouts=seed['layouts'];require(len(required)==len(layouts)==4100,'eighth-slot layout set incomplete')
    used=set();assignments=0;totals=collections.Counter();shape_stats={};perclass={str(a):collections.Counter() for a in CLASSES};universal=[];remaining=[];coverage_rows=[]
    for i,(slots,r) in enumerate(zip(required,layouts)):
        require(r['id']==f'E{i:04d}' and tuple(map(tuple,r['slots']))==slots,'layout ordering mismatch')
        shape=tuple(map(len,slots));require(tuple(r['shape'])==shape,'shape mismatch')
        key='/'.join(map(str,shape));ss=shape_stats.setdefault(key,collections.Counter());ss['total']+=1
        adopted=old_exit(slots)
        if r.get('adopted'):
            require(adopted==r['adopted'],'invalid old condition reuse');require('classes' not in r,'double-counted adopted decision')
            totals['old_layouts']+=1;ss['old']+=1
            for a in CLASSES:perclass[str(a)]['old']+=1
            coverage_rows.append({'id':r['id'],'slots':r['slots'],'status':'adopted_'+adopted});continue
        require(not adopted,'unregistered previously closed elementary layout')
        require(set(r['classes'])==set(map(str,CLASSES)),'class-specific proof set incomplete')
        accepted=[];opens=[];caseproofs={}
        for a in CLASSES:
            decision=r['classes'][str(a)];typ=decision['type']
            if typ=='open':
                opens.append(a);perclass[str(a)]['open']+=1;continue
            if typ=='single':ks=[decision['kernel']];require(ks[0] in nz,'single proof has no verified nonzero exit')
            elif typ=='paired':
                require(decision['pair'] in pcs,'unknown pair');ks=decision['kernels'];require(ks==pairs[decision['pair']]['kernels'],'wrong two-kernel pair')
            else:raise ValueError('invalid disposition')
            upper=[]
            for kid in ks:
                require(kid in kdata,'unknown kernel');p,v,d,T,w=kdata[kid]
                for h,selected,order in zip((3,4,5),slots,w):
                    for b in selected:
                        require(val(v,h,b)==0,'kernel omits an actual eighth-slot root')
                        if order==2:require(val(v,h,b,1,0)==0 and val(v,h,b,0,1)==0,'full double-source jet missing')
                require(fees[kid][str(a)]['inside_adopted_consumer'],'fee does not enter frozen ROW-GAMMA')
                upper.append(Q(*fees[kid][str(a)]['strict_q0q1_upper']));used.add(kid);assignments+=1
            caseproofs[str(a)]={'type':typ,'kernels':ks,'strict_q0q1_upper':frac(max(upper))};accepted.append(a);perclass[str(a)]['new']+=1;totals['new_class_layouts']+=1
        if not opens:
            totals['universally_new_layouts']+=1;ss['universally_new']+=1;universal.append(r['id'])
        else:
            ss['not_universally_closed']+=1;remaining.append({'id':r['id'],'slots':r['slots'],'shape':list(shape),'open_classes':opens})
        require(4 not in shape or not opens,'a (4,2,2) layout is not completely proved')
        coverage_rows.append({'id':r['id'],'slots':r['slots'],'accepted_classes':accepted,'open_classes':opens,'proofs':caseproofs})
    require(used==set(kernels),'unused or unreachable kernel data')
    cand=json.loads((root/'inputs/OPEN_332_CANDIDATES.json').read_text())
    require(len(cand)==len(remaining),'open envelope size mismatch')
    for c,r in zip(cand,remaining):
        require(all(c[k]==r[k] for k in ('id','slots','shape','open_classes')) and c['not_a_recovered_NC_model'] is True,'open layout/source mismatch')
        for terms in c['candidate_basis_terms']:
            p=makepoly(terms);v=vector(p)
            require(val(v,0,0)==val(v,1,0)==val(v,1,1)==0,'open candidate source01 roots')
            for h,slots in zip((3,4,5),c['slots']):
                for b in slots:require(val(v,h,b)==val(v,h,b,1,0)==val(v,h,b,0,1)==0,'open candidate jet')
    summary={'status':'PASS','full_mod_classes_before':42,'full_mod_classes_after':42,'certified_historical_net_difference':0,'historical_net_difference_status':'not certified positive against the historical union','global_R7':[3,4,5,6,7,8,9], 'epsilon_absolute_bound':False, 'layouts':len(layouts),'kernels':len(kernels),'paired_nonzero_proofs':len(pairs),'verified_kernel_class_assignments':assignments,'counts':dict(totals),'shape_statistics':{k:dict(v) for k,v in shape_stats.items()},'per_class':{a:dict(v) for a,v in perclass.items()},'open_common_332_envelope':len(remaining),'new_original_n_enumerated':0,'new_original_j_enumerated':0,'new_BFT_application':False,'old_mathematical_programs_run':False,'R10_hash_only_members':source['R10_manifest_members_checked'],'evidence_level':'paper argument plus deterministic exact self-replay; not Lean or independent review'}
    return {'SOURCE_BINDING.json':source,'KERNEL_JETS.json':{'kernels':jets,'Bernstein_map_checks':check_bernstein_maps()},'NONZERO.json':{'individual':nz,'paired':pcs},'INTEGER_CONTENT.json':contents,'EXACT_FEES.json':fees,'COVERAGE.json':{'summary':summary,'layouts':coverage_rows},'REMAINING_332.json':{'count':len(remaining),'entries':cand},'SUMMARY.json':summary},kdata



@functools.lru_cache(None)
def complete_divisors(n):
    require(n>=1,'positive bounded cofactor required')
    ds=[]
    for d in range(1,math.isqrt(n)+1):
        if n%d==0:
            ds.append(d)
            if d*d!=n:ds.append(n//d)
    return tuple(sorted(ds))


def source2_return(root,seed,certificates):
    """Use only actual-source consequences of forced polynomial zeros.

    The only congruence is the original n mod 1800. The bounded q2 divisor
    set plus an exact eventual period handles all complete activity exponents;
    neither an n strip nor a new sieve modulus is introduced.
    """
    candidates=json.loads((root/'inputs/OPEN_332_CANDIDATES.json').read_text())
    metas={m['a']:m for m in seed['classes']}
    initial_summary=copy.deepcopy(certificates['SUMMARY.json'])
    periods={2:60,3:20,5:6};period_proofs={}
    for p,period in periods.items():
        emin=3 if p==2 else 2;pp=p**emin;coprime=1800//pp
        require(1800%pp==0 and math.gcd(p,coprime)==1,'activity threshold decomposition')
        require(pow(p,period,coprime)==1,'claimed original-class exponent period invalid')
        require(pow(p,emin,1800)==pow(p,emin+period,1800),'eventual full modulus period')
        period_proofs[str(p)]={'minimum_actual_exponent':emin,'period':period,
          'original_modulus':1800,'prime_power_component':pp,'coprime_component':coprime,
          'p_power_period_mod_coprime_component':pow(p,period,coprime),
          'valid_for_all_e_ge_minimum':True}
    records=[];closed=set();lookup={};zero_cells=bounded_cells=0
    for c in candidates:
        for a in c['open_classes']:
            forced=[]
            for terms in c['candidate_basis_terms']:
                f=makepoly(terms);v=vector(f);d=max(map(sum,f));T=min(map(sum,f))
                require(d==6 and T>=1,'forced-zero candidate degree/origin')
                require(val(v,0,0)==val(v,1,0)==val(v,1,1)==0,'forced-zero source01')
                for h,S in zip((3,4,5),c['slots']):
                    for b in S:require(val(v,h,b)==val(v,h,b,1,0)==val(v,h,b,0,1)==0,'forced-zero full double tail source')
                D,ct=fixed_content(v,a,d);bound=fee(v,[2,2,2],metas[a],ct)
                if bound['inside_adopted_consumer']:
                    forced.append({'terms':terms,'content_certificate':ct,'fee':bound})
            rec={'layout_id':c['id'],'a':a,'slots':c['slots'],'forced_zero_polynomials':forced,
                 'forced_zero_count':len(forced),'claimed_recovered_NC':False}
            if forced:
                zero_cells+=1
                vals=[math.gcd(*(value(makepoly(z['terms']),2,b) for z in forced)) for b in (0,1,2)]
                rec['same_source2_slot_gcd_values']=vals
                if all(vals):
                    bounded_cells+=1
                    roughs=[rough235(x) for x in vals];H=math.lcm(*roughs)
                    rec['q2_divides']=H;rec['source2_slot_rough_bounds']=roughs
                    ds=complete_divisors(H);rec['all_positive_divisors']=list(ds)
                    require(all(math.gcd(q,30)==1 for q in ds),'q2 divisor lost rough-part semantics')
                    p=metas[a]['p012'][2];k=metas[a]['kappa012'][2]
                    emin=3 if p==2 else 2;P=periods[p]
                    accepted=[]
                    for q2 in ds:
                        if q2==1:continue # existing original unit-window exit
                        for e in range(emin,emin+P):
                            if (2+k*pow(p,e,1800)*q2)%1800==a:
                                accepted.append({'q2':q2,'e_representative':e,'period':P,
                                  'actual_n_form':{'offset':2,'kappa2':k,'p2':p},
                                  'all_exponents':f'{e}+{P}*u, u>=0'})
                    # A second loop order and direct periodic progression check.
                    reverse=[]
                    for e in range(emin+P-1,emin-1,-1):
                        for q2 in reversed(ds):
                            if q2>1 and (2+k*pow(p,e,1800)*q2)%1800==a:reverse.append((q2,e))
                    require(sorted(reverse)==[(x['q2'],x['e_representative']) for x in accepted], 'two recovery orders disagree')
                    rec['actual_exponent_recovery']=accepted;rec['p2']=p;rec['kappa2']=k
                    if not accepted:
                        closed.add((c['id'],a));rec['status']='CLOSED_NO_ORIGINAL_CLASS_RECOVERY'
                    else:rec['status']='NECESSARY_Q2_AND_EXPONENT_LIST_NOT_NC_RECOVERY'
                else:
                    rec['unbounded_zero_slots']=[b for b,x in enumerate(vals) if not x]
                    rec['status']='NECESSARY_ZERO_EQUATION_WITH_UNBOUNDED_SOURCE2_SLOT'
            else:rec['status']='NO_FORCED_ZERO_FROM_CURRENT_FEES'
            records.append(rec);lookup[c['id'],a]=rec
    before_entries=certificates['REMAINING_332.json']['entries'];after_entries=[]
    for entry in before_entries:
        e=copy.deepcopy(entry);e['open_classes']=[a for a in e['open_classes'] if (e['id'],a) not in closed]
        if e['open_classes']:
            e['source2_return_record_keys']=[[e['id'],a] for a in e['open_classes']]
            after_entries.append(e)
    layoutmap={x['id']:x for x in certificates['COVERAGE.json']['layouts']}
    for lid,a in sorted(closed):
        row=layoutmap[lid];require(a in row['open_classes'],'source2 closure was not open')
        row['open_classes'].remove(a);row['accepted_classes']=sorted(row['accepted_classes']+[a])
        row['proofs'][str(a)]={'type':'forced_zero_full_source2_original_1800_return',
                             'record_key':[lid,a],'no_new_original_n_or_j_terminal':True}
    stats={};counts=collections.Counter();per={str(a):collections.Counter() for a in CLASSES}
    for row in layoutmap.values():
        key='/'.join(str(len(z)) for z in row['slots']);st=stats.setdefault(key,collections.Counter());st['total']+=1
        if row.get('status','').startswith('adopted_'):
            st['old']+=1;counts['old_layouts']+=1
            for a in CLASSES:per[str(a)]['old']+=1
            continue
        for a in CLASSES:
            if a in row['open_classes']:per[str(a)]['open']+=1
            else:per[str(a)]['new']+=1;counts['new_class_layouts']+=1
        if row['open_classes']:st['not_universally_closed']+=1
        else:st['universally_new']+=1;counts['universally_new_layouts']+=1
    summary=certificates['SUMMARY.json']
    summary.update({'counts':dict(counts),'shape_statistics':{k:dict(v) for k,v in stats.items()},
          'per_class':{a:dict(v) for a,v in per.items()},'open_common_332_envelope':len(after_entries),
          'source2_additional_closed_class_layouts':len(closed),
          'remaining_class_layouts':sum(len(x['open_classes']) for x in after_entries),
          'kernel_nonzero_stage_counts':initial_summary['counts']})
    certificates['REMAINING_332.json']={'count':len(after_entries),'entries':after_entries,
          'ordinary_slots_not_symmetric_groups':True,'no_recovered_NC_model':True}
    example=[x for x in records if x['layout_id']=='E0956']
    require(len(example)==6,'example domain incomplete')
    expected={352:[(43,2,6)],425:[],776:[(43,2,20)],1026:[],1377:[],1450:[]}
    for x in example:
        require(x.get('q2_divides')==43,'E0956 complete q2 bound changed')
        require([(r['q2'],r['e_representative'],r['period']) for r in x['actual_exponent_recovery']]==expected[x['a']], 'E0956 actual prime-power return differs')
    return {'initial_open_class_layouts':len(records),'forced_zero_class_layouts':zero_cells,
        'fully_bounded_q2_class_layouts':bounded_cells,'additional_closed_class_layouts':len(closed),
        'closed_record_keys':sorted([list(x) for x in closed]),'remaining_common_layouts':len(after_entries),
        'remaining_class_layouts':sum(len(x['open_classes']) for x in after_entries),
        'original_modulus_only':1800,'exponent_period_certificates':period_proofs,
        'bounded_q2_integers':sorted({x['q2_divides'] for x in records if 'q2_divides' in x}),
        'records':records,'meaning':'conditional source2 divisor/complete exponent return after actual forced polynomial zeros; no finite exponent truncation or NC existence assertion'}

def failure_checks(seed,kdata):
    # The lowest unresolved (2,3,3) layout: rank witnesses certify only a method space.
    c=next(x for x in seed['layouts'] if x['id']=='E0956');slots=c['slots']
    M=[list(eval_row(0,0)),list(eval_row(1,0)),list(eval_row(1,1))]
    for h,S in zip((3,4,5),slots):
        for b in S:M.extend([list(eval_row(h,b)),list(eval_row(h,b,1,0)),list(eval_row(h,b,0,1))])
    prime=65521;require(all(prime%d for d in range(2,math.isqrt(prime)+1)),'rank witness modulus not prime')
    A=[[x%prime for x in row] for row in M];r=0;pivs=[]
    for j in range(28):
        k=next((k for k in range(r,len(A)) if A[k][j]),None)
        if k is None:continue
        A[r],A[k]=A[k],A[r];inv=pow(A[r][j],-1,prime);A[r]=[x*inv%prime for x in A[r]]
        for k in range(r+1,len(A)):
            f=A[k][j]
            if f:A[k]=[(x-f*y)%prime for x,y in zip(A[k],A[r])]
        pivs.append(j);r+=1
        if r==len(A):break
    require(r==27,'unexpected smallest residual rank')
    exact=bareiss([[row[j] for j in pivs] for row in M]);require(exact!=0,'nonzero minor witness failed')
    # A concrete simple sextic defeating one of R10's quartic-rank obstructions.
    example=scale(mul(mul(XVAR,add(XVAR,{(0,0):-1})),mul(add(add(NVAR,scale(XVAR,-1)),{(0,0):-2}),mul(add(add(scale(NVAR,2),XVAR),{(0,0):-8}),{(2,0):1,(1,1):2,(1,0):-11,(0,2):-2,(0,1):-2,(0,0):24}))),-1)
    vv=vector(example)
    example_slots=((0,1,2),(0,1,2),(1,3))
    for h,S in zip((3,4,5),example_slots):
        for b in S:require(val(vv,h,b)==val(vv,h,b,1,0)==val(vv,h,b,0,1)==0,'explicit eight-point example jet')
    bad_n,bad_j=52,7;badval=val(vv,bad_n,bad_j)
    require((bad_n-3)%49==0 and bad_j%7==0 and bad_j%49!=0,'radical test setup')
    require(badval%49==0 and badval%2401!=0,'radical-only setup did not reject a full-square claim')
    count=0;valuation_exact=0
    for p in (7,11,13):
        for e in (1,2,3):
            pe=p**e
            for h,S in zip((3,4,5),example_slots):
                for b in S:
                    for u,v in ((3,1),(4,1),(5,2)):
                        n=h+u*pe;j=b+v*pe;z=val(vv,n,j)
                        require((n-h)//pe%p!=0 and z%(pe**2)==0,'full-source local jet regression')
                        count+=1
                        if z%(pe**2*p):valuation_exact+=1
    require(valuation_exact>0,'lost negative excessive-order regression')
    # Actual finite-difference content need not preserve the small-prime part of g.
    gcounter=None
    for kid,(polyf,v,d,T,w) in kdata.items():
        for a,qzero in ((352,11),(425,17),(776,97),(1026,19),(1377,17),(1450,29)):
            # qzero is merely a search stride here. q0 is recomputed below.
            q0=rough235(a)
            D,ct=fixed_content(v,a,d)
            for j in range(max(7,q0),min(a//2,160)+1,q0):
                g=math.gcd(a,j);z=val(v,a,j)
                if z%D==0 and z%(D*g**T)!=0:
                    gcounter={'kernel':kid,'n':a,'j':j,'g':g,'q0':q0,'D':D,'T':T,'F':z,'F_mod_DgT':z%(D*g**T),'is_NC_model':False,'purpose':'invalid inference from integer-valued content to dividing D*g^T'};break
            if gcounter:break
        if gcounter:break
    require(gcounter is not None,'no witnessed content/g failure')
    return {'rank_obstruction':{'layout_id':'E0956','slots':slots,'degree':6,'matrix_shape':[27,28],'pivot_columns':pivs,'exact_minor_determinant':exact,'kernel_dimension':1,'meaning':'one-dimensional candidate space; does not prove integer recovery or NC existence'},'explicit_closed_sextic':{'terms':rows(example),'slots':example_slots,'source_orders':[2,2,2]},'radical_failure':{'n':bad_n,'j':bad_j,'source':3,'complete_power':49,'required_double_fee':2401,'F':badval,'has_only_mod7_slot':True,'claimed_NC':False},'full_power_local_tests':count,'some_tests_show_no_extra_valuation':valuation_exact,'integer_content_g_counterexample':gcounter,'no_unbounded_NC_family_claimed':True}


def negative_checks(seed,kdata):
    results=[]
    def expect(name,fn):
        try:fn()
        except (ValueError,AssertionError) as e:results.append({'name':name,'status':'EXPECTED_REJECTION','error_type':type(e).__name__,'reason':str(e)});return
        raise ValueError('Negative control was accepted: '+name)
    k=next(iter(seed['kernels']));p,v,d,T,w=kdata[k]
    bad=dict(p);bad[(0,0)]=bad.get((0,0),0)+1
    expect('origin coefficient tamper',lambda: require(value(bad,0,0)==0,'origin root missing'))
    expect('incorrect degree/source fee',lambda:require(d==sum(w)-1,'degree and source costs do not cancel'))
    nz=next((makepoly(z['terms']),z['nonzero']) for z in seed['kernels'].values() if z['nonzero']['type']=='factor_product')
    bp=copy.deepcopy(nz[1]);bp['constant']+=1
    expect('factor identity tamper',lambda:check_nonzero(nz[0],bp))
    pid=next(iter(seed['pairs']));rp=copy.deepcopy(seed['pairs'][pid]);rp['resultant_constant']+=1
    expect('resultant identity tamper',lambda:check_pair(pid,rp,seed['kernels']))
    expect('zero factor endpoint cannot imply nonzero',lambda:check_nonzero(XVAR,{'type':'source_unit','source':0}))
    expect('unclosed source layout cannot be called closed',lambda:require(all(x['type']!='open' for x in next(l for l in seed['layouts'] if l['id']=='E0956')['classes'].values()),'unproved residual class'))
    return {'tests':results,'total':len(results),'all_rejected':True}


def run(root,out,check=None):
    seed=json.loads((root/'inputs/EIGHT_SOURCE_KERNELS.json').read_text())
    certificates,kdata=analyze(root,seed)
    certificates['SOURCE2_RETURN.json']=source2_return(root,seed,certificates)
    failure=failure_checks(seed,kdata)
    # Add a sign-changing real-domain diagnostic for the rank-one unclosed kernel.
    candidates=json.loads((root/'inputs/OPEN_332_CANDIDATES.json').read_text())
    c=next(x for x in candidates if x['id']=='E0956');f=makepoly(c['candidate_basis_terms'][0])
    z0=value(f,352,7);z1=value(f,352,176);require(z0*z1<0,'sign-changing diagnostic setup')
    failure['unclosed_kernel_sign_change']={'id':'E0956','polynomial':rows(f),'n':352,'j_values':[7,176],'F_values':[z0,z1],'only_real_intermediate_zero_implied':True,'integer_root_or_NC_model_claimed':False}
    certificates['FAILURE_CONTROLS.json']=failure
    certificates['NEGATIVE_CONTROLS.json']=negative_checks(seed,kdata)
    certificates['SUMMARY.json'].update({'certificates_regenerated':len(certificates),'full_power_local_tests':failure['full_power_local_tests'],'negative_tests':certificates['NEGATIVE_CONTROLS.json']['total']})
    # summary object is shared with COVERAGE by design, without timestamps.
    out.mkdir(parents=True,exist_ok=True)
    hashes={}
    for name,content in sorted(certificates.items()):
        b=jbytes(content);(out/name).write_bytes(b);hashes[name]=shab(b)
        if check:
            target=check/name;require(target.is_file(),'missing frozen certificate '+name)
            require(json.loads(target.read_text())==json.loads(b.decode('utf-8')),'certificate JSON changed '+name)
            require(target.read_bytes()==b,'certificate bytes changed '+name)
    if check:require(set(hashes)=={p.name for p in check.glob('*.json')},'certificate set changed')
    summary=dict(certificates['SUMMARY.json']);summary['certificate_sha256']=hashes
    print(json.dumps(summary,ensure_ascii=False,sort_keys=True,indent=2))
    return summary

def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--root',type=Path,required=True);parser.add_argument('--output',type=Path,required=True);parser.add_argument('--check',type=Path)
    a=parser.parse_args();run(a.root,a.output,a.check)
if __name__=='__main__':main()
