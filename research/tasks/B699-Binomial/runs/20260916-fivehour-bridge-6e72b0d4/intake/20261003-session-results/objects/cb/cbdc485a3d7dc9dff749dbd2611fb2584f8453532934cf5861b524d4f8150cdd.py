#!/usr/bin/env python3
"""P3 application audit, separate from the original numerical and CRT checkers.
No generator imports. rationalized critical points / convolution integrals /
Pareto lower corners / independent terminal event measure. No Lean or network.
"""
from __future__ import annotations
import argparse, copy, hashlib, importlib.util, json, math, sys
from collections import defaultdict
from fractions import Fraction as F
from pathlib import Path
from exact80 import I

TABLE={(5,4):(F('1.3098'),50),(25,17):(F('1.5540'),582),
       (3,2):(F('1.5395'),138),(7,5):(F('1.4135'),74),
       (8,5):(F('1.5407'),53),(5,3):(F('1.5454'),86),
       (4,3):(F('1.4170'),153),(7,4):(F('1.6219'),60),
       (2,1):(F('1.9377'),150)}
TARGET={11:(4096,3,7,689,579),16:(65536,4,10,1006,96),21:(32768,6,14,1324,128)}
DOWN={11:(3,7,4096,98),16:(5,11,65536,73),21:(6,14,32768,64)}

def need(cond,msg):
    if not cond: raise ValueError(msg)

def prime(n):
    if n<2:return False
    if n%2==0:return n==2
    if n%3==0:return n==3
    a=5
    while a*a<=n:
        if n%a==0 or n%(a+2)==0:return False
        a+=6
    return True

def convolution(a,b):
    out=[F(0)]*(len(a)+len(b)-1)
    for k,x in enumerate(a):
        for h,y in enumerate(b):out[k+h]+=x*y
    return out

def integrate(factors):
    coeff=[F(1)]
    for pol,power in factors:
        need(power>=0,'negative polynomial degree')
        for _ in range(power):coeff=convolution(coeff,pol)
    return sum((v/F(k+1) for k,v in enumerate(coeff)),F(0))

def independent_cut(row,h):
    p,q,k,l,a,b,c,d=(int(row[t]) for t in ['p','q','k0','l0','a','b','c','d'])
    wp,wq=row['wp'],row['wq'];L,m0=TABLE[(c,d)]
    need(prime(p) and prime(q) and p!=q,'actual distinct prime bases')
    need(min(k,l,a,b,d)>0 and c>d and math.gcd(c,d)==1,'seed domain')
    need(F(str(row['L1']))==L and row['m0']==m0,'publication row')
    need(0<wp<1000 and 0<wq<1000,'weight domain')
    P,Q=p**k,q**l;D0=a*P-b*Q;s=F(c,d);z=F(D0,a*P)
    need(D0==row['D0'] and D0>0 and 1<s<1/z,'directed seed')
    root=I(s*s*z*z+4-4*z).sqrt()
    # These are algebraically rationalized forms of BOTH critical points.
    u1=2*(s-1)/(s*(2-z)+root)
    u2=2/(s*z+2+root)
    need(0<u1.lo<=u1.hi<1 and 0<u2.lo<=u2.hi<1,'critical points')
    ad=F((c+d)**(c+d),(c-d)**(c-d)*d**(2*d))
    Qd=ad*u1**(c-d)*(1-u1)**d*(1-(1-z)*u1)**d
    Ed=ad*u2**d*(1-u2)**d*(1-z*u2)**(c-d)
    O3=F(P**(c-d),a**d*b**c)*L**d/Qd
    O4=F(min(P,Q)**c,(a*P)**(c-d)*D0**(2*d))*L**d/Ed
    need(O3.lo>1 and O4.lo>1,'Omega signs')
    Cs=[]
    for delta in (0,1):
        v=d-delta;w=c-d-1+delta
        J1=integrate([([0,1],w),([1,-1],v),([1,z-1],v)])
        J2=integrate([([0,1],v),([1,-1],v),([1,-z],w)])
        sf=I(s*s-1).sqrt()
        if delta:sf=1/sf
        cu1=(ad*sf*J1/(6*Qd)).hi;cu2=(ad*sf*J2/(6*Ed)).hi
        need(J1>0 and J2>0 and 0<cu1<1 and 0<cu2<1,'integral upper bound')
        Cs.append(dict(delta=delta,integrals=[str(J1),str(J2)],C_upper=[str(cu1),str(cu2)]))
    l2=I(2).log();ell3=O3.log();ell4=O4.log();T=c*I(max(P,Q)).log()+ell4
    bp=F(1000-wp,1000)/(c*I(P).log());bq=F(1000-wq,1000)/(c*I(Q).log())
    beta=min(bp.lo,bq.lo);hl=h*l2.lo;m=beta*hl-1;gap=beta*T.lo-1
    margins=dict(m_minus_m0=m-m0,omega3=m*ell3.lo-I(48).log().hi,
                 betaT_minus_one=gap,height_gap=gap*hl-T.hi-2*l2.hi)
    need(all(x>0 for x in margins.values()),'cut not valid at this source threshold')
    return dict(seed={t:row[t] for t in ['p','q','k0','l0','a','b','c','d','L1','m0','D0','wp','wq']},
                Y_height_bits=h,integrals_and_C=Cs,
                four_margins_lower={k:str(v) for k,v in margins.items()},
                Omega3d=O3.out(),Omega4d=O4.out(),T=T.out(),beta_lower=str(beta))

