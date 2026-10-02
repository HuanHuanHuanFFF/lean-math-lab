"""E-R4: exact new certificates; do not rerun R1/R2/R3 mathematics or Lean.
The adopted full kernel profile is byte-pinned. New prefix, prime-chain,
root/log bounds and A-gates are recomputed locally with integers/rationals.
"""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction as F
import bisect,hashlib,json,math,struct,sys
if not __debug__:raise RuntimeError('Run without Python -O / PYTHONOPTIMIZE.')
sys.dont_write_bytecode=True
from exact import (L2,U2,logs,scaled,linear_interval,trial,primes_sieve,
                   primes_segmented,root_upper,floor_log2,vp_choose)
ROOT=Path(__file__).resolve().parents[1]
C=F(553,500)

def sha(p:Path)->str:return hashlib.sha256(p.read_bytes()).hexdigest()
def require(ok:bool,msg:str):
    if not ok:raise AssertionError(msg)

def check_pins()->list[dict]:
    pins=json.loads((ROOT/'sources/INPUT_PINS.json').read_text())
    for rec in pins:require(sha(ROOT/rec['path'])==rec['sha256'],rec['path'])
    require(sha(ROOT/'sources/OVERVIEW.md')=='96f92ba7061e8facb774bdf2d42c5d445f3f1a63564ca0e2b71ceaca08d44066','Overview pin')
    return [{'path':r['path'],'sha256':r['sha256']} for r in pins]

def prime_stats(primes)->dict:
    bits=cnt=0;minmargin=None;argmin=None;maxnum=0;maxden=1;argmax=None
    h=hashlib.sha256()
    for p in primes:
        cnt+=1;bits+=p.bit_length();margin=553*p-350*bits
        require(margin>0,'finite global theta inequality failed')
        if minmargin is None or margin<minmargin:minmargin,argmin=margin,p
        if 350*bits*maxden>maxnum*553*p:maxnum,maxden,argmax=350*bits,553*p,p
        h.update(struct.pack('<I',p))
    return {'prime_count':cnt,'sum_bit_lengths':bits,'min_integer_margin':minmargin,'min_at_prime':argmin,
            'max_ratio_numerator':maxnum,'max_ratio_denominator':maxden,'max_at_prime':argmax,
            'prime_sequence_sha256_le_u32':h.hexdigest()}

def global_theta()->dict:
    N=2**22
    one=prime_stats(primes_sieve(N));two=prime_stats(primes_segmented(N))
    require(one==two,'two prime-prefix engines disagree')
    cl,cu=linear_interval(F(0),{2:F(7,15),3:F(3,10),5:F(1,6)})
    require(cu<F(9213,10000),'Chebyshev C bound')
    error=5*(1+F(7*22,10))**2/N
    margin=C-F(6,5)*F(9213,10000)-error
    require(margin>0 and U2<F(7,10) and L2>F(2,3),'all-real theta tail')
    return {'cutoff':N,'coefficient':str(C),'two_engines':one,
            'chebyshev_C_interval':scaled(cl,cu),'analytic_error_upper':str(error),
            'analytic_margin':str(margin),'conclusion':'theta(x) <= (553/500)*x for every real x>=1'}

def div_data(P:list[int])->list[tuple[int,int]]:
    out=[(1,0)]
    for j,p in enumerate(P):out += [(d*p,m|(1<<j)) for d,m in out]
    require(len(out)==2**len(P) and len({d for d,_ in out})==len(out),'divisor enumeration')
    return out

def factorial_budget(P:list[int],divs:list[tuple[int,int]],k:int)->tuple[F,dict]:
    x=2**k;Q=math.prod(P);D=32*Q
    cs={p:0 for p in P};c0=0;heads=[]
    for a,bpow in [(1,0),(31,5),(1,5)]:
        head=0;tail=0
        for d,mask in divs:
            if a*x >= (2**bpow)*d:
                w=D;sign=1;head+=1
            else:
                w=(a*x*D)//((2**bpow)*d)
                require(w*((2**bpow)*d)==a*x*D,'nonintegral factorial weight')
                sign=-1;tail+=1
            c0+=w;v=sign*w
            cs[2]+=v*(k-bpow)
            if a==31:cs[31]+=v
            bits=mask
            while bits:
                low=bits & -bits;j=low.bit_length()-1
                cs[P[j]]-=v;bits-=low
        heads.append({'a':a,'denominator_exponent':bpow,'y_ge_1_terms':head,'y_lt_1_terms':tail})
    l,u=linear_interval(F(c0,D*x),{q:F(v,D*x) for q,v in cs.items()})
    require(l>0,'positive factorial bound')
    return u,{'x_exponent':k,'denominator':str(D*x),'constant_numerator':str(c0),
              'log_coefficient_numerators':{str(q):str(v) for q,v in cs.items()},
              'head_tail_counts':heads,'normalized_error_interval':scaled(l,u)}

