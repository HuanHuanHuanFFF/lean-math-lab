#!/usr/bin/env python3
"""Deterministic R4 certificates. Standard library only; no network or Lean.
The proof of an infinite statement is in PROOFS.md. Finite tests below are
arithmetic regression checks, not a search for counterexamples or an n/j terminal.
"""
from __future__ import annotations
import argparse, csv, hashlib, io, itertools, json, math, sys, zipfile
from fractions import Fraction as F
from pathlib import Path

if hasattr(sys, 'set_int_max_str_digits'):
    sys.set_int_max_str_digits(0)
PREVIOUS_SHA = '0e9fd27d33271793e23313d58504ed0fe8115c4bc9fc4d270ff9bb8df7c6b8cd'
PREVIOUS_ROOT = 'B699-C-R3-K6-ANGULAR-20261002/'
R42 = [27,100,128,153,176,225,252,280,325,352,378,425,552,576,625,704,729,776,801,850,875,928,954,976,1000,1026,1100,1225,1251,1305,1377,1425,1450,1476,1504,1552,1576,1625,1650,1675,1701,1776]
R012 = [352,425,776,1026,1377,1450]


def need(cond, text):
    if not cond:
        raise AssertionError(text)


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def jf(x):
    x = F(x)
    return [x.numerator, x.denominator]


def js(data) -> bytes:
    return (json.dumps(data, ensure_ascii=False, sort_keys=True, indent=2)+'\n').encode('utf-8')


def smallpart(x: int) -> int:
    need(x > 0, 'positive smallpart input')
    s = 1
    for p in (2,3,5):
        while x % p == 0:
            x //= p
            s *= p
    return s


def independent_rough(x: int) -> int:
    while True:
        t = math.gcd(x,30)
        if t == 1:
            return x
        x //= t


def k6(n: int, d: int) -> int:
    return d**6-(15*n-40)*d**4+(45*n*n-210*n+184)*d*d-15*n*(n-2)*(n-4)


def odd_core(j: int, k: int) -> int:
    return 9*(math.comb(j-1,4)+math.comb(k-1,4))+5*math.comb(j-1,2)*math.comb(k-1,2)


def falling(n, r):
    return math.prod(n-t for t in range(r))

# Exact bivariate polynomials, coefficients in Q. No symbolic-CAS dependency.
def clean(p):
    return {m:F(c) for m,c in p.items() if c}


def pc(c):
    return {(0,0):F(c)} if c else {}


def pa(*pp):
    out = {}
    for p in pp:
        for m,c in p.items():
            out[m] = out.get(m,F(0))+c
    return clean(out)


def ps(p,c):
    return clean({m:c*v for m,v in p.items()})


def pm(p,q):
    out = {}
    for (a,b),v in p.items():
        for (c,d),w in q.items():
            m=(a+c,b+d)
            out[m]=out.get(m,F(0))+v*w
    return clean(out)


def pp(p,e):
    out=pc(1)
    for _ in range(e):
        out=pm(out,p)
    return out


def choose_poly(p,r):
    out=pc(1)
    for a in range(r):
        out=pm(out,pa(p,pc(-a)))
    return ps(out,F(1,math.factorial(r)))


def pjson(p):
    return [[a,b,c.numerator,c.denominator] for (a,b),c in sorted(p.items())]


def peval(p,x,y):
    return sum(c*x**a*y**b for (a,b),c in p.items())


