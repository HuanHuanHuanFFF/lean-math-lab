#!/usr/bin/env python3
"""Replay the frozen exact certificates without altering them.
Default verification needs only Python's standard library. --regenerate also
uses SymPy via generate.py, writing into a fresh output directory.
"""
from __future__ import annotations
import argparse,contextlib,copy,hashlib,io,json,platform,subprocess,sys
from pathlib import Path
from datetime import datetime,timezone
from math import comb,gcd,isqrt
import check_a as A
import check_b as B
ROOT=Path(__file__).resolve().parents[1]

def require(q,msg):
    if not q:raise ValueError(msg)

def valuation(x,p):
    c=0
    while x%p==0:x//=p;c+=1
    return c

def binom_v(n,j,p):
    value=0;q=p
    while q<=n:
        value+=n//q-j//q-(n-j)//q;q*=p
    return value

def is_small_prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def plus_scope(m,p,e):
    return type(m) is int and m>0 and m%2==1 and is_small_prime(p) and p>2 and e>=1 and gcd(m,p)==1 and p**e>=128*m**3

def general_scope(aa,bb,p,e):
    if min(aa,bb,e)<1 or (aa+bb)%2 or not is_small_prime(p) or p<=2 or bb%p==0:return False
    d=bb*bb-4*aa
    if d>0 and isqrt(d)**2==d:return False
    return p**e>=16*aa*(aa+bb*bb)*(aa+bb+1)

def all_scope(aa,bb,p,e):
    return min(aa,bb,e)>=1 and (aa+bb)%2==0 and is_small_prime(p) and p>2 and bb%p!=0 and p**e>=64*aa*aa*(aa+bb*bb)**3

