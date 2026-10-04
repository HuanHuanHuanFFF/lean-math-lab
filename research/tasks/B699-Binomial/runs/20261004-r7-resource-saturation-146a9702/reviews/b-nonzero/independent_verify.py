"""Independent standard-library verifier: original sparse sources, Gaussian determinants,
explicit quotient identities. Never imports or executes the author's checker.
Run from the fixed worktree root with python -B <this file>.
"""
from pathlib import Path
from fractions import Fraction as Q
from math import gcd, isqrt
from collections import defaultdict
from datetime import datetime, timezone
import json, hashlib, time, ctypes, os, sys, shutil
ROOT=Path.cwd().resolve()
assert ROOT==Path('C:/Users/幻/.codex/worktrees/b699-intake-1003/Math').resolve()
RUN=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'reviews/b-nonzero'
AUTHOR=RUN/'experiments/b'
SRC=ROOT/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results'
ARCH='080d9a2d955471a9f4cb56594cf439e67672141d4caf2a3b9ea98adc2105389c'
start=time.monotonic(); checks=[]; pins={}; provenance=[]
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def read(p, expected=None):
    b=p.read_bytes(); h=hashlib.sha256(b).hexdigest()
    if expected is not None: assert h==expected,(str(p),h,expected)
    pins[str(p.relative_to(ROOT))]={'sha256':h,'bytes':len(b)}
    return json.loads(b)
def check(label, **kw):
    row={'check':label,'status':'PASS',**kw}; checks.append(row); print(json.dumps(row),flush=True)
def save(name,data): (OUT/name).write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
def clean(p): return {e:c for e,c in p.items() if c}
def parse(terms, dim, allow_four=False):
    p={}
    for exp,coef in terms:
        assert all(type(a) is int and a>=0 for a in exp)
        if allow_four:
            assert len(exp)==4 and exp[3]==0
            exp=exp[:3]
        assert len(exp)==dim
        exp=tuple(exp); assert exp not in p
        c=Q(coef); assert c
        p[exp]=c
    return p
def plus(a,b,scale=Q(1)):
    r=dict(a)
    for e,c in b.items(): r[e]=r.get(e,Q(0))+scale*c
    return clean(r)
def times(a,b):
    r=defaultdict(Q)
    for e,c in a.items():
        for f,d in b.items():
            assert len(e)==len(f)
            r[tuple(x+y for x,y in zip(e,f))]+=c*d
    return clean(r)
def scalar(a,c): return clean({e:v*c for e,v in a.items()})
def power(a,n,dim):
    r={(0,)*dim:Q(1)}
    for _ in range(n): r=times(r,a)
    return r
def degree(p,i): return max((e[i] for e in p),default=-1)
def terms(p): return [[list(e),str(c)] for e,c in sorted(p.items(),reverse=True)]
def divide_t(poly, divisor):
    """Divide separately in each z coefficient over Q[t], returning full quotient/remainder."""
    assert all(j==0 for i,j in divisor)
    d=degree(divisor,0); lc=divisor[(d,0)]; quotient={}; remainder={}
    slices={}
    for (i,j),c in poly.items(): slices.setdefault(j,{})[i]=c
    for j,coeffs in slices.items():
        a=dict(coeffs); q={}
        while a and max(a)>=d:
            k=max(a)-d; v=a[k+d]/lc; q[k]=q.get(k,Q(0))+v
            for (i,_),c in divisor.items():
                pos=i+k; a[pos]=a.get(pos,Q(0))-v*c
                if not a[pos]: del a[pos]
        quotient.update({(i,j):c for i,c in q.items() if c})
        remainder.update({(i,j):c for i,c in a.items() if c})
    assert plus(times(quotient,divisor),remainder)==poly
    return quotient,remainder
class Memory(ctypes.Structure):
    _fields_=[('length',ctypes.c_ulong),('load_percent',ctypes.c_ulong),('physical_total',ctypes.c_ulonglong),('physical_available',ctypes.c_ulonglong),('page_total',ctypes.c_ulonglong),('page_available',ctypes.c_ulonglong),('virtual_total',ctypes.c_ulonglong),('virtual_available',ctypes.c_ulonglong),('extended_available',ctypes.c_ulonglong)]