def source_binding(root: Path):
    raw=(root/'dependencies/PREVIOUS_ROUND.zip').read_bytes()
    need(digest(raw)==PREVIOUS_SHA, 'wrong R3 archive SHA')
    records=[]
    with zipfile.ZipFile(io.BytesIO(raw)) as z:
        manifest=z.read(PREVIOUS_ROOT+'MANIFEST.sha256').decode()
        for ln in manifest.splitlines():
            if not ln.strip(): continue
            h,name=ln.split(None,1)
            name=name.strip().lstrip('*')
            need(digest(z.read(PREVIOUS_ROOT+name))==h, 'R3 member hash '+name)
            records.append({'path':name,'sha256':h})
        copies={'R3_PROOFS.md':'PROOFS.md','R3_HANDOFF.md':'HANDOFF.md',
                'ACTUAL_SMALLPARTS_42.csv':'dependencies/ACTUAL_SMALLPARTS_42.csv',
                'BFT_CONTRACT.json':'dependencies/BFT_CONTRACT.json'}
        for target,source in copies.items():
            need((root/'dependencies'/target).read_bytes()==z.read(PREVIOUS_ROOT+source),
                 'adopted dependency byte mismatch '+target)
    need(len(records)==27, 'expected 27 R3 manifest members')
    return {'status':'PASS','previous_archive_sha256':PREVIOUS_SHA,
            'previous_members_hashed':len(records),'previous_manifest':records,
            'old_scripts_executed':False,'old_mathematical_acceptance_upgraded':False,
            'overview_raw_sha256_verified':False,
            'epsilon_4096_terminal_scope':'R1 024 six classes only; no R4 rerun or all42 claim'}


