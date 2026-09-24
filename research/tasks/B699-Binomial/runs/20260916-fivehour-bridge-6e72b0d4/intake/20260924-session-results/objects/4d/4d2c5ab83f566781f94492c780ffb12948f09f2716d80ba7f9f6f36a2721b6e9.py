#!/usr/bin/env python3
"""C23: exact algebra and residue certificate; standard library only.
No original n/exponent cut-off, no primality oracle, no Lean, no repository I/O.
"""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction as Q
from itertools import product
from math import comb, gcd, prod
from collections import Counter
import json, hashlib, argparse

ROOT=Path(__file__).resolve().parents[1]
CAPS={2:8,3:9,5:25}
STATUS='PASS_C23_18_CLASSES_PAPER_CLOSED_BY_SEXTICS'

def req(c,m):
    if not c: raise ValueError(m)
def load(p):return json.loads(p.read_text(encoding='utf-8'))
def write(p,o):p.write_text(json.dumps(o,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
def v(n,p):
    req(n>0,'positive valuation argument');e=0
    while n%p==0:n//=p;e+=1
    return e

def add(a,b):
    out=dict(a)
    for ij,c in b.items():out[ij]=out.get(ij,0)+c
    return {ij:c for ij,c in out.items() if c}
def scale(a,c):return {ij:k*c for ij,k in a.items() if k*c}
def sub(a,b):return add(a,scale(b,-1))
def mul(a,b):
    out={}
    for (i,j),c in a.items():
        for (h,k),d in b.items():out[i+h,j+k]=out.get((i+h,j+k),0)+c*d
    return {ij:c for ij,c in out.items() if c}
def power(a,e):
    out={(0,0):1}
    for _ in range(e):out=mul(out,a)
    return out

def shift(a,x,y):
    out={}
    for (i,j),c in a.items():
        for u in range(i+1):
            for w in range(j+1):
                ij=(u,w)
                out[ij]=out.get(ij,0)+c*comb(i,u)*x**(i-u)*comb(j,w)*y**(j-w)
    return {ij:c for ij,c in out.items() if c}
def order(a,x,y):return min(i+j for (i,j),c in shift(a,x,y).items() if c)
def ev(a,x,y):return sum(c*x**i*y**j for (i,j),c in a.items())
def terms(a):return [[i,j,c] for (i,j),c in sorted(a.items())]

def activity(a):
    return {p:next((r for r in range(6) if (a-r)%cap==0),None) for p,cap in CAPS.items()}
def front_positions(a):return sorted({r for r in range(4) if any((a-r)%cap==0 for cap in CAPS.values())})
def small(n):
    z=1
    for p in CAPS:
        while n%p==0:n//=p;z*=p
    return z

def fixed(a,ac):
    s=[1]*6
    for p in CAPS:
        r=ac[p]
        for h in range(6):
            if r==h:continue
            z=abs(r-h) if r is not None else a+1800-h
            s[h]*=p**v(z,p)
    return s

def baseline():
    # Reconstruct the finite residue ledger. Prior *mathematical* closures
    # remain adopted at their original author-level evidence grade.
    G={a for a in range(1800) if len(front_positions(a))<=1}
    H={a for a in range(1800) if a%8 in (0,2,6) and a%9 in (0,2,6,8)
       and a%25 in (0,2,7,10,12,15,17,20,22)}
    six={50,477,752,1280,1325,1530}
    closed=G|H|six
    req((len(G),len(H),len(closed))==(1380,108,1412),'C19 finite ledger identity')
    closed|={a for a in range(1800) if all(a%cap for cap in CAPS.values())}
    req(len(closed)==1616,'C20 finite ledger identity')
    new21=set()
    for a in set(range(1800))-closed:
        ac=activity(a); act=[p for p in CAPS if ac[p] is not None];orig=[p for p in act if ac[p]==0]
        if len(act)==2 and len(orig)==1:
            p=orig[0];q=next(z for z in act if z!=p);r=ac[q]
            if r==2 or (r==3 and 2 in (p,q)):new21.add(a)
    req(len(new21)==72,'C21 finite ledger identity');closed|=new21
    new22=set()
    for a in set(range(1800))-closed:
        ac=activity(a);act=[p for p in CAPS if ac[p] is not None];orig=[p for p in act if ac[p]==0]
        if len(act)==2 and len(orig)==1:
            p=orig[0];q=next(z for z in act if z!=p);r=ac[q]
            if (r==1 and 2 in (p,q)) or (r==3 and {p,q}=={3,5}):new22.add(a)
    req(len(new22)==48,'C22 finite ledger identity');closed|=new22
    remain=sorted(set(range(1800))-closed)
    src=load(ROOT/'sources/C22_FRONTIER.json')
    req(remain==src['remaining_residue_upper_envelope'],'exact C22 remaining-list identity')
    req(sorted(closed)==src['adopted_union'],'exact C22 closed-list identity')
    req(len(remain)==64,'input remaining 64')
    return closed,remain

def inverse(a,m):
    r0,r1=a,m;s0,s1=1,0
    while r1:
        q=r0//r1;r0,r1=r1,r0-q*r1;s0,s1=s1,s0-q*s1
    req(r0==1,'coprime CRT modulus');return s0%m

def classify():
    old,remain=baseline()
    target=[a for a in remain if front_positions(a)==[0,3]]
    expected=[75,275,300,328,480,525,603,675,828,1053,1075,1128,1179,1200,1328,1704,1728,1755]
    req(target==expected,'new target18 exact list')
    rows=[]
    for a in target:
        ac=activity(a);req(all(r is not None for r in ac.values()),'all three bases active in new target')
        s=fixed(a,ac)
        # Use F_A whenever rows 1,2,5 have fixed small parts; otherwise F_B.
        if not any(ac[p] in (1,2,5) for p in CAPS):
            kernel='F_A';fixedrows=(1,2,5);C=Q(s[1]**3*s[2]**2*s[5],16);divisor=8
        else:
            req(not any(ac[p] in (1,2,4) for p in CAPS),'F_B fixed source rows')
            kernel='F_B';fixedrows=(1,2,4);C=Q(5*s[1]**3*s[2]**2*s[4],32);divisor=12
        branch='universal_fixed_divisor'
        if a==1075:
            req(kernel=='F_A' and C==135 and a%8==3 and a%3!=0 and a%25==0,'1075 exact domain')
            req(s[0]==1 and ac[5]==0,'1075 n=5^u*q0 without other small factors')
            req({pow(5,e,8) for e in range(2)}=={1,5} and a%8 not in {1,5},'1075 q0 cannot be one')
            divisor=8*7**2;branch='q0_divides_odd_g_and_q0_gt1'
        elif a==1328:
            req(kernel=='F_B' and a%3==2 and C==Q(45,2),'1328 conditional content domain')
            divisor=36;branch='n_mod3_eq2_fixed_divisor36'
        req(a>=75,'all original domain values at least75')
        loss=12 if kernel=='F_A' else 11
        req(1-Q(loss,75)>Q(1,2),'global Bernoulli margin')
        req(Q(divisor)>C,'strict paper contradiction: lower integer exceeds upper constant')
        rows.append({'residue':a,'activity':{str(p):ac[p] for p in CAPS},'fixed_parts':s,
                     'kernel':kernel,'fixed_source_rows':list(fixedrows),'C':str(C),
                     'certified_lower_factor':divisor,'branch':branch,'minimum_n':a,
                     'strict_margin':str(Q(divisor)-C)})
    # Independent residue and fixed-smallpart reconstruction.
    second={}
    for r2,r3,r5 in product(range(8),range(9),range(25)):
        rs=[r2,r3,r5];mods=[8,9,25]
        a=sum(rr*(1800//m)*inverse(1800//m,m) for rr,m in zip(rs,mods))%1800
        occupied={r for r in rs if r<4}
        if a not in remain or occupied!={0,3}:continue
        ac={p:(rr if rr<=5 else None) for p,rr in zip(CAPS,rs)}
        n=a+3600;s=[small(n-h) for h in range(6)]
        for p in CAPS:
            h=ac[p]
            if h is not None:s[h]//=p**v(n-h,p)
        second[a]=s
    req(sorted(second)==target,'independent CRT target classification')
    req(all(second[r['residue']]==r['fixed_parts'] for r in rows),'independent fixed-smallpart computation')
    left=sorted(set(remain)-set(target));newclosed=old|set(target)
    req(len(left)==46 and len(newclosed)==1754 and not(set(target)&old),'strict frontier reduction')
    req(all(0 in front_positions(a) and any(r in (1,2) for r in front_positions(a)) for a in left),'adopted new origin-plus-1-or-2 gate')
    return rows,{'adopted_union':sorted(newclosed),'newly_closed':target,'input_remaining':remain,
                 'remaining_residue_upper_envelope':left,
                 'remaining_activity_groups':dict(Counter(','.join(map(str,front_positions(a))) for a in left)),
                 'remaining_indices':[3,4,5,6,7,8,9],
                 'remaining_not_counterexamples':True,'remaining_not_uniformly_finite':True,
                 'new_theorem_needs_old_closures':False,'union_uses_prior_author_level_closures':True}

def check_algebra():
    one={(0,0):1};x={(1,0):1};y={(0,1):1};n=add(x,y);J=mul(x,y)
    A=mul(sub(x,one),sub(y,one));D=mul(sub(n,one),sub(n,scale(one,2)))
    H_A=sub(D,scale(J,2));H_B=sub(scale(D,2),scale(J,3))
    F_A=mul(mul(J,A),H_A);F_B=mul(mul(J,A),H_B)
    orders={name:[[order(pol,b,r-b) for b in range(r+1)] for r in range(6)] for name,pol in [('F_A',F_A),('F_B',F_B)]}
    expect_A=[[2],[3,3],[2,2,2],[1,1,1,1],[1,2,0,2,1],[1,1,1,1,1,1]]
    expect_B=[[2],[3,3],[2,2,2],[1,1,1,1],[1,1,1,1,1],[1,1,0,0,1,1]]
    req(orders['F_A']==expect_A,'F_A all full source orders')
    req(orders['F_B']==expect_B,'F_B all full source orders')
    req(max(sum(t) for t in F_A)==6 and max(sum(t) for t in F_B)==6,'degree6 both kernels')
    shA=shift(H_A,7,7);shB=shift(H_B,7,7)
    req(shA=={(2,0):1,(0,2):1,(1,0):11,(0,1):11,(0,0):58},'H_A shifted exact positivity')
    req(shB=={(2,0):2,(1,1):1,(0,2):2,(1,0):29,(0,1):29,(0,0):165},'H_B shifted exact positivity')
    # Symbolic t identities, embedded as polynomials independent of y.
    t=x
    lhsA=sub(scale(one,Q(1,32)),mul(power(t,2),sub(one,scale(t,2))))
    rhsA=scale(mul(sub(one,scale(t,4)),sub(add(one,scale(t,4)),scale(power(t,2),16))),Q(1,32))
    lhsB=sub(scale(one,Q(5,64)),mul(power(t,2),sub(scale(one,2),scale(t,3))))
    rhsB=scale(mul(sub(one,scale(t,4)),sub(add(scale(one,5),scale(t,20)),scale(power(t,2),48))),Q(1,64))
    req(lhsA==rhsA and lhsB==rhsB,'two exact norm identities for 0<=t<=1/4')
    # Complete residue verification is universal because each polynomial has
    # integer coefficients, hence a period m modulo m in both arguments.
    req(all(ev(F_A,a,b)%8==0 for a,b in product(range(8),repeat=2)),'universal 8|F_A')
    req(all(ev(F_B,a,b)%12==0 for a,b in product(range(12),repeat=2)),'universal 12|F_B')
    conditional=[(a,b) for a,b in product(range(36),repeat=2) if (a+b)%3==2]
    req(len(conditional)==432 and all(ev(F_B,a,b)%36==0 for a,b in conditional),'n=2 mod3 implies36|F_B')
    # Positivity proof does not rest on samples; these are source-order regressions.
    spot=0
    for Fp,ex in [(F_A,expect_A),(F_B,expect_B)]:
        for r in range(6):
            for b in range(r+1):
                for p,e in [(7,2),(11,3)]:
                    h=p**e;z=ev(Fp,b+h,r-b+2*h)
                    req(z%p**(e*ex[r][b])==0,'full prime-power Taylor regression');spot+=1
    damaged=sub(F_A,mul(mul(J,A),J))
    req([[order(damaged,b,r-b) for b in range(r+1)] for r in range(6)]!=expect_A,'reject damaged kernel coefficient')
    req(any(ev(F_B,a,b)%108!=0 for a,b in product(range(108),repeat=2) if (a+b)%3==2),'reject unsupported stronger fixed divisor108')
    rows,_=classify()
    req(next(z for z in rows if z['residue']==1328)['C']=='45/2','conditional enhancement genuinely needed by chosen constants')
    req(not Q(12)>Q(45,2),'reject dropping conditional enhancement')
    req(not Q(8)>135,'reject dropping 1075 q0/g branch')
    return {'F_A_terms':terms(F_A),'F_B_terms':terms(F_B),'H_A_terms':terms(H_A),'H_B_terms':terms(H_B),
            'source_orders':orders,'shift_positive_H_A':terms(shA),'shift_positive_H_B':terms(shB),
            'norms':{'F_A':'n^6/32 (strict)','F_B':'5*n^6/64 (strict)'},
            'full_modular_checks':{'mod8_FA':64,'mod12_FB':144,'conditional_mod36_FB':432},
            'full_prime_power_regressions':spot,
            'mutation_rejections':['wrong F_A coefficient','unsupported fixed divisor108','omit1328 conditional divisor','omit1075 origin argument']}

def compute():
    algebra=check_algebra();rows,frontier=classify()
    req(Counter(r['kernel'] for r in rows)=={'F_A':12,'F_B':6},'kernel selection counts')
    req(Counter(r['branch'] for r in rows)=={'universal_fixed_divisor':16,'q0_divides_odd_g_and_q0_gt1':1,'n_mod3_eq2_fixed_divisor36':1},'all paper branches covered')
    return algebra,rows,frontier

def consumer_regressions(rows):
    from consumer import consume
    def primes(z):
        out=[];p=2
        while p*p<=z:
            if z%p==0:
                out.append(p)
                while z%p==0:z//=p
            p+=1
        if z>1:out.append(z)
        return out
    def vb(n,j,p):
        out=0;h=p
        while h<=n:
            out+=n//h-j//h-(n-j)//h;h*=p
        return out
    out=[]
    for row in rows:
        for lift in (0,1):
            n=row['residue']+1800*lift
            for j in (7,n//3,n//2):
                r=consume(n,j);req(r['covered'],'new-class consumer regression')
                for rec in r['failed_original_sources']:
                    for p in primes(rec['witness_factor']):
                        req(p>=7 and vb(n,6,p)>0 and vb(n,j,p)>0,'returned factor supplies real common primes')
                out.append(r)
    req(len(out)==108,'regression sample count, not original terminal enumeration')
    return {'purpose':'finite implementation regression only; infinite coverage comes from PROOFS',
            'count':len(out),'examples':out}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--write',action='store_true');args=ap.parse_args()
    algebra,rows,frontier=compute()
    examples=consumer_regressions(rows)
    cert={'status':STATUS,'newly_closed_count':18,'closed_after_adoption':1754,'remaining_count':46,
          'new_theorem_external_infinite_inputs':[],
          'proof_style':'full-parameter direct integer contradiction; no original n/exponent enumeration',
          'complete_residue_configurations':18,'standard_fixed_divisor_branches':16,
          'exceptional_paper_branches':[1075,1328],
          'original_input_terminal_scan_performed':False,'original_input_finite_tail_outstanding':False,
          'source_Taylor_points':42,'modular_verification_pairs':640,
          'non_proof_consumer_regression_pairs':examples['count'],
          'mutations_rejected':algebra['mutation_rejections'],
          'repository_actions':'none','Lean_run':False,
          'independent_external_review':False,
          'complete_B699_claim':False}
    vals={'kernel_certificate.json':algebra,'classification.json':rows,'FRONTIER.json':frontier,'certificate.json':cert,'consumer_regressions.json':examples}
    for name,obj in vals.items():
        path=ROOT/'outputs'/name
        if args.write:write(path,obj)
        else:req(load(path)==obj,'exact regenerated output '+name)
    print(json.dumps(cert,ensure_ascii=False,indent=2,sort_keys=True))
if __name__=='__main__':main()
