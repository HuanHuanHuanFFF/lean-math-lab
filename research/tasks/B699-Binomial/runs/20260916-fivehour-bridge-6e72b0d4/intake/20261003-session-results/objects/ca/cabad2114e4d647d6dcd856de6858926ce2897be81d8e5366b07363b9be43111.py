#!/usr/bin/env python3
"""E5 exact local certificates: failed R64 kernel and new complete-power/A gate.
No Lean, network, repository writes, or execution of old-round verifiers.
Python >=3.10, a C++17 compiler, and <=~350 MB per kernel subprocess.
"""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
if not __debug__:raise RuntimeError('Run without Python -O.')
from pathlib import Path
from fractions import Fraction as F
from array import array
import hashlib,json,math,os,struct,subprocess,tempfile
from exact import L2,U2,logs,scaled,linear_interval,trial,primes_sieve,primes_segmented
ROOT=Path(__file__).resolve().parents[1]
C=F(10769,10000)
SCALE=10**9

def need(ok:bool,msg:str)->None:
    if not ok:raise AssertionError(msg)
def sha(b:bytes)->str:return hashlib.sha256(b).hexdigest()
def ceil(x:F)->int:return -((-x.numerator)//x.denominator)

def input_pins()->list[dict]:
    data=json.loads((ROOT/'sources/INPUT_PINS.json').read_text())
    for p in data:need(sha((ROOT/p['path']).read_bytes())==p['sha256'],p['path'])
    need(sha((ROOT/'sources/OVERVIEW.md').read_bytes())=='96f92ba7061e8facb774bdf2d42c5d445f3f1a63564ca0e2b71ceaca08d44066','frozen Overview')
    need((ROOT/'scripts/exact.py').read_bytes()==(ROOT/'sources/R4_exact.py').read_bytes(),'exact utility provenance')
    return [{'path':p['path'],'sha256':p['sha256']} for p in data]

def kernel64()->dict:
    params=(ROOT/'certificates/kernel64_parameters.txt').read_bytes()
    need(params.split()[:4]==[b'64',b'67108864',b'7',b'17'],'kernel parameters')
    with tempfile.TemporaryDirectory(prefix='b699-e5-kernel-') as td:
        exe=Path(td)/'kernel'
        comp=subprocess.run([os.environ.get('CXX','g++'),'-O2','-std=c++17',str(ROOT/'scripts/kernel_check.cpp'),'-o',str(exe)],capture_output=True)
        need(comp.returncode==0,comp.stderr.decode(errors='replace'))
        outs=[]
        for mode in ['sieve','wheel']:
            p=subprocess.run([str(exe),mode],input=params,capture_output=True)
            need(p.returncode==0,p.stderr.decode(errors='replace'))
            outs.append(json.loads(p.stdout))
        need(outs[0]==outs[1],'R64 independent count engines')
        ker=outs[0]
    need(ker==json.loads((ROOT/'certificates/kernel64_expected.json').read_text()),'R64 expected profile')
    P=[2,3,5,7,11,13,17,19,23,29,31,73,103,109,197,229,1307]
    need(all(trial(p) for p in P),'actual auxiliary primes')
    density=F(math.prod(p-1 for p in P),math.prod(P))
    eL,eU=linear_interval(F(0),{2:F(6),63:-F(63,64)})
    bL,bU=density*eL,density*eU
    B=sum((F(1,d) for d in ker['levels']),F(0))+F(ker['M']-len(ker['levels']),ker['K'])
    old=F(553,500)
    # Actual value at u=37, independently counted over the complete finite set.
    a=lambda t:sum(all(m%p for p in P) for m in range(1,t+1))
    g37=a(37)-a(63*37//64)-a(37//64)
    need(g37==1 and ker['levels'][0]==37,'first extra positive level')
    need(bU-old/F(37)<0 and bU-C/F(37)<0,'single-layer obstruction')
    # Every valid global theta(x)<=c*x requires c>=theta(3)/3=log(6)/3.
    universal_upper=bU-logs(6)[0]/111
    need(universal_upper<0,'obstruction for every valid global scalar c')
    return {'full_real_profile':ker,'main_b_interval':scaled(bL,bU),'B_exact':str(B),
            'delta_at_R4_coefficient':scaled(bL-old*B,bU-old*B),
            'single_layer_delta_at_R4_coefficient':scaled(bL-old/37,bU-old/37),
            'single_layer_delta_at_new_coefficient':scaled(bL-C/37,bU-C/37),
            'valid_global_c_obstruction_upper':scaled(universal_upper,universal_upper),
            'G64_at_37':g37,
            'verdict':'FAIL for this fixed full prime set and c*B layer pricing; not failure of the actual prime-interval statement',
            'two_integer_engines_agree':True,'no_SOURCE64_chain_generated':True}

def weight_table()->dict[tuple[int,int],int]:
    out={}
    for b in range(1,23):
        for m in range(256,513):
            _,u=logs(F(m,256));out[b,m]=ceil(SCALE*(b*U2+u))
    return out

def prime_weight(p:int,tab:dict)->int:
    b=p.bit_length()-1;m=(256*p+(1<<b)-1)//(1<<b)
    need(256<=m<=512 and (m-1)*(1<<b)<256*p<=m*(1<<b),'log bucket ceiling')
    return tab[b,m]

def psi_stats(events)->dict:
    total=0;count=0;mn=None;argmin=None;mxnum=0;mxden=1;argmax=None
    h=hashlib.sha256();previous=0
    for q,w in events:
        need(q>previous and w>0,'ordered actual prime-power event');previous=q
        total+=w;count+=1
        margin=10769*SCALE*q-10000*total
        need(margin>0,'complete psi prefix inequality')
        if mn is None or margin<mn:mn,argmin=margin,q
        if total*mxden>mxnum*q*SCALE:mxnum,mxden,argmax=total,q*SCALE,q
        h.update(struct.pack('<Iq',q,w))
    return {'event_count':count,'sum_log_upper_weights':total,
            'min_integer_margin':mn,'minimum_at':argmin,
            'maximum_ratio':str(F(mxnum,mxden)),'maximum_at':argmax,
            'ordered_event_weight_sha256_le_u32_i64':h.hexdigest()}

def complete_power_prefix()->dict:
    N=2**22;tab=weight_table();p1=primes_sieve(N);events=[];powers1={}
    for p in p1:
        w=prime_weight(p,tab);q=p;e=1
        while q<=N:
            events.append((q,w));powers1[e]=powers1.get(e,0)+1;q*=p;e+=1
    events.sort();first=psi_stats(events)
    dense=array('q',[0])*(N+1);pcount=0;powers2={}
    for p in primes_segmented(N):
        pcount+=1;w=prime_weight(p,tab);q=p;e=1
        while q<=N:
            need(dense[q]==0,'unique underlying actual prime at each prime-power event')
            dense[q]=w;powers2[e]=powers2.get(e,0)+1;q*=p;e+=1
    second=psi_stats((q,w) for q,w in enumerate(dense) if w)
    need(first==second and len(p1)==pcount and powers1==powers2,'independent complete prime-power enumeration')
    return {'real_cutoff':N,'log_scale':SCALE,'mantissa_buckets':256,
            'log_table_sha256':sha(json.dumps([[b,m,w] for (b,m),w in sorted(tab.items())],separators=(',',':')).encode()),
            'prime_count':pcount,'power_exponent_counts':{str(k):v for k,v in sorted(powers1.items())},
            'two_engines_result':first,
            'all_real_return':'psi is constant between consecutive actual prime-power events; c*x is increasing'}

def return_window()->dict:
    # Only the new pointwise mask is tested; old 30-period completeness is adopted.
    H=lambda n:n-n//2-n//3-n//5+n//30
    masks=[]
    for n in range(1,10):
        lhs=1-H(n);rhs=int(n>=6)-int(n>=7)+int(n>=10)
        need(lhs<=rhs,'new returned window mask')
        masks.append({'u_left':n,'H':H(n),'upper_complement':rhs})
    cl,cu=linear_interval(F(0),{2:F(7,15),3:F(3,10),5:F(1,6)})
    need(cu<F(9213,10000) and U2<F(7,10),'constants for induction')
    margin=F(11,15)*C-F(6,7)*F(9213,10000)-10*(1+F(7*22,10))/2**22
    need(margin==F(127423,68812800000) and margin>0,'all-real strong-induction slack')
    limL,limU=F(90,77)*cl,F(90,77)*cu
    return {'coefficient':str(C),'new_complement_mask':masks,
            'recurrence':'psi(x) <= T(x) + psi(x/6) - psi(x/7) + psi(x/10)',
            'C0_interval':scaled(cl,cu),'induction_slack_exact':str(margin),
            'induction_slack_interval':scaled(margin,margin),
            'recurrence_leading_constant_limit':scaled(limL,limU),
            'conclusion':'psi(x)<=10769*x/10000 for all real x>=1, hence theta(x)<=10769*x/10000'}

def abel_three_terms()->dict:
    m=256;ks=20;scale=10**15
    start=ceil(2*scale/L2)
    total=F(start,scale);rows=[]
    for k in range(1,ks):
        row=[]
        for j in range(m):
            ll=k*L2+logs(F(m+j,m))[0]
            need(ll>0,'positive integral denominator')
            q=ceil(scale/ll);row.append(q);total+=F(2**k,m)*F(q,scale)
        rows.append(row)
    U=ks*U2; fL=F(2**ks)*(1/U+1/U**2+3/U**3)
    margin=fL-total
    need(margin>127 and ks*L2>9,'Abel supersolution anchor and all-future derivative')
    certificate={'anchor_x':2**ks,'subintervals_per_dyadic_slab':m,'reciprocal_scale':scale,
                 'initial_2_over_log2_upper_numerator':start,'reciprocal_upper_numerators':rows}
    need(certificate==json.loads((ROOT/'certificates/abel_anchor_expected.json').read_text()),'Abel anchor certificate')
    return {'anchor_x':2**ks,'total_subintervals':(ks-1)*m,
            'anchor_integral_upper_exact':str(total),'anchor_margin_interval':scaled(margin,margin),
            'anchor_margin_lower':127,
            'derivative_of_supersolution_minus_M':'(log(x)-9)/log(x)^4 > 0 for x>=2^20',
            'new_pi_upper':'(10769/10000)*x*(1/log(x)+1/log(x)^2+3/log(x)^3), x>=2^20'}

def gate(k:int,T:int)->tuple[F,dict]:
    I=2**k;ll=k*L2;lu=k*U2
    u=C*(1/ll+1/ll**2+3/ll**3)
    v=C*(1+1/ll+3/ll**2)
    a=F(1,3)-F(5,3*I)-u
    margin=a*logs(T)[0]-v-3*lu/I-logs(F(T,T-1))[1]
    # An upper endpoint interval independently diagnoses the failed predecessor.
    uL=C*(1/lu+1/lu**2+3/lu**3);vL=C*(1+1/lu+3/lu**2)
    aU=F(1,3)-F(5,3*I)-uL
    upper=aU*logs(T)[1]-vL-3*ll/I-logs(F(T,T-1))[0]
    return margin,{'i_lower_power_of_two':k,'T':T,'i_upper':None,
                   'rho_upper_interval':scaled(uL,u),'left_coefficient_lower_positive':a>0,
                   'uniform_margin_interval':scaled(margin,upper),
                   'uniform_return':'all i>=2^k and n/i>=T, not endpoint-only or grid sampling'}

def gates()->dict:
    rows=[]
    for k,T in [(151,32),(30,64)]:
        low,row=gate(k,T);need(low>0 and row['left_coefficient_lower_positive'],'new original A continuous gate');rows.append(row)
    _,bad=gate(150,32)
    need(bad['uniform_margin_interval']['upper_ceil']<0,'scalar predecessor is not certified')
    need(32*2**151==2**156 and 64*2**151==2**157 and 4096*2**30==2**42,'exact composition heights')
    return {'new_continuous_rows':rows,'uncertified_predecessor':bad,
            'adopted_original_A':'NC_i and i>=1000 imply A for actual inclusive pi(i-1), same n,j',
            'completed_new_i_interval_relative_to_R4':'[2^151,2^512), all legal n,j',
            'whole_paper_indices_after_SOURCE32_ALL':'all i>=2^151',
            'remaining_route_rectangle':'4883<=i<2^151, 32*i<n<2^157; not terminated',
            'new_Lean_or_project_acceptance':0,'actual_counterexamples':0}

def main():
    result={'input_member_pins':input_pins(),'R64_fixed_kernel_failure':kernel64(),
            'complete_prime_power_prefix':complete_power_prefix(),'new_returned_window_bound':return_window(),
            'new_Abel_comparison':abel_three_terms(),'original_A_continuous_coverage':gates(),
            'evidence_level':'new author paper proof and local exact computation; frozen dependencies adopted, not reaccepted'}
    p=ROOT/'certificates/expected_results.json'
    if '--write-expected' in sys.argv:p.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    else:need(result==json.loads(p.read_text()),'new exact replay differs from expected results')
    print('PASS: R64 fixed-kernel obstruction; two complete-power prefix engines; all-real return-window/Abel/A certificates.')
    print(json.dumps(result,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
