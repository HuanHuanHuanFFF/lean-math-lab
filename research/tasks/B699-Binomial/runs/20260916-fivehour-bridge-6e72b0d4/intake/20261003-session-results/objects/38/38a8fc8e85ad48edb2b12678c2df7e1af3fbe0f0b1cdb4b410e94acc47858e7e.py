#!/usr/bin/env python3
"""R10 arithmetic audit. No generator imports. Full results remain paper-conditional."""
from __future__ import annotations
import argparse, contextlib, copy, functools, hashlib, io, json, math, sys
from fractions import Fraction as F
from pathlib import Path

TARGETS = [19,22,24,25]
OLD_EDGES = [(2,3,285),(2,5,258),(2,7,259),(2,11,59),(2,13,54),
 (3,5,216),(3,7,38),(3,11,329),(3,13,231),(5,7,227),(5,11,199),
 (5,13,163),(7,13,98),(11,13,37)]
NEW_EDGES = [(2,17,330),(17,19,190),(11,23,110)]

def require(ok, message):
    if not ok: raise ValueError(message)

def read(root,name): return json.loads((root/name).read_text())
def sha(data): return hashlib.sha256(data).hexdigest()
def canonical(obj): return json.dumps(obj,ensure_ascii=False,sort_keys=True,separators=(',',':')).encode()

def normalize(intervals):
    events={}
    for a,b in intervals:
        require(isinstance(a,int) and isinstance(b,int) and a<=b,'interval order')
        events[a]=events.get(a,0)+1
        events[b+1]=events.get(b+1,0)-1
    answer=[]; count=0; start=None; maximum=0
    for x in sorted(events):
        old=count; count+=events[x]; maximum=max(maximum,count)
        require(count>=0,'negative event count')
        if old==0 and count>0:start=x
        if old>0 and count==0:answer.append([start,x-1])
    require(count==0,'unclosed intervals')
    return answer,maximum

def prime(p):
    if p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,math.isqrt(p)+1,2))

def vp(n,p):
    require(n>0 and prime(p),'valuation domain')
    a=0
    while n%p==0:n//=p;a+=1
    return a

def factv(n,p):
    s=0
    while n:n//=p;s+=n
    return s

def choosev(n,k,p):return factv(n,p)-factv(k,p)-factv(n-k,p)

def polynomial_product(a,b):
    ans=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):ans[i+j]+=x*y
    return trim(ans)

def trim(a):
    while len(a)>1 and not a[-1]:a.pop()
    return a

def subtract(a,b):return trim([(a[i] if i<len(a) else 0)-(b[i] if i<len(b) else 0) for i in range(max(len(a),len(b)))])

def polynomials(A,B,C):
    N=A+B+C+1
    P=[(-1)**(C+r)*math.comb(N,r)*math.comb(A+C-r,A) for r in range(C+1)]
    Q=[(-1)**C*math.comb(A+C-r,C)*math.comb(B+r,r) for r in range(A+1)]
    E=[(-1)**r*math.comb(A+r,r)*math.comb(N,A+C+r+1) for r in range(B+1)]
    return P,Q,E

def evaluate(a,z):
    v=F(0)
    for x in reversed(a):v=v*z+x
    return v

