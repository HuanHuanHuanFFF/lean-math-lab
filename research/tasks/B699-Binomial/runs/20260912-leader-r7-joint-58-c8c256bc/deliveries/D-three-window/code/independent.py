#!/usr/bin/env python3
"""Second implementation. Intentionally does NOT import core or generate.
Uses trial prime enumeration, factorial valuations, and direct binomial gcds.
Its finite computations do not certify the infinite proof or constitute Lean.
"""
from __future__ import annotations
import argparse, copy, json
from math import comb, gcd, isqrt, lcm, prod
from pathlib import Path

PS=(2,3,5,7)
def require(condition: bool, message: str) -> None:
    if not condition: raise ValueError(message)

def valuation(x: int,p: int) -> int:
    require(x>0 and p>=2,'valuation domain')
    a=0
    while x//p*p==x:x//=p;a+=1
    return a

def prime_divisors(x: int) -> list[int]:
    require(x>0,'factor domain')
    result=[]
    for p in range(2,isqrt(x)+1):
        if x%p==0:
            result.append(p)
            while x%p==0:x//=p
        if p*p>x:break
    if x>1:result.append(x)
    return result

def parts(x: int,m: int) -> int:
    require(x>0 and 3<=m<=9,'part domain')
    answer=1
    for p in PS:
        e=valuation(x,p)
        if p<m:answer*=p**e
        if p==m and e==1:answer*=p
    return answer

def parity(n: int) -> int:
    return {0:8,1:2,2:4,3:2}[n%4]

def legendre(n: int,p: int) -> int:
    s=0
    while n:n//=p;s+=n
    return s

def val_choose(n: int,j: int,p: int) -> int:
    return legendre(n,p)-legendre(j,p)-legendre(n-j,p)

def validate(c: dict) -> dict:
    require(set(c)=={'schema','range','prime_boundary','strict_acceptance','coefficient','rows'},'certificate keys')
    require(c['schema']=='B699-D-three-window-v1','schema')
    require(c['prime_boundary']=='p>=m; retain full p^e for p=m only when e>=2','prime boundary')
    require(c['strict_acceptance'] is True and c['coefficient']==64,'strict coefficient')
    lo,hi=c['range'];require(type(lo) is int and type(hi) is int and lo==8 and hi>=lo,'range')
    require(len(c['rows'])==hi-lo+1,'row completeness')
    counts={str(m):0 for m in range(3,10)}
    for n,row in zip(range(lo,hi+1),c['rows']):
        require(row['n']==n and set(row)=={'n','targets'},'row order/keys')
        require(len(row['targets'])==7,'target completeness')
        for m,entry in zip(range(3,10),row['targets']):
            require(set(entry)=={'m','parts','eta','accepted'} and entry['m']==m,'target order/keys')
            ss=[parts(n-r,m) for r in (0,1,2)]
            require(entry['parts']==ss,'full small-prime powers')
            require(entry['eta']==parity(n),'parity')
            left=64*parity(n)*(n-1)**3;right=prod(ss[r]**(4-r) for r in (0,1,2))
            require(type(entry['accepted']) is bool and entry['accepted']==(left>right),'acceptance comparison')
            counts[str(m)]+=entry['accepted']
    return {'rows':hi-lo+1,'profiles':7*(hi-lo+1),'accepted_rows_by_target':counts}

def mutation_checks(c: dict) -> dict:
    actions=[]
    actions.append(('wrong schema',lambda x:x.update(schema='v0')))
    actions.append(('missing whole row',lambda x:x['rows'].pop()))
    actions.append(('duplicated row',lambda x:x['rows'].append(copy.deepcopy(x['rows'][-1]))))
    actions.append(('range truncated',lambda x:x.update(range=[8,x['range'][1]-1])))
    actions.append(('illegal initial n',lambda x:x.update(range=[7,x['range'][1]])))
    actions.append(('p>m instead of p>=m',lambda x:x.update(prime_boundary='p>m')))
    actions.append(('non-strict acceptance',lambda x:x.update(strict_acceptance=False)))
    actions.append(('wrong coefficient',lambda x:x.update(coefficient=128)))
    actions.append(('missing index',lambda x:x['rows'][0]['targets'].pop()))
    actions.append(('wrong index order',lambda x:x['rows'][0]['targets'].reverse()))
    actions.append(('row permutation',lambda x:x['rows'].reverse()))
    def entry(c,n,m):return c['rows'][n-8]['targets'][m-3]
    actions.append(('collapse 3-power at n244',lambda x:entry(x,244,9)['parts'].__setitem__(1,3)))
    actions.append(('keep isolated endpoint 5 at n46',lambda x:entry(x,46,5)['parts'].__setitem__(1,9)))
    actions.append(('keep isolated endpoint 7 at n22',lambda x:entry(x,22,7)['parts'].__setitem__(1,3)))
    actions.append(('erase retained square endpoint 5 at n52',lambda x:entry(x,52,5)['parts'].__setitem__(2,50)))
    actions.append(('even always eta8 at n46',lambda x:entry(x,46,5).__setitem__('eta',8)))
    actions.append(('false acceptance n244',lambda x:entry(x,244,9).__setitem__('accepted',True)))
    actions.append(('non-bool truthiness',lambda x:entry(x,52,5).__setitem__('accepted',1)))
    rejected=[]
    for name,act in actions:
        d=copy.deepcopy(c);act(d)
        try:validate(d)
        except (ValueError,KeyError,TypeError,IndexError):rejected.append(name)
        else:raise AssertionError('mutation was accepted: '+name)
    return {'tested':len(actions),'rejected':len(rejected),'cases':rejected}