def memory():
    m=Memory(); m.length=ctypes.sizeof(m)
    assert ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(m))
    return {k:int(getattr(m,k)) for k,_ in m._fields_}
class ProcessMemory(ctypes.Structure):
    _fields_=[('cb',ctypes.c_ulong),('PageFaultCount',ctypes.c_ulong)]+[(k,ctypes.c_size_t) for k in ['PeakWorkingSetSize','WorkingSetSize','QuotaPeakPagedPoolUsage','QuotaPagedPoolUsage','QuotaPeakNonPagedPoolUsage','QuotaNonPagedPoolUsage','PagefileUsage','PeakPagefileUsage']]
def process_memory():
    m=ProcessMemory();m.cb=ctypes.sizeof(m)
    ctypes.windll.kernel32.GetCurrentProcess.restype=ctypes.c_void_p
    assert ctypes.windll.psapi.GetProcessMemoryInfo(ctypes.c_void_p(ctypes.windll.kernel32.GetCurrentProcess()),ctypes.byref(m),m.cb)
    return {k:int(getattr(m,k)) for k,_ in m._fields_}
resource_start=memory(); resource_start.update(logical_cpus_visible=os.cpu_count(),disk_free_bytes=shutil.disk_usage(ROOT).free)
assert resource_start['physical_available']>=200_000_000
for path,h in [(RUN/'notes/b/03-E-nonzero-proof.md','080aca0fb4fcda95ce5b21452142044404754c247c45cf01276393dc071922e3'),(AUTHOR/'verify_Ezero.py','4f25489359788a2beac9a5de02d3b464469f78dc13dd4a1d395d576ede0da240')]:
    assert sha(path)==h; pins[str(path.relative_to(ROOT))]={'sha256':h,'bytes':path.stat().st_size}
manifest=read(SRC/'MEMBERS.json'); selected={}
for entry in manifest['members']:
    if entry['archive_sha256']==ARCH and entry.get('retained_path'):
        name=entry['name'].split('/',1)[1]
        if name in ['inputs/generic.json']+[f'certificates/colon_{i}.json' for i in range(5)]:
            assert name not in selected
            selected[name]=entry
del manifest
assert len(selected)==6
def source(name):
    e=selected[name]; p=SRC/e['retained_path']; d=read(p,e['sha256'])
    provenance.append({'member':name,'retained_path':e['retained_path'],'sha256':e['sha256'],'bytes':p.stat().st_size})
    return d
generic=source('inputs/generic.json'); assert generic['vars']==['u','y','r','L']
original={n:parse(generic['B5'] if n=='P5' else generic[n],3,True) for n in ['P5','N','K']}
del generic
for i in range(5):
    data=source(f'certificates/colon_{i}.json'); assert data['i']==i
    original[f'V{i}']=parse(data['V'],3)
assert all(c.denominator==1 for p in original.values() for c in p.values())
check('source_hashes_coordinate_order_no_dropped_L_or_duplicate_terms',source_count=6)
unit={(0,0,0):Q(1)};u={(1,0,0):Q(1)};y={(0,1,0):Q(1)};r={(0,0,1):Q(1)}
um=plus(u,unit,-1);ym=plus(y,unit,-1);E=plus(plus(times(u,y),y,-1),unit)
H=plus(plus(plus(power(u,2,3),times(u,power(y,2,3)),-1),times(u,y),3),u,-2)
H=plus(H,power(ym,2,3))
J=plus(plus(plus(power(u,2,3),times(u,power(y,2,3))),times(u,y),-3),y)
N_expected=times(um,plus(scalar(times(times(times(u,power(y,2,3)),H),r),4),scalar(times(times(um,power(ym,2,3)),J),3),-1))
assert N_expected==original['N']; check('N_displayed_definition_equals_exact_original')
lc=scalar(unit,-1105920)
for p,n in [(u,8),(y,7),(um,2),(ym,3),(E,5)]:lc=times(lc,power(p,n,3))
assert degree(original['V0'],2)==9
assert lc=={(a,b,0):c for (a,b,k),c in original['V0'].items() if k==9}
check('V0_actual_degree_9_and_entire_leading_coefficient_identity')
# Independent transport via repeated multiplication of t-1, then exact divisions.
t={(1,0):Q(1)};tm={(1,0):Q(1),(0,0):Q(-1)};z={(0,1):Q(1)}
powers_tm=[{0:Q(1)}]
for i in range(max(degree(p,0) for p in original.values())):
    nxt=defaultdict(Q)
    for k,c in powers_tm[-1].items(): nxt[k]-=c;nxt[k+1]+=c
    powers_tm.append(clean(nxt))