def polynomial_checks():
    count=0;detcount=0;integercount=0
    for A in range(1,5):
      for B in range(1,5):
       for C in range(1,5):
        P,Q,E=polynomials(A,B,C)
        mult=[(-1)**r*math.comb(B+C+1,r) for r in range(B+C+2)]
        require(subtract(P,polynomial_product(mult,Q))==[0]*(A+C+1)+E,'integral polynomial identity')
        # Derive every P coefficient a second way using the beta integral.
        N=A+B+C+1
        for r,coeff in enumerate(P):
            integ=F(math.factorial(A+C-r)*math.factorial(B),math.factorial(N-r))
            other=F(math.factorial(N),math.factorial(A)*math.factorial(B)*math.factorial(C))*math.comb(C,r)*(-1)**(C-r)*integ
            require(other==coeff,'beta coefficient')
        G=math.gcd(*Q)
        require(G>0 and all(v%G==0 for v in P+E),'content divides all polynomials')
        count+=1
    seeds=[(17,16,7,5),(5*17**2,4*19**2,2,1),(23,2*11,7,4)]
    for base,other,c,d in seeds:
      for m in range(2,6):
        values=[]; z=F(base-other,base)
        for eta in (0,1):
            n=d*m-eta;B=c*m-n-1
            P,Q,E=polynomials(n,B,n);G=math.gcd(*Q)
            vals=[F(base**n,G)*evaluate(P,z),F(base**n,G)*evaluate(Q,z),F(base**(c*m-n-1)*(base-other)**(2*n+1),G)*evaluate(E,z)]
            require(all(x.denominator==1 for x in vals),'cleared approximants integer')
            require(base**(c*m)*vals[0]-other**(c*m)*vals[1]==vals[2],'cleared actual identity')
            values.append((P,Q,E));integercount+=1
        P0,Q0,E0=values[0];P1,Q1,E1=values[1];n=d*m-1
        determinant=subtract(polynomial_product(P1,Q0),polynomial_product(P0,Q1))
        require(determinant==[0]*(2*n+1)+[E1[0]*Q0[0]],'adjacent nonvanishing determinant')
        require(E1[0]*Q0[0]!=0,'determinant zero');detcount+=1
    # Literal printed P in BFT Lemma 3.1 versus its integral definition.
    actual,_,_=polynomials(1,1,1);printed=[2,-4]
    require(actual==[-2,4] and actual!=printed,'printed sign negative control')
    return dict(beta_polynomial_identities=count,cleared_integer_identities=integercount,
      adjacent_nonzero_determinants=detcount,
      printed_formula_counterexample=dict(A=1,B=1,C=1,P_integral=actual,P_printed=printed,
      consequence='literal printed P formula fails for odd C; repair derives from integral, not numerical guessing'))

def optimize(ps,edges,weights):
    costs={tuple(sorted((p,q))):w for p,q,w in edges}; n=len(ps)
    @functools.lru_cache(None)
    def solve(mask,last):
        k=mask.bit_count()
        if k==n:return 0,()
        best=None
        for j,p in enumerate(ps):
            if (mask>>j)&1:continue
            v=max([last]+[costs.get(tuple(sorted((p,q))),0) for a,q in enumerate(ps) if (mask>>a)&1])
            tail,witness=solve(mask|(1<<j),v)
            candidate=(weights[k]*v+tail,((p,v),)+witness)
            if best is None or candidate<best:best=candidate
        return best
    answer=solve(0,0)
    return dict(minimum=answer[0],witness=answer[1],states=solve.cache_info().currsize)

def graph_audit(root):
    rows=read(root,'outputs/absolute_heights.json');e=read(root,'input/cofactor_edges.json')
    require(e['scale']==1000 and e['new_source_height_bits']==11000,'graph scale/domain')
    require(e['edges']==[list(t) for t in OLD_EDGES+NEW_EDGES],'unjustified graph edge')
    selection=read(root,'outputs/graph_select.json')
    require(selection['needed']==[list(t) for t in NEW_EDGES],'speculative edges entered final graph')
    checked=[];dependencies=[]
    for removed in (None,(2,17),(17,19),(11,23)):
      edges=[v for v in OLD_EDGES+NEW_EDGES if v[:2]!=removed]
      for row in rows:
        i=row['i'];ps=row['primes'];t=len(ps);u=i-t
        require(ps==[p for p in range(2,i) if prime(p)],'actual small primes')
        scalar=optimize(ps,edges,[1]*t);weighted=optimize(ps,edges,[2*u-r for r in range(t)])
        gamma=500*u*(i-3*t-1)+weighted['minimum']
        dc=1000*(row['lambda_']*(i-t)-row['E'])+(scalar['minimum']+170)*row['lambda_']
        item=dict(i=i,removed_edge=removed,sigma=scalar['minimum'],tau=weighted['minimum'],gamma=gamma,collision_delta=dc,
             DP_states=scalar['states'],positive_algebra=gamma>0 and dc>0)
        if removed is None:
            require(scalar['minimum']==row['sigma_mill'] and weighted['minimum']==row['tau_mill'],'independent DP optimum')
            require(gamma==row['position_weights']['gamma'] and dc==row['collision']['delta'],'height exponents')
            require(row['absolute_height_bits']==11001,'source threshold dropped')
            checked.append(item)
        else:dependencies.append(item)
    return dict(method='independent subset/last-value dynamic programming, no permutation generator import',
         actual_source_edges=len(e['edges']),checked=checked,remove_one_edge_diagnostic=dependencies,
         warning='Nonpositive projection gain is not a counterexample or a necessary condition for every possible proof')

