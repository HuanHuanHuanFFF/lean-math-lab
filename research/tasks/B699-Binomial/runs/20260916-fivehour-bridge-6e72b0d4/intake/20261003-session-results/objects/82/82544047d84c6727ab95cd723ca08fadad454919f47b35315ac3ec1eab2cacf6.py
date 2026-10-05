#!/usr/bin/env python3
"""C R5 deterministic arithmetic certificates. Python standard library only.

No Lean, network, repository access, or execution of previous research scripts.
Previous ZIP member hashes are checked; the R4 local replay receipt is an
explicit separate provenance item. Finite terminal is derived in PROOFS.md.
"""
from __future__ import annotations
import argparse, csv, hashlib, io, json, math, sys, zipfile
from collections import Counter
from fractions import Fraction as F
from pathlib import Path, PurePosixPath
from typing import Dict, Tuple

Poly = Dict[Tuple[int,int], F]
PREV_SHA='436f809856594311fcb1e59b828b0b999ef37dfe30410015a90989eb77d3ffa6'

def need(ok, message):
    if not ok: raise AssertionError(message)
def sha(b): return hashlib.sha256(b).hexdigest()
def dump(obj): return json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
def clean(p): return {k:F(v) for k,v in p.items() if v}
def const(c): return {(0,0):F(c)} if c else {}
def add(*ps):
    d={}
    for p in ps:
        for k,v in p.items():d[k]=d.get(k,F(0))+v
    return clean(d)
def scale(p,c):return clean({k:v*c for k,v in p.items()})
def sub(a,b):return add(a,scale(b,-1))
def mul(a,b):
    d={}
    for (i,j),v in a.items():
        for (u,w),z in b.items():d[i+u,j+w]=d.get((i+u,j+w),F(0))+v*z
    return clean(d)
def power(a,n):
    d=const(1)
    for _ in range(n):d=mul(d,a)
    return d
def prod(*ps):
    d=const(1)
    for p in ps:d=mul(d,p)
    return d
def shift(p,a,b):
    d={}
    for (i,j),v in p.items():
        for u in range(i+1):
            for w in range(j+1):
                z=v*math.comb(i,u)*math.comb(j,w)*a**(i-u)*b**(j-w)
                d[u,w]=d.get((u,w),F(0))+z
    return clean(d)
def peval(p,a,b):return sum((v*a**i*b**j for (i,j),v in p.items()),F(0))
def coeff(p):return [[i,j,v.numerator,v.denominator] for (i,j),v in sorted(p.items())]
def choose_poly(x,m):
    d=const(1)
    for a in range(m):d=mul(d,sub(x,const(a)))
    return scale(d,F(1,math.factorial(m)))
def v_p(a,p):
    need(a!=0,'valuation of zero was requested')
    a=abs(a);e=0
    while a%p==0:a//=p;e+=1
    return e
def vp_fact(n,p):
    r=0
    while n:n//=p;r+=n
    return r
def vp_choose(n,j,p):return vp_fact(n,p)-vp_fact(j,p)-vp_fact(n-j,p)
def factor(n):
    a=n;out={};p=2
    while p*p<=a:
        while a%p==0:out[p]=out.get(p,0)+1;a//=p
        p+=1
    if a>1:out[a]=out.get(a,0)+1
    return out
def rough(a):
    for p in (2,3,5):
        while a%p==0:a//=p
    return a
def K6(n,d):
    return d**6-(15*n-40)*d**4+(45*n*n-210*n+184)*d*d-15*n*(n-2)*(n-4)
def Hodd(j,k):return 9*(math.comb(j-1,4)+math.comb(k-1,4))+5*math.comb(j-1,2)*math.comb(k-1,2)