def exact_test(limit: int=512) -> dict:
    count={k:0 for k in ['legal_source_pairs','target_pairs','no_good_source_cases','projection_cases',
                         'accepted_target_pairs','accepted_uniform_pairs','prime_endpoint_squares',
                         'central_source_pairs','full_prime_power_residue_implications',
                         'legal_target_pairs','accepted_legal_target_pairs','no_good_legal_target_cases']}
    source_exceptions=[]
    weak_examples=[]
    for n in range(8,limit+1):
        A=comb(n,3);sp=[p for p in prime_divisors(A) if p>=3]
        profiles={m:([parts(n-r,m) for r in (0,1,2)],comb(n,m)) for m in range(3,10) if m<=n}
        for j in range(4,n//2+1):
            count['legal_source_pairs']+=1;count['central_source_pairs']+=int(2*j==n)
            B=comb(n,j);k=n-j;g=gcd(n,j)
            common=[p for p in sp if B%p==0]
            for m in range(3,10):
                if m>n:continue
                count['target_pairs']+=1
                count['legal_target_pairs']+=int(m<j)
                ss,Cm=profiles[m];q=[(n-r)//ss[r] for r in (0,1,2)]
                eligible=sorted({p for x in q for p in prime_divisors(x)})
                correct=[p for p in sp if p>=m and Cm%p==0]
                require(eligible==correct,'eligible source-set equality')
                good=[p for p in common if p in eligible]
                accepted=64*parity(n)*(n-1)**3>ss[0]**4*ss[1]**3*ss[2]**2
                if accepted:
                    require(bool(good),'row test must have transferable source witness')
                    count['accepted_target_pairs']+=1
                    count['accepted_legal_target_pairs']+=int(m<j)
                    for p in good:
                        for i in range(3,min(m,j-1)+1):require(comb(n,i)%p==0,'same-prime bridge')
                    if m==9:count['accepted_uniform_pairs']+=1
                if m in (3,5,7):
                    if any(p==m and valuation(A,p)>=2 for p in good):count['prime_endpoint_squares']+=1
                projections=(j%q[0]==0 and j*(j-1)%q[1]==0 and j*(j-1)*(j-2)%q[2]==0)
                if not good:
                    count['no_good_source_cases']+=1;count['no_good_legal_target_cases']+=int(m<j);require(projections,'NoGood full projections')
                    require(not accepted,'NoGood row necessary inequality')
                    for r in (0,1,2):
                        for p in prime_divisors(q[r]):
                            e=valuation(q[r],p);Q=p**e
                            require(val_choose(n,j,p)==0 and j%Q<=r,'whole prime-power residues')
                            count['full_prime_power_residue_implications']+=1
                    if len(source_exceptions)<8 and common:
                        source_exceptions.append({'n':n,'j':j,'m':m,'source_common_primes':common,'good_source_primes':good})
                if projections:
                    count['projection_cases']+=1
                    q0,N,K=q;C=[gcd(K,j-r) for r in (0,1,2)];F=C[0]*C[2]
                    require(prod(C)==K and all(gcd(C[a],C[b])==1 for a in range(3) for b in range(a)),'whole K assignment')
                    require(gcd(g,N*K)==1 and gcd(N,K)==1,'coprimality')
                    R_num=(j//g)*(k//g);R_den=N*F;U_num=(j-1)*(k-1);U_den=N*C[1]**2
                    require(R_num%R_den==0 and U_num%U_den==0,'positive residual integers')
                    R=R_num//R_den;U=U_num//U_den
                    require(R>=1 and U>=1 and g%q0==0,'positive residual/domain')
                    require(g*g*R*F-U*C[1]**2==ss[1],'linear identity')
                    require(g**4*R**2*U*N**3*K**2==j*j*k*k*(j-1)*(k-1),'product identity')
                    require(g**4*U>=parity(n)*q0**4,'parity lower bound')
                    require(64*(n-1)**3*g**4*R**2*U<=ss[1]**3*ss[2]**2*n**4,'global core inequality')
                    require(not accepted,'projection sufficient for necessary scalar bound')
                    if len(weak_examples)<8 and good:
                        weak_examples.append({'n':n,'j':j,'m':m,'good_primes':good,'R':R,'U':U,'C':C})
    return {'limit_n':limit,'counts':count,'nonempty_low_prime_channels':source_exceptions,
            'projection_weak_inputs_with_actual_good_prime':weak_examples,
            'scope':'bounded regression only; all-m and all-n proof is notes/PROOFS.md'}

if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--certificate',required=True);parser.add_argument('--out',required=True)
    parser.add_argument('--limit',type=int,default=512)
    a=parser.parse_args();c=json.loads(Path(a.certificate).read_text())
    r={'status':'PASS_INDEPENDENT_THREE_WINDOW_REGRESSION','certificate':validate(c),'mutations':mutation_checks(c),'arithmetic':exact_test(a.limit)}
    Path(a.out).write_text(json.dumps(r,ensure_ascii=False,indent=2)+'\n');print(json.dumps({'status':r['status'],'counts':r['arithmetic']['counts'],'mutations':r['mutations']['rejected']}))
