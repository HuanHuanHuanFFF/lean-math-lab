from collections import defaultdict
from datetime import datetime, timezone
from fractions import Fraction
from math import comb, gcd, isqrt
from pathlib import Path
import ctypes, hashlib, json, os, platform, shutil, time

ROOT=Path(__file__).resolve().parent
RUN=ROOT.parents[1]
start=time.perf_counter()

def isprime(n):
    return n>=2 and all(n%d for d in range(2,isqrt(n)+1))

def v2(n):
    return (n & -n).bit_length()-1

def oddpart(n):
    return n >> v2(n)

def valuation(n,p):
    e=0
    while n%p==0:
        n//=p; e+=1
    return e

class MemoryStatus(ctypes.Structure):
    _fields_=[('dwLength',ctypes.c_ulong),('dwMemoryLoad',ctypes.c_ulong),('ullTotalPhys',ctypes.c_ulonglong),('ullAvailPhys',ctypes.c_ulonglong),('ullTotalPageFile',ctypes.c_ulonglong),('ullAvailPageFile',ctypes.c_ulonglong),('ullTotalVirtual',ctypes.c_ulonglong),('ullAvailVirtual',ctypes.c_ulonglong),('ullAvailExtendedVirtual',ctypes.c_ulonglong)]
mem=MemoryStatus(); mem.dwLength=ctypes.sizeof(mem)
memok=bool(ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(mem)))
resources={'time_utc':datetime.now(timezone.utc).isoformat(),'memory_status_ok':memok,'available_physical_bytes':mem.ullAvailPhys,'logical_cpus':os.cpu_count(),'D_free_bytes':shutil.disk_usage('D:/').free,'platform':platform.platform(),'workload':'serial standard-library exact integer arithmetic; no Lean'}

primes=[p for p in range(3,32,2) if isprime(p)]
rows=set(); counters={'original_parameters':0,'extension_parameters':0,'valuation_checks':0,'oddpart_cubic_checks':0,'row128_checks':0}
min_ratio=None; min_parameters=None

