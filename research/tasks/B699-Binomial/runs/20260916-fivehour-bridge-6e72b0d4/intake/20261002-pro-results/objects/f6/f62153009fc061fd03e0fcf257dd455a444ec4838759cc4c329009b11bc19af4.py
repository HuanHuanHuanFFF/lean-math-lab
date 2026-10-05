#!/usr/bin/env python3
"""Separate exact acceptance. Does not import discover.py or probe.py.
The endpoint is enumerated by the first-source quotient tau, not the gap h.
"""
from pathlib import Path
from math import gcd, comb
import argparse, hashlib, json, copy

SPECS=[(252,1,3,2,15),(704,1,2,0,15),(850,3,5,1,3),
       (954,1,3,1,15),(1100,1,5,2,3),(1552,3,2,0,15)]
LIMIT=4096

def canonical(x):return json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
def rough_part(x):
    for p in [5,3,2]:
        while x%p==0:x//=p
    return x

def full_failure(n,j):
    for r in range(6):
        rest=rough_part(n-r)
        for b in range(r+1): rest//=gcd(rest,j-b)
        if rest>1:return r
    return None

def order_p(x,p):
    e=0
    while x%p==0:e+=1;x//=p
    return e

def carries(n,j,p):
    x=j;y=n-j;c=0;total=0
    while x or y or c:
        c=(x%p+y%p+c)//p;total+=c;x//=p;y//=p
    return total

def permitted_alpha(p,u,limit):
    found=set()
    if p==2:
        for v in range(1,limit.bit_length()):
            x=1<<v
            if x<=limit:found.add(x)
    else:
        power=1
        while power<=limit:
            for m in [1,2,4][:u+1]:
                if 2<=power*m<=limit:found.add(power*m)
            power*=p
    return sorted(found)