def high_power_budget(levels:list[int],M:int,K:int,k:int)->tuple[F,dict]:
    x=2**k;groups=[(1,1)]+[(d,1) for d in levels]+[(K,M-len(levels))]
    total=F(0);rows=[]
    for D,w in groups:
        Y=F(x,D);b=floor_log2(Y)
        require(b>=4,'dyadic all-future monotonicity requires Y>=16')
        q1=sum((root_upper(Y,e)/Y for e in range(2,b+1)),F(0))
        Z=F(2**(b+1))
        q2=sum((root_upper(Z,e)/Z for e in range(2,b+2)),F(0))
        v=max(q1,q2);total+=C*w*v/D
        rows.append({'D':D,'multiplicity':w,'floor_log2_Y':b,'chosen_branch':'at_Y' if q1>=q2 else 'next_dyadic',
                     'q_upper':str(v)})
    return total,{'x_exponent':k,'root_scale':2**40,'normalized_uniform_upper':str(total),
                  'normalized_uniform_interval':scaled(total,total),'groups':rows}

def kernel_error()->dict:
    par=json.loads((ROOT/'sources/R3_PARAMETERS.json').read_text())
    ker=json.loads((ROOT/'sources/R3_KERNEL.json').read_text())
    P=par['auxiliary_primes'];M=ker['M'];K=ker['K'];levels=ker['levels']
    require(M==12288 and K==2**26 and len(levels)==36,'frozen kernel shape')
    require(all(trial(p) for p in P) and len(set(P))==17,'auxiliary primes')
    divs=div_data(P);density=F(math.prod(p-1 for p in P),math.prod(P))
    eL,eU=linear_interval(F(0),{2:F(5),31:-F(31,32)})
    bL,bU=density*eL,density*eU
    B=sum((F(1,d) for d in levels),F(0))+F(M-len(levels),K)
    dl,du=bL-C*B,bU-C*B
    lower=F(233,500000)
    require(dl>lower,'new kernel surplus')
    results=[]
    for k,target in [(30,F(1,20000)),(32,F(1,4096))]:
        ef,fc=factorial_budget(P,divs,k);ep,pc=high_power_budget(levels,M,K,k)
        margin=lower-ef-ep-target
        require(margin>0,f'all-real threshold 2^{k}')
        results.append({'exponent':k,'target_mass_per_x':str(target),'factorial_certificate':fc,
                        'power_certificate':pc,'strict_margin_over_target':scaled(margin,margin),
                        'strict_margin_fraction':str(margin)})
    return {'adoption':'R3 profile is hash-pinned and adopted; its finite enumeration was not rerun',
            'main_interval':scaled(bL,bU),'B':str(B),'new_surplus_interval':scaled(dl,du),
            'new_surplus_lower':str(lower),'new_thresholds':results}

def check_chain_data(data:dict,second_primality:bool=True)->dict:
    ps=data['primes'];lo=data['lower_real_endpoint'];hi=data['upper_real_endpoint']
    require(lo==9768 and hi==2**30,'chain endpoints')
    require(data['alpha_numerator']==31 and data['alpha_denominator']==32,'chain ratio')
    require(len(ps)>1 and all(a<b for a,b in zip(ps,ps[1:])),'ordered chain')
    require(ps[0]<=lo and 31*lo<32*ps[0],'left endpoint')
    require(31*hi<32*ps[-1]<=32*hi,'right endpoint')
    require(all(31*q<32*p for p,q in zip(ps,ps[1:])),'real interval overlaps')
    for p in ps:require(trial(p),f'composite chain member {p}')
    small=primes_sieve(math.isqrt(ps[-1])) if second_primality else []
    if second_primality:
        for p in ps:
            for q in small:
                if q*q>p:break
                require(p%q!=0,f'second primality check {p}')
    return {'nodes':len(ps),'first_prime':ps[0],'last_prime':ps[-1],
            'last_integer_endpoint':(32*ps[-1]-1)//31,
            'minimum_overlap_integer_margin':min(32*p-31*q for p,q in zip(ps,ps[1:])),
            'prime_tests':'complete odd trial division and all small-prime division',
            'lower_real_endpoint':lo,'upper_real_endpoint':hi}

