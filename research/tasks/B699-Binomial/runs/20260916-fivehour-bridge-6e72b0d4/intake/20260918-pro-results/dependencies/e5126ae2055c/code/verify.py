#!/usr/bin/env python3
"""Deterministic finite evidence. Infinite deductions are in PROOFS.md.

The only un-reproved mathematical contract is native target-5 QIG, used ONLY
by the homogeneous R^3 corollary, not by the main global quadratic criterion.
"""
from __future__ import annotations
import argparse, copy, hashlib, json, platform, time
from collections import defaultdict
from fractions import Fraction
from math import gcd, prod, isqrt
from pathlib import Path
from consumer import small_part, require, valuation_binomial, pair_certificate

ROOT = Path(__file__).resolve().parents[1]
BITS = 37
CAP = 1 << BITS


def qig_gap(n):
    T = prod(small_part(n-r,5) for r in range(4))
    return (1<<20)*(n-1)**6*(n-3)**3 - T**6*(3*n*n-12*n+8)


def powers(p, first):
    result=[]; q=p**first
    while q<CAP:
        result.append(q); q*=p
    return result


def recover(reverse=False):
    ps, qs = powers(2,3), powers(3,2)
    low = {n for n in range(12,8192) if n % 72 in (18,56)}
    high=set(); raw=0
    for P in ps:
        for Q in qs:
            for r,s in ((0,2),(2,0)):
                raw+=1
                if reverse:
                    n=(s+Q*((r-s)*pow(Q,-1,P)%P))%(P*Q)
                else:
                    n=(r+P*((s-r)*pow(P,-1,Q)%Q))%(P*Q)
                if not (8192<=n<CAP):
                    continue
                require(n%P==r and n%Q==s,'CRT identity')
                if (n-r)%(2*P)==0 or (n-s)%(3*Q)==0:
                    continue
                require(n%72 in (18,56),'actual H02 residue')
                high.add(n)
    rows=sorted(low|high)
    ends=[n for n in rows if qig_gap(n)<=0]
    return rows, ends, {'cap_bits':BITS,'power_pairs':len(ps)*len(qs),'orientations':raw,
                       'low_rows':len(low),'high_rows':len(high),'all_rows':len(rows),
                       'qig_closed':len(rows)-len(ends),'terminal_rows':len(ends)}