def check_parameter(p,a,f,d,k,family):
    global min_ratio,min_parameters
    q=p**d; s=sum(q**h for h in range(k)); n=a*p**f*s
    counters[family+'_parameters']+=1
    expected=0 if k%2 else v2(q+1)+v2(k)-1
    assert v2(s)==expected,(p,d,k,'valuation')
    counters['valuation_checks']+=1
    m=oddpart(n)
    assert m**4>3*n,(p,a,f,d,k,n,m,'cubic')
    counters['oddpart_cubic_checks']+=1
    if n>=8 and n%4==0:
        delta=3 if valuation(n,3)==1 else 1
        lam=3 if valuation(n-1,3)==1 else 1
        mu=3 if valuation((n-2)//2,3)==1 else 1
        kappa=delta**3*lam**3*mu**2
        assert kappa in (1,9,27)
        assert 128*m**4*(n-1)**3>=kappa*n**4,(p,a,f,d,k,'ROW128')
        counters['row128_checks']+=1
    if 8<=n<=5000: rows.add(n)
    ratio=Fraction(m**4,n)
    if min_ratio is None or ratio<min_ratio:
        min_ratio=ratio; min_parameters=[p,a,f,d,k,n,m]

for p in primes:
    for a in range(1,p):
        for f in range(1,4):
            for d in range(1,8):
                for k in range(1,11): check_parameter(p,a,f,d,k,'original')
for p in (3,5,7):
    for d in range(1,5):
        q=p**d
        coeffs=set(range(1,min(q,65)))|{q-1}
        t=1
        while t<q: coeffs.add(t); t*=2
        for a in sorted(coeffs):
            for f in range(1,4):
                for k in range(2,9): check_parameter(p,a,f,d,k,'extension')

pair_count=0
for n in sorted(rows):
    b=1; b3=comb(n,3)
    for j in range(1,n//2+1):
        b=b*(n-j+1)//j
        if j>=4:
            h=gcd(b,b3)
            assert oddpart(h)>1,(n,j,'original binomial target')
            pair_count+=1

# A separate check of explicit prime witnesses at the four boundary rows.
boundary={}
for n,p in ((12,11),(24,23),(240,239)):
    assert isprime(p) and comb(n,3)%p==0
    assert all(comb(n,j)%p==0 for j in range(4,n//2+1))
    boundary[str(n)]={'prime':p,'all_legal_j_verified':True}
roots=[j for j in range(1343) if j*(j-1)%1343==0]
assert roots==[0,1,238,1106]
assert gcd(1344,238)==14 and 7**4<3*1344<8**4
assert all(oddpart(gcd(comb(1344,3),comb(1344,j)))>1 for j in range(4,673))
boundary['1344']={'W1_roots_mod_1343':roots,'gcd_at_238':14,'all_legal_j_verified':True}

# Independent sparse Z[j,k] arithmetic: no author symbolic code or output loaded.
def add(*polys):
    r=defaultdict(int)
    for p in polys:
        for e,c in p.items(): r[e]+=c
    return {e:c for e,c in r.items() if c}
def scale(p,a): return {e:a*c for e,c in p.items() if a*c}
def mul(p,q):
    r=defaultdict(int)
    for (i,j),a in p.items():
        for (k,l),b in q.items():r[i+k,j+l]+=a*b
    return {e:c for e,c in r.items() if c}
def power(p,n):
    r={(0,0):1}
    for _ in range(n):r=mul(r,p)
    return r
ONE={(0,0):1}; J={(1,0):1}; K={(0,1):1}
def build(j,k):
    n=add(j,k); x=mul(j,k)
    poly=mul(mul(power(x,2),add(x,scale(n,-1),ONE)),add(power(n,2),scale(n,-1),scale(x,-3)))
    den=mul(mul(power(add(n,scale(ONE,-1)),4),power(add(n,scale(ONE,-3)),2)),add(n,scale(ONE,-4)))
    return n,poly,den
n,P,D=build(J,K)
def shift(p,x,y):
    r=defaultdict(int)
    for (i,j),c in p.items():
        for a in range(i+1):
            for b in range(j+1):r[a,b]+=c*comb(i,a)*comb(j,b)*x**(i-a)*y**(j-b)
    return {e:c for e,c in r.items() if c}
zero_checks=[]
for row,mult in ((1,4),(3,2),(4,1)):
    for b in range(row+1):
        shifted=shift(P,b,row-b)
        for a in range(mult):
            for c in range(mult-a):
                value=shifted.get((a,c),0)
                assert value==0,(row,b,a,c,value)
                zero_checks.append({'row':row,'point':[b,row-b],'monomial':[a,c],'coefficient':value})
assert len(zero_checks)==37
jp=add(J,scale(ONE,6)); kp=add(J,K,scale(ONE,6))
np,pp,dp=build(jp,kp)
gap=add(mul(np,dp),scale(pp,-144))
assert gap.get((0,0),0)>0 and all(c>0 for c in gap.values())
assert max(sum(e) for e in gap)==8
# Independent check of H02 small-prime costs for every relevant residue.
costs=[]
for residue in range(72):
    role=None
    if residue%8==0 and residue%9==2: role='2_at_0_3_at_2'
    if residue%9==0 and residue%8==2: role='3_at_0_2_at_2'
    if role:
        z=residue
        while z<12:z+=72
        base=[]
        for r in (1,3,4):base.append(2**valuation(z-r,2)*3**valuation(z-r,3))
        expected=[1,1,4] if role=='2_at_0_3_at_2' else [1,3,2]
        assert base==expected,(z,role,base)
        base_cost=base[0]**4*base[1]**2*base[2]
        costs.append({'role':role,'residue_mod_72':residue,'small_parts_without_isolated_5':base,'base_cost':base_cost,'max_with_single_5':base_cost*5**4})
assert sorted(x['max_with_single_5'] for x in costs)==[2500,11250]

source_paths=[RUN/'notes/nc3/PROOFS.md',RUN/'notes/nc3/BLOCK_EXTENSION.md',RUN/'notes/main/02-h02-gcd-fourth.md']
hashes={str(p.relative_to(RUN)).replace('\\','/'):{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in source_paths}
coeff_output={'domain':'j=6+a, k=6+a+d, a,d>=0','nD_minus_144P':[{'a_degree':e[0],'d_degree':e[1],'coefficient':c} for e,c in sorted(gap.items())],'integer_Taylor_zero_checks':zero_checks}
(ROOT/'independent_h02_coefficients.json').write_text(json.dumps(coeff_output,indent=2)+'\n',encoding='utf-8')
output={'reviewer':'/root/reviewer','resources':resources,'source_hashes':hashes,'status':'all bounded checks passed','nc3':{'grid':{'original_P':primes,'original_A':'1..P-1','original_f':'1..3','original_d':'1..7','original_k':'1..10','extension_P':[3,5,7],'extension_d':'1..4','extension_A':'1..min(P^d-1,64), P^d-1, all powers of 2 below P^d','extension_f':'1..3','extension_k':'2..8'},'counters':counters,'min_m4_over_n':str(min_ratio),'min_parameters_P_A_f_d_k_n_m':min_parameters,'distinct_direct_rows':len(rows),'direct_row_cap':5000,'direct_original_binomial_pairs':pair_count,'boundary_checks':boundary},'h02':{'Taylor_zero_checks':len(zero_checks),'positive_gap_coefficients':len(gap),'gap_constant':gap[(0,0)],'gap_degree':8,'cost_roles':costs,'global_algebra_certificate':'independent_h02_coefficients.json','constant_identity':'11250/144 = 625/8'},'limitations':['Finite NC3 samples do not prove the infinite theorem; independent paper argument is separate.','H02 polynomial coefficient identity is global on a,d>=0; NC5 hypotheses and prime-power transfer still require the accompanying paper proof.','No Lean or human peer review performed.'],'elapsed_seconds':time.perf_counter()-start}
(ROOT/'independent_checks.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':output['status'],'seconds':output['elapsed_seconds'],'nc3_counters':counters,'direct_rows':len(rows),'direct_pairs':pair_count,'min_m4_over_n':str(min_ratio),'h02_zero_checks':len(zero_checks),'h02_positive_coefficients':len(gap),'h02_gap_constant':gap[(0,0)]}))
