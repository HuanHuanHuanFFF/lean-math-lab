#!/usr/bin/env python3
"""Finite regressions and accurately scoped comparisons, not infinite proofs."""
from __future__ import annotations
import argparse,functools,hashlib,itertools,json,math,time
from fractions import Fraction
from pathlib import Path
import verify as V

def require(x,msg):
    if not x:raise ArithmeticError(msg)

def row_conditions(n,m):
    for p in range(2,m):
        if V.prime(p):
            q=p
            while q<=m:q*=p
            if n%q==0:return False
    return True

def same_row_old(n,m):
    d=4 if m<=5 else 6 if m<=7 else 8
    ps=[p for p in(2,3,5,7) if p<d]
    sets=[]
    for p in ps:
        vs=[V.valuation(n-r,p) for r in range(d)];v=max(vs)
        sets.append([r for r in range(d) if vs[r]==v])
    if d==4:
        return (m==4 and n%36 in(0,1,2,3)) or all(set(s)&{2,3} for s in sets)
    for selected in itertools.product(*sets):
        U=set(selected)
        if d==6:
            if len(U)==1 or (len(U)==2 and U not in({0,1},{0,2})):return True
        else:
            if len(U)<=2:return True # old TWO8, including cases outside the latest 40
            if len(U)==3 and sum(U)>=9:return True
    return False

def inherited_scalar(n,m):
    sm=[V.sm(m,n-r) for r in range(m)]
    eta=8 if n%4==0 else 4 if n%2==0 else 2
    tw=64*eta*(n-1)**3 > sm[0]**4*sm[1]**3*sm[2]**2
    T=math.prod(sm[:4])
    qig=T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3
    flags={'TW_target':tw,'QIG':qig,'SIXG':False,'EIGHTG':False}
    if m>=6:
        T=math.prod(sm[:6]);flags['SIXG']=T**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2
    if m==8:
        T=math.prod(sm[:8]);R=6*n**4-89*n**3+462*n*n-1072*n+960
        flags['EIGHTG']=T**6*(n-6)**2*R<5*3**8*2**47*(n-1)**6*(n-3)**6*(n-5)**4*(n-7)**3
    flags['ROW9_target']=sm[0]<=9
    flags['ROW_H_target']=n>=2**22*sm[0]**8
    return flags

def is_3_smooth(x):
    for p in(2,3):
        while x%p==0:x//=p
    return x==1

def carry(n,j,p):
    total=0;q=p
    while q<=n:total+=int(j%q>n%q);q*=p
    return total

def source_prime(n,j,m):
    for r in range(m):
        x=n-r;p=2
        while p*p<=x:
            if x%p==0:
                if p>=m and carry(n,m,p)>0 and carry(n,j,p)>0:return p
                while x%p==0:x//=p
            p=3 if p==2 else p+2
        if x>=m and carry(n,m,x)>0 and carry(n,j,x)>0:return x
    raise ArithmeticError(('no actual common prime',n,j,m))