def source_binding(root):
    pp=root/'dependencies/PREVIOUS_ROUND.zip';data=pp.read_bytes()
    need(sha(data)==PREV_SHA,'Wrong frozen R4 ZIP')
    with zipfile.ZipFile(io.BytesIO(data)) as z:
        names=z.namelist();bases={PurePosixPath(s).parts[0] for s in names}
        need(len(bases)==1,'Previous ZIP root count')
        base=next(iter(bases))+'/'
        for s in names:need(not PurePosixPath(s).is_absolute() and '..' not in PurePosixPath(s).parts,'Previous unsafe name')
        lines=z.read(base+'MANIFEST.sha256').decode().splitlines();hs={}
        for ln in lines:
            h,name=ln.split(None,1);hs[name.strip().lstrip('*')]=h
        need(set(hs)=={s[len(base):] for s in names if not s.endswith('/')} - {'MANIFEST.sha256'},'Previous manifest set')
        for name,h in hs.items():need(sha(z.read(base+name))==h,'Previous member hash: '+name)
        for here,there in [('R4_HANDOFF.md','HANDOFF.md'),('R4_PROOFS.md','PROOFS.md'),('ACTUAL_SMALLPARTS_42.csv','dependencies/ACTUAL_SMALLPARTS_42.csv')]:
            need((root/'dependencies'/here).read_bytes()==z.read(base+there),'Adopted byte copy mismatch')
    receipt=json.loads((root/'dependencies/R4_LOCAL_REPLAY_RECEIPT.json').read_text())
    need(receipt['archive_sha256']==PREV_SHA and receipt['status']=='PASS','R4 local replay provenance')
    need(receipt['certificates_regenerated']==7 and receipt['manifest_members']==29,'R4 replay counts')
    rows=list(csv.DictReader((root/'dependencies/ACTUAL_SMALLPARTS_42.csv').open()))
    res=sorted(int(x['a']) for x in rows);need(len(res)==len(set(res))==42,'R42 cardinality')
    return {'previous_archive_sha256':PREV_SHA,'previous_archive_bytes':len(data),
            'previous_manifest_members_checked_now':len(hs),'previous_copy_identity':True,
            'R4_local_replay_receipt_sha256':sha((root/'dependencies/R4_LOCAL_REPLAY_RECEIPT.json').read_bytes()),
            'R4_local_replay_status':receipt['status'],'R4_certificates_replayed_in_separate_call':7,
            'R1_R2_R3_scripts_executed_this_round':False,'previous_scripts_executed_by_this_verifier':False,
            'R42':res,'new_mod1800_classes_closed':0,'certified_historical_net_reduction':0}