def independent_endpoint():
    rows=[];all_targets=[]
    for a,s,p,u,lam in SPECS:
        values=permitted_alpha(p,u,s*LIMIT**2-4)
        ac=hc=0;pre=[]
        for eps in range(1,LIMIT+1):
            for alpha in values:
                if alpha>s*eps**2-4:break
                if alpha<=eps or (alpha-eps)%2:continue
                beta=(alpha-eps)//2
                if gcd(beta,alpha-beta)!=1:continue
                ac+=1
                divisor=gcd(4,alpha)
                rhs=s*eps**2
                assert rhs%divisor==0
                modulus=alpha//divisor
                residue=(rhs//divisor)*pow(4//divisor,-1,modulus)%modulus
                first=residue or modulus
                last=(rhs-alpha)//4
                for tau in range(first,last+1,modulus):
                    h=(rhs-4*tau)//alpha
                    if h%4 != s*alpha%4:continue
                    hc+=1
                    # First recover n-1 from its actual first-source divisor.
                    base=s*(alpha**2-eps**2)
                    if base%(4*tau):continue
                    n=1+base//(4*tau)
                    if n%alpha:continue
                    g=n//alpha
                    if g<1:continue
                    j=g*beta
                    assert s*alpha-4*tau*g==h
                    pre.append([eps,alpha,h,tau,g,n,j])
        pre.sort()
        sha=hashlib.sha256();targets=[]
        for eps,alpha,h,tau,g,n,j in pre:
            sha.update((','.join(map(str,[eps,alpha,h,tau,g,n,j]))+'\n').encode())
            if n%1800!=a or j<7:continue
            assert gcd(j,n-j)==g
            assert j%rough_part(n)==0
            assert (j*(n-j))%rough_part(n-1)==0
            fail=full_failure(n,j)
            assert fail is not None
            row=dict(a=a,epsilon=eps,alpha=alpha,h=h,tau=tau,g=g,n=n,j=j,d=n-2*j,first_failed_source=fail)
            targets.append(row);all_targets.append(row)
        rows.append(dict(a=a,s1=s,alpha_delta_pairs=ac,h_slots=hc,integer_g_before_row_filter=len(pre),
                         preclass_recovery_stream_sha256=sha.hexdigest(),preclass_recoveries=pre,
                         target_recoveries=targets))
    return dict(limit=LIMIT,parameter='epsilon=(n-2j)/gcd(n,j)',rows=rows,
                counts=dict(alpha_delta_pairs=sum(r['alpha_delta_pairs'] for r in rows),
                            h_slots=sum(r['h_slots'] for r in rows),
                            integer_g_before_row_filter=sum(r['integer_g_before_row_filter'] for r in rows),
                            target_recoveries=len(all_targets),all_sources_passed=0),
                target_recoveries=sorted(all_targets,key=lambda x:(x['n'],x['j'])),
                old_d_strip_expanded=False,uniform_i6_finiteness=False,historical_net_deletion=0)

def independent_rows():
    out=[]
    for a,s,p,u,lam in SPECS:
        parts=[]
        for r in (1,3,5):
            exps=[order_p(a-r,q) for q in (2,3,5)]
            part=2**exps[0]*3**exps[1]*5**exps[2]
            parts.append(part)
            # Only exact low valuations occur in a cold source.
            assert exps[0]<3 and exps[1]<2 and exps[2]<2
        act=[(a%8),(a%9),(a%25)]
        assert max(act)<=5 and set(act)=={0,2,4}
        assert 45==lam*parts[0]*parts[1]*parts[2]
        out.append(dict(a=a,s1=s,odd_small_parts=parts,active_positions_235=act,lambda_midpoint=lam,
                        alpha_prime=p,max_power_two_multiplier=u,
                        h0_values=[[k,1+(s*k-1)%4] for k in range(4)]))
    return dict(rows=out,source0_is_actual_full_power=True,
                general_bound='n < (s1^3/4) epsilon^4',pure2_bound='n < (s1^3/64) epsilon^4',
                origin_alpha_is_divisor_not_equal=True)

def independent_witnesses():
    terminal=[]
    for j in (2083,2084):
        n=6250;g=gcd(j,n-j);p=11;e=order_p(n-2,p)
        c6=comb(n,6);cj=comb(n,j)
        assert order_p(c6,p)==carries(n,6,p)==1
        assert order_p(cj,p)==carries(n,j,p)==1
        terminal.append(dict(kind='bounded_epsilon_terminal',n=str(n),j=str(j),g=g,
                             epsilon=(n-2*j)//g,d=n-2*j,p=p,r=2,e=e,slot=j%p**e,
                             v_choose6=carries(n,6,p),v_choosej=carries(n,j,p)))
    family=[]
    for u,v in [(1,0),(1,1),(2,7),(5,12345),(20,0)]:
        w=2**(30*u);alpha=w*w;eps=w+2;g=29+1575*v
        beta=(alpha-w-2)//2;n=g*alpha;j=g*beta;d=g*eps
        assert gcd(alpha,beta)==1 and gcd(n,j)==g and n%1800==704
        F=d**6-35*d**4+259*d*d-225
        R=n**3-9*n*n+23*n-15
        assert F>15*R and eps>4096 and d>4096
        assert 4*alpha>eps*eps
        assert d*d<(4*g+1)*n-4*g
        assert n%7==1 and j%7==6
        e=order_p(n-1,7)
        family.append(dict(u=u,v=v,n=str(n),j=str(j),g=g,alpha=str(alpha),epsilon=str(eps),d=str(d),
                           old_midpoint_passes=True,outside_both_bounded_strips=True,new_gcd_gap_fails=True,
                           p=7,r=1,e=e,slot=j%(7**e),v_choose6=carries(n,6,7),v_choosej=carries(n,j,7)))
    return dict(terminals=terminal,unbounded_family=family,expected_new_historical_net_deletion=0,
                witnesses_are_counterexamples=False)

def independent_regression():
    all_rows=[];bound=30000
    for a,s,p,u,lam in SPECS:
        cc={'inputs':0,'gcd_gap_triggers':0,'old_midpoint_triggers':0,
            'new_gap_outside_old_midpoint':0,'new_gap_outside_old_midpoint_and_strip':0,
            'source_quotient_checks':0,'complete_window_passes':0}
        examples=[]
        for n in range(a,bound+1,1800):
            q1=rough_part(n-1)
            for j in range(7,n//2+1):
                k=n-j;g=gcd(j,k);a0=n//g;e0=(k-j)//g;d=k-j
                cc['inputs']+=1
                rho=1+(s*a0-1)%4
                new=n*(s+rho*g)>s*d*d+rho*g
                old=d>=6 and lam*(n**3-9*n*n+23*n-15)>d**6-35*d**4+259*d*d-225
                cc['gcd_gap_triggers']+=new;cc['old_midpoint_triggers']+=old
                if new and not old:
                    cc['new_gap_outside_old_midpoint']+=1
                    if d>4096:
                        cc['new_gap_outside_old_midpoint_and_strip']+=1
                        if len(examples)<3: examples.append([n,j,g,d,e0,a0])
                if new: assert full_failure(n,j) is not None
                if d>=6 and n<d*d and j*k%q1==0:
                    numerator=s*j*k
                    assert numerator%((n-1)*g*g)==0
                    tau=numerator//((n-1)*g*g)
                    hn=s*(d*d-n);hd=g*(n-1)
                    assert hn%hd==0 and hn>0
                    h=hn//hd
                    assert s*a0-4*tau*g==h and s*e0*e0-4*tau==h*a0
                    assert h>=rho and a0<=(s*e0*e0-4)//rho and 4*g+rho<=s*a0
                    cc['source_quotient_checks']+=1
        all_rows.append(dict(a=a,counts=cc,examples_outside_prior_two_consumers=examples))
    return dict(n_bound=bound,rows=all_rows,finite_regression_only=True)

def equal(expected,actual,label):
    if canonical(expected)!=canonical(actual):raise ValueError('certificate mismatch: '+label)

def mutation_checks(reference):
    tests=[]
    def bad(name,key,change):
        altered=copy.deepcopy(reference[key]);change(altered)
        try:equal(reference[key],altered,key)
        except ValueError:tests.append(dict(name=name,rejected=True))
        else:raise AssertionError('accepted tamper '+name)
    bad('replace_normalized_distance_by_d','endpoint.json',lambda x:x.update(parameter='d=n-2j'))
    bad('claim_global_finiteness','endpoint.json',lambda x:x.update(uniform_i6_finiteness=True))
    bad('claim_historical_net_gain','endpoint.json',lambda x:x.update(historical_net_deletion=1))
    bad('delete_a_terminal','endpoint.json',lambda x:x['target_recoveries'].pop())
    bad('wrong_actual_g','endpoint.json',lambda x:x['target_recoveries'][1].update(g=3))
    bad('inflate_source_exponent','witnesses.json',lambda x:x['terminals'][0].update(e=2))
    bad('replace_prime_threshold','witnesses.json',lambda x:x['terminals'][0].update(p=5))
    bad('wrong_cold_cost','rows.json',lambda x:x['rows'][0].update(lambda_midpoint=5))
    bad('alpha_equal_small_part','rows.json',lambda x:x.update(origin_alpha_is_divisor_not_equal=False))
    bad('false_bounded_limit','endpoint.json',lambda x:x.update(limit=8192))
    return tests

def main():
    p=argparse.ArgumentParser();p.add_argument('--cert-dir',required=True);p.add_argument('--out');args=p.parse_args()
    refs={}
    for name,fn in [('rows.json',independent_rows),('endpoint.json',independent_endpoint),
                    ('witnesses.json',independent_witnesses),('regression.json',independent_regression)]:
        expected=fn();actual=json.loads((Path(args.cert_dir)/name).read_text())
        equal(expected,actual,name);refs[name]=expected
        if args.out:
            Path(args.out).mkdir(parents=True,exist_ok=True)
            (Path(args.out)/name).write_text(canonical(expected),encoding='utf-8')
        print('ACCEPT',name,flush=True)
    mutations=mutation_checks(refs)
    print(json.dumps(dict(status='PASS',certificates=4,mutation_rejections=len(mutations),
                          endpoint_counts=refs['endpoint.json']['counts'],mutations=mutations),ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