def chain_and_rows()->dict:
    data=json.loads((ROOT/'certificates/prime_chain.json').read_text())
    result=check_chain_data(data);ps=data['primes'];rows=[]
    for n,i in [(9768,4883),(2**29,2**25),(2**30-1,2**25)]:
        p=ps[bisect.bisect_right(ps,n)-1]
        require(i>=4883 and 2*(i+1)<=n<=32*i,'actual original row')
        require(p>n-i>n/2 and 31*n<32*p and p<=n,'actual p chain')
        vals=[]
        for j in sorted(set([i+1,n//3,n//2])):
            if j<=i:continue
            require(vp_choose(n,i,p)==vp_choose(n,j,p)==1,'full valuation check')
            vals.append({'j':j,'v_choose_i':1,'v_choose_j':1})
        rows.append({'n':n,'i':i,'p':p,'source_label':n//p,'source_remainder':n%p,
                     'complete_valuation_checks':vals,'whole_row_reason':'p>n-i>n/2 and r<i<j'})
    bad=json.loads(json.dumps(data));bad['primes'][2]=bad['primes'][1]+2
    # Use a certain composite for a definitive negative primality fixture.
    bad2=json.loads(json.dumps(data));bad2['primes'][0]=9765
    rejected=False
    try:check_chain_data(bad2,False)
    except AssertionError:rejected=True
    require(rejected,'composite fixture must fail')
    return {'coverage':result,'actual_rows':rows,'composite_chain_fixture_rejected':True}

def gate(k:int,T:int,coefficient:F,shift:int,old:bool=False)->dict:
    I=2**k;ll=k*L2;lu=k*U2
    require(ll>shift,'positive gate denominator')
    u=coefficient/(ll-shift)
    # L/(L-s) decreases in L; log^2/I uses the upper logarithm.
    v=coefficient*ll/(ll-shift)
    if old:u+=64*lu/I;v+=64*lu*lu/I
    a=F(1,3)-F(5,3*I)-u
    tL,_=logs(T);_,err=logs(F(T,T-1))
    m=a*tL-v-3*lu/I-err
    require(a>0 and m>0,'A-gate')
    return {'i_exponent':k,'T':T,'coefficient':str(coefficient),'log_denominator_shift':shift,
            'old_64_log_error':old,'margin':scaled(m,m)}

def gates_and_audit()->dict:
    # This only rechecks the adopted numerical gate inequalities, not the old
    # source theorem, normalization proof, model, or C theorem.
    old=[gate(k,T,F(111,100),3,True) for k,T in [(32,128),(64,64),(1024,32),(16384,31)]]
    for r in old:r['status']='R2 hypotheses preserved; scalar arithmetic locally rechecked; not new acceptance'
    new=[gate(48,64,C,2),gate(512,32,C,2)]
    # Exact initial bound and comparison for Abel M(x) <= x/(log x-2).
    anchor=F(3,2)*(2+sum((F(2**k,k) for k in range(1,6)),F(0)))
    require(anchor==F(143,5) and anchor<F(320,11),'Abel anchor at 64')
    require(6*L2>4 and 6*U2-2<F(11,5),'Abel positive domain')
    require(4096*2**48==2**60 and 64*2**512==2**518,'finite height composition')
    return {'adopted_R2_gate_audit':old,'new_A_gates':new,
            'new_pi_conclusion':'pi(x) <= (553/500)*x/(log(x)-2) for every real x>=64',
            'abel_anchor':str(anchor),
            'normalization_status':'fixed original NC=>A declaration read; no Lean run, no full-chain revalidation',
            'new_full_paper_indices':'all i>=2^512, every legal n,j',
            'remaining_high_tail':'4883<=i<2^512, 32*i<n<2^518; finite bottom above 32*i not executed'}

def main():
    result={'input_member_pins':check_pins(),'global_theta':global_theta(),
            'layered_kernel_error':kernel_error(),'sparse_terminal':chain_and_rows(),
            'normalization_audit_and_gates':gates_and_audit(),
            'evidence_level':'new paper and exact same-session computation; adopted R2/R3 source contracts; no Lean or external review'}
    path=ROOT/'certificates/expected_results.json'
    if '--write-expected' in sys.argv:path.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    else:require(result==json.loads(path.read_text()),'replay differs from expected results')
    print('PASS: E-R4 new exact certificates (two prefix engines; layered all-power bounds; full sparse terminal; A-contract arithmetic).')
    print(json.dumps(result,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