def inner4():
    x={(1,0):F(1)};y={(0,1):F(1)};N=add(x,y);J=mul(x,y);A=mul(sub(x,const(1)),sub(y,const(1)))
    aa=[mul(choose_poly(x,b),choose_poly(y,4-b)) for b in range(5)]
    av=add(scale(mul(aa[4],aa[0]),12),scale(mul(aa[3],aa[1]),-3),power(aa[2],2))
    bv=add(scale(prod(aa[4],aa[2],aa[0]),72),scale(prod(aa[3],aa[2],aa[1]),9),
           scale(prod(aa[4],power(aa[1],2)),-27),scale(prod(power(aa[3],2),aa[0]),-27),scale(power(aa[2],3),-2))
    rhs1=prod(J,A,sub(N,const(3)),sub(N,const(2)))
    rhs2=prod(power(J,2),A,power(sub(N,const(3)),2),sub(N,const(2)))
    rhs3=prod(power(J,3),power(A,2),power(sub(N,const(3)),3),power(sub(N,const(2)),2),
              sub(mul(sub(N,const(1)),sub(N,const(2))),J))
    tests=[sub(scale(av,8),rhs1),sub(scale(bv,-16),rhs2),sub(scale(sub(power(bv,2),scale(power(av,3),2)),256),rhs3)]
    need(all(not q for q in tests),'Quartic identity fails')
    jets=[]
    for r in range(2,6):
        for b in range(1,r):
            orders=[]
            for p in aa:
                tr=shift(p,b-1,r-b-1);order=min(i+j for i,j in tr)
                need(order>=1,'Missing complete inner source');orders.append(order)
            jets.append({'r':r,'b':b,'five_orders':orders})
    lifts=[]
    for p in (7,11,23,31):
        for e in (1,2,3,4):
            Q=p**e
            for r in range(2,6):
                for b in range(1,r):
                    for u,v in ((1,1),(1,2),(2,3)):
                        need((u+v)%p!=0,'Bad test source exponent')
                        j=b+Q*u;k=r-b+Q*v
                        vals=[math.comb(j-1,m)*math.comb(k-1,4-m) for m in range(5)]
                        need(all(z%Q==0 for z in vals),'Full Q inner lift failed')
                        need(v_p(j+k-r,p)==e,'Test is not exact source exponent')
                        lifts.append([p,e,r,b,u,v])
    # Finite identity regression is not a replacement for polynomial identities.
    regressions=0
    for xx in range(6,31):
        for yy in range(xx,31):
            val=[math.comb(xx,b)*math.comb(yy,4-b) for b in range(5)]
            iv=12*val[4]*val[0]-3*val[3]*val[1]+val[2]**2
            bv0=72*val[4]*val[2]*val[0]+9*val[3]*val[2]*val[1]-27*val[4]*val[1]**2-27*val[3]**2*val[0]-2*val[2]**3
            need(bv0*bv0-2*iv**3>0,'Positive invariant regression')
            regressions+=1
    return {'coordinates':'x=j-1,y=k-1,N=n-2; no NC4 assertion or descent',
            'convolution_coefficients':[coeff(p) for p in aa],
            'quartic_invariant_a':coeff(av),'quartic_invariant_b':coeff(bv),
            'identities_zero_polynomials':len(tests),'inner_source_jets':jets,
            'full_prime_power_lifts':lifts,'lift_test_count':len(lifts),
            'coefficient_divisibility_checks':5*len(lifts),'positive_regression_count':regressions,
            'strict_bound':'2^20 I^6 < 3 (n-2)^17',
            'normalized_scalar_max':{'u_interval':['0','1/4'],'function':'u^5(1-u)',
            'derivative':'u^4(5-6u)>0','maximum':[3,4096]}}

def units_and_floor():
    j={(1,0):F(1)};k={(0,1):F(1)}
    a=[mul(choose_poly(sub(j,const(1)),b),choose_poly(sub(k,const(1)),4-b)) for b in range(5)]
    H=add(scale(add(a[0],a[4]),9),scale(a[2],5))
    ends=[peval(H,0,r) for r in range(6)]
    need(ends==[23,9,9,14,24,48],'Endpoint values')
    center=shift(H,1,1)
    need(center.get((0,0),0)==0 and center.get((1,0))==-F(9,4) and center.get((0,1))==-F(9,4),'Central exact leading terms')
    origin_integer=[]
    for p in a:
        pp=scale(p,24);need(all(v.denominator==1 for v in pp.values()) and pp[(0,0)]==24,'Coefficient residue over g')
        origin_integer.append(coeff(pp))
    unit_count=0;central_count=0
    for p in (7,11,23,31):
        for e in range(1,5):
            Q=p**e
            for r in (1,2,4,5):
                for b in (0,r):
                    for u,v in ((1,1),(1,2),(2,3)):
                        jj=b+Q*u;kk=r-b+Q*v
                        need(Hodd(jj,kk)%p!=0,'Endpoint Vinner unit failure')
                        unit_count+=1
            for u,v in ((1,1),(1,2),(2,3)):
                jj=1+Q*u;kk=1+Q*v
                need(v_p(Hodd(jj,kk),p)==e,'Central2 exact full valuation failed')
                central_count+=1
    # The inequalities a2>a3>a4 and a0>a4 are algebraically proved in PROOFS.
    order_count=0
    for jj in range(7,45):
        for kk in range(jj+1,65):
            v=[math.comb(jj-1,b)*math.comb(kk-1,4-b) for b in range(5)]
            need(v[2]>v[3]>v[4] and v[0]>v[4],'Coefficient order')
            order_count+=1
    return {'Hodd_coefficients':coeff(H),'endpoint_values':[int(z) for z in ends],
            'central2_linear_terms':[[-9,4],[-9,4]],'central2_full_Q_valuation_tests':central_count,
            'endpoint_unit_tests':unit_count,'integer_24_coefficients':origin_integer,
            'common_coefficient_modulus':'m_g=g/gcd(g,24)',
            'Vinner_floor':'Vinner >= 19*m_g+23 for j<k',
            'coefficient_order_tests':order_count,
            'unit_product':'q1*q2*E4*E5*(q0/23^v23(q0))*(E3/7^v7(E3))',
            'unit_support_caveat':'The required outside prime can be 2,3,5; it is not itself claimed as a Common6 witness.',
            'source3_exception':{'endpoint_constant':14,'prime':7},
            'origin_exception':{'constant':23,'prime':23,'v23(g)=1':'not uniformly bounded by the origin alone'}}