def regression(limit=300):
    rows=[];bridge=0
    for m in range(4,9):
        L=V.lcm_bound(m);legal=pair=full=union=endpoints=0
        for n in range(2*(m+1),limit+1):
            src=math.comb(n,m);fr=row_conditions(n,m)
            for j in range(m+1,n//2+1):
                legal+=1;a=n//math.gcd(n,j);pc=L%a==0
                pair+=pc;full+=fr
                if not(pc or fr):continue
                union+=1;G=math.gcd(src,math.comb(n,j));rest=G
                for p in range(2,m):
                    if V.prime(p):
                        while rest%p==0:rest//=p
                require(rest>1,'direct original binomial regression')
                if V.prime(m) and G%m==0:endpoints+=1
                if m==8 and j>=10:
                    p=source_prime(n,j,m)
                    require(p>=11 and math.comb(n,9)%p==0,'same witness bridge i8 to i9')
                    bridge+=1
        rows.append({'m':m,'legal':legal,'alpha_divides_L':pair,'full_row_corollary':full,'union_directly_checked':union,'endpoint_available':endpoints})
    return {'limit':limit,'targets':rows,'same_prime_i8_to_i9_checks':bridge}

def finite_comparison(limit=20000):
    rows=[]
    for m in range(4,9):
        L=V.lcm_bound(m);rowcount=0;newpairs=0;examples=[]
        for n in range(2*(m+1),limit+1):
            if same_row_old(n,m) or any(inherited_scalar(n,m).values()):continue
            if any(V.prime(p) for p in range(n-m+1,n+1)):continue # inherited elementary top-prime row
            if m<=5 and any(is_3_smooth(n-r) for r in range(4)):continue
            # This is only a comparison with explicitly named inherited consumers.
            accepted_here=False
            for a in range(10,L+1):
                if L%a or n%a:continue
                if V.prime(m) and a%m==0 and n%(m*m)==0:continue # direct endpoint witness
                for b in range(1,a//2+1):
                    if math.gcd(a,b)!=1:continue
                    j=(n//a)*b
                    if j<=m or j>n//2:continue
                    if n>=2**22*a**8:continue # inherited fixed-alpha height consumer
                    newpairs+=1;accepted_here=True
                    if len(examples)<6:
                        p=source_prime(n,j,m)
                        examples.append({'n':n,'j':j,'alpha':a,'beta':b,'prime':p,
                                         'valuations':[carry(n,m,p),carry(n,j,p)]})
            rowcount+=accepted_here
        rows.append({'m':m,'finite_n_limit':limit,'rows_with_new_pairs_outside_named_union':rowcount,
                     'new_pairs_outside_named_union':newpairs,'first_examples':examples})
    return {'scope':'finite comparison only; includes A9, target ROW9/ROW-H, fixed-alpha height, target TW, QIG/SIXG/EIGHTG, named position consumers, elementary top-prime rows, direct endpoint witnesses, and direct shifted 3-smooth rows for i4/i5; not all project history', 'targets':rows}

def controls():
    out={}
    out['endpoint_full_power']=[]
    for n,j,m,r in [(54,18,7,5),(126,21,5,1)]:
        a=n//math.gcd(n,j);b=j//math.gcd(n,j)
        q=(n-r)//V.sm(m,n-r);B=V.norm(m,a,b,r)
        radical=1;x=q
        for p in range(2,math.isqrt(q)+2):
            if x%p==0:
                radical*=p
                while x%p==0:x//=p
        if x>1:radical*=x
        require(B%q!=0 and B%radical==0,'full exponent is essential')
        require(carry(n,m,m)>0 and carry(n,j,m)>0,'boundary prime actual witness')
        out['endpoint_full_power'].append({'n':n,'j':j,'m':m,'r':r,'q':q,'stripped_norm':B,'radical':radical,
                                          'valuations':[carry(n,m,m),carry(n,j,m)]})
    out['singleton_endpoint']=[]
    for n,j,m in [(15,6,5),(21,9,7)]:
        require(carry(n,m,m)==0 and carry(n,j,m)>0,'singleton m is not a source witness')
        out['singleton_endpoint'].append({'n':n,'j':j,'m':m,'small_part_n':V.sm(m,n),'valuations':[carry(n,m,m),carry(n,j,m)]})
    out['early_windows_not_enough']=[]
    for n,j in [(28,14),(51,17)]:
        a=n//math.gcd(n,j);b=j//math.gcd(n,j);rs=[]
        for r in range(1,8):
            if r%a:
                q=(n-r)//V.sm(8,n-r);B=V.norm(8,a,b,r);rs.append([r,q,B,B%q])
        require(all(row[3]==0 for row in rs if row[0]<=3),'early necessary norms pass')
        p=source_prime(n,j,8)
        out['early_windows_not_enough'].append({'n':n,'j':j,'alpha':a,'beta':b,'all_nonzero_norms':rs,'actual_prime':p})
    n,j,m=30625,15312,8
    require(V.lcm_bound(m)%(n//math.gcd(n,j))!=0 and not row_conditions(n,m),'not accepted by new criteria')
    out['remaining_method_boundary']={'n':n,'j':j,'m':m,'alpha':n//math.gcd(n,j),'actual_prime':11,
                                      'valuations':[carry(n,m,11),carry(n,j,11)],'status':'not a counterexample; H017 not fully closed here'}
    require(min(out['remaining_method_boundary']['valuations'])>0,'boundary witness')
    n,j=27,12
    require(n//math.gcd(n,j)==9 and 840%9!=0 and not row_conditions(n,8),'old A9 is not a subset of the new stand-alone condition')
    out['retain_old_A9']={'n':n,'j':j,'m':8,'alpha':9,'actual_prime':source_prime(n,j,8)}
    return out

def large_examples():
    cases=[]
    for m,a,b in [(4,12,5),(5,60,29),(6,60,29),(7,420,209),(8,840,419)]:
        for e in (10,100,1000):
            g=11**e;n=a*g;j=b*g
            require(math.gcd(n,j)==g and V.lcm_bound(m)%a==0,'unbounded scale normalization')
            # m=8 may safely transfer this particular pair to i9 as well.
            cases.append({'m':m,'alpha':a,'beta':b,'g':'11^'+str(e),'n_bits':n.bit_length(),
                          'j_bits':j.bit_length(),'actual_scale_identity_verified':True})
    # Arbitrarily high maxima at four NONZERO positions; not just finite residues.
    four=[]
    for e in (2,5,20,100):
        ps=(2,3,5,7);hs=(4,3,5,7);es=(e+1,e,e,e)
        qs=[p**a for p,a in zip(ps,es)];M=math.prod(qs)
        n=sum(h*(M//q)*pow(M//q,-1,q) for h,q in zip(hs,qs))%M+M
        positions=[]
        for p,h in zip(ps,hs):
            vs=[V.valuation(n-r,p) for r in range(8)]
            require([r for r,v in enumerate(vs) if v==max(vs)]==[h],'four genuinely distinct maxima')
            positions.append(h)
        require(row_conditions(n,8),'new whole-row condition')
        # First small part is 420, so this is not old ROW9; high ROW-H may still apply.
        require(V.sm(8,n)==420,'exact bounded first small part')
        four.append({'exponents':list(es),'positions':positions,'n_bits':n.bit_length(),'n':str(n),
                     'S8_n':420,'claim':'not old 2/3-position structural consumers; no claim of exclusion from all scalar history'})
    return {'unbounded_g_examples':cases,'four_position_examples':four}

def row_rule_table():
    out=[]
    for m in range(4,9):
        forbidden=[]
        for p in range(2,m):
            if V.prime(p):
                q=p
                while q<=m:q*=p
                forbidden.append(q)
        period=math.prod(forbidden)
        number=math.prod(q-1 for q in forbidden)
        out.append({'m':m,'forbidden_divisors':forbidden,'period_of_corollary':period,'allowed_classes':number,
                    'density_of_this_sufficient_condition_only':str(Fraction(number,period))})
    return out

def main(out):
    t=time.perf_counter()
    data={'status':'PASS_NEW_DIAGNOSTICS','regression':regression(),
          'finite_named_comparison':finite_comparison(),'controls':controls(),
          'large_examples':large_examples(),'row_rule_table':row_rule_table()}
    out.mkdir(parents=True,exist_ok=True)
    (out/'diagnostics.json').write_text(json.dumps(data,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':data['status'],'seconds':time.perf_counter()-t,'regression':data['regression'],
                      'finite_comparison_counts':[(x['m'],x['rows_with_new_pairs_outside_named_union'],x['new_pairs_outside_named_union']) for x in data['finite_named_comparison']['targets']]},sort_keys=True))
if __name__=='__main__':
    a=argparse.ArgumentParser();a.add_argument('--out',type=Path,required=True);main(a.parse_args().out)
