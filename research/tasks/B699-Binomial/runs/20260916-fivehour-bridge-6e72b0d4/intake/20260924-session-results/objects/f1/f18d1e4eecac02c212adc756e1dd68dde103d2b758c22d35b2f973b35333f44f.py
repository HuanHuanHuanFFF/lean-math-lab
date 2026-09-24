#!/usr/bin/env python3
"""Independent Round26 verifier (standard library).
Local algorithm B enumerates nu and recovers h linearly; it does NOT solve E_h.
Global algorithm B lifts explicit residue tuples by CRT, not bitsets.
No network, no repository access, no Lean, no inference from stored PASS labels.
"""
from __future__ import annotations
import argparse,copy,json
from functools import lru_cache
from math import gcd,isqrt,lcm
from pathlib import Path

PS=(7,5,11,13,17,19,37,61)
QPER,EPER,SPER=45,720,360
N0=194400000


def require(condition:bool,message:str)->None:
    if not condition:raise ValueError(message)


def prime(p:int)->bool:
    if p<2:return False
    for z in range(2,isqrt(p)+1):
        if p%z==0:return False
    return True


def coords(q:int)->tuple[int,int]:
    U,X=1,0
    for _ in range(8*q+1):U,X=2*U+3*X,U+2*X
    require(U%2==0 and (3*X-1)%2==0,'Integer Pell coordinate failure')
    return (3*X-1)//2,U//2


def first_period(p:int)->int:
    # alpha^8 is the fixed exactly computed pair (18817,10864).
    a,b=18817%p,10864%p;u,x=1,0
    for t in range(1,p*p+1):
        u,x=(a*u+3*b*x)%p,(b*u+a*x)%p
        if (u,x)==(1,0):return t
    raise ValueError('No Pell period')


def first_order(base:int,p:int)->int:
    r=base%p;t=1
    while r!=1 and t<p:
        r=r*base%p;t+=1
    require(r==1,'No multiplicative order')
    return t


def direct_models(p:int,q:int)->tuple[set[tuple[int,int]],dict[tuple[int,int],dict],int,int]:
    d,y=coords(q);d%=p;y%=p
    iv2=pow(2,-1,p);iv4=pow(4,-1,p)
    pairs=set();witness={};candidates=0;accepted=0
    # Enumerate BOTH A and B, including all zero residue cases.
    for A in range(p):
        for B in range(p):
            if (A*B-3*(d-1))%p:continue
            v=A*y%p;Q=(d+v)%p
            for nu in range(p):
                if d:
                    hs=[(2*nu+Q)*pow(d,-1,p)%p]
                elif (2*nu+Q)%p==0:
                    hs=range(p)
                else:continue
                for h in hs:
                    candidates+=1
                    rhs=B*y+(h+3)*d*d+(2*h+3)*d*v+(h+1)*v*v
                    if (nu*nu-rhs)%p:continue
                    P=(Q+h*v)%p
                    require((2*nu-h*d+Q)%p==0,'linear recovery')
                    require((v*nu*nu-P*Q*Q+1)%p==0,'original norm lost')
                    n=(P*Q*nu+2)%p
                    C=(4*B*h-16*A*d-120*y-27*B)%p
                    cs=C*iv4%p
                    # Alternative integer formula for F/16, not generator's F.
                    fs=(3*(5*B-80*A-cs)**2-4*(4*A*cs+15)**2)%p
                    w=(5*fs+42*cs*cs-18000)%p
                    V=(w*w-3*(180*cs)**2+N0)%p
                    pair=(V,n);pairs.add(pair);accepted+=1
                    witness.setdefault(pair,{'p':p,'q_class':q,'d':d,'y':y,'A':A,'B':B,
                                             'h':h,'nu':nu,'P':P,'Q':Q,'C':C,'w':w,'V':V,'n':n})
    return pairs,witness,candidates,accepted


def expected_multipliers()->list[int]:
    return sorted(2**a*3**b*5**c for a in [0,4,6] for b in [0,2,4,5] for c in [0,2,4,5])


def validate_metadata(cert:dict)->None:
    require(cert['schema']=='B699-D-Round26-same-exponent-seven-v1','wrong schema')
    require(cert['q_period']==QPER and cert['seven_exponent_period']==EPER
            and cert['two_exponent_period']==SPER,'wrong periods')
    require(cert['multipliers']==expected_multipliers(),'missing or wrong multiplier')
    require(cert['small_part_exponents']=={'2':[0,4,6],'3':[0,2,4,5],'5':[0,2,4,5]},'wrong valuations')
    require(cert['q_mod3']==[0,2] and cert['V_mod16']==[0,9],'wrong necessary domains')
    require(cert['c0_after_7_gate']==1 and cert['s_mod3_after_7_gate']==1,'wrong original n phase')
    require(set(cert['tables'])=={str(p) for p in PS},'wrong primes')


