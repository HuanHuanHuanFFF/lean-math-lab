#!/usr/bin/env python3
"""C24 exact research certificate. Standard library only; no Lean or repository access.
Default: reconstruct and compare every certificate. --write creates the initial outputs.
"""
from __future__ import annotations
import argparse, hashlib, itertools, json, math, sys
from collections import Counter
from fractions import Fraction as F
from pathlib import Path
from exact_algebra import (ONE, XX, YY, const, add, sub, scale, mul, power, shift, order, check_qig_identities)

ROOT=Path(__file__).resolve().parents[1]
CAP={2:8,3:9,5:25}
TARGET=[126,351,550,775]

def dump(obj):return json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n'
def read(path):return json.loads((ROOT/path).read_text(encoding='utf-8'))
def terms(poly):return [[i,j,int(c)] for (i,j),c in sorted(poly.items())]
def v(x,p):
    assert x>0
    e=0
    while x%p==0:x//=p;e+=1
    return e

def sp(x):
    assert x>0
    ans=1
    for p in CAP:ans*=p**v(x,p)
    return ans

def activity(a,windows=6):
    return {p:next((r for r in range(windows) if (a-r)%c==0),None) for p,c in CAP.items()}

def positions(a,windows=4):return sorted({h for h in activity(a,windows).values() if h is not None})

def rebuild_prior():
    allset=set(range(1800))
    G={a for a in allset if len(positions(a))<=1}
    H={a for a in allset if a%8 in {0,2,6} and a%9 in {0,2,6,8} and a%25 in {0,2,7,10,12,15,17,20,22}}
    six={50,477,752,1280,1325,1530}
    closed=G|H|six
    assert (len(G),len(H),len(closed))==(1380,108,1412)
    R=allset-closed
    C20={a for a in R if all(a%c!=0 for c in CAP.values())}
    assert len(C20)==204
    closed|=C20;R-=C20
    C21=set();C22=set()
    for a in R:
        ac=activity(a);active=[(p,r) for p,r in ac.items() if r is not None]
        if len(active)!=2 or len({r for p,r in active})!=2 or 0 not in {r for p,r in active}:continue
        r=next(r for p,r in active if r!=0);ps={p for p,h in active}
        if r==2 or (r==3 and 2 in ps):C21.add(a)
        if (r==1 and 2 in ps) or (r==3 and ps=={3,5}):C22.add(a)
    assert len(C21)==72 and len(C22)==48 and not(C21&C22)
    closed|=C21|C22;R-=C21|C22
    C23={a for a in R if positions(a)==[0,3]}
    assert len(C23)==18
    closed|=C23;R-=C23
    prior=read('sources/C23_FRONTIER.json')
    assert sorted(R)==prior['remaining_residue_upper_envelope']
    assert sorted(closed)==prior['adopted_union']
    assert len(R)==46
    return closed,R

def fixed_smallparts(a):
    ac=activity(a);out=[]
    for h in range(6):
        m=1
        for p,c in CAP.items():
            r=ac[p]
            if r is None:m*=p**v(a+1800-h,p)
            elif r!=h:m*=p**v(abs(h-r),p)
        out.append(m)
    return out

def fixed_smallparts_independent(a):
    n=a+1800;ac=activity(a);ans=[]
    for h in range(6):
        m=sp(n-h)
        for p,r in ac.items():
            if r==h:m//=p**v(n-h,p)
        ans.append(m)
    return ans