def verify_primes(certificates):
    accepted=set()
    require(len({rec['p'] for rec in certificates})==len(certificates),'duplicate prime node')
    for rec in sorted(certificates,key=lambda z:z['p']):
        p=rec['p']; require(type(p) is int and p>=2,'invalid prime node')
        if p==2:
            accepted.add(2);continue
        fs=rec['factorization_p_minus_1']; a=rec['a']
        require(len({q for q,e in fs})==len(fs),'duplicate factor in p-1')
        require(all(q in accepted and type(e) is int and e>0 for q,e in fs),'unproved predecessor')
        require(prod(q**e for q,e in fs)==p-1,'incomplete p-1')
        require(1<a<p and pow(a,p-1,p)==1,'Lucas Fermat identity')
        require(all(gcd(pow(a,(p-1)//q,p)-1,p)==1 for q,e in fs),'Lucas full order')
        accepted.add(p)
    return accepted


def check_terminals(data, expected):
    require([rec['n'] for rec in data['rows']]==expected,'complete terminal set')
    primes=verify_primes(data['prime_certificates'])
    witnesses=[]; alpha_count=0; source_nodes=set()
    for rec in data['rows']:
        n=rec['n']; factors=rec['row_factorizations']
        require(len(factors)==5,'five source windows')
        for r,fs in enumerate(factors):
            require(len({p for p,e in fs})==len(fs),'source duplicate prime')
            require(all(p in primes and type(e) is int and e>0 for p,e in fs),'source prime certificate')
            require(prod(p**e for p,e in fs)==n-r,'complete source powers')
            source_nodes.update(p for p,e in fs)
        f0=dict(factors[0]); e5=1 if f0.get(5,0)==1 else 0
        alphas=sorted(2**a*3**b*5**c for a in range(f0.get(2,0)+1)
                      for b in range(f0.get(3,0)+1) for c in range(e5+1))
        require(alphas==rec['alphas'],'complete alpha superset')
        alpha_count+=len(alphas)
        qparts=[p**e for p,e in factors[1] if p not in (2,3) and not (p==5 and e==1)]
        q1=prod(qparts)
        require(q1==rec['q1']==(n-1)//small_part(n-1,5),'target5 full q1')
        actual=set()
        # Reverse the source-power order relative to the frozen implementation.
        for alpha in alphas:
            g=n//alpha; M=1; residues=[0]
            require(gcd(g,q1)==1,'g and q1 coprime')
            for Q in reversed(qparts):
                inv=pow(M,-1,Q); ginv=pow(g,-1,Q)
                residues=[z+M*((wanted-z)*inv%Q) for z in residues for wanted in (ginv,0)]
                M*=Q
            lo=5//g+1; hi=alpha//2
            for z in residues:
                beta=z+((lo-z+M-1)//M)*M
                while beta<=hi:
                    if gcd(alpha,beta)==1:
                        actual.add((alpha,beta))
                    beta+=M
        supplied={(v['alpha'],v['beta']) for v in rec['candidates']}
        require(len(supplied)==len(rec['candidates']) and actual==supplied,'all original candidates')
        for v in rec['candidates']:
            alpha,beta,p=v['alpha'],v['beta'],v['p']
            g=n//alpha;j=g*beta
            require(6<=j<=n//2 and gcd(n,j)==g,'same legal original input')
            require(p>=5 and p in primes,'qualified proven common prime')
            src=valuation_binomial(n,5,p); dst=valuation_binomial(n,j,p)
            require(src==v['source_v']>0 and dst==v['target_v']>0,'exact source and target valuations')
            witnesses.append({'n':n,'j':j,'p':p,'source_v':src,'target_v':dst})
    return {'terminal_rows':len(expected),'prime_certificate_nodes':len(primes),
            'source_primes':len(source_nodes),'alpha_entries':alpha_count,
            'original_pairs':len(witnesses),'witnesses':witnesses}


def padd(*polys):
    out=defaultdict(int)
    for f in polys:
        for m,c in f.items(): out[m]+=c
    return {m:c for m,c in out.items() if c}


def scale(f,k): return {m:c*k for m,c in f.items() if c*k}

def pmul(f,g):
    out=defaultdict(int)
    for u,c in f.items():
        for v,d in g.items(): out[tuple(a+b for a,b in zip(u,v))]+=c*d
    return {m:c for m,c in out.items() if c}


def algebra():
    A={(1,0,0):1}; a={(0,1,0):1}; Q={(0,0,1):1}; one={(0,0,0):1}
    checks=0
    for r in (3,4):
        for b in range(r+1):
            N=padd(pmul(A,Q),scale(one,r-1)); J=padd(pmul(a,Q),scale(one,b))
            U=padd(scale(A,b),scale(a,-(r-1))); V=padd(U,scale(A,-1))
            lhs=padd(pmul(pmul(A,A),pmul(J,padd(J,scale(one,-1)))),scale(pmul(U,V),-1))
            quotient=padd(pmul(pmul(a,a),N),pmul(a,padd(U,V)))
            require(lhs==pmul(N,quotient),'affine congruence polynomial identity')
            checks+=1
    constants={}
    for label,mult,shift,rs in [('half',2,-1,(2,4)),('third_minus',3,-1,(2,3)),('third_plus',3,2,(2,3))]:
        constants[label]={str(r):prod(r+shift-mult*b for b in range(r+1)) for r in rs}
    require(constants=={'half':{'2':3,'4':-45},'third_minus':{'2':10,'3':-56},'third_plus':{'2':-8,'3':40}},'zero-line residues')
    divisors={}
    for v in (3,45,10,56,8,40):
        ds=[d for d in range(1,v+1) if v%d==0 and gcd(d,6)==1 and not(d%5==0 and d%25!=0)]
        require(ds==([1,7] if v==56 else [1]),'allowed complete rough divisor of zero-line remainder')
        divisors[str(v)]=ds
    require(5*12-9>0 and 7*12-16>0,'quadratic simple-threshold dominance for all n>=12')
    costs={}
    for target in (5,6):
        rows=[n+1800 for n in (range(1800) if target==5 else (1280,1530)) if n%72 in (18,56)]
        for r in (3,4):
            c=max(r*(r-1)*small_part(n-1,target)*small_part(n-r,target)**2 for n in rows)
            expected={(5,3):1350,(5,4):4800,(6,3):54,(6,4):192}[target,r]
            require(c==expected,'full small-part maximum')
            require(c**3<CAP,'proved cubic finite-height absorption')
            costs[f'{target}:{r}']={'C':c,'C_cubed':c**3}
    require(3*30**6 < 8192*2**19,'QIG two-power reconstruction threshold')
    return {'affine_polynomial_identities':checks,'zero_line_residues':constants,
            'zero_line_rough_divisors':divisors,'cofactor_costs':costs}


def crt(slots):
    x,M=0,1
    for b,Q in slots:
        require(gcd(M,Q)==1,'CRT coprimality')
        x += M*((b-x)*pow(M,-1,Q)%Q); M*=Q
    return x,M


def prime_small(p):
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))


def families():
    # Every assertion about arbitrary u uses these exact base/period identities.
    D=77**6*96577
    require(96577==13*17*19*23 and pow(D,60,450)==1 and pow(D,14,450)==319,'distributed infinite residue identities')
    require(96577**2<77**6 and 11**12<D,'distributed cofactor/individual-power inequalities')
    require(77**12>96*D,'aggregate block beats direct quadratic threshold')
    for pair in (13*19,17*23,13*17,19*23):
        require(pair**9>8*D,'all old pair thresholds fail uniformly')
    for p,e in ((7,6),(11,6),(13,1),(17,1),(19,1),(23,1)):
        require(prime_small(p) and (D//(p**e))**3>8*D,'no individual complete power satisfies even new cubic row condition')
    s=14;q4=D**s;n=4*q4+4
    expected=[13**s,17**s,77**(6*s),19**s,23**s]
    x,M=crt(list(enumerate(expected)));j=x+M
    require(M==q4 and n%1800==1280 and q4==(n-4)//small_part(n-4,5),'distributed actual original row')
    blocks=[gcd(q4,j-b) for b in range(5)]
    require(blocks==expected and all(v>1 for v in blocks),'five actual complete blocks')
    require(7<=j<=n//2 and n>1<<397,'legal example above old finite bottom')
    cert5=pair_certificate(n,j,5);cert6=pair_certificate(n,j,6)
    require(cert5 is not None and cert6 is not None,'new global direct certificate')
    known=[]
    for p in (7,11,13,17,19,23):
        src5=valuation_binomial(n,5,p);src6=valuation_binomial(n,6,p);tgt=valuation_binomial(n,j,p)
        if min(src5,src6,tgt)>0: known.append({'p':p,'source5':src5,'source6':src6,'target':tgt})
    require(known,'actual qualified same-prime original witness in example')
    # A second whole-row family: a single complete power, genuinely growing R.
    R0=11*13*17*19; F=7**12*R0
    require(R0**2<7**12 and pow(R0,10,450)==1 and pow(7,120,450)==1,'single-power growth/period')
    require(pow(7,98,450)*pow(R0,8,450)%450==319,'single-power base residue')
    require(R0**9>8*49*F,'single-power old cofactor condition fails uniformly')
    s2=8;Q2=7**(12*s2+2);R2=R0**s2;n2=4*Q2*R2+4
    require(n2%1800==1280 and R2**3<n2 and R2**9>n2,'single-power strict predicate gain')
    return {'distributed':{'formula':'s=60u+14; n=4*(77^6*96577)^s+4; CRT slots in proof',
              'u':0,'s':s,'n':n,'j':j,'n_bits':n.bit_length(),'q4':q4,'blocks':blocks,
              'individual_complete_power_max_squared_lt_n':True,
              'old_pair_tests_all_fail':True,'old_row_tests_all_fail':True,
              'new_individual_cubic_row_tests_all_fail':True,
              'new_pair_certificate_5':cert5,'new_pair_certificate_6':cert6,
              'original_common_primes':known,'old_QIG_already_accepts':qig_gap(n)>0},
            'single_power':{'formula':'s=10u+8; Q=7^(12s+2); R=46189^s; n=4QR+4',
              'u':0,'n':n2,'n_bits':n2.bit_length(),'Q':Q2,'R':R2,
              'new_R_cubed_pass':True,'old_R_ninth_fails':True,
              'old_QIG_already_accepts':qig_gap(n2)>0},
            'scope':'Strict separation from the previous displayed row/pair predicates; NOT from the union of all historic consumers.'}


def scaling_failure():
    g=Fraction(1,100); M=Fraction(1,20); c=Fraction(1,4); b=Fraction(9,50); h=Fraction(7,25)
    items={'g7':(7*g,Fraction(1)), 'F124_full':(1+g+2*M,16*b),
           'F234_full':(1+g+M,16*b), 'cubic':(3*(g+M),Fraction(1)),
           'midpoint':(2*(g+M)+h,Fraction(1)),
           'square_multiblock':(2*M+2*c+2*b,Fraction(1)),
           'endpoint_t':(2*c+2*b,1-2*g), 'q5_relative':(2*(g+M),Fraction(1))}
    require(4*b+h==1 and 4*c==1,'formal block-product exponents')
    require(all(left<right for left,right in items.values()),'power model violates one of the retained estimates')
    return {'status':'CONSISTENT_ONLY_WITH_LISTED_EXPONENT_INEQUALITIES',
            'not_an_integer_model':True,'not_NC_or_counterexample':True,
            'parameters':{'g':'1/100','M2=q2':'1/20','each_q3_slot':'1/4',
                          'q4_noncentral_slots':'9/50','q4_center':'7/25'},
            'checked':{k:[str(l),str(r)] for k,(l,r) in items.items()}}


def mutations(data,expected):
    rejected=[]
    def reject(label,f):
        try:f()
        except (ValueError,KeyError,TypeError,AssertionError):rejected.append(label)
        else:raise ValueError('mutation accepted: '+label)
    omit=copy.deepcopy(data);omit['rows'].pop()
    reject('missing_terminal_row',lambda:check_terminals(omit,expected))
    bad=copy.deepcopy(data);next(z for z in bad['prime_certificates'] if z['p']>2)['a']=1
    reject('invalid_Lucas_order',lambda:check_terminals(bad,expected))
    bad2=copy.deepcopy(data);bad2['rows'][0]['row_factorizations'][2][0][1]-=1
    reject('truncated_full_source_power',lambda:check_terminals(bad2,expected))
    ca=next((i for i,z in enumerate(data['rows']) if z['candidates']),None)
    if ca is not None:
        miss=copy.deepcopy(data);miss['rows'][ca]['candidates'].pop()
        reject('missing_original_candidate',lambda:check_terminals(miss,expected))
        low=copy.deepcopy(data);low['rows'][ca]['candidates'][0]['p']=2
        reject('low_prime_witness',lambda:check_terminals(low,expected))
    reject('unsafe_target6_bridge',lambda:require(pair_certificate(128,25,6) is not None,'bridge correctly blocked'))
    reject('unsafe_target7_bridge',lambda:require(pair_certificate(1530,8,7) is not None,'7-filter correctly blocked'))
    reject('illegal_half_row',lambda:pair_certificate(56,29,5))
    reject('illegal_target_endpoint',lambda:pair_certificate(56,5,5))
    reject('insufficient_finite_height',lambda:require(4800**3<1<<36,'2^36 is too small'))
    reject('incorrect_i5_cost',lambda:require(max(12*small_part(n-1,5)*small_part(n-4,5)**2 for n in range(1800,3600) if n%72 in (18,56))<=4799,'4800 attained'))
    reject('confuse_target5_full5_power',lambda:require(small_part(125,5)==5,'full 125 stays rough'))
    return rejected


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path);args=ap.parse_args()
    start=time.monotonic(); a=algebra();rows,ends,recovery=recover();back,bend,_=recover(True)
    require(rows==back and ends==bend,'two CRT orientations disagree')
    td=json.loads((ROOT/'evidence/finite37_certificate.json').read_text())
    term=check_terminals(td,ends)
    ex=families();fail=scaling_failure();mut=mutations(td,ends)
    rowbytes=''.join(str(n)+'\n' for n in rows).encode()
    (ROOT/'evidence/recovered37_rows.txt').write_bytes(rowbytes)
    recovery['rows_sha256']=hashlib.sha256(rowbytes).hexdigest()
    result={'status':'PASS_EXACT_AFFINE_TWO_WINDOW_FINITE_INGREDIENTS',
            'grade':'Author paper proof + deterministic finite checks. QIG adopted only for R^3 corollary. No Lean or external independent review.',
            'algebra':a,'finite_recovery':recovery,'terminal_acceptance':term,'families':ex,
            'failed_estimate_combination':fail,'rejected_mutations':mut,
            'python':platform.python_version(),'elapsed_seconds':round(time.monotonic()-start,3)}
    if args.output: args.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    summary={'status':result['status'],'finite_recovery':recovery,
             'terminal_acceptance':{k:v for k,v in term.items() if k!='witnesses'},
             'algebra':a,'family_bits':{k:v['n_bits'] for k,v in ex.items() if isinstance(v,dict) and 'n_bits'in v},
             'old_QIG_acceptance':{k:v['old_QIG_already_accepts'] for k,v in ex.items() if isinstance(v,dict) and 'old_QIG_already_accepts'in v},
             'rejected_mutations':mut,'elapsed_seconds':result['elapsed_seconds']}
    print(json.dumps(summary,ensure_ascii=False,indent=2))

if __name__=='__main__':main()