@lru_cache(maxsize=None)
def crt_intersect(mod:int,roots:tuple[int,...],next_mod:int,allowed:tuple[int,...])->tuple[int,tuple[int,...]]:
    """All lifts of current classes to lcm; no coprimality assumption."""
    joint=lcm(mod,next_mod);aset=set(allowed)
    out=tuple(sorted(x+mod*k for x in roots for k in range(joint//mod)
                     if (x+mod*k)%next_mod in aset))
    return joint,out


def explicit_crt_cover(tables:dict)->dict:
    qvals=[q for q in range(QPER) if q%3!=1]
    vals=expected_multipliers();stage_ps=PS[1:]
    allowed={};pows={}
    for p in stage_ps:
        tb=tables[str(p)];ord2=tb['two_order']
        allowed[p]=[]
        for image in tb['V_n_images']:
            pairs={tuple(x) for x in image}
            allowed[p].append([tuple(e for e in range(ord2) if (v,pow(2,e,p)) in pairs)
                               for v in range(p)])
        pows[p]=[];r=1
        for _ in range(EPER):pows[p].append(r);r=r*7%p
        require(r==1,'exponent period not complete')
    rows=[];aggregate=[0]*8;pairs_after=0
    for m in vals:
        counts=[0]*8;first_zero={str(p):0 for p in stage_ps};paircount=0
        for q in qvals:
            for e in range(EPER):
                # 7^e mod16 is 1 for even e and 7 for odd e, including e=720k.
                if m*(1 if e%2==0 else 7)%16 not in [0,9]:continue
                paircount+=1;counts[0]+=120;mod,roots=3,(1,)
                for i,p in enumerate(stage_ps):
                    Vmod=m*pows[p][e]%p
                    allowed_roots=allowed[p][q%len(allowed[p])][Vmod]
                    mod,roots=crt_intersect(mod,roots,tables[str(p)]['two_order'],allowed_roots)
                    counts[i+1]+=len(roots)*(SPER//mod)
                    if not roots:
                        first_zero[str(p)]+=1
                        break
                require(not roots,f'uncovered (m,q,e)={(m,q,e)}')
        pairs_after+=paircount
        aggregate=[a+b for a,b in zip(aggregate,counts)]
        rows.append({'multiplier':m,'after_V16_and_primes':counts,
                     'projected_pairs_after_V16':paircount,'first_empty_prime_counts':first_zero})
    return {'stages':['V16']+list(stage_ps),'rows':rows,'aggregate':aggregate,
            'raw_after_7_phase_gate':48*30*720*120,
            'projected_q_e_pairs_before_V16':48*30*720,
            'projected_q_e_pairs_after_V16':pairs_after,'uncovered':0}


def diagnostics(tables:dict)->dict:
    # Retired union-only shell: each modulus passes, but no common (c0,s) exists.
    q,e,m=99,22344,9;trace=[]
    for p in PS:
        tb=tables[str(p)];image={tuple(x) for x in tb['V_n_images'][q%tb['q_period']]}
        vm=m*pow(7,e,p)%p
        exps={str(c):[s for s in range(tb['two_order']) if (vm,c*pow(2,s,p)%p) in image]
              for c in (1,3)}
        require(any(exps.values()),'old shell no longer passes an individual union')
        trace.append({'p':p,'V_mod_p':vm,'allowed_s_by_c0':exps})
    seven=next(r for r in trace if r['p']==7)
    thirtyseven=next(r for r in trace if r['p']==37)
    require(seven['allowed_s_by_c0']=={'1':[1],'3':[]},'7 shell gate')
    require(thirtyseven['allowed_s_by_c0']=={'1':[14],'3':[24]},'37 shell gate')
    require(14%3!=1,'shell phases were not contradictory')
    # Positive exponent classes must not be confused with literal exponent zero.
    require(pow(7,720,7)==0 and pow(7,0,7)==1,'positive-zero-class guard')
    for p in PS[1:]:require(pow(7,720,p)==1,'positive exponent-zero residue guard')
    # New finite-modulus boundary: a SINGLE c0,s, but A/B/h remain local.
    qb,sb,Vb=30,1081,161111822809
    factor=23015974687
    require(prime(factor) and Vb==7*factor,'boundary factorization')
    require(Vb%16==9 and Vb%3==1 and Vb%5==4 and Vb>qb*qb,'boundary scalar constraints')
    d,y=coords(qb);require((1<<sb)>d*d,'boundary n lower bound')
    require((8*qb+1-5)//2<=sb<=18*(8*qb+1)+15,'boundary T-height corridor')
    witnesses=[]
    for p in PS:
        image,wit,_,_=direct_models(p,qb%tables[str(p)]['q_period'])
        target=(Vb%p,pow(2,sb,p))
        require(target in image,'same-exponent boundary did not pass')
        witnesses.append(wit[target])
    return {'removed_union_shell':{'q':q,'multiplier':m,'exponent':e,'trace':trace,
                                   'all_individual_union_projections_pass':True,
                                   'same_original_s_inconsistent':True},
            'positive_exponent_zero_class_checked':True,
            'finite_phase_boundary':{'q':qb,'c0':1,'s':sb,'V':Vb,
                                     'V_factorization':{'7':1,str(factor):1},
                                     'local_witnesses':witnesses,
                                     'scope':'Only the eight new local phase images and stated scalar guards; not a common integer A/B/h recovery, not NC3, not an all-history survivor.'}}


def negative_tests(cert:dict,reference_tables:dict,reference_cover:dict)->dict:
    tests={}
    bad=copy.deepcopy(cert);bad['multipliers'].pop()
    try:validate_metadata(bad)
    except ValueError:tests['missing_multiplier_rejected']=True
    else:raise ValueError('missing multiplier accepted')
    bad=copy.deepcopy(cert);bad['c0_after_7_gate']=3
    try:validate_metadata(bad)
    except ValueError:tests['wrong_c0_gate_rejected']=True
    else:raise ValueError('wrong c0 accepted')
    bad=copy.deepcopy(cert);bad['seven_exponent_period']=1
    try:validate_metadata(bad)
    except ValueError:tests['truncated_exponent_period_rejected']=True
    else:raise ValueError('truncated exponent period accepted')
    bad=copy.deepcopy(cert);bad['tables']['7']['V_n_images'][0].remove([0,2])
    try:require(bad['tables']==reference_tables,'forged local image')
    except ValueError:tests['deleted_true_local_pair_rejected']=True
    else:raise ValueError('forged image accepted')
    bad=copy.deepcopy(cert);bad['cover']['aggregate'][-2]=0
    try:require(bad['cover']==reference_cover,'forged coverage ledger')
    except ValueError:tests['forged_penultimate_count_rejected']=True
    else:raise ValueError('forged count accepted')
    return tests


def run(cert:dict)->dict:
    validate_metadata(cert);tables={};stats=[];allcand=0;allmodels=0
    for p in PS:
        require(prime(p),'nonprime auxiliary modulus')
        T=first_period(p);O=first_order(2,p);E=first_order(7,p) if p!=7 else None
        require(QPER%T==0 and SPER%O==0 and (E is None or EPER%E==0),'period mismatch')
        images=[];pc=0;pm=0
        for qr in range(T):
            pairs,_,c,a=direct_models(p,qr);pc+=c;pm+=a
            images.append([list(x) for x in sorted(pairs)])
        tb={'p':p,'q_period':T,'two_order':O,'seven_order':E,'V_n_images':images}
        require(tb==cert['tables'][str(p)],f'local image mismatch p={p}')
        tables[str(p)]=tb;allcand+=pc;allmodels+=pm
        stats.append({'p':p,'q_period':T,'two_order':O,'seven_order':E,
                      'nu_h_candidates':pc,'accepted_models':pm,
                      'distinct_V_n_pairs':sum(map(len,images))})
    p7=tables['7']['V_n_images'][0]
    require([n for v,n in p7 if v==0]==[2],'7 gate lacks completeness')
    gate=[]
    for c in [1,3]:
        for s in range(3):
            n=c*pow(2,s,7)%7
            gate.append({'c0':c,'s_mod3':s,'n_mod7':n,'V_mod7':sorted(v for v,nn in p7 if nn==n)})
    require(gate==cert['phase_gate7'],'phase table differs')
    cov=explicit_crt_cover(tables)
    require(cov==cert['cover'],'global CRT coverage differs from bitsets')
    diag=diagnostics(tables);nt=negative_tests(cert,tables,cov)
    return {'status':'ROUND26_REPLAY=PASS','evidence_level':'Author paper reduction plus exact full-period certificates and same-author distinct algorithms; no Lean or external independent review.',
            'local_statistics':stats,'total_nu_h_candidates':allcand,
            'total_accepted_local_models':allmodels,
            'total_distinct_local_pairs':sum(s['distinct_V_n_pairs'] for s in stats),
            'phase_gate7':gate,'cover_summary':{k:v for k,v in cov.items() if k!='rows'},
            'small_part_count':48,'new_seven_families_beyond_round25':46,
            'raw_grid_before_p7':48*30*720*360*2,
            'all_48_complete_positive_seven_exponent_families_closed':True,
            'diagnostics':diag,'negative_tests':nt,
            'repository_actions':[],'lean_run':False,'external_theorem_blackbox':False}


def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    cert=json.loads(a.certificate.read_text(encoding='utf-8'));result=run(cert)
    a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print('INDEPENDENT_LOCAL_NU_ENUMERATION=PASS; CANDIDATES='+str(result['total_nu_h_candidates']))
    print('SAME_ORIGINAL_C0_S=PASS; POSITIVE_ZERO_EXPONENT_CLASS=PASS')
    print('EXPLICIT_CRT_COVER=PASS; COUNTS='+str(result['cover_summary']['aggregate']))
    print('BAD_CERTIFICATES_REJECTED=PASS; COUNT='+str(len(result['negative_tests'])))
    print(result['status'])
if __name__=='__main__':main()