def regression():
    # Only diagnostic ranges; these counts are NOT the infinite proof.
    cases=[(1,3,5),(3,5,6),(5,3,9),(5,7,6),(7,3,10),(9,5,8),(11,3,12)]
    ans=[];total_direct=0
    for m,p,e in cases:
        require(plus_scope(m,p,e),'bad diagnostic case')
        P=p**e;n=2*(m*P+1)**2;N=n-1
        count=0
        for a in range(m*m+1):
            for b in range(4*m+1):
                for c in range(3):
                    j=a*P*P+b*P+c
                    if not 4<=j<=n//2:continue
                    require(n//P-j//P-(n-j)//P==0,'group P carry')
                    require(n//(P*P)-j//(P*P)-(n-j)//(P*P)==0,'group P2 carry')
                    require(j*(j-1)%N!=0,'unexpected first-window survivor')
                    count+=1
        direct=[]
        for j in range(4,41):
            g=gcd(comb(n,3),comb(n,j))
            while g%2==0:g//=2
            require(g>1,'direct binomial odd gcd failed')
            direct.append({'j':j,'odd_gcd':str(g)})
        require(valuation(n-2,p)==e,'original source completeness')
        ans.append({'m':m,'p':p,'e':e,'n':str(n),'all_grouped_digit_candidates_checked':count,
                    'first_window_survivors':0,'direct_binomial_checks':direct})
        total_direct+=len(direct)
    generic=[]
    for aa,bb,p,e in [(1,1,3,5),(4,4,5,6),(3,5,7,5)]:
        require(general_scope(aa,bb,p,e),'generic diagnostic hypothesis')
        P=p**e;n=aa*P*P+bb*P+2;N=n-1
        lam=3 if valuation(N,3)==1 else 1;cnt=0
        for a in range(aa//2+1):
            for b in range(bb+1):
                for c in range(3):
                    j=a*P*P+b*P+c
                    if 4<=j<=n//2:
                        require(lam*j*(j-1)%N!=0,'generic first window survived');cnt+=1
        generic.append({'A':aa,'B':bb,'p':p,'e':e,'Delta':bb*bb-4*aa,'lambda':lam,'candidates_checked':cnt,'survivors':0})
    all_cases=[]
    for aa,bb,p,e in [(8,6,101,5),(12,8,101,6),(3,5,7,10)]:
        require(all_scope(aa,bb,p,e),'all-three-digit hypothesis')
        P=p**e;n=aa*P*P+bb*P+2;N=n-1
        if n%4:
            all_cases.append({'A':aa,'B':bb,'p':p,'e':e,'n_mod4':n%4,'exit':'adopted NC3 implies 4|n'})
            continue
        lam=3 if valuation(N,3)==1 else 1
        mu=3 if valuation((n-2)//2,3)==1 else 1
        K=(n-2)//(2*mu);total=first=0
        for a in range(aa//2+1):
            for b in range(bb+1):
                for c in range(3):
                    j=a*P*P+b*P+c
                    if 4<=j<=n//2:
                        total+=1
                        if lam*j*(j-1)%N==0:
                            first+=1
                            require(j*(j-1)*(j-2)%K!=0,'second source unexpectedly survives')
        all_cases.append({'A':aa,'B':bb,'p':p,'e':e,'lambda':lam,'mu':mu,'digit_candidates':total,'first_window_survivors':first,'joint_window_survivors':0})
    endpoint_n=2*(3**5+1)**2
    endpoint={'n':endpoint_n,'j':4,'p':3,'v3_Cn3':binom_v(endpoint_n,3,3),'v3_Cnj':binom_v(endpoint_n,4,3)}
    require(endpoint['v3_Cn3']==endpoint['v3_Cnj']==4,'3 endpoint test')
    P=101;n=8*P*P+6*P+2;j=4*P+2
    split={'n':n,'j':j,'gcd':gcd(n,j),'alpha':n//gcd(n,j),'first_window_quotient':j*(j-1)//(n-1),
           'original_p':P,'vp_Cnj':binom_v(n,j,P),'common_witnesses':{str(p):[binom_v(n,3,p),binom_v(n,j,p)] for p in [11,37]}}
    require(j*(j-1)==2*(n-1) and split['vp_Cnj']==0,'split model')
    require(all(min(v)>0 for v in split['common_witnesses'].values()),'split original return')
    require(not general_scope(8,6,101,10),'split generic guard')
    return {'plus_cases':ans,'generic_cases':generic,'all_three_digit_cases':all_cases,'total_direct_binomial_checks':total_direct,'isolated3_boundary':endpoint,'split_failure_model':split}

def tamper(U,PC,row,shell,primes):
    outcomes=[]
    def rejected(label,checker,data):
        try:checker(data)
        except (ValueError,KeyError,TypeError,ZeroDivisionError,IndexError):outcomes.append({'case':label,'rejected':True});return
        raise AssertionError('Bad certificate accepted: '+label)
    q=copy.deepcopy(U);q['polynomials']['plus_R']['terms'][0][1][0]+=1
    rejected('wrong_remainder_coefficient_A',A.verify_uniform,q)
    rejected('wrong_remainder_coefficient_B',B.verify_uniform,q)
    q=copy.deepcopy(U);q['plus_box_bounds'][0]['coefficients'][0][0]=[-1,1]
    rejected('negative_Bernstein_A',A.verify_uniform,q)
    rejected('negative_Bernstein_B',B.verify_uniform,q)
    q=copy.deepcopy(U);q['plus_box_bounds'].pop();rejected('missing_box_A',A.verify_uniform,q)
    q=copy.deepcopy(U);q['plus_threshold']=64;rejected('unauthorized_threshold_B',B.verify_uniform,q)
    q=copy.deepcopy(U);q['all_threshold']=32;rejected('unauthorized_all_threshold_A',A.verify_uniform,q)
    q=copy.deepcopy(PC);q['certificates'][str(row['p'])]['factors'].pop();rejected('incomplete_prime_factorization_A',A.verify_primes,q)
    q=copy.deepcopy(PC);q['certificates'][str(row['p'])]['base']=1
    rejected('invalid_prime_witness_A',A.verify_primes,q)
    rejected('invalid_prime_witness_B',B.verify_primes,q)
    q=copy.deepcopy(row);q['n']+=2;rejected('changed_original_n_A',lambda d:A.verify_row(d,primes),q)
    q=copy.deepcopy(row);q['e']=0;rejected('invalid_source_exponent_A',lambda d:A.verify_row(d,primes),q)
    q=copy.deepcopy(row);q['opposite_factorization'][0][1]=2;rejected('false_isolated3_A',lambda d:A.verify_row(d,primes),q)
    q=copy.deepcopy(shell);q['floors']['n_P2']+=1;rejected('wrong_real_shell_floor_A',A.verify_shell,q)
    require(not plus_scope(3,3,20),'noncomplete P accepted')
    require(not plus_scope(2,5,20),'even m outside theorem accepted')
    require(not plus_scope(5,7,2),'below threshold accepted')
    outcomes.extend({'case':s,'rejected':True} for s in ['noncoprime_source_scope','even_m_scope','below_threshold_scope','split_discriminant_scope'])
    return outcomes

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir');ap.add_argument('--regenerate',action='store_true')
    args=ap.parse_args()
    out=Path(args.output_dir) if args.output_dir else ROOT.parent/(ROOT.name+'-replay-'+datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ'))
    require(not out.exists(),'Output directory already exists; choose a fresh path')
    out.mkdir(parents=True)
    C=ROOT/'certificates'
    U=json.loads((C/'uniform.json').read_text());PC=json.loads((C/'primes.json').read_text())
    row=json.loads((C/'row_2pow167.json').read_text());shell=json.loads((C/'real_shell.json').read_text())
    with contextlib.redirect_stdout(io.StringIO()):
        ra=A.main();rb=B.main()
    primes=A.verify_primes(PC)
    results={'checker_A':ra,'checker_B':rb,'regression':regression(),'tamper_tests':tamper(U,PC,row,shell,primes)}
    if args.regenerate:
        cmd=[sys.executable,str(ROOT/'src/generate.py'),'--out-dir',str(out/'regenerated')]
        r=subprocess.run(cmd,capture_output=True,text=True,check=True,timeout=45)
        regenerated={}
        for path in sorted(C.glob('*.json')):
            other=out/'regenerated/certificates'/path.name
            equal=path.read_bytes()==other.read_bytes();require(equal,'regeneration mismatch '+path.name)
            regenerated[path.name]={'byte_identical':equal,'sha256':hashlib.sha256(other.read_bytes()).hexdigest()}
        results['regeneration']={'command':cmd,'stdout':r.stdout.strip(),'files':regenerated}
    for name,value in results.items():(out/(name+'.json')).write_text(json.dumps(value,indent=2)+'\n')
    summary={'status':'PASS','python':platform.python_version(),'checker_A':True,'checker_B':True,
        'tamper_rejections':len(results['tamper_tests']),'original_direct_binomial_tests':results['regression']['total_direct_binomial_checks'],
        'plus_digit_box_points':sum(v['all_grouped_digit_candidates_checked'] for v in results['regression']['plus_cases']),
        'generic_digit_box_points':sum(v['candidates_checked'] for v in results['regression']['generic_cases']),
        'regenerated':args.regenerate,'no_Lean':True,'no_repository_changes':True,
        'evidence_grade':'author paper proof + same-author algorithmically different exact checkers, not external review'}
    (out/'SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({'output_dir':str(out),**summary},indent=2))
if __name__=='__main__':main()
