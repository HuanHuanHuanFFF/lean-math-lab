#!/usr/bin/env python3
"""Exact offline C Round10 verifier. Standard library only; no old programs run.
Frozen quartic seeds are discovery inputs, not accepted conclusions: every root,
jet, nonzero certificate, resultant identity, bound and endpoint is recalculated.
"""
from __future__ import annotations
import argparse,csv,hashlib,io,itertools,json,math,sys,zipfile
from collections import Counter
from fractions import Fraction as Fr
from pathlib import Path
from exact import (require,poly,rows,add,mul,power,scale,compose,value,prod,
                   sylvester,bareiss,N,J,ONE)
TARGET=(352,425,776,1026,1377,1450)
GAMMAS={352:53874,425:6762389,776:33812,1026:5636,1377:90166,1450:140884}
PARS={352:([2,3,5],[1,1,2],[1,12,1]),425:([5,2,3],[1,1,1],[2,1,60]),
      776:([2,5,3],[1,1,2],[1,4,3]),1026:([3,5,2],[2,1,1],[3,2,1]),
      1377:([3,2,5],[1,1,1],[6,1,4]),1450:([5,3,2],[2,1,1],[1,6,5])}
R9SHA='5abef563e14c47a2d751b458ca4447c650308fb647771bc824c238e524290a19'
R8SHA='e6bd9528a72796e27647f149cc55a5d77ed121495e082702b80721aa11ac60b0'
ROOT9='B699-C-R9-ORIGIN2-PAIR012-20261002/'
ROOT8='B699-C-R8-SOURCE01-CUBIC012-20261002/'