def terminal_audit(root):
    cert=read(root,'outputs/four_index_certificate.json');rows=read(root,'outputs/absolute_heights.json')
    heights={r['i']:r for r in rows};blocks=read(root,'outputs/block_certificate.json')
    require(cert['target_indices']==TARGETS,'target set')
    pp=cert['prime_witnesses'];require(pp==sorted(set(pp)) and all(prime(p) for p in pp),'actual primality')
    used=set();out=[];stage_matrix=[]
    for profile in cert['profiles']:
        i=profile['i'];r=heights[i];K=int(r['K']);lam=r['lambda_'];E=r['E']
        candidate,maxmult=normalize(profile['candidate_intervals'])
        require(candidate==profile['candidate_intervals'] and maxmult==1,'candidate canonicality')
        supplied=[];n_top=0
        for a,b,p in profile['top_prime_intervals']:
            require(p in pp and 2*i+2<=a<=b and p<=a and b<p+i,'top full interval')
            supplied.append([a,b]);n_top+=b-a+1;used.add(p)
        for n,d0 in profile['large_divisor_rows']:
            d=int(d0);require(n>=2*i+2 and d>0,'divisor row domain')
            # Alternate to primitive falling-product test: actual binomial division.
            require(math.comb(n,i)%d==0 and math.gcd(d,math.factorial(i-1))==1,'actual choose divisor')
            require(K*d**lam>n**E,'divisor window magnitude')
            supplied.append([n,n])
        union,overlap=normalize(supplied)
        require(union==candidate and overlap==1,'exact terminal union / multiplicity')
        total=sum(b-a+1 for a,b in candidate)
        require(total==n_top+len(profile['large_divisor_rows'])==profile['summary']['total_rows'],'candidate total')
        relevant=[b for b in blocks['rows'] if b['q']<i]
        for k,s in enumerate(profile['bound_stages']):
            H=int(s['H']);Hn=int(s['next_H']);M=int(s['M'])
            require(Hn<H if k<len(profile['bound_stages'])-1 else Hn==H,'stage strictness/fixed point')
            stage_matrix.append(dict(i=i,stage=k,H=str(H),M=str(M),next_H=str(Hn),families=s['prime_power_families'],pairs=s['prime_power_pairs'],kind='strict' if Hn<H else 'fixed'))
        out.append(dict(i=i,source_height_bits=11001,compressed_bits=profile['height_bits'],
            distinct_height_bits=r['position_weights']['strict_height_bits'],collision_height_bits=r['collision']['strict_height_bits'],
            exponent_pairs=len(relevant),blocks=sum(len(v['blocks']) for v in relevant),
            stages=len(profile['bound_stages']),M=profile['terminal_cover']['M'],
            **profile['summary']))
    require(used==set(pp),'prime evidence complete')
    return dict(profiles=out,stage_matrix=stage_matrix,
       total_candidates=sum(x['total_rows'] for x in out),top_rows=sum(x['top_prime_rows'] for x in out),
       divisor_rows=sum(x['large_divisor_rows'] for x in out),stages=len(stage_matrix),
       strict_stages=sum(x['kind']=='strict' for x in stage_matrix),
       total_pair_checks=sum(x['pairs'] for x in stage_matrix),prime_count=len(pp),max_prime=max(pp),
       method='new endpoint-event union; actual binomial divisor checks; full odd trial division')