def corners(primes,cuts):
    ix={p:k for k,p in enumerate(primes)};states={(0,)*len(primes)};sizes=[]
    for r in cuts:
        p,q=ix[r['p']],ix[r['q']];a,b=r['wp'],r['wq'];new=set()
        for v in states:
            if v[p]>=a or v[q]>=b:new.add(v)
            else:
                w=list(v);w[p]=a;new.add(tuple(w))
                w=list(v);w[q]=b;new.add(tuple(w))
        # Coordinatewise dominating corners add no points to the upper-set union.
        keep=[]
        for v in sorted(new,key=lambda v:(sum(v),v)):
            if not any(all(x<=y for x,y in zip(w,v)) for w in keep):keep.append(v)
        states=set(keep);sizes.append(len(states))
    need(states,'empty corner representation')
    best=min(states,key=lambda v:(sum(v),v))
    need(all(best[ix[r['p']]]>=r['wp'] or best[ix[r['q']]]>=r['wq'] for r in cuts),'corner witness')
    return dict(minimum=sum(best),witness=list(best),retained_corners=len(states),layer_sizes=sizes)

def height_binding(proof,backend):
    need(proof is not None,'missing audited initial source')
    need(proof['source_audited'] is True,'unverified source')
    i=proof['i'];r,s,H,cube=backend
    need(i in TARGET and H==TARGET[i][0] and proof['height_bits']==H,'wrong initial height binding')
    need((r,s,H,cube)==DOWN[i],'wrong P3 downstream instance')
    need(proof['cut_height_bits']==H-1 and proof['Delta']>0 and proof['integer_margin']>0,'incomplete source height')
    return True

def factorial_valuation(n,p):
    ans=0
    while n:n//=p;ans+=n
    return ans

def choose_v(n,k,p):
    return factorial_valuation(n,p)-factorial_valuation(k,p)-factorial_valuation(n-k,p)

def number_v(n,p):
    need(n>0 and prime(p),'valuation domain');e=0
    while n%p==0:n//=p;e+=1
    return e

def event_measure(candidate,provided):
    ev=defaultdict(lambda:[0,0])
    for side,rows in enumerate((candidate,provided)):
        for a,b in rows:
            need(a<=b,'reversed interval');ev[a][side]+=1;ev[b+1][side]-=1
    cur=[0,0];old=None;total=0;pieces=0
    for x in sorted(ev):
        if old is not None and x>old:
            need(cur[0] in (0,1) and cur[1]==cur[0],'cover mismatch or multiplicity')
            if cur[0]:total+=x-old;pieces+=1
        cur[0]+=ev[x][0];cur[1]+=ev[x][1];old=x
    need(cur==[0,0],'unbalanced endpoints')
    return dict(rows=total,event_cells=pieces,points=len(ev))