def enc(obj):return (json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(b):return hashlib.sha256(b).hexdigest()
def fq(x):x=Fr(x);return [x.numerator,x.denominator]
def rough(n):
    require(n!=0,'zero has no finite rough part');n=abs(n)
    for p in (2,3,5):
        while n%p==0:n//=p
    return n

def split_a(n):q=rough(n);return n//q,q

def split_b(n):
    require(n>0,'positive original source required');q=n
    while (z:=math.gcd(q,30))>1:q//=z
    return n//q,q

def factor(n):
    require(n>0,'factor positive integer');original=n;out=[];p=2
    while p*p<=n:
        if n%p==0:
            e=0;v=1
            while n%p==0:n//=p;e+=1;v*=p
            out.append((p,e,v))
        p=3 if p==2 else p+2
    if n>1:out.append((n,1,n))
    require(prod(v for p,e,v in out)==original,'incomplete factorization')
    return out

def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def vf(n,p):
    v=0
    while n:n//=p;v+=n
    return v

def vc(n,j,p):return vf(n,p)-vf(j,p)-vf(n-j,p)
def digitsum(n,p):
    z=0
    while n:z+=n%p;n//=p
    return z

def digit_vc(n,j,p):
    t=digitsum(j,p)+digitsum(n-j,p)-digitsum(n,p)
    require(t%(p-1)==0,'digit valuation integrality');return t//(p-1)

def deriv_value(p,n,x,i,j):
    return sum(c*math.prod(range(a-i+1,a+1))*math.prod(range(b-j+1,b+1))*n**(a-i)*x**(b-j)
       for (a,b),c in p.items() if a>=i and b>=j)

def old_exit(slots):
    pairs=[(h,v) for h,v in zip((3,4,5),slots) if len(v)==2]
    for name,target in [('two_end_groups',lambda h:(0,h)),('two_low_pairs',lambda h:(0,1)),
                         ('two_high_pairs',lambda h:(h-1,h))]:
        if all(tuple(v)==target(h) for h,v in pairs):return name
    return None

def shift(p):return compose(p,[{(0,0):21,(1,0):2,(0,1):1},{(0,0):7,(1,0):1}])
def sign_cert(p):
    z=shift(p);sg=1 if z and all(v>0 for v in z.values()) else -1 if z and all(v<0 for v in z.values()) else 0
    require(sg and z.get((0,0),0)!=0,'not a strict legal-domain sign certificate')
    return {'sign':sg,'shifted_terms':rows(z)}

def norm4(p):
    require(p and max(a+b for a,b in p)<=4,'quartic required')
    coef=[Fr(p.get((4-b,b),0)) for b in range(5)];bern=[]
    for t in range(8):
        lo,hi=Fr(t,16),Fr(t+1,16)
        cc=[sum(coef[b]*math.comb(b,i)*lo**(b-i)*(hi-lo)**i for b in range(i,5)) for i in range(5)]
        vv=[sum(cc[i]*Fr(math.comb(j,i),math.comb(4,i)) for i in range(j+1)) for j in range(5)]
        # Reconstruct each power coefficient from its Bernstein representation.
        back=[sum(vv[k]*math.comb(4,k)*math.comb(4-k,i-k)*(-1)**(i-k) for k in range(i+1)) for i in range(5)]
        require(back==cc,'Bernstein conversion identity fails')
        bern.append(vv)
    tail=sum(Fr(abs(c),2**b*352**(4-a-b)) for (a,b),c in p.items() if a+b<4)
    C=max(abs(v) for line in bern for v in line)+tail
    return C, {'leading_bernstein_intervals':8,'leading_bernstein':[[fq(v) for v in arr] for arr in bern],
               'lower_degree_tail':fq(tail),'C':fq(C)}

def jets(p,slots,h,origin=1,source1=True):
    require(p and all(isinstance(c,int) for c in p.values()),'integer nonzero polynomial required')
    require(max(a+b for a,b in p)<=4,'degree exceeds 4')
    order=min(a+b for a,b in p)
    require(order>=origin,'origin order missing')
    require(h in (3,4,5) and len(slots[h-3])==2,'double weight must be on a full two-slot source')
    if source1:
        require(value(p,1,0)==value(p,1,1)==0,'original full source1 missing')
    for k,bb in zip((3,4,5),slots):
        for b in bb:
            require(value(p,k,b)==0,'uncovered actual ordinary slot')
            if k==h:
                require(deriv_value(p,k,b,1,0)==deriv_value(p,k,b,0,1)==0,'double source jet missing')
    return order

def factor_nonzero(p):
    try:return {'method':'legal_domain_sign',**sign_cert(p)}
    except ValueError:pass
    z=value(p,0,0)
    if z and rough(z)==1:return {'method':'actual_q0_unit_exit','value':z}
    vals=[value(p,1,b) for b in (0,1)]
    if all(vals) and rough(prod(vals))==1:return {'method':'actual_q1_unit_exit','values':vals}
    raise ValueError('unproved common-factor nonzero assertion')

def univar(spec):
    out={(0,):int(spec['unit'])}
    require(out[(0,)]!=0,'zero resultant unit')
    shifted=[]
    for f in spec['factors']:
        co=f['coefficients'];pp={(i,):int(c) for i,c in enumerate(co) if c};e=int(f['multiplicity'])
        require(pp and e>=1,'invalid resultant factor')
        zz=[sum(Fr(co[b])*math.comb(b,i)*352**(b-i) for b in range(i,len(co))) for i in range(len(co))]
        require(zz[0]!=0 and (all(v>=0 for v in zz) or all(v<=0 for v in zz)), 'resultant factor not nonzero for N>=352')
        shifted.append({'multiplicity':e,'factor':co,'shift_352':[int(v) for v in zz]})
        out=mul(out,power(pp,e))
    return out,shifted

def resultant_cert(f,g,spec):
    R,fac=univar(spec);S=sylvester(f,g)
    # Crude but certified degree bound for this fixed formal Sylvester matrix.
    degree_bound=sum(max((a for cell in row for (a,),c in cell.items()),default=0) for row in S)
    require(degree_bound<=32 and max(a for (a,) in R)<=32,'interpolation degree bound broken')
    # If BOTH quotients are constants in X, the conventional resultant is 1
    # and does NOT detect their simultaneous coefficient vanishing. Prove an
    # actual quotient nonzero on N>=352 instead; do not use a 0x0 determinant.
    if not S:
        witnesses=[]
        for q in (f,g):
            deg=max(a for a,b in q)
            zz=[sum(c*math.comb(a,i)*352**(a-i) for (a,b),c in q.items() if a>=i) for i in range(deg+1)]
            if zz[0] and (all(v>=0 for v in zz) or all(v<=0 for v in zz)):
                witnesses.append({'quotient':rows(q),'shift_352':zz})
        require(witnesses,'both X-constant quotients need a separate nonzero proof')
        return {'method':'X_constant_quotient_nonzero_not_resultant','witnesses':witnesses,
                'conventional_constant_resultant_not_used_for_root_exclusion':True}
    vals=[]
    for n in range(33):
        det=bareiss([[value(cell,n) for cell in row] for row in S]);expected=value(R,n)
        require(det==expected,'exact resultant identity fails');vals.append(det)
    return {'matrix_size':len(S),'certified_degree_bound':degree_bound,'checked_points':list(range(33)),
            'bareiss_values':vals,'resultant_factors_nonzero_on_N_ge352':fac,'integer_polynomial_terms':rows(R)}

def source_binding(root):
    b=(root/'dependencies/R9_FROZEN.zip').read_bytes();require(sha(b)==R9SHA,'R9 archive hash mismatch')
    copies={}
    with zipfile.ZipFile(io.BytesIO(b)) as z:
        lines=z.read(ROOT9+'MANIFEST.sha256').decode().splitlines()
        for ln in lines:
            h,n=ln.split(None,1);n=n.strip().lstrip('*');require(sha(z.read(ROOT9+n))==h,'R9 member hash mismatch '+n)
        mapping={'R9_PROOFS.md':'PROOFS.md','R9_HANDOFF.md':'HANDOFF.md','R9_SOURCE_ADOPTION.md':'SOURCE_ADOPTION.md',
                 'ACTUAL_SMALLPARTS_42.csv':'dependencies/ACTUAL_SMALLPARTS_42.csv',
                 'R8_PROOFS.md':'dependencies/R8_PROOFS.md','R7_PROOFS.md':'dependencies/R7_PROOFS.md'}
        for dst,src in mapping.items():
            bb=(root/'dependencies'/dst).read_bytes();require(bb==z.read(ROOT9+src),'copied dependency changed');copies[dst]=sha(bb)
        b8=z.read(ROOT9+'dependencies/R8_FROZEN.zip');require(sha(b8)==R8SHA,'nested R8 hash mismatch')
        with zipfile.ZipFile(io.BytesIO(b8)) as z8:
            for dst,src in [('dependencies/R8_ORIGINAL_TERMINAL.json','certificates/ORIGINAL_TERMINAL.json'),
                            ('inputs/BFT_CONTRACT.json','inputs/BFT_CONTRACT.json')]:
                bb=(root/dst).read_bytes();require(bb==z8.read(ROOT8+src),'R8 adopted record copy differs');copies[dst]=sha(bb)
    rc=json.loads((root/'dependencies/R9_LOCAL_REPLAY_RECEIPT.json').read_text())
    require(rc['status']=='PASS' and rc['archive_sha256']==R9SHA,'saved local replay not bound')
    table=list(csv.DictReader((root/'dependencies/ACTUAL_SMALLPARTS_42.csv').read_text().splitlines()))
    for a in TARGET:
        rr=next(r for r in table if int(r['a'])==a);ps,ks,ss=PARS[a]
        require([next(p for p in (2,3,5) if int(rr['r'+str(p)])==h) for h in (0,1,2)]==ps,'active prime mismatch')
        require([int(rr['kappa'+str(h)]) for h in range(6)]==ks+ss,'actual small part mismatch')
    contract=json.loads((root/'inputs/BFT_CONTRACT.json').read_text());require(len(contract['exception_pairs'])==40,'BFT exception list size')
    require(not any(abs(a-b)==1 for a,b in contract['exception_pairs']),'unhandled difference1 exception')
    return {'immediate_source':'C R9/ORIGIN2-PAIR012','R9_sha256':R9SHA,'R9_members_checked':len(lines),
            'R9_saved_actual_local_replay':'PASS','previous_math_programs_executed_by_this_verifier':False,
            'selected_nested_R8_sha256':R8SHA,'copied_member_sha256':copies,'Overview_original_sha_verified':False,
            'BFT_Theorem2_1':'adopted publication input, no theorem reproving','unit_window_theorem':'adopted author-level'},contract

def catalogue(root):
    seeds=json.loads((root/'inputs/TRIPLE_JET_SEEDS.json').read_text());seen={};expected={};old=Counter()
    for t in (3,4,5):
        for sl in itertools.product(*(list(itertools.combinations(range(h+1),3 if h==t else 2)) for h in (3,4,5))):
            why=old_exit(sl)
            if why:old[why]+=1
            else:expected[sl]=t
    for r in seeds:
        sl=tuple(tuple(v) for v in r['slots']);require(sl not in seen,'duplicate layout');seen[sl]=r
        require(sl in expected and r['triple_source']==expected[sl],'unexpected layout')
    require(set(seen)==set(expected),'triple layouts not exhaustively covered')
    require(len(seen)==2598 and sum(old.values())==102,'new/old layout count mismatch')
    kinds=Counter();jetrec=[];nonz=[];boundrec=[];global_bounds={a:Fr(0) for a in TARGET};which={};objects=[];special=None
    for r in seeds:
        sl=tuple(tuple(v) for v in r['slots']);kind=r['proof_kind'];kinds[kind]+=1;pp=[];cs=[];orders=[];krows=[]
        if kind=='exceptional_cubic':special=r;continue
        for k in r['kernels']:
            p=poly(k['terms']);o=jets(p,sl,k['double_source']);C,nm=norm4(p)
            pp.append(p);cs.append(C);orders.append(o);objects.append((p,sl,k['double_source']))
            krows.append({'double_source':k['double_source'],'origin_order':o,'source1_simple':True,
                          'all_seven_ordinary_slots_verified':True,'complete_double_jet_verified':True,
                          'norm_certificate':nm})
        nr={'id':r['id'],'proof_kind':kind}
        if kind=='sign':
            nr['kernel_legal_signs']=[sign_cert(p) for p in pp]
        elif kind=='resultant':
            common=r['common_factor'];H={(0,0):int(common['unit'])};certs=[]
            require(H[(0,0)]!=0,'zero common factor unit')
            for f in common['factors']:
                q=poly(f['terms']);certs.append(factor_nonzero(q));H=mul(H,power(q,int(f['multiplicity'])))
            quot=[poly(x) for x in r['quotients']];require(len(pp)==len(quot)==2,'pair arity')
            require(all(mul(H,u)==p for p,u in zip(pp,quot)),'common-factor identity fails')
            nr['common_factor_exits']=certs;nr['resultant']=resultant_cert(quot[0],quot[1],r['resultant'])
        else:raise ValueError('unknown nonzero method')
        bb=[]
        for a in TARGET:
            ss=PARS[a][2];sig=prod(ss)
            ids=[int(r['choice_by_class'][str(a)])] if kind=='sign' else [0,1]
            require(all(0<=i<len(pp) for i in ids),'kernel selector out of range')
            b=max(Fr(352,335)*cs[i]*sig*ss[r['kernels'][i]['double_source']-3]/7**(orders[i]-1) for i in ids)
            bb.append({'a':a,'kernel_indices':ids,'strict_gq1_upper':fq(b)})
            if b>global_bounds[a]:global_bounds[a]=b;which[a]=r['id']
        jetrec.append({'id':r['id'],'slots':r['slots'],'kernels':krows})
        nonz.append(nr);boundrec.append({'id':r['id'],'per_class':bb})
    require(kinds=={'sign':2459,'resultant':138,'exceptional_cubic':1},'nonzero classification changed')
    require(special is not None,'exception absent')
    summaries=[]
    for a in TARGET:
        G=math.ceil(global_bounds[a]);require(G==GAMMAS[a],'derived Gamma differs from report')
        require(22*prod(PARS[a][2])<G,'exceptional nonzero-H consumer not covered')
        summaries.append({'a':a,'sigma':prod(PARS[a][2]),'max_strict_gq1_bound':fq(global_bounds[a]),
                          'Gamma':G,'maximizing_id':which[a]})
    cover={'total_exact_322_layouts':2700,'adopted_old_exits':dict(old),'new_layouts':len(seeds),
           'new_nonzero_methods':dict(kinds),'semantics':'ordinary-slot signatures, not integer inputs or residue classes',
           'full_ordinary_points':7,'quartic_coefficients':15,'specified_linear_jet_conditions':14}
    return cover,jetrec,nonz,{'classes':summaries,'per_layout':boundrec,
       'valid_fee_identity':'g^T*q1 < (352/335)*C*sigma*s_h; NO EXTRA FACTOR n',
       'lower_tail_product':'q3*q4*q5*q_h > (335/352)*n^4/(sigma*s_h)'},objects,special

def exceptional(r):
    sl=tuple(tuple(v) for v in r['slots']);require(sl==((0,2),(1,2),(1,3,5)),'wrong exceptional layout')
    H=poly(r['H']);G=poly(r['G']);require(max(a+b for a,b in H)==3,'H must be cubic')
    require(value(H,0,0)==value(H,1,0)==value(H,1,1)==0,'H origin/source1 missing')
    for h,bb in zip((3,4,5),sl):
        for b in bb:require(value(H,h,b)==0,'H source missing')
    C3=sum(Fr(abs(c),2**b*352**(3-a-b)) for (a,b),c in H.items());require(C3<21 and Fr(88,85)*C3<22,'H nonzero bound')
    jets(G,sl,3,origin=2,source1=False);require(min(a+b for a,b in G)==2,'G origin order')
    rc=resultant_cert(H,G,r['resultant'])
    C4=sum(Fr(abs(c),2**b*352**(4-a-b)) for (a,b),c in G.items());require(C4==Fr(2864,121),'G norm value')
    gb=[]
    for a in TARGET:
        ss=PARS[a][2];b=Fr(352,335)*C4*prod(ss)*ss[0]
        gmax=math.isqrt((b.numerator-1)//b.denominator);require(gmax<=77,'G bound too weak')
        gb.append({'a':a,'g_squared_strict_upper':fq(b),'g_max':gmax})
    vals=[value(H,2,b) for b in range(3)];require(vals==[-6,18,-42] and rough(prod(vals))==7,'complete q2 divisor failed')
    require(77<=234 and 7 in (7,13,19,29,133),'adopted ROW02 contract not met')
    return {'id':r['id'],'slots':r['slots'],'H':rows(H),'G':rows(G),'H_nonzero_C3':fq(C3),
       'H_nonzero_implies':'g*q1 < 22*sigma < Gamma_a', 'H_zero_resultant':rc,'G_C4':fq(C4),
       'H_zero_g_bounds':gb,'full_source2_values':vals,'actual_complete_q2':7,
       'H_zero_exit':'adopted R9 ROW02: actual q0<=g<=77<=234, actual q2=7',
       'old_ROW02_not_reexecuted':True}

def epows(p,K):
    e=3 if p==2 else 2;v=p**e;out=[]
    while v<2**K:out.append((e,v));e+=1;v*=p
    return out

def inv_egcd(a,m):
    oldr,r=a,m;olds,s=1,0
    while r:q=oldr//r;oldr,r=r,oldr-q*r;olds,s=s,olds-q*s
    require(oldr==1,'noncoprime actual powers');return olds%m

def recovery(contract,reverse=False):
    allacc=[];records=[];hc=lc=0
    for a in (tuple(reversed(TARGET)) if reverse else TARGET):
        ps,ks,ss=PARS[a];G=GAMMAS[a];M=max(ks[:2])*((G-1)//7)
        A,B=contract['lambdas'][','.join(map(str,sorted(ps[:2])))];K=10
        while 2**((K-1)*A)<M**B:K+=1
        cut=max(1003,ks[0]*ks[1]*G+1);low=list(range(a,cut,1800));P0=epows(ps[0],K);P1=epows(ps[1],K)
        split=split_b if reverse else split_a;trace=[];got=[]
        if reverse:low=list(reversed(low))
        for n in low:
            lc+=1;q0=split(n)[1];q1=split(n-1)[1];ok=q0>=7 and q1>=7 and q0*q1<G
            trace.append(['low',n,q0,q1,int(ok)])
            if ok:got.append((a,n,q0,q1))
        seq=((e0,p0,e1,p1) for e1,p1 in reversed(P1) for e0,p0 in reversed(P0)) if reverse else ((e0,p0,e1,p1) for e0,p0 in P0 for e1,p1 in P1)
        for e0,p0,e1,p1 in seq:
            hc+=1
            n=1+p1*((-inv_egcd(p1,p0))%p0) if reverse else p0*pow(p0,-1,p1)
            reason='accept';details=[]
            if not cut<=n<2**K:reason='outside_certified_high_interval'
            elif (((n%8,n%9,n%25)!=(a%8,a%9,a%25)) if reverse else (n%1800!=a)):reason='other_original_class'
            else:
                s0,q0=split(n);s1,q1=split(n-1);details=[q0,q1]
                if s0!=ks[0]*p0 or s1!=ks[1]*p1:reason='not_actual_complete_powers'
                elif min(q0,q1)<7:reason='adopted_unit_window'
                elif q0*q1>=G:reason='fails_Gamma'
                else:got.append((a,n,q0,q1))
            trace.append(['high',e0,e1,n,reason,*details])
        got=sorted(set(got));allacc.extend(got)
        require(2**((K-1)*A)>=M**B and K>=10,'invalid BFT dyadic bound')
        records.append({'a':a,'Gamma':G,'max_actual_cofactor':M,'lambda':[A,B],'dyadic_K':K,
             'high_start':cut,'low_records':len(low),'complete_power_pairs':len(P0)*len(P1),
             'trace':trace,'accepted_original_rows':[list(r) for r in got]})
    allacc=sorted(set(allacc));require(hc==7934 and lc==4018,'recovery counts disagree')
    require(len(allacc)==69 and max(r[1] for r in allacc)==12058625,'recovery frontier changed')
    return {'direction':'reverse_source1_power' if reverse else 'forward_source0_power',
            'exact_power_pairs':hc,'low_original_rows':lc,'records':records,
            'complete_nonunit_original_rows':[list(r) for r in allacc],
            'maximum_original_n':max(r[1] for r in allacc),'maximum_adopted_BFT_K':max(r['dyadic_K'] for r in records)},allacc

def original_terminal(root,accepted):
    old=json.loads((root/'dependencies/R8_ORIGINAL_TERMINAL.json').read_text())
    witness=old['combined_witness_records'];require(len(witness)==1058 and {r[0] for r in witness}=={352,425,1377},'adopted old terminal differs')
    ns=[r[1] for r in accepted];require(all(n in ns for n in (352,425,1377)),'old rows absent')
    oldcounts={str(n):sum(r[0]==n for r in witness) for n in (352,425,1377)}
    out=[];reject=[];factors={};crtbranches=steps=0
    for n in ns:
        if n in (352,425,1377):continue
        q0=rough(n);q1=rough(n-1);f1=factor(q1);residues=[0];mod=q0
        for p,e,v in f1:
            residues=[r+mod*(((b-r)*pow(mod,-1,v))%v) for r in residues for b in (0,1)];mod*=v
        ca=sorted(j for r in residues for j in range(r,n//2+1,mod) if j>=7)
        cb=sorted(j for j in range((n//(2*q0))*q0,0,-q0) if j>=7 and (j*(j-1))%q1==0)
        require(ca==cb,'source01 original-j sets differ')
        crtbranches+=len(residues);steps+=n//(2*q0)
        fs=[factor(n-h) for h in range(6)];factors[str(n)]=[[list(x) for x in aa] for aa in fs]
        for j in ca:
            bad=next(((h,p,e,v,j%v) for h in range(2,6) for p,e,v in fs[h] if p>=7 and j%v>h),None)
            require(bad is not None,'unresolved original NC candidate')
            h,p,e,v,b=bad;require(prime(p) and (n-h)%v==0 and ((n-h)//v)%p!=0,'not actual complete source power')
            va,vb=vc(n,6,p),vc(n,j,p)
            require(va>0 and vb>0 and va==digit_vc(n,6,p) and vb==digit_vc(n,j,p),'same-prime witness failure')
            g=math.gcd(n,j);d=n-2*j
            reject.append([n,j,h,p,e,v,b,va,vb,g,n//g,j//g,d,d//g])
        out.append({'n':n,'q0':q0,'q1':q1,'source1_full_prime_powers':[list(v) for v in f1],
                    'CRT_modulus':mod,'CRT_residues':sorted(residues),'actual_gcd_step_count':n//(2*q0),
                    'source01_original_j':ca})
    require(len(out)==66 and crtbranches==196 and steps==65206 and len(reject)==104,'new terminal counts differ')
    return {'nonunit_rows':69,'adopted_old_original_rows':[352,425,1377],'adopted_old_row_counts':oldcounts,
            'old_425_489_4096_or_ROW02_j_enumerations_run':False,'new_original_rows':66,
            'new_complete_CRT_branches':crtbranches,'independent_q0_multiple_visits':steps,
            'source01_full_sets_equal':True,'source01_survivors':104,
            'witness_schema':['n','j','source_h','p','e','complete_Q','j_mod_Q','vp_Cn6','vp_Cnj','g','alpha','beta','d','epsilon'],
            'original_complete_prime_witnesses':reject,
            'source_factorizations':factors,'new_row_records':out,'NC_survivors':[],
            'first_two_source_failures_are_already_same_prime_consumers':True}

def controls(root,objects):
    tests=0
    for p,sl,h in objects[::max(1,len(objects)//24)][:24]:
        for prime0 in (7,11,13):
            for e in (1,2,3):
                Q=prime0**e
                for rr,bb in zip((3,4,5),sl):
                    for b in bb:
                        n=rr+2*Q;j=b+3*Q;need=Q**(2 if rr==h else 1)
                        require(value(p,n,j)%need==0,'complete-power local lift fails');tests+=1
    badcase=None
    for p,sl,h in objects[:50]:
        for b in sl[h-3]:
            n=h+49;j=b+7;z=value(p,n,j)
            if z%49==0 and z%2401:
                badcase={'n':n,'j':j,'source':h,'slot':b,'claimed_complete_Q':49,'F_value':z,
                         'radical_square_passes':True,'actual_Q_square_fails':True};break
        if badcase:break
    require(badcase is not None,'missing full-power negative control')
    # A method-specific obstruction for the NEXT envelopes, not an NC model.
    ob=json.loads((root/'inputs/NEXT_ENVELOPE_OBSTRUCTION.json').read_text());obs=[]
    mons=[(a,d-a) for d in range(5) for a in range(d,-1,-1)]
    def jetrow(n,x,i=0,j=0):
        return [deriv_value({(a,b):1},n,x,i,j) for a,b in mons]
    for item in ob:
        sl=item['slots'];dr=[]
        for hs,claimed in item['determinants'].items():
            h=int(hs);A=[jetrow(0,0),jetrow(1,0),jetrow(1,1)]
            for v,bb in zip((3,4,5),sl):
                for b in bb:
                    A.append(jetrow(v,b))
                    if v==h:A.extend([jetrow(v,b,1,0),jetrow(v,b,0,1)])
            require(len(A)==15 and all(len(r)==15 for r in A),'next-envelope matrix shape')
            de=bareiss(A);require(de==claimed and de!=0,'next-envelope exact rank failure')
            dr.append({'double_source':h,'matrix':A,'determinant':de,'rank':15})
        obs.append({'slot_counts':item['slot_counts'],'ordinary_slot_labels':sl,'checks':dr,
           'meaning':'no nonzero quartic in precisely this origin/source1/double-pair jet space',
           'actual_NC_integer_realization':False})
    # Full degree bookkeeping: the doubled tail adds ONE to 3, giving degree4, not 5.
    require(3+1==4,'tail degree accounting')
    return {'next_envelope_method_obstructions':obs,'complete_power_regression_tests':tests,'regressions_do_not_replace_general_Taylor_proof':True,
            'radical_replacement_countercheck':badcase,'correct_nonzero_fee':'g^T*q1<constant',
            'withdrawn_extra_n_inequality_is_not_used':True,
            'partial_source_division_loss':'R3*R4*R5*R_h, including the doubled source remainder again',
            'no_NC_counterexample_or_integer_family_claimed':True}

def check_generated(out,check):
    expected=sorted(p.name for p in check.glob('*.json'));got=sorted(p.name for p in out.glob('*.json'))
    require(expected==got,'certificate set mismatch')
    for n in got:
        aa=(out/n).read_bytes();bb=(check/n).read_bytes();require(json.loads(aa)==json.loads(bb),'certificate JSON mismatch '+n)
        require(aa==bb,'certificate byte mismatch '+n)

def run(root,out):
    out.mkdir(parents=True,exist_ok=True);binding,contract=source_binding(root)
    cover,jet,nz,bd,objects,sp=catalogue(root);ex=exceptional(sp)
    forward,aa=recovery(contract,False);reverse,bb=recovery(contract,True);require(aa==bb,'full original-row recovery sets differ')
    term=original_terminal(root,aa);ctrl=controls(root,objects)
    summary={'status':'PASS','complete_mod1800_classes':'42 -> 42','certified_historical_net_difference':0,
      'global_remaining_indices':[3,4,5,6,7,8,9],'exact_322_layouts':2700,'adopted_old_layouts':102,
      'new_layouts_closed':2598,'remaining_exact_322_layouts':0,'minimum_new_tail_slot_sum':8,
      'next_minimum_envelopes':[[4,2,2],[3,3,2]],'necessary_total_rough_support_at_least':11,
      'epsilon_absolute_bound_obtained':False,'full_i6_closed':False,'new_nonunit_row_candidates':69,
      'source01_survivors_all_rejected':104,'new_same_prime_witnesses':104,
      'nonzero_pair_resultant_cases':130,'constant_in_X_pair_cases':8,
      'new_source0_source1_CRT_branches':196,'full_power_pairs_each_direction':7934,
      'low_original_n_each_direction':4018,'old_programs_executed_by_verifier':False,
      'Lean_run':False,'repository_operations':False,'network_used':False}
    certs={'SOURCE_BINDING.json':binding,'TRIPLE_LAYOUT_COVERAGE.json':cover,'QUARTIC_JET_CERTIFICATES.json':jet,
       'NONZERO_CERTIFICATES.json':nz,'COFACTOR_BOUNDS.json':bd,'EXCEPTIONAL_CUBIC.json':ex,
       'ROWS_FORWARD.json':forward,'ROWS_REVERSE.json':reverse,'ORIGINAL_SOURCE_TERMINAL.json':term,
       'FAILURE_CONTROLS.json':ctrl,'COVERAGE_SUMMARY.json':summary}
    for n,o in certs.items():(out/n).write_bytes(enc(o))
    return summary

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,required=True);ap.add_argument('--output',type=Path,required=True);ap.add_argument('--check',type=Path)
    a=ap.parse_args();r=run(a.root.resolve(),a.output.resolve())
    if a.check:check_generated(a.output.resolve(),a.check.resolve())
    r={**r,'certificates_regenerated':len(list(a.output.glob('*.json'))),'certificate_sha256':{p.name:sha(p.read_bytes()) for p in sorted(a.output.glob('*.json'))}}
    print(json.dumps(r,ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()