def height_certificate():
    c=2**28*3**13*5**6
    f128=1-F(60,128)-F(960,128**3)
    need(f128>F(1,2),'K lower bound threshold')
    need(489**7<c<490**7,'Finite terminal height incorrect')
    need(F(3*27000**6,2**20*44**6)==F(3**19*5**18,2**14*11**6),'Distance constant simplification')
    need(1-F(15,15)+F(45,15**2)-F(15,15**3)==F(44,225),'Inherited region ratio')
    errs=[];count=0
    for n in range(128,600):
        for j in (7,n//8,n//4):
            if 7<=j<=n//4:
                need(128*K6(n,n-2*j)>n**6,'K lower bound numerical control')
                count+=1
    return {'n_threshold':128,'K_ratio_endpoint':[f128.numerator,f128.denominator],
            'off_center':'7<=j<=floor(n/4)',
            'phase_period':'ell=lcm(120,32g)=480g/gcd(g,15)',
            'c':'gcd(g,15)','U':'beta*gamma/(q1*E2*E3*E4*E5)',
            'general_inner_K_bound':'2^20*(c*U)^6*K6^6 < 3*90^6*(t+1)^6*n^29 (off-center)',
            'phase_growth':'n^7*(c*U)^6 < 2^28*3^13*5^6*(t+1)^6 for n>=128,j<=n/4',
            'height_constant':c,'489_power7':489**7,'490_power7':490**7,'t0_n_max':489,
            'all42_distance_upper':'2^14*11^6*(c*U)^6*d^36 < 3^19*5^18*(t+1)^6*n^29',
            'all42_distance_upper_dependency':'R4 d^2>15n only; not a new epsilon upper bound',
            'K_regression_count':count,'epsilon_absolute_bound_obtained':False}

def finite_terminal(R42):
    # Algorithm A: original source factors + Legendre factorial valuations.
    facts={m:factor(m) for m in range(1,490)}
    seqA=[];rows=[]
    for n in range(28,490):
        source_primes=sorted({p for r in range(6) for p in facts[n-r] if p>=7})
        row=[]
        for j in range(7,n//4+1):
            good=[p for p in source_primes if vp_choose(n,j,p)>0]
            need(bool(good),'Possible counterexample in proved finite terminal: %s'%((n,j),))
            p=good[0];u=vp_choose(n,6,p);v=vp_choose(n,j,p)
            need(u>0 and v>0,'Witness valuation')
            row.append([n,j,p,u,v])
        seqA+=row;rows.append({'n':n,'count':len(row),'witness_sha256':sha(dump(row).encode())})
    # Algorithm B: direct integer binomial GCD, reverse traversal, independent factoring.
    seqB=[]
    for n in range(489,27,-1):
        cc=math.comb(n,6)
        for j in range(n//4,6,-1):
            target=math.comb(n,j);gg=rough(math.gcd(cc,target))
            need(gg>1,'Direct GCD verifier failed')
            p=7
            while gg%p:p+=1
            need(all(p%d for d in range(2,math.isqrt(p)+1)),'Direct witness composite')
            seqB.append([n,j,p,v_p(cc,p),v_p(target,p)])
    seqB.sort();need(seqA==seqB,'Complete witness sets disagree')
    subset=[a for a in seqA if a[0]%1800 in R42]
    need(len(seqA)==26912,'Unexpected finite terminal size')
    return {'scope':'ALL integers 28<=n<=489,7<=j<=floor(n/4); no residue, phase, smoothness or epsilon filter',
            'proof_height_not_scan_limit':489,'n_rows':len(rows),'pairs':len(seqA),
            'algorithm_A':'full source factors and Legendre valuations',
            'algorithm_B':'direct math.comb GCD, opposite traversal, independent trial factoring',
            'all_witnesses_identical':True,'witness_sequence_sha256':sha(dump(seqA).encode()),
            'witness_primes':sorted({r[2] for r in seqA}),
            'R42_subset_n':sorted({r[0] for r in subset}),'R42_subset_pairs':len(subset),
            'historical_overlap':'This finite prefix can overlap old certificates; no positive historical net difference is claimed.',
            'rows':rows,'witness_records_n_j_p_v6_vj':seqA,'NC_survivors':[]}

def F23(x):
    return 23**3*(x**4+x*x*(x-2)**2+(x-2)**4)-15*23**2*x*(x*x+(x-2)**2)+23*(85*x*x+40*(x-2)**2)-210*x+8

def G23(t,m):
    # G(t)=8*Hodd(23,23*(2^a-1))/23^2; compute mod 23^m.
    mod=23**(m+1);X=pow(2,391+660*t,mod);f=F23(X)%mod
    need(f%23==0,'G23 is not integral in the selected exponent family')
    return (f//23)%(23**m)

def hensel23():
    Xp={(1,0):F(1)};Xm2=sub(Xp,const(2))
    Fp=add(scale(add(power(Xp,4),prod(power(Xp,2),power(Xm2,2)),power(Xm2,4)),23**3),
           scale(mul(Xp,add(power(Xp,2),power(Xm2,2))),-15*23**2),
           scale(add(scale(power(Xp,2),85),scale(power(Xm2,2),40)),23),scale(Xp,-210),const(8))
    jp=const(23);kp=scale(sub(Xp,const(1)),23)
    Hp=add(scale(add(choose_poly(sub(jp,const(1)),4),choose_poly(sub(kp,const(1)),4)),9),
           scale(mul(choose_poly(sub(jp,const(1)),2),choose_poly(sub(kp,const(1)),2)),5))
    need(not sub(scale(Hp,8),scale(Fp,23)),'F23 full polynomial identity')
    need(pow(2,11,23)==1 and all(pow(2,a,23)!=1 for a in range(1,11)),'2 order mod23')
    slope=((pow(2,660,23**2)-1)//23)%23
    need(slope==4,'Exponent derivative')
    need(pow(2,391,23)==18 and 23*pow(2,391,1800)%1800==1504,'Base residues')
    need((-210*18*4)%23==14,'G derivative')
    # Symbolic F polynomial compared with the explicit original Hodd formula on actual integers.
    for X in (18,41,64,128,256):
        j=23;k=23*(X-1)
        need(23*F23(X)==8*Hodd(j,k),'F23 identity sample')
    derivative_tests=[]
    for m in range(0,7):
        for t in (0,1,2,5,19,23,107):
            mod=23**(m+1)
            delta=(G23(t+23**m,m+1)-G23(t,m+1))%mod
            need(delta==14*23**m%mod,'Hensel shift derivative')
            derivative_tests.append([m,t,delta])
    records=[]
    for L in range(2,13):
        M=L-1;target=23**(L-2);t=0;digits=[]
        for i in range(M):
            mod=23**(i+1)
            good=[d for d in range(23) if G23(t+d*23**i,i+1)==target%mod]
            need(len(good)==1,'Hensel branch is not unique')
            digit=good[0];t+=digit*23**i;digits.append(digit)
        exponent=391+660*t;X=pow(2,exponent,23**L);f=F23(X)%(23**L)
        need(f==23**(L-1),'Exact target valuation, not only lower bound')
        need(23*pow(2,exponent,1800)%1800==1504,'Lost original residue class')
        need(pow(2,exponent,23)==18,'Lost full origin no-carry digit')
        records.append({'target_v23_Hodd':L,'t':t,'base23_digits':digits,'exponent_a':exponent,
                        'n_mod1800':1504,'alpha_mod23':18,'Hodd_div23L_mod23':3,
                        'huge_n_materialized':False})
    residues=sorted({u*v%8 for u in (1,3) for v in (1,11)})
    need(residues==[1,3] and 7 not in residues,'Source1 contradiction')
    return {'family':'a=391+660*t,n=23*2^a,j=23,g=23,alpha=s0=2^a,q0=23',
            'every_integer_t_nonnegative_has_original_class':1504,
            'origin_all_23_layers':'h=1 gives 0=0; h>=2 has n mod23^h>=23*18>23=j',
            'F23_formula':'8Hodd = 23*F23(alpha)','F23_coefficients':coeff(Fp),'F23_identity_all_coefficients_equal':True,
            'G23_formula':'G(t)=F23(2^(391+660t))/23=8Hodd/23^2',
            'exponent_unit_slope_mod23':slope,'G_hensel_derivative_mod23':14,
            'derivative_tests':derivative_tests,'exact_valuation_examples':records,
            'unbounded_valuation_proof':'unique Hensel lift for G(t)=23^(L-2) mod23^(L-1) for every L>=2',
            'source1_failure':'q1|j(j-1) would force q1 in {1,11}; n-1=3^b*q1 is 7 mod8, impossible',
            'possible_3b_q1_mod8':residues,
            'not_a_full_NC_model':True,'actual_T6_or_Z_not_claimed_integral':True,
            'failure_scope':'Even actual n,j,g,alpha,s0,q0 and ALL origin-23 carry layers do not bound v23(Hodd); source1 is genuinely missing.'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);ap.add_argument('--output',type=Path,required=True);ap.add_argument('--check',type=Path)
    args=ap.parse_args();root=args.root.resolve();out=args.output.resolve();out.mkdir(parents=True,exist_ok=True)
    binding=source_binding(root)
    certs={'SOURCE_BINDING.json':binding,'INNER4_IDENTITIES.json':inner4(),
           'UNITS_AND_RESIDUE_FLOOR.json':units_and_floor(),'SHORT_PHASE_HEIGHT.json':height_certificate(),
           'FINITE_TERMINAL_489.json':finite_terminal(set(binding['R42'])),'HENSEL23_FAILURE.json':hensel23()}
    for name,obj in certs.items():
        data=dump(obj).encode();(out/name).write_bytes(data)
        if args.check:
            need((args.check/name).read_bytes()==data,'Certificate byte mismatch: '+name)
            need(json.loads((args.check/name).read_text())==obj,'Certificate JSON mismatch: '+name)
    if args.check:need({p.name for p in args.check.iterdir() if p.is_file()}==set(certs),'Certificate membership mismatch')
    print(dump({'status':'PASS','certificates':len(certs),'finite_terminal_pairs':certs['FINITE_TERMINAL_489.json']['pairs'],
                'finite_terminal_n_max':489,'NC_survivors':0,'certificates_sha256':{k:sha((out/k).read_bytes()) for k in sorted(certs)},
                'external_independent_review':False,'Lean_run':False,'network_used':False,'repository_written':False}),end='')

if __name__=='__main__':main()