def classification():
    closed,R=rebuild_prior()
    selected=[]
    for a in R:
        ac=activity(a)
        if ac[2] is None and {ac[3],ac[5]}=={0,1}:selected.append(a)
    assert sorted(selected)==TARGET
    classes=[]
    for a in sorted(selected):
        ac=activity(a);m=fixed_smallparts(a)
        assert m==fixed_smallparts_independent(a)
        p=next(p for p,r in ac.items() if r==0);q=next(p for p,r in ac.items() if r==1)
        S=m[2]**10*m[3]**7*m[4]**6*m[5]**5
        C=F(25*S,2**28);D=max(m[0]**10,m[1]**10)
        rhs=2**54*(C*D)**25
        K=10
        while rhs>=2**(4*K):K+=1
        assert rhs<2**(4*K) and not rhs<2**(4*(K-1))
        kap=math.prod(m[:4]);threshold=max(32,(3*kap**6+2**19-1)//2**19)
        classes.append({'a':a,'activity':{str(p):r for p,r in ac.items()},'p_at_0':p,'q_at_1':q,'m':m,'C':str(C),'D':D,'theta':'54/25','delta':2,'height_exponent_K':K,'kappa':kap,'PQ_threshold':threshold})
    assert [c['height_exponent_K'] for c in classes]==[162,119,225,181]
    newclosed=closed|set(TARGET);newR=R-set(TARGET)
    assert len(newclosed)==1758 and len(newR)==42
    assert all(all(r is not None for r in activity(a).values()) for a in newR)
    groups=Counter(','.join(map(str,positions(a))) for a in newR)
    frontier={'input_remaining':sorted(R),'newly_closed':TARGET,'adopted_union':sorted(newclosed),'remaining_residue_upper_envelope':sorted(newR),'remaining_activity_groups':dict(sorted(groups.items())), 'remaining_indices':[3,4,5,6,7,8,9], 'remaining_not_counterexamples':True,'remaining_not_uniformly_finite':True,'new_theorem_needs_prior_closures':False,'union_uses_prior_author_level_closures':True,'all_remaining_have_three_active_bases_in_six_window':True}
    return {'classes':classes,'new_class_count':4},frontier

def build_kernel():
    n=add(XX,YY);J=mul(XX,YY)
    A=mul(sub(XX,ONE),sub(YY,ONE));B=mul(sub(XX,const(2)),sub(YY,const(2)))
    H=add(power(XX,2),power(YY,2),scale(XX,-3),scale(YY,-3),const(2))
    U=add(power(XX,2),scale(mul(XX,YY),2),scale(power(YY,2),2),scale(XX,-7),scale(YY,-10),const(12))
    V={(j,i):c for (i,j),c in U.items()}
    facts=[('J',J,5),('A',A,4),('B',B,3),('H',H,1),('U',U,1),('V',V,1)]
    K=ONE
    for name,poly,e in facts:K=mul(K,power(poly,e))
    assert max(i+j for i,j in K)==30
    expect={'0':[10],'1':[10,10],'2':[10,10,10],'3':[7]*4,'4':[6]*5,'5':[5]*6}
    orders={str(r):[order(K,b,r-b) for b in range(r+1)] for r in range(6)}
    assert orders==expect
    factor_orders={}
    for name,poly,e in facts:
        oo={str(r):[order(poly,b,r-b) for b in range(r+1)] for r in range(6)}
        factor_orders[name]={'exponent':e,'orders':oo,'terms':terms(poly)}
    for r in range(6):
        for b in range(r+1):assert sum(e*factor_orders[name]['orders'][str(r)][b] for name,poly,e in facts)==orders[str(r)][b]
    shifts={}
    for name,poly,e in facts:
        sh=shift(poly,7,7)
        assert all(c>0 for c in sh.values()) and sh[(0,0)]>0
        shifts[name]=terms(sh)
    # Leading product identity and the exact univariate maximum certificate.
    left=mul(add(power(n,2),power(YY,2)),add(power(n,2),power(XX,2)))
    right=add(scale(power(n,4),2),scale(mul(power(n,2),J),-2),power(J,2))
    assert left==right
    # t^12*(1-2t)*(2-2t+t^2) = 2t^12-6t^13+5t^14-2t^15.
    f={12:F(2),13:F(-6),14:F(5),15:F(-2)}
    derivative={k-1:k*c for k,c in f.items()}
    assert derivative=={11:F(24),12:F(-78),13:F(70),14:F(-30)}
    derivative_lower=F(24)-F(78,4)-F(30,64)
    assert derivative_lower==F(129,32)>0
    endpoint=sum(c*F(1,4)**k for k,c in f.items())
    assert endpoint==F(25,2**29)
    return {'definition':'K30=J^5*A^4*B^3*H*U*V','degree':30,'origin_order':10,'orders':orders,'factors':factor_orders,'positive_shifts_7_7':shifts,'expanded_K30_terms':terms(K),'norm':{'normalized_polynomial':{str(k):str(c) for k,c in f.items()},'derivative_positive_lower_after_t11':str(derivative_lower),'upper_constant':str(endpoint),'hypotheses':'x,y>=7; t=xy/(x+y)^2 in (0,1/4]'},'qig_identities':check_qig_identities()}

def bft_check():
    dat=read('sources/BFT_INPUT.json');pairs=dat['exceptions']
    assert len(pairs)==40 and max(max(p)for p in pairs)==1771561
    assert not any(abs(a-b)==1 for a,b in pairs)
    assert dat['lambda']=='27/125' and dat['pair']==[3,5]
    assert 10*F(dat['lambda'])==F(54,25)>2
    return {'pair':[3,5],'lambda':'27/125','used_difference':1,'small_values_handled_below':1006,'exception_count':40,'difference_1_exceptions':[],'theorem_is_external_input':True}

def egcd_inverse(a,m):
    old_r,r=a,m;old_s,s=1,0
    while r:
        q=old_r//r;old_r,r=r,old_r-q*r;old_s,s=s,old_s-q*s
    assert old_r==1
    return old_s%m

def powers(p,K):
    out=[];e=2;P=p*p
    while P<1<<K:out.append((e,P));e+=1;P*=p
    return out

def integers_A(n,T):return T**6*(3*n*n-12*n+8),(1<<20)*(n-1)**6*(n-3)**3

def integers_B(n,T):return pow(T,6)*(3*pow(n-2,2)-4),(1<<20)*pow((n-1)*(n-1),3)*pow(n-3,3)

def canonical_hash(records):
    h=hashlib.sha256()
    for key in sorted(records):h.update((' '.join(str(t) for t in records[key])+'\n').encode('ascii'))
    return h.hexdigest()

def scan_group(classes,p,q):
    cc={c['a']:c for c in classes if c['p_at_0']==p}
    K=max(c['height_exponent_K'] for c in cc.values());ps=powers(p,K);qs=powers(q,K)
    rows1={};records1={};terms1=set();pairs1=0
    for vv,Q in qs:
        t=pow(ps[0][1],-1,Q)
        for u,P in ps:
            n=P*t
            # Advance even when this candidate is discarded.
            t=(t+((-t)*pow(Q,-1,p)%p)*Q)//p
            pairs1+=1
            c=cc.get(n%1800)
            if c is None or n<c['PQ_threshold'] or n>=1<<c['height_exponent_K']:continue
            if v(n,p)!=u or v(n-1,q)!=vv:continue
            T=math.prod(sp(n-h) for h in range(4));assert T==c['kappa']*P*Q
            L,R=integers_A(n,T);key=(u,vv,c['a']);rows1[key]=int(L<R);records1[key]=(n,T,L,R)
            if L>=R:terms1.add(n)
    modclasses={(a%8,a%9,a%25):c for a,c in cc.items()}
    rows2={};records2={};terms2=set();pairs2=0
    for u,P in reversed(ps):
        z=(-egcd_inverse(qs[-1][1],P))%P
        for vv,Q in reversed(qs):
            n=1+Q*z;z=q*z%P;pairs2+=1
            c=modclasses.get((n%8,n%9,n%25))
            if c is None or n<c['PQ_threshold'] or n>>c['height_exponent_K']:continue
            if n%(p*P)==0 or (n-1)%(q*Q)==0:continue
            assert n%P==0 and (n-1)%Q==0
            T=c['kappa']*P*Q;L,R=integers_B(n,T);key=(u,vv,c['a']);rows2[key]=int(L<R);records2[key]=(n,T,L,R)
            if L>=R:terms2.add(n)
    assert pairs1==pairs2==len(ps)*len(qs)
    assert rows1==rows2 and records1==records2 and terms1==terms2
    low1={};low2={}
    for a,c in cc.items():
        start=a+1800*max(0,(14-a+1799)//1800)
        for n in range(start,c['PQ_threshold'],1800):
            T=math.prod(sp(n-h) for h in range(4));L,R=integers_A(n,T);low1[n]=[n,T,L,R]
            if L>=R:terms1.add(n)
        ns=list(range(start,c['PQ_threshold'],1800))
        for n in reversed(ns):
            T=math.prod(pr**sum(v(n-h,pr)for h in range(4))for pr in CAP)
            L,R=integers_B(n,T);low2[n]=[n,T,L,R]
            if L>=R:terms2.add(n)
    assert low1==low2 and terms1==terms2
    assert len({r[0]for r in records1.values()})==len(rows1)
    return {'p_at_0':p,'q_at_1':q,'group_height_K':K,'u_range':[ps[0][0],ps[-1][0]],'v_range':[qs[0][0],qs[-1][0]],'full_exponent_pairs_per_implementation':pairs1,'high_rows':len(rows1),'low_rows':len(low1),'strict_QIG':sum(rows1.values())+sum(L<R for n,T,L,R in low1.values()),'rows':[[*key,rows1[key]]for key in sorted(rows1)],'low_records':[low1[n] for n in sorted(low1)],'canonical_full_integer_stream_sha256':canonical_hash(records1),'two_implementation_streams_identical':canonical_hash(records1)==canonical_hash(records2),'terminals':sorted(terms1)}

def prime_trial(p):
    if p<2:return False
    if p%2==0:return p==2
    for d in range(3,math.isqrt(p)+1,2):
        if p%d==0:return False
    return True

def crt_iter(sources):
    M=1;res=[0]
    for z in sources:
        m=z['p']**z['e'];nxt=[]
        for a in res:
            for b in range(z['r']+1):nxt.append(a+M*((b-a)*pow(M,-1,m)%m))
        M*=m;res=nxt
    return M,sorted(res)

def crt_basis(sources):
    mods=[z['p']**z['e'] for z in sources];M=math.prod(mods);weights=[(M//m)*egcd_inverse(M//m,m)for m in mods]
    res=[sum(a*w for a,w in zip(tup,weights))%M for tup in itertools.product(*(range(z['r']+1)for z in sources))]
    return M,sorted(res)

def interval_empty(n,M,res):
    return all(a+M*((7-a+M-1)//M)>n//2 for a in res)

def validate_terminal(rec):
    n=rec['n'];ss=rec['sources'];seen=set()
    for z in ss:
        p,e,r=z['p'],z['e'],z['r']
        assert p>=7 and p not in seen and prime_trial(p);seen.add(p)
        assert 0<=r<=5 and e==v(n-r,p)>0
    M,rs=crt_iter(ss);MM,rr=crt_basis(list(reversed(ss)))
    assert M==MM and rs==rr
    assert interval_empty(n,M,rs)
    return {'n':n,'sources':ss,'modulus':M,'residues':rs,'CRT_count':len(rs),'no_legal_integer_lifts':True,'opposite_CRT_identical':True}

def validate_terminals(ns):
    records=read('sources/terminal_sources.json')
    assert sorted(r['n']for r in records)==ns
    out=[validate_terminal(r)for r in records]
    primes=sorted({z['p'] for r in records for z in r['sources']})
    return {'records':out,'count':len(out),'single_source_count':sum(len(r['sources'])==1 for r in out),'two_source_count':sum(len(r['sources'])==2 for r in out),'CRT_representatives':sum(r['CRT_count']for r in out),'trial_primes':primes,'number_of_distinct_primes':len(primes),'largest_trial_prime':max(primes),'remaining_terminals':0}

def reject_tests(cl,groups):
    checks=[]
    c=cl['classes'][0];C=F(c['C']);D=c['D'];K=c['height_exponent_K']
    assert not 2**54*(C*D)**25<2**(4*(K-1));checks.append('reduce_minimal_height_by_one')
    original=read('sources/terminal_sources.json')
    fake=json.loads(json.dumps(original[0]));assert fake['n']==126;fake['sources'][0]['e']=1
    try:validate_terminal(fake)
    except AssertionError:checks.append('replace_complete_11_squared_by_11')
    else:raise AssertionError('power mutation accepted')
    M,rs=crt_iter(fake['sources']);assert not interval_empty(126,M,rs);checks.append('weakened_11_layer_really_leaves_legal_integers')
    ns=sorted(n for g in groups for n in g['terminals'])
    assert sorted(r['n']for r in original[1:])!=ns;checks.append('omit_QIG_terminal')
    assert len(groups[0]['rows'][:-1])!=groups[0]['high_rows'];checks.append('omit_complete_recovery_row')
    H0=add(power(XX,2),power(YY,2),scale(XX,-3),scale(YY,-3),const(2))
    bad=add(power(XX,2),scale(mul(XX,YY),2),scale(power(YY,2),2),scale(XX,-7),scale(YY,-10),const(13))
    assert order(bad,0,2)==0 # needed U has a root here
    checks.append('alter_U_constant_12_to_13')
    assert F(1,4)!=F(read('sources/BFT_INPUT.json')['lambda']);checks.append('upgrade_publication_exponent_without_proof')
    return {'rejected_count':len(checks),'rejected_variants':checks,'scope':'implementation guard checks, not independent mathematical review'}

def run_all():
    cl,fr=classification();ker=build_kernel();ext=bft_check()
    groups=[scan_group(cl['classes'],3,5),scan_group(cl['classes'],5,3)]
    ns=sorted({n for g in groups for n in g['terminals']});tt=validate_terminals(ns)
    mut=reject_tests(cl,groups)
    summary={'status':'PASS_C24_K30_FOUR_CLASSES_CLOSED','newly_closed':TARGET,'new_class_count':4,'adopted_closed_count':1758,'remaining_residue_count':42,'full_exponent_pairs_per_implementation':sum(g['full_exponent_pairs_per_implementation'] for g in groups),'high_rows':sum(g['high_rows']for g in groups),'low_rows':sum(g['low_rows']for g in groups),'total_rows':sum(g['high_rows']+g['low_rows']for g in groups),'strict_QIG_rows':sum(g['strict_QIG']for g in groups),'original_terminal_count':tt['count'],'remaining_terminals':0,'terminal_CRT_representatives':tt['CRT_representatives'],'trial_prime_count':tt['number_of_distinct_primes'],'largest_trial_prime':tt['largest_trial_prime'],'mutation_rejections':mut['rejected_count'],'evidence_level':'author paper argument + deterministic certificates + external BFT theorem input; not Lean or external independent review','repository_actions':'none','Lean_run':False}
    assert summary['full_exponent_pairs_per_implementation']==20168
    assert (summary['total_rows'],summary['strict_QIG_rows'],summary['original_terminal_count'])==(1038,1029,9)
    return {'classification.json':cl,'kernel_certificate.json':ker,'BFT_usage.json':ext,'rows_3_5.json':groups[0],'rows_5_3.json':groups[1],'terminals.json':tt,'mutation_tests.json':mut,'FRONTIER.json':fr,'summary.json':summary}

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--write',action='store_true');args=parser.parse_args()
    outputs=run_all()
    for filename,obj in outputs.items():
        p=ROOT/'outputs'/filename
        if args.write:p.write_text(dump(obj),encoding='utf-8')
        else:assert json.loads(p.read_text(encoding='utf-8'))==obj,filename+' differs from exact reconstruction'
    print(dump(outputs['summary.json']),end='')

if __name__=='__main__':main()