def terminal_check(row):
    i=row['i'];r,s=row['r'],row['s'];ell=i-r-1;lam=2*s-r;E=s*(s+1)+ell*(ell+1)//2
    K=2**(s*(s+1))*math.prod(math.factorial(h)**2 for h in range(1,s+1))*math.prod(math.factorial(h) for h in range(1,ell+1))
    primes=row['prime_witnesses'];need(primes==sorted(set(primes)) and all(prime(p) for p in primes),'terminal primality')
    supplied=[];used=set();small_primorial=math.prod(p for p in range(2,i) if prime(p))
    for a,b,p in row['top_prime_intervals']:
        need(a>=2*i+2 and p in primes and p<=a<=b<p+i,'top strict interval')
        supplied.append([a,b]);used.add(p)
    need(used==set(primes),'unused top primes')
    for n,D in row['large_divisor_rows']:
        D=int(D);need(n>=2*i+2 and D>0,'large divisor domain')
        need(math.comb(n,i)%D==0 and math.gcd(D,small_primorial)==1,'actual complete integer divisor')
        need(K*D**lam>n**E,'large divisor insufficient');supplied.append([n,n])
    special_results=[]
    for spec in row['special_binomial_rows']:
        n=spec['n'];ivs=[];tests=[]
        for a,b,p in spec['intervals']:
            need(prime(p) and p>=i and i<a<=b<=n//2,'special range')
            v1=choose_v(n,i,p);need(v1>0 and math.comb(n,i)%p==0,'special first choose')
            for j in range(a,b+1):
                need(choose_v(n,j,p)>0 and math.comb(n,j)%p==0,'special second choose')
                tests.append([j,p,v1,choose_v(n,j,p)])
            ivs.append([a,b])
        event_measure([[i+1,n//2]],ivs);supplied.append([n,n])
        special_results.append(dict(n=n,intervals=spec['intervals'],tests=tests))
    measure=event_measure(row['candidate_intervals'],supplied)
    need(measure['rows']==row['summary']['total_rows'] and row['unresolved_rows']==[],'summary or unresolved')
    return dict(i=i,**measure,top_primes=len(primes),large_divisor_checks=len(row['large_divisor_rows']),special=special_results)

def reject(name,fn):
    try:fn()
    except (ValueError,AssertionError,KeyError,IndexError) as e:return dict(test=name,rejected=True,reason=str(e))
    raise AssertionError('Bad certificate accepted: '+name)

def run(asym_root,p3_root):
    original=json.loads((asym_root/'results/refined_profiles.json').read_text())['profiles']
    current=json.loads((asym_root/'results/refined_certificate.json').read_text())['profiles']
    selected=[x for x in original if x['i'] in TARGET];certified=[];sensitivity=[];neg=[]
    for row in selected:
        i=row['i'];B,r,s,S,delta=TARGET[i];need(row['height_bits']==B and row['cut_height_bits']==B-1,'original source tuple')
        need(row['r']==r and row['s']==s,'height-stage window tuple')
        certs=[independent_cut(x,B-1) for x in row['cuts']]
        graph=corners(row['primes'],row['cuts']);need(graph['minimum']==S,'independent scalar minimum')
        lam=2*s-r;E=s*(s+1)+(i-r-1)*(i-r)//2;t=len(row['primes'])
        d=lam*(1000*(i-t)+S)-1000*E;fb=math.factorial(i).bit_length()
        margin=B*d-(1000*lam*fb+lam*(1000+S))
        need(d==delta and margin==row['integer_height_margin'] and margin>0,'integer contradiction')
        old=next(x for x in current if x['i']==i)
        need(old['height_bits']==B and old['comparison_margin']==margin and old['S']==S and old['Delta']==d,'original checker result')
        out=dict(i=i,source_audited=True,height_bits=B,cut_height_bits=B-1,Delta=d,integer_margin=margin,
                 source_window=[r,s],downstream_window=list(DOWN[i][:2]),source_cuts=certs,graph=graph)
        height_binding(out,DOWN[i]);certified.append(out)
        if i in (16,21):
            changes=[]
            for k,cut in enumerate(row['cuts']):
                g=corners(row['primes'],row['cuts'][:k]+row['cuts'][k+1:]);s0=g['minimum']
                net=lam*(1000*(i-t)+s0)-1000*E
                changes.append(dict(cut_index=k,bases=[cut['p'],cut['q']],weights=[cut['wp'],cut['wq']],
                     relaxed_S=s0,relaxed_Delta=net,full_source_height_lost=net<=0,
                     projection_only=True))
            sensitivity.append(dict(i=i,remove_one_cut=changes))
    # Backend source binding is distinct from merely having a good CRT certificate.
    p16=next(x for x in certified if x['i']==16)
    neg.append(reject('missing_initial_height',lambda:height_binding(None,DOWN[16])))
    altered=copy.deepcopy(p16);altered['height_bits']=11001
    neg.append(reject('G4_height_substitution',lambda:height_binding(altered,DOWN[16])))
    neg.append(reject('old_i16_r_s_used_downstream',lambda:height_binding(p16,(4,10,65536,73))))
    rr=next(x for x in selected if x['i']==16)['cuts'][0]
    neg.append(reject('Y_threshold_replaced_by_one',lambda:independent_cut(rr,0)))
    altered=copy.deepcopy(rr);altered['L1']='1.5'
    neg.append(reject('unpublished_G_table_value',lambda:independent_cut(altered,65535)))
    sys.path[:0]=[str(p3_root/'code'),str(p3_root/'vendor')]
    spec=importlib.util.spec_from_file_location('p3_original_checker_audit',p3_root/'code/check_targets.py')
    checker=importlib.util.module_from_spec(spec);spec.loader.exec_module(checker)
    block=json.loads((p3_root/'results/block_16_2_3.json').read_text())
    for name,mut in [
        ('wrong_source_exponent_height',lambda x:x.update(source_height_bits=11001)),
        ('missing_exponent_block_tail',lambda x:x['blocks'][-1].update(L=x['blocks'][-1]['L']-1)),
        ('first_block_gap',lambda x:x['blocks'][0].update(K=x['blocks'][0]['K']+1)),
        ('incorrect_inverse',lambda x:x['blocks'][0].update(inverse_hex='0x0'))]:
        bad=copy.deepcopy(block);mut(bad)
        neg.append(reject(name,lambda x=bad:checker.block_row(x,16,2,3,65536)))
    summaries=[];rows=[]
    for i in TARGET:
        row=json.loads((p3_root/f'results/terminal_certificate_{i}.json').read_text());rows.append(row)
        summaries.append(terminal_check(row))
    r11=rows[0];spec11=copy.deepcopy(r11['special_binomial_rows'][0]);ivs=[x[:2] for x in spec11['intervals']]
    ivs[-1][1]-=1
    neg.append(reject('missing_n330_j_tail',lambda:event_measure([[12,165]],ivs)))
    first=rows[1]['top_prime_intervals'][0]
    a,b,p=first;neg.append(reject('top_prime_endpoint_closed',lambda:checker.check_top_interval(16,a,p+16,p,{p})))
    par=checker.parameters(16,5,11);n=int(rows[1]['large_divisor_rows'][0][0])
    neg.append(reject('insufficient_actual_divisor',lambda:checker.check_large_row(par,n,1)))
    cand=rows[1]['candidate_intervals'];neg.append(reject('omitted_candidate_segment',lambda:event_measure(cand,cand[:-1])))
    neg.append(reject('duplicate_candidate_cover',lambda:event_measure(cand,cand+[cand[0]])))
    examples=[]
    for i,p in [(11,11),(16,17),(21,23)]:
        n=2*p**3;j=p**3;e=choose_v(n,i,p);e2=choose_v(n,j,p);raw=number_v(n,p)
        need(e>0 and e2==0 and raw==e+(1 if p==i else 0),'full prime-power source compensation')
        need(math.comb(n,i)%p==0 and math.comb(n,j)%p!=0,'valuation/direct choose consistency')
        examples.append(dict(n=n,i=i,j=j,p=p,choose_exponent=e,second_exponent=e2,source_exponent=raw,
              status='actual avoiding-prime example, not an NC or counterexample'))
    G7={17,23,26,27,30,32,33};G4={19,22,24,25};prior=set(range(3,35))-{11,29}-G7-G4
    after=prior-{16,21};R7=set(range(3,10))
    need(len(prior)==19 and len(after)==17 and len(after-R7)==10,'graded sets')
    newtargets=[x for x in rows if x['i'] in (16,21)]
    return dict(status='PASS_R11_APPLICATION_AUDIT',new_author_audit_indices=[16,21],duplicate_accepted_index=11,
        source_profiles=certified,dependency_sensitivity=sensitivity,
        terminal_events=summaries,negative_tests=neg,full_power_examples=examples,
        graded_sets=dict(before=sorted(prior),after=sorted(after),non_R7_after=sorted(after-R7),R7=sorted(R7)),
        new_target_counts=dict(candidates=sum(x['summary']['total_rows'] for x in newtargets),
             CRT_stages=sum(len(x['bound_stages']) for x in newtargets),
             unique_top_primes=len(set().union(*(set(x['prime_witnesses']) for x in newtargets)))),
        external_dependencies='BFT 2007-02-26 Lemma 4.1 and nine Prop.5.1 rows; publication proofs are not program-verified',
        no_new_Lean=True,no_project_acceptance=True,no_external_independent_review=True,historical_new_math_indices=0)

def main():
    need(not sys.flags.optimize,'do not run under -O')
    ap=argparse.ArgumentParser();ap.add_argument('--asym-root',type=Path,required=True);ap.add_argument('--p3-root',type=Path,required=True);ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    out=run(a.asym_root.resolve(),a.p3_root.resolve());a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(dict(status=out['status'],source_cuts=sum(len(x['source_cuts']) for x in out['source_profiles']),
        negative_tests=len(out['negative_tests']),new_target_counts=out['new_target_counts'],remaining=out['graded_sets']['after']),ensure_ascii=False))
if __name__=='__main__':main()