expected_metadata={'P5':(10,1,0,3,11,5),'V4':(18,3,1,9,19,8),'V3':(19,3,2,9,19,8),'V2':(20,9,2,9,19,8),'V1':(19,9,1,9,18,7),'V0':(16,9,0,7,17,7),'N':(4,1,0,2,4,1),'K':(5,1,0,0,5,3)}
transported={}
for name,p in original.items():
    d=read(AUTHOR/f'Ezero_{name}.json');du,cancel_scalar,a,b,dt,dz=expected_metadata[name]
    assert d['variables']==['t','z'] and d['name']==name
    assert d['u_denominator_power']==du==degree(p,0)
    assert d['factors']==[['t',a],['t-1',b],['z',0]] and Q(d['scalar'])==cancel_scalar
    raw=defaultdict(Q)
    for (i,j,k),v in p.items():
        for l,w in powers_tm[i].items():raw[(du-i+j+l,k)]+=v*w
    raw=clean(raw);assert all(i>=a for i,j in raw)
    residual={(i-a,j):v/Q(cancel_scalar) for (i,j),v in raw.items()}
    for _ in range(b):
        residual,rem=divide_t(residual,tm);assert not rem
    saved=parse(d['polynomial'],2); assert residual==saved
    assert degree(residual,0)==dt and degree(residual,1)==dz
    transported[name]=residual
    check('independent_full_transport_'+name,original_terms=len(p),transported_terms=len(residual),degree_t=dt,degree_z=dz,cancelled_z_power=0)
# Coefficient-map matrix: columns Q*z^0,...Q*z^4,P*z^0,...P*z^6, rows z^0,...z^11.
# Compared with the author's descending-coefficient Sylvester matrix, sign=(-1)^(5*7)=-1.
def evaluate_in_t(poly,x,dz):
    coeffs=[Q(0)]*(dz+1)
    for (i,j),c in poly.items():coeffs[j]+=c*x**i
    assert all(c.denominator==1 for c in coeffs)
    return [int(c) for c in coeffs]
def coefficient_matrix(q,p):
    dq=len(q)-1;dp=len(p)-1;cols=[];size=dq+dp
    for i in range(dp):cols.append([0]*i+q+[0]*(dp-1-i))
    for j in range(dq):cols.append([0]*j+p+[0]*(dq-1-j))
    return [[cols[j][i] for j in range(size)] for i in range(size)]
def gaussian_determinant(matrix):
    a=[[Q(c) for c in row] for row in matrix];n=len(a);det=Q(1)
    for k in range(n):
        pivot_row=next((i for i in range(k,n) if a[i][k]),None)
        if pivot_row is None:return 0
        if pivot_row!=k:a[k],a[pivot_row]=a[pivot_row],a[k];det=-det
        pivot=a[k][k];det*=pivot
        for i in range(k+1,n):
            if a[i][k]:
                ratio=a[i][k]/pivot
                for j in range(k+1,n):a[i][j]-=ratio*a[k][j]
            a[i][k]=Q(0)
    assert det.denominator==1
    return det.numerator
def eval_univariate(poly,x):
    return sum(c*x**i for (i,j),c in poly.items())