def negative_tests(root):
    sys.path.insert(0,str(root/'code'))
    import check_blocks as cb
    import check_certificate as cc
    import check_four_certificate as cf
    bc=read(root,'outputs/block_certificate.json');fc=read(root,'outputs/four_index_certificate.json')
    results=[]
    def rejects(name,call):
        try:
            with contextlib.redirect_stdout(io.StringIO()):call()
        except (ValueError,AssertionError) as exc:
            results.append(dict(name=name,rejected=True,message=str(exc)))
        else:raise ValueError('negative test unexpectedly accepted: '+name)
    def bmut(name,change):
        b=copy.deepcopy(bc);change(b);rejects(name,lambda:cb.check(b))
    bmut('wrong source height',lambda b:b.update(source_height_bits=11000))
    bmut('missing prime pair',lambda b:b['rows'].pop(0))
    bmut('gap at start of block cover',lambda b:b['rows'][0]['blocks'][0].update(K=b['rows'][0]['blocks'][0]['K']+1))
    bmut('invalid modular inverse',lambda b:b['rows'][0]['blocks'][0].update(inverse_hex='0x0'))
    bmut('small exponent prefix not paid',lambda b:b['rows'][0].update(small_exponent_height_bits=1))
    bmut('insufficient modulus power',lambda b:b['rows'][0]['blocks'][0].update(B=1))
    profile=fc['profiles'][0];par=cc.make_parameters(profile['i'],profile['r'],profile['s'])
    stage=copy.deepcopy(profile['bound_stages'][0]);stage['M']=str(int(stage['M'])-1)
    rejects('M below proven integer bound',lambda:cf.check_symbolic_stage(par,stage))
    stage=copy.deepcopy(profile['bound_stages'][0]);stage['start']=str(int(stage['start'])-1)
    rejects('low zero-exponent branch shifted',lambda:cf.check_symbolic_stage(par,stage))
    a,b,p=profile['top_prime_intervals'][0]
    rejects('top-prime open endpoint made closed',lambda:cc.check_top_interval(profile['i'],a,p+profile['i'],p,set(fc['prime_witnesses'])))
    n,d=profile['large_divisor_rows'][0]
    rejects('unjustified large divisor',lambda:cc.check_large_row(par,n,int(d)+1))
    rejects('insufficient large divisor',lambda:cc.check_large_row(par,n,1))
    candidates=profile['candidate_intervals'];allw=[[a,b] for a,b,p in profile['top_prime_intervals']]+[[n,n] for n,d in profile['large_divisor_rows']]
    bad=allw[:-1]
    rejects('missing final row',lambda:require(normalize(bad)[0]==candidates,'missing final row'))
    rejects('duplicate terminal coverage',lambda:require(normalize(allw+[allw[0]])[1]==1,'duplicate terminal coverage'))
    # Same original input and full p=i compensation, not a noCommon example.
    p=19;n=2*p**3;i=p;j=p**3
    e=choosev(n,i,p);e2=choosev(n,j,p);source=vp(n,p)
    require(e==2 and e2==0 and source==e+1,'p=i full-power compensation')
    r=6;s=13;ell=i-r-1;lam=2*s-r
    vW=sum(choosev(j,h,p)+choosev(n-j,h,p) for h in range(1,s+1))+sum(choosev(n-i+h,h,p) for h in range(1,ell+1))
    require(vW>=e*lam,'original avoiding p=i transfer')
    return dict(rejected_count=len(results),tests=results,
      actual_p_equals_i=dict(n=n,i=i,j=j,p=p,choose_valuation=e,second_valuation=e2,source_exponent=source,window_valuation=vW,required=e*lam,
      status='actual avoiding-factor test, not claimed to be NC'))

def sets():
    T={10}|set(range(12,29))|set(range(30,35))
    G7={17,23,26,27,30,32,33};G4=set(TARGETS);R7=set(range(3,10))
    before=(T-G7)|R7;after=before-G4
    require(len(T)==23 and len(before)==23 and len(after)==19 and len(T-G7-G4)==12,'graded sets')
    return dict(original_nonR7=sorted(T),R9_rechecked_G7=sorted(G7),R10_rechecked_G4=sorted(G4),
      before_mixed_residual=sorted(before),after_mixed_residual=sorted(after),unverified_nonR7=sorted(T-G7-G4),
      accepted_new_indices=0,historical_new_mathematical_indices=0)

def audit(root):
    terminal=terminal_audit(root)
    require((terminal['stages'],terminal['total_pair_checks'],terminal['total_candidates'],terminal['top_rows'],terminal['divisor_rows'])==(23,918166,61134,58894,2240),'G4 own totals')
    return dict(status='PASS_R10_ARITHMETIC_AND_EXPLICIT_SOURCE_REPAIR',
         scope='author paper audit plus exact finite arithmetic; BFT external inputs adopted; no Lean or external independent peer review',
         polynomials=polynomial_checks(),graph=graph_audit(root),terminal=terminal,
         negative=negative_tests(root),graded_sets=sets())

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('root',type=Path);ap.add_argument('--output',type=Path)
    args=ap.parse_args();result=audit(args.root.resolve());text=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
    if args.output:args.output.write_text(text)
    print(text)
