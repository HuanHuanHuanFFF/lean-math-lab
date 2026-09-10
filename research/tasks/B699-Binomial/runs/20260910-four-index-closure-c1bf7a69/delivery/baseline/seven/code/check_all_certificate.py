#!/usr/bin/env python3
"""Independent seven-index checker.  No generator/probe module is imported.
Uses the independently written primitive checker for heights/terminal witnesses.
The CRT reconstruction solves for the other cofactor and uses floor intervals.
"""
from __future__ import annotations
import argparse,json,math,time
from pathlib import Path
from check_certificate import (require,make_parameters,check_height,v_number,
    reconstruct_stage,union,check_large_row,trial_prime,check_top_interval)
ROOT=Path(__file__).resolve().parents[1]
TARGETS=(17,23,26,27,30,32,33)


def ceil_div(a:int,b:int)->int:
    return -((-a)//b)


def check_symbolic_stage(par:dict,stage:dict)->int:
    i=par['i'];H=int(stage['H']);M=int(stage['M']);start=max(i*(i-1),M+1)
    require(stage['i']==i and H>start and par['t']>=2 and par['d']>=0,'symbolic stage domain')
    exponent=par['lam']*(par['t']-1)
    rhs=(2*math.factorial(i))**par['lam']*H**par['d']
    require(par['K']*M**exponent>=rhs,'symbolic M certificate')
    require(M==1 or par['K']*(M-1)**exponent<rhs,'symbolic M not minimal')
    require(str(start)==stage['start'],'zero-exponent low branch')
    families=[]
    for p in par['ps']:
        if p>=i:continue
        v=v_number(i,p);powers=[];Q=1;h=0
        while Q<= (H-1)//p:
            Q*=p;h+=1
            if h<=v:continue
            amin=max(1,ceil_div(start-(i-1),Q));amax=min(M//p**v,(H-1)//Q)
            if amin<=amax:powers.append((p,h,Q,amin,amax))
        # Different power order from the generator; no effect on complete maxima.
        families.extend(reversed(powers))
    pairs=0;nonempty=0;terms=0;maximum=start-1;w=i-1
    for index,(p,h,Q,amin,amax) in enumerate(families):
        for q,k,R,bmin,bmax in families[index+1:]:
            if p==q:continue
            pairs+=1
            inverse=pow(R,-1,Q)
            # R*B = Q*A - d, so B is congruent to -d/R modulo Q.
            residue=(w*inverse)%Q
            if Q>bmax:
                for d in range(-w,w+1):
                    B=residue
                    if bmin<=B<=bmax:
                        v=R*B;A=(v+d)//Q
                        if amin<=A<=amax:
                            u=Q*A
                            low=max(start,u,v);high=min(H-1,u+w,v+w)
                            if low<=high:
                                nonempty+=1;terms+=1
                                if high>maximum:maximum=high
                    residue-=inverse
                    if residue<0:residue+=Q
            else:
                period=Q*R
                for d in range(-w,w+1):
                    B0=residue;A0=(R*B0+d)//Q
                    # A=A0+R*z, B=B0+Q*z.  Compute cofactor interval first.
                    lo=max(ceil_div(amin-A0,R),ceil_div(bmin-B0,Q))
                    hi=min((amax-A0)//R,(bmax-B0)//Q)
                    if lo<=hi:
                        u=Q*A0;v=R*B0
                        L=max(u,v);U=min(u+w,v+w)
                        lo=max(lo,ceil_div(start-U,period))
                        hi=min(hi,(H-1-L)//period)
                        if lo<=hi:
                            nonempty+=1;terms+=hi-lo+1
                            endpoint=min(H-1,U+period*hi)
                            if endpoint>maximum:maximum=endpoint
                    residue-=inverse
                    if residue<0:residue+=Q
    expected={'prime_power_families':len(families),'prime_power_pairs':pairs,
        'nonempty_CRT_families':nonempty,'progression_terms_with_multiplicity':str(terms),
        'next_H':str(maximum+1)}
    for k,v in expected.items():require(stage[k]==v,f'CRT exhaustive {k} mismatch')
    att=stage['max_attainer']
    if maximum>=start:
        require(att is not None,'missing extremal attainer')
        p,q=att['p'],att['q'];h,k=att['h'],att['k'];A,B=int(att['A']),int(att['B'])
        require(p<q<i and trial_prime(p) and trial_prime(q),'attainer prime colours')
        vp=v_number(i,p);vq=v_number(i,q)
        require(h>vp and k>vq and 1<=A<=M//p**vp and 1<=B<=M//q**vq,'attainer full exponent or cofactor')
        a=A*p**h;b=B*q**k
        require(a-b==att['difference'] and abs(a-b)<=w,'attainer displacement')
        require(max(start,a,b)==int(att['interval_start']),'attainer left end')
        require(min(H-1,a+w,b+w)==int(att['n'])==maximum,'attainer maximum')
        require(int(att['interval_start'])<=int(att['n']),'empty extremal interval')
    else:require(att is None,'spurious attainer')
    return maximum+1


def check(certificate:dict)->dict:
    require(certificate['schema']=='b699-symbolic-crt-contraction-v1','schema')
    require(certificate['target_indices']==list(TARGETS),'seven target indices')
    require(sorted(p['i'] for p in certificate['profiles'])==list(TARGETS),'missing/duplicate profile')
    primes=certificate['prime_witnesses']
    require(primes==sorted(set(primes)),'prime list canonicality')
    for p in primes:require(trial_prime(p),'composite terminal prime')
    used=set();profiles=[];bound_stages=0;pair_checks=0;timing=[]
    for row in certificate['profiles']:
        i=row['i'];par=make_parameters(i,row['r'],row['s'])
        delta=check_height(par,row['height_bits']);H=1<<row['height_bits']
        require(row['bound_stages'],'no symbolic contraction stages')
        for idx,s in enumerate(row['bound_stages']):
            require(int(s['H'])==H,'height induction input')
            start=time.monotonic();Hnew=check_symbolic_stage(par,s)
            timing.append({'i':i,'H':str(H),'seconds':time.monotonic()-start})
            bound_stages+=1;pair_checks+=s['prime_power_pairs']
            if idx+1<len(row['bound_stages']):require(Hnew<H,'non-contracting internal step')
            else:require(Hnew==H,'claimed fixed endpoint')
            H=Hnew
        terminal=row['terminal_cover']
        require(int(terminal['H'])==H,'terminal cover height')
        intervals,Hnew=reconstruct_stage(par,terminal)
        require(Hnew==H,'symbolic and explicit endpoints disagree')
        candidate=union([[2*i+2,terminal['start']-1]]+intervals)
        require(candidate==row['candidate_intervals'],'low rows or terminal union incomplete')
        provided=[];top_rows=0
        for a,b,p in row['top_prime_intervals']:
            check_top_interval(i,a,b,p,set(primes))
            provided.append([a,b]);used.add(p);top_rows+=b-a+1
        large=row['large_divisor_rows']
        require(len({n for n,D in large})==len(large),'duplicate large-divisor row')
        for n,D in large:check_large_row(par,n,int(D));provided.append([n,n])
        require(union(provided)==candidate,'uncovered final candidates')
        summary={'total_rows':sum(b-a+1 for a,b in candidate),'candidate_intervals':len(candidate),
            'max_candidate_n':candidate[-1][1],'top_prime_intervals':len(row['top_prime_intervals']),
            'top_prime_rows':top_rows,'large_divisor_rows':len(large),'unresolved':0}
        require(top_rows+len(large)==summary['total_rows'],'overlapping final cover')
        require(summary==row['summary'],'reported summary mismatch')
        profiles.append({'i':i,'height_integer_Delta':delta,**summary})
        print(json.dumps({'checked_i':i,**summary}),flush=True)
    require(used==set(primes),'missing/unused primality evidence')
    return {'status':'PASS','scope':'Complete exact finite certificates; BFT and infinite symbolic lemmas remain paper, not Lean',
        'independence':'No generator imports; other cofactor CRT parametrization; separate final colour-union reconstruction; primitive divisibility tests',
        'profiles':profiles,'bound_stages_checked':bound_stages,'power_pairs_checked':pair_checks,
        'unique_prime_witnesses':len(primes),'max_prime_witness':max(primes),'stage_times':timing,'lean_run':False}


def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',nargs='?',type=Path,default=ROOT/'outputs/seven_index_certificate.json')
    ap.add_argument('--output',type=Path,default=ROOT/'outputs/seven_index_independent_check.json')
    args=ap.parse_args();t=time.monotonic();result=check(json.loads(args.certificate.read_text()))
    result['wall_seconds']=time.monotonic()-t
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k!='stage_times'},indent=2))
if __name__=='__main__':main()