resultants={};determinant_records=[]
for name,expected_deg in [('V0',160),('V1',165)]:
    data=read(AUTHOR/f'Ezero_res_{name}.json')
    # Saved file exponents have arity one. Strictly retain every coefficient.
    rr1=parse(data['coefficients'],1);rr={(i,0):c for (i,),c in rr1.items()}
    assert all(c.denominator==1 for c in rr.values()) and degree(rr,0)==expected_deg
    pp=transported['P5'];qq=transported[name];dp=degree(pp,1);dq=degree(qq,1)
    assert (dp,dq)==(5,7)
    bound=dp*degree(qq,0)+dq*degree(pp,0);assert degree(rr,0)<=bound
    first=-(bound//2);nodes=range(first,first+bound+1);seconds=time.monotonic();values=[]
    for x in nodes:
        det=gaussian_determinant(coefficient_matrix(evaluate_in_t(qq,x,dq),evaluate_in_t(pp,x,dp)))
        observed=Q(det);expected=-eval_univariate(rr,x)
        assert observed==expected,(name,x)
        values.append({'t':x,'matrix_determinant':str(det),'saved_resultant':str(-det)})
    rec={'name':name,'size':12,'degree_bound':bound,'node_count':len(nodes),'first_node':nodes.start,'last_node':nodes.stop-1,'actual_resultant_degree':expected_deg,'comparison_sign':-1,'seconds':round(time.monotonic()-seconds,3)}
    determinant_records.append(rec);save('determinant-'+name+'-nodes.json',{'metadata':rec,'evaluations':values})
    resultants[name]=rr;check('independent_Gaussian_full_Sylvester_'+name,**{k:v for k,v in rec.items() if k!='name'})
core=read(AUTHOR/'Ezero_resultant_core.json','8adf87e043da8ad41542516d9c677b9e1c6ad7affa162196a94ec7a415fd97eb')
assert core['core_exponents']=={'t':47,'t-1':35,'factor_4':2,'factor_8':2}
factors={n:{(i,0):Q(c) for i,c in enumerate(coeffs)} for n,coeffs in [(4,[5,-12,14,-8,2]),(8,[51,-156,390,-468,450,-146,35,-76,55])]}
for n in (4,8):assert {(i,0):c for (i,),c in parse(core['factor_'+str(n)],1).items()}==factors[n]
common=times(times(power(t,47,2),power(tm,35,2)),times(power(factors[4],2,2),power(factors[8],2,2)))
cofactors={}
assert [d['name'] for d in core['cofactors']]==['V0','V1']
for d,wanted_deg in zip(core['cofactors'],[54,59]):
    a1=parse(d['primitive'],1);a={(i,0):c for (i,),c in a1.items()}
    assert all(c.denominator==1 for c in a.values()) and degree(a,0)==wanted_deg
    content=0
    for c in a.values():content=gcd(content,abs(c.numerator))
    assert content==1 and Q(d['scale'])==6879707136
    assert scalar(times(common,a),Q(d['scale']))==resultants[d['name']]
    cofactors[d['name']]=a;check('full_exact_resultant_core_'+d['name'],cofactor_degree=wanted_deg,scale=d['scale'],primitive_content=content)
# Independent extended modular Euclid emits an explicit Bezout identity, not just gcd length.
prime=core['coprimality_prime'];assert prime==32003
assert all(prime%i for i in range(2,isqrt(prime)+1))
def trim(a):
    while a and not a[-1]:a.pop()
    return a
def mod_add(a,b,c=1):
    ret=[0]*max(len(a),len(b))
    for i,v in enumerate(a):ret[i]+=v
    for i,v in enumerate(b):ret[i]+=c*v
    return trim([v%prime for v in ret])
def mod_mul(a,b):
    if not a or not b:return []
    ret=[0]*(len(a)+len(b)-1)
    for i,v in enumerate(a):
        for j,w in enumerate(b):ret[i+j]=(ret[i+j]+v*w)%prime
    return trim(ret)
def mod_divrem(a,b):
    r=a[:];q=[0]*max(0,(len(a)-len(b)+1));inv=pow(b[-1],-1,prime)
    while len(r)>=len(b):
        k=len(r)-len(b);v=r[-1]*inv%prime;q[k]=v
        for j,w in enumerate(b):r[j+k]=(r[j+k]-v*w)%prime
        trim(r)
    assert mod_add(mod_mul(q,b),r)==a
    return trim(q),r
A=[]
for a in cofactors.values():
    aa=[int(a.get((i,0),0))%prime for i in range(degree(a,0)+1)]
    assert aa[-1];A.append(aa)
r0,r1=A;s0,s1=[1],[];v0,v1=[],[1];chain=[len(r0)-1,len(r1)-1]
while r1:
    q,rem=mod_divrem(r0,r1)
    r0,r1=r1,rem;s0,s1=s1,mod_add(s0,mod_mul(q,s1),-1);v0,v1=v1,mod_add(v0,mod_mul(q,v1),-1)
    chain.append(len(rem)-1)
assert len(r0)==1
inv=pow(r0[0],-1,prime);s0=[x*inv%prime for x in s0];v0=[x*inv%prime for x in v0]
assert mod_add(mod_mul(s0,A[0]),mod_mul(v0,A[1]))==[1]
save('modular-bezout.json',{'prime':prime,'degrees_preserved':[54,59],'euclid_remainder_degrees':chain,'cofactor_order':['V0','V1'],'bezout_coefficients':[s0,v0],'identity':'S*A0+T*A1=1 in F_32003[t]'})
check('degree_preserving_modular_coprimality_with_full_Bezout',prime=prime,cofactor_degrees=[54,59],bezout_degrees=[len(s0)-1,len(v0)-1],euclid_steps=len(chain)-2)
for n,h in [(4,'0a15281eb6d2f6b2995f58b4f720167285f44a40f3a1beeeb87e9e85cffba3fc'),(8,'495ca6245be5b38eb360991a809df2cee66116527705b717de6ca24ace453283')]:
    d=read(AUTHOR/f'Ezero_terminal_degree_{n}.json',h)
    assert parse(d['factor_coefficients'],2)==factors[n]
    assert d['source_names']==['P5','V0','V1'] and len(d['multipliers'])==3
    assert set(d['source_sha256'])=={'P5','V0','V1','N','K'}
    for name,hashvalue in d['source_sha256'].items():assert sha(AUTHOR/f'Ezero_{name}.json')==hashvalue
    target=z if n==4 else transported['N'];assert d['target']==('z' if n==4 else 'N')
    _,target_remainder=divide_t(target,factors[n]);assert target_remainder==parse(d['target_coefficients'],2)
    rhs={};multipliers=[]
    for name,raw in zip(d['source_names'],d['multipliers']):
        mult=parse(raw,2);multipliers.append(mult);rhs=plus(rhs,times(mult,transported[name]))
    difference=plus(target,rhs,-1);quotient,remainder=divide_t(difference,factors[n]);assert not remainder
    assert times(quotient,factors[n])==difference
    save('terminal-quotient-'+str(n)+'.json',{'factor_degree':n,'target':d['target'],'identity':'target-sum multipliers*source=factor*quotient in Q[t,z]','quotient':terms(quotient),'coefficient_denominators_are_constant_rationals':True})
    check('independent_full_QQ_polynomial_terminal_'+str(n),target=d['target'],multiplier_terms=[len(a) for a in multipliers],quotient_terms=len(quotient),quotient_degree_t=degree(quotient,0),quotient_degree_z=degree(quotient,1),unknown_polynomial_divisors=0)
for name,entry in pins.items():assert sha(ROOT/name)==entry['sha256']
check('all_fixed_inputs_unchanged_at_finish',file_count=len(pins))
peak=process_memory();assert peak['PeakWorkingSetSize']<150_000_000
result={'status':'INDEPENDENT_EXACT_CHECK_PASS','verifier':'/root/review_b_nonzero','task_class':'Complex established target','model':'gpt-6.1-sol','reasoning_effort':'xhigh','utc':datetime.now(timezone.utc).isoformat(),'statement':'For fixed REG3 integer polynomials over C, B0*N != 0 and P5=V0=V1=0 imply E=u*y-y+1 != 0.','checks':checks,'source_provenance':provenance,'determinants':determinant_records,'resource_start':resource_start,'resource_finish':memory(),'process_memory':peak,'python_version':sys.version,'verifier_sha256':sha(Path(__file__)),'seconds':round(time.monotonic()-start,3),'Lean':'NOT_RUN','historical_NC3_to_REG3':'NOT_REVIEWED','full_Omega_saturation':'NOT_PROVED','original_problem_closed':False}
save('frozen-inputs.json',pins);save('independent-result.json',result)
print(json.dumps({'status':result['status'],'checks':len(checks),'seconds':result['seconds'],'peak_working_set':peak['PeakWorkingSetSize'],'source_count':6}),flush=True)