def content_and_phase():
    x={(1,0):F(1)};y={(0,1):F(1)};n=pa(x,y);d=pa(y,ps(x,-1))
    K=pa(pp(d,6),ps(pm(pa(ps(n,15),pc(-40)),pp(d,4)),-1),
         pm(pa(ps(pp(n,2),45),ps(n,-210),pc(184)),pp(d,2)),
         ps(pm(pm(n,pa(n,pc(-2))),pa(n,pc(-4))),-15))
    N=ps(choose_poly(n,6),720)
    H=pa(ps(pa(choose_poly(pa(x,pc(-1)),4),choose_poly(pa(y,pc(-1)),4)),9),
         ps(pm(choose_poly(pa(x,pc(-1)),2),choose_poly(pa(y,pc(-1)),2)),5))
    diff=pa(N,ps(K,-1))
    need(diff==ps(pm(pm(x,y),H),32),'PHASE32 full polynomial identity')
    H4=pa(pp(n,4),pm(pp(n,2),pp(d,2)),pp(d,4),
          ps(pm(n,pa(pp(n,2),pp(d,2))),-15),ps(pp(n,2),85),
          ps(pp(d,2),40),ps(n,-210),pc(184))
    need(H4==ps(H,8),'H4=8*integer binomial core')
    # Each entry proves 720*C(j,b)*C(k,6-b)/g is 120 times an integer.
    # For b=0/6 select a length-6 endpoint; otherwise select length 1,2,3.
    choices=[]
    for b in range(7):
        if b==0: side,h='k',6
        elif b<=3: side,h='j',b
        else: side,h='k',6-b
        if b==6: side,h='j',6
        need(720 % (120*h)==0, 'binomial selected divisor')
        choices.append({'b':b,'side':side,'selected_degree':h,
                        'coefficient_after_120g':720//(120*h),'sign':(-1)**b})
    value_count=0
    for j in range(7,45):
        for k in range(j,48):
            g=math.gcd(j,k);nn=j+k;dd=k-j
            kk=k6(nn,dd);hh=odd_core(j,k)
            need(kk%(120*g)==0,'120g content numeric regression')
            need(falling(nn,6)-kk==32*j*k*hh,'integer phase value')
            need(hh>0,'positive odd core')
            # independent alternating-binomial check, not old source-jet rerun
            alt=720*sum((-1)**b*math.comb(j,b)*math.comb(k,6-b) for b in range(7))
            need(alt==kk,'alternating value')
            value_count+=1
    # Exact origin/prime-23 behavior of H. Use x=g beta, y=g gamma;
    # the constant at the origin is 23, and the linear part is -105(x+y)/4.
    need(H.get((0,0))==23, 'odd core origin constant')
    need(H.get((1,0))==F(-105,4) and H.get((0,1))==F(-105,4),
         'odd core first jets')
    neg=[{'claim':'240g always divides K6','n':22,'j':8,'g':2,
          'K6_over_g':k6(22,6)//2,'rejected':k6(22,6)%(240*2)!=0},
         {'claim':'64*j*k divides falling(n,6)-K6 universally',
          'n':14,'j':7,'odd_core':odd_core(7,7),
          'rejected':(falling(14,6)-k6(14,0))%(64*7*7)!=0}]
    need(all(t['rejected'] for t in neg),'negative controls must reject')
    return {'status':'PASS','new_identity':'n_falling_6-K6=32*j*k*Hodd',
            'Hodd_binomial':'9*(choose(j-1,4)+choose(k-1,4))+5*choose(j-1,2)*choose(k-1,2)',
            'Hodd_coefficients':pjson(H),'difference_coefficients':pjson(diff),
            'content120_term_witnesses':choices,'numeric_value_tests':value_count,
            'universal_phase':'alpha*S15-T6=32*g*Z, Z in positive integers',
            'source_factor_recovery':'Dend=q1 E2 E3 E4 E5, I=Q/Dend; Z=(beta*gamma/Dend)*(Hodd/I)',
            'new_valuation':'p|q0,p!=23 => vp(Z)=vp(beta*gamma); p=23 and vp(g)>=2 => +1',
            'negative_controls':neg}


def read_rows(root):
    with (root/'dependencies/ACTUAL_SMALLPARTS_42.csv').open(newline='') as f:
        rows=list(csv.DictReader(f))
    need([int(r['a']) for r in rows]==R42,'42 inherited residue identities')
    return rows


def mass_and_sign(root):
    rows=read_rows(root);out=[];groups={}
    for r in rows:
        a=int(r['a']);act=[t for t in range(6) if r[f'H_at_{t}']!='1']
        need(0 in act and len(act) in (2,3),'adopted activation domain')
        fixed=[t for t in range(1,6) if t not in act]
        C=math.prod(int(r[f'kappa{t}']) for t in fixed)
        kp=math.prod(int(r[f'kappa{t}']) for t in act)
        if len(act)==3:
            lower=F(120*1001,C)*(1-F(sum(fixed),a))
            triangle_c=F(840,C*kp)
            need(triangle_c>=7,'uniform triangle coefficient')
        else:
            need(act==[0,1] and fixed==[2,3,4,5],'01 type')
            lower=F(120*77,C)*(a-sum(fixed))
            triangle_c=F(120*77,C)
            need(triangle_c>=77,'01 coefficient')
        need(lower>900, 'global integer mass must exceed 900 n^3')
        groups[','.join(map(str,act))]=groups.get(','.join(map(str,act)),0)+1
        out.append({'a':a,'active':act,'fixed_positive_sources':fixed,'C':C,
                    'kappa_active_product':kp,'strict_mass_lower_over_n3':jf(lower),
                    'post_triangle_or_01_coefficient':jf(triangle_c)})
    # calculus reduced to rational comparisons around the explicit critical values
    need(F(16,5)**2>10,'sqrt(10)<16/5')
    globallower=-104-F(186,27)-F(120,27**2)
    localupper=660+F(5940,27)+F(2640,27**2)
    need(globallower>-112 and localupper<884<900,'sign/15 parabola separation')
    # d^2>4n already makes the correction below d^6 negative.
    need(15*27**2+50*27-184>0,'K6<d6 correction at n>=27')
    return {'status':'PASS','all42_mass_rows':out,'group_counts':groups,
            'minimum_mass_bound':min(out,key=lambda z:F(*z['strict_mass_lower_over_n3'])),
            'negative_K6_global_lower_over_n3':jf(globallower),
            'chi_at_most_15_upper_over_n3':jf(localupper),
            'global_conclusions':['T6>0','0<K6<d^6','d^2>15*n'],
            'dependence':'R3 nonzero/source divisibility; adopted unit-window; no BFT for these conclusions',
            'no_n_j_terminal_or_epsilon_strip_run':True}


def triangle(root):
    rows=read_rows(root);contract=json.loads((root/'dependencies/BFT_CONTRACT.json').read_text())
    need(contract['lambda']=={'2,3':[57,200],'2,5':[129,500],'3,5':[27,125]},'published lambda')
    need(len(contract['exceptions'])==40,'40 BFT exceptions')
    lambdas={(2,3):F(57,200),(2,5):F(129,500),(3,5):F(27,125)}
    edges=list(lambdas);orientations=[]
    for winners in itertools.product((0,1),repeat=3):
        heights={2:F(0),3:F(0),5:F(0)}
        for edge,choice in zip(edges,winners):
            p=edge[choice];heights[p]=max(heights[p],lambdas[edge])
        expo=sum(heights.values())
        need(expo>=F(501,1000),'all triangle winner cases')
        orientations.append({'winners':[list(e)[i] for e,i in zip(edges,winners)],
                             'cofactor_exponents':{str(p):jf(v) for p,v in heights.items()},
                             'sum':jf(expo)})
    need(min(F(*x['sum']) for x in orientations)==F(501,1000),'triangle floor is exactly .501')
    exception_candidates=[];matches=[];pair_contracts=[]
    for row in rows:
        a=int(row['a']);rp={p:int(row[f'r{p}']) for p in (2,3,5)}
        if len(set(rp.values()))!=3:continue
        for p,q in edges:
            r,s=sorted((rp[p],rp[q]));diff=s-r
            pair_contracts.append({'a':a,'bases':[p,q],'positions':[rp[p],rp[q]],
                                   'distance':diff,'lambda':jf(lambdas[p,q])})
            for xx,yy in contract['exceptions']:
                high,low=max(xx,yy),min(xx,yy)
                if high-low!=diff:continue
                nn=high+r
                need(nn-s==low,'exception reconstruction')
                item={'a':a,'bases':[p,q],'positions_sorted':[r,s],
                      'exception_pair':[xx,yy],'recovered_n':nn,'n_mod1800':nn%1800,
                      'same_class':nn%1800==a}
                exception_candidates.append(item)
                if item['same_class']:matches.append(item)
    need(len(pair_contracts)==108 and not matches,'all 36*3 exact BFT applications')
    # Small original n is absorbed into the proved d^2<=15n consumer, not enumerated.
    need(F(501,1000)<F(2,3), 'small-height exponent')
    need(1005<12**3 and 7*12**2<15**3,'small-height absorption')
    return {'status':'PASS','external_theorem_reproved':False,
            'triangle_exponent':[501,1000],'triangle_winner_cases':orientations,
            'two_case_proof':['X2>Y^.285: X3 or X5>Y^.216; third cofactor>=7',
                              'otherwise X3>Y^.285: X2 or X5>Y^.258; third cofactor>=7'],
            'pair_contracts':pair_contracts,'exception_candidates':exception_candidates,
            'exception_matches':matches,'large_input_threshold':1006,
            'strong_large_42':'d^6000 > 7^1000*(g/q0)^1000*(n-5)^3501',
            'uniform_all_42':'d^6000 > 7^1000*(n-5)^3501',
            '01_stronger':'d^6 > 77*(g/q0)*(n-5)^4',
            'small_input_handling':'n<=1005 and failure of uniform gap implies d^2<15n; no enumeration',
            'distance_exponent':[1167,2000]}


def phase_residue(g:int,A:int):
    need(g>0 and A>0,'positive CRT parameters')
    delta=120;modulus=32*g;c=math.gcd(delta,modulus)
    if A%c:
        return {'compatible':False,'gcd':c}
    m=modulus//c
    # pow(...,-1,1) is defined as 0 in current Python, but handle explicitly.
    u=0 if m==1 else (A//c)*pow(delta//c,-1,m)%m
    r=delta*u;period=delta*m
    return {'compatible':True,'gcd':c,'r':r,'period':period}


def residue_certificate():
    tests=0;incompatible=0
    for g in range(1,83):
        for A in range(1,73):
            z=phase_residue(g,A)
            c=math.gcd(120,32*g)
            if not z['compatible']:
                need(A%c!=0,'incompatible CRT');incompatible+=1;continue
            r=z['r'];period=z['period']
            need(r%120==0 and (r-A)%(32*g)==0,'CRT meets both conditions')
            need(period==math.lcm(120,32*g),'CRT period')
            need(0<=r<period,'canonical representative')
            # independent extended search of residues of t, bounded by the exact CRT period
            candidate=next((120*t for t in range(32*g//c) if (120*t-A)%(32*g)==0),None)
            need(candidate==r,'CRT inverse and complete one-period loop agree')
            tests+=1
    return {'status':'PASS','compatible_cases':tests,'incompatible_cases':incompatible,
            'delta':120,'modulus':'32*g','period':'lcm(120,32*g)',
            'necessary_under_NC42':['r>0','r<alpha*S15','T6=r+period*t, t>=0',
                                    'd^6 > r*g*q1*q2*q3*q4*q5'],
            'enumeration_scope':'finite CRT arithmetic unit tests only, not original input search'}


def weak_model():
    # Genuine n,j,smallparts/g; a formal T value satisfies the declared weak subset.
    # It is NOT the quotient K6/(gQ) and source1 fails for the whole family.
    cases=[]
    for m in (0,1,2):
        u=900*m+177;B=2**u;alpha=4*B;g=15*B-1;n=alpha*g;j=g;eps=alpha-2;d=g*eps
        s=[smallpart(n-r) for r in range(6)];q=[(n-r)//s[r] for r in range(6)]
        need(s==[alpha,9,50,1,12,1],'weak family exact smallparts')
        need(n%1800==352 and math.gcd(n,j)==g and q[0]==g,'true recovery and residue')
        need(all(x>=7 for x in q) and math.gcd(g,30)==1,'rough origin and no unit source')
        A=alpha*math.prod(s[1:]);formalT=1440
        need(A-formalT==1440*g==32*g*45,'strong formal phase')
        need(math.gcd(formalT,q[0])==1,'formal q0 coprimality')
        res=phase_residue(g,A)
        need(res['r']==1440 and 0<formalT<A,'short exact positive residue')
        need(d*d>15*n,'model lies beyond new parabola')
        source_gcd=math.gcd(q[1],j*(j-1))
        need(source_gcd in (1,7) and q[1]>7 and j*(j-1)%q[1]!=0,'source1 necessarily fails')
        Q=math.prod(q[1:]);K=k6(n,d)
        need(K>1440*g*Q,'formal T is NOT the actual quotient')
        cases.append({'m':m,'u':u,'n':str(n),'j':str(j),'alpha':str(alpha),
                      'epsilon':str(eps),'smallparts':['2^'+str(u+2),9,50,1,12,1],
                      'formal_T6':1440,'formal_Z':45,'canonical_phase_residue':1440,
                      'gcd_q1_j_jminus1':source_gcd,'actual_quotient_gt_formal':True,
                      'source1_pass':False})
    need(pow(2,900,27)==1 and pow(2,900,125)==1,'period900')
    need(pow(2,177,27)==17 and pow(2,177,125)==22,'initial residues')
    need((60*17*17-4*17-1)%27==18,'exact v3=2')
    need((60*22*22-4*22-2)%125==75,'exact v5=2')
    return {'status':'PASS','family':'B=2^(900m+177), alpha=4B, g=q0=15B-1, n=60B^2-4B, j=g, epsilon=4B-2',
            'unbounded_parameters':['n','j','g','alpha','epsilon','v2(n)'],
            'formal_values':{'T6':1440,'Z':45},'cases':cases,
            'supported_weak_subset':['same original n,j and actual gcd','exact all six 235 smallparts',
                                    'three actual complete active prime powers','q0|g and alpha|s0',
                                    'T>0 and 120|T','T congruent alpha*S15 modulo 32g',
                                    'gcd(T,q0)=1','canonical positive phase residue is 1440'],
            'failed_full_interfaces':['original source1','actual quotient defining T6','actual source definition of Z'],
            'global_failure_proof':'15(n-1)=4g^2+4g-15 => gcd(q1,j(j-1)) divides 7 < q1',
            'interpretation':'countermodel ONLY to a phase-subset large-residue claim, NOT to NC6 or B699'}


def domain_family():
    cases=[]
    for m in (2,3,4):
        Y=5**(3*m+1);alpha=Y**14;n=17*alpha;eps=Y**8-2
        beta=(alpha-eps)//2;j=17*beta;d=17*eps
        need((alpha-eps)%2==0 and math.gcd(alpha,beta)==1,'primitive original pair')
        need(math.gcd(n,j)==17 and n%1800==425,'actual g and row')
        need(j>=7 and 2*j<n,'legal original pair')
        need(d*d>15*n and eps>4096,'outside every inherited fixed small band')
        need(49*Y*Y>128*17**5 and n-5>F(n,2),'family exponent comparison')
        need(d**12<49*(n-5)**7,'stronger integer gap sufficient for d6000 bound')
        cases.append({'m':m,'Y':str(Y),'n':str(n),'j':str(j),'g':17,
                      'epsilon':str(eps),'d':str(d),'chi_gt_15':True,
                      'd12_lt_49_nminus5_7':True})
    return {'status':'PASS','family':'m>=2, Y=5^(3m+1), n=17Y^14, epsilon=Y^8-2, j=17(Y^14-epsilon)/2',
            'actual_g':17,'residue':425,'q0':17,'h':1,
            'unbounded':['n','j','epsilon','d^2/n'],
            'asymptotic_distance_power':[4,7],
            'consumer_distance_power':[1167,2000],
            'strict_exponent_comparison':jf(F(1167,2000)-F(4,7)),
            'cases':cases,'not_NC_examples':True,
            'historical_nonoverlap_certified':False,
            'proof':'49Y^2>128*17^5 gives d^12<49(n-5)^7; raise to 500 and multiply an extra (n-5)>1'}


def make(root):
    return {'SOURCE_BINDING.json':source_binding(root),
            'CONTENT_PHASE32.json':content_and_phase(),
            'MASS_SIGN_42.json':mass_and_sign(root),
            'TRIANGLE_GAP_42.json':triangle(root),
            'PHASE_RESIDUE.json':residue_certificate(),
            'WEAK_PHASE_MODEL.json':weak_model(),
            'UNBOUNDED_COVERED_FAMILY.json':domain_family()}


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1])
    ap.add_argument('--output',type=Path)
    ap.add_argument('--check',type=Path,help='compare complete JSON and file bytes to this certificate directory')
    args=ap.parse_args()
    results=make(args.root.resolve())
    if args.output:
        args.output.mkdir(parents=True,exist_ok=True)
        for name,data in results.items():
            (args.output/name).write_bytes(js(data))
    if args.check:
        for name,data in results.items():
            raw=(args.check/name).read_bytes()
            need(json.loads(raw)==data,'certificate semantic mismatch '+name)
            need(raw==js(data),'certificate byte mismatch '+name)
    summary={name: digest(js(data)) for name,data in results.items()}
    print(json.dumps({'status':'PASS','certificates':len(results),'sha256':summary,
                      'old_research_rerun':False,'Lean':False,'repository_writes':False},sort_keys=True))

if __name__=='__main__':
    main()
