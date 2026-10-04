"""Exact standard-library checker for E=uy-y+1 exclusion.
Run from the frozen worktree root: python -B <this script>.
No SymPy, no Lean. Saved outputs are author checks, not independent review.
"""
from pathlib import Path
from fractions import Fraction as F
from math import comb,isqrt
import hashlib,json,time,sys,ctypes,os,shutil
ROOT=Path.cwd();BASE=ROOT/'research/tasks/B699-Binomial/runs'
SRC=BASE/'20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results'
OUT=BASE/'20261004-r7-resource-saturation-146a9702/experiments/b'
ARCH='080d9a2d955471a9f4cb56594cf439e67672141d4caf2a3b9ea98adc2105389c'
checks=[];started=time.monotonic()
def check(label,ok=True,**extra):
    assert ok,label;checks.append({'check':label,'status':'PASS',**extra});print(json.dumps(checks[-1]),flush=True)
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def load(p):return json.loads(p.read_text(encoding='utf-8'))
def readpoly(ts):
    assert len(ts)==len({tuple(e) for e,c in ts})
    return {tuple(e):F(c) for e,c in ts if F(c)}
def clean(p):return {e:c for e,c in p.items() if c}
def add(a,b):
    c=dict(a)
    for e,v in b.items():c[e]=c.get(e,F(0))+v
    return clean(c)
def scale(a,c):return clean({e:v*c for e,v in a.items()})
def mul(a,b):
    c={}
    for e,v in a.items():
        for f,w in b.items():
            ef=tuple(x+y for x,y in zip(e,f));c[ef]=c.get(ef,F(0))+v*w
    return clean(c)
def power(a,n):
    assert n>=0;r={tuple(0 for _ in next(iter(a))):F(1)}
    while n:
        if n&1:r=mul(r,a)
        n>>=1
        if n:a=mul(a,a)
    return r
one={(0,0):F(1)};t={(1,0):F(1)};tm={(1,0):F(1),(0,0):F(-1)};z={(0,1):F(1)}
def reduce_t(a,fac):
    a=dict(a);d=max(e[0] for e in fac);lc=fac[(d,0)]
    assert all(e[1]==0 for e in fac)
    while a and max(e[0] for e in a)>=d:
        e=max(a);v=a[e]/lc
        for (k,_),c in fac.items():
            mon=(e[0]-d+k,e[1]);a[mon]=a.get(mon,F(0))-v*c
            if not a[mon]:del a[mon]
    return a
class Mem(ctypes.Structure):
    _fields_=[('length',ctypes.c_ulong),('load',ctypes.c_ulong),('total',ctypes.c_ulonglong),('available',ctypes.c_ulonglong),('page_total',ctypes.c_ulonglong),('page_available',ctypes.c_ulonglong),('virtual_total',ctypes.c_ulonglong),('virtual_available',ctypes.c_ulonglong),('extended_available',ctypes.c_ulonglong)]
m=Mem();m.length=ctypes.sizeof(m);assert ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(m))
resource={k:int(getattr(m,k)) for k,v in m._fields_};resource['logical_cpus_visible']=os.cpu_count();resource['disk_free_bytes']=shutil.disk_usage(ROOT).free
manifest=load(SRC/'MEMBERS.json');members={e['name'].split('/',1)[1]:e for e in manifest['members'] if e['archive_sha256']==ARCH and e.get('retained_path')};del manifest
provenance=[]
def source(n):
    m=members[n];p=SRC/m['retained_path'];assert sha(p)==m['sha256'];provenance.append({'name':n,'path':m['retained_path'],'sha256':m['sha256']});return load(p)
g=source('inputs/generic.json');original={n:readpoly(g['B5'] if n=='P5' else g[n]) for n in ['P5','N','K']}
for i in range(5):original[f'V{i}']=readpoly(source(f'certificates/colon_{i}.json')['V'])
original={n:{tuple(e[:3]):c for e,c in p.items()} for n,p in original.items()}
check('original_exact_byte_hashes',source_count=len(provenance))
transported={}
for name,orig in original.items():
    d=load(OUT/f'Ezero_{name}.json');du=max(e[0] for e in orig);assert du==d['u_denominator_power'];raw={}
    for (a,b,c),co in orig.items():
        for j in range(a+1):
            e=(du-a+b+j,c);raw[e]=raw.get(e,F(0))+co*comb(a,j)*(-1)**(a-j)
    raw=clean(raw);p=readpoly(d['polynomial']);rhs=scale(p,F(d['scalar']))
    for (label,n),fac in zip(d['factors'],[t,tm,z]):rhs=mul(rhs,power(fac,n))
    check(f'full_transport_{name}',raw==rhs,terms=len(p),r_degree=max(e[1] for e in p));transported[name]=p
# Leading r coefficient, with no factorization oracle.
u3={(1,0,0):F(1)};y3={(0,1,0):F(1)};unit3={(0,0,0):F(1)}
um3=add(u3,scale(unit3,-1));ym3=add(y3,scale(unit3,-1));E3=add(add(mul(u3,y3),scale(y3,-1)),unit3)
lc_expected=scale(unit3,-1105920)
for f,n in [(u3,8),(y3,7),(um3,2),(ym3,3),(E3,5)]:lc_expected=mul(lc_expected,power(f,n))
lc_actual={(a,b,0):c for (a,b,k),c in original['V0'].items() if k==9}
check('V0_r9_leading_coefficient_identity',lc_actual==lc_expected)
def eval_bivariate_in_t(p,x):
    d=max(e[1] for e in p);a=[0]*(d+1)
    for (i,j),v in p.items():assert v.denominator==1;a[j]+=v.numerator*x**i
    return a
def bareiss(a):
    a=[list(row) for row in a];n=len(a);previous=1;sign=1
    for k in range(n-1):
        if not a[k][k]:
            pivot=next((j for j in range(k+1,n) if a[j][k]),None)
            if pivot is None:return 0
            a[k],a[pivot]=a[pivot],a[k];sign=-sign
        pivot=a[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                val=a[i][j]*pivot-a[i][k]*a[k][j];assert val%previous==0;a[i][j]=val//previous
            a[i][k]=0
        previous=pivot
    return sign*a[-1][-1]
def sylvester(p,q):
    n=len(p)-1;m=len(q)-1;a=[]
    for k in range(m):a.append([0]*k+p[::-1]+[0]*(m-1-k))
    for k in range(n):a.append([0]*k+q[::-1]+[0]*(n-1-k))
    return a
def eval_uni(p,x):
    v=F(0)
    for k in range(max(e[0] for e in p),-1,-1):v=v*x+p.get((k,0),F(0))
    assert v.denominator==1;return v.numerator
res={}
for name in ['V0','V1']:
    data=load(OUT/f'Ezero_res_{name}.json');rr={(e[0],0):F(c) for e,c in data['coefficients']};p=transported['P5'];q=transported[name]
    drp=max(e[1] for e in p);drq=max(e[1] for e in q);bound=drp*max(e[0] for e in q)+drq*max(e[0] for e in p)
    assert max(e[0] for e in rr)<=bound;st=time.monotonic()
    # Bound+1 distinct exact integer evaluations certify the full determinant identity.
    for x in range(2,bound+3):
        observed=bareiss(sylvester(eval_bivariate_in_t(q,x),eval_bivariate_in_t(p,x)));expected=eval_uni(rr,x)
        if observed!=expected:print(json.dumps({'diagnostic':name,'node':x,'determinant_to_saved_ratio':str(F(observed,expected)) if expected else 'saved_zero'}),flush=True)
        assert observed==expected,(name,x)
    res[name]=rr;check(f'full_Sylvester_identity_{name}_P5',row_order='V first, P5 second',matrix_size=drp+drq,degree_bound=bound,node_count=bound+1,seconds=round(time.monotonic()-st,3))
coredata=load(OUT/'Ezero_resultant_core.json')
factors={4:{(e[0],0):F(c) for e,c in coredata['factor_4']},8:{(e[0],0):F(c) for e,c in coredata['factor_8']}}
assert factors[4]=={(i,0):F(c) for i,c in enumerate([5,-12,14,-8,2])}
assert factors[8]=={(i,0):F(c) for i,c in enumerate([51,-156,390,-468,450,-146,35,-76,55])}
core=mul(mul(power(t,47),power(tm,35)),mul(power(factors[4],2),power(factors[8],2)))
cof=[]
for d in coredata['cofactors']:
    q={(e[0],0):F(c) for e,c in d['primitive']};assert all(c.denominator==1 for c in q.values());cof.append(q)
    check(f'resultant_full_factor_identity_{d["name"]}',res[d['name']]==scale(mul(core,q),F(d['scale'])))
p=coredata['coprimality_prime'];assert p==32003 and all(p%d for d in range(2,isqrt(p)+1))
def mod_coeff(a):
    ar=[int(a.get((i,0),0))%p for i in range(max(e[0] for e in a)+1)];assert ar[-1];return ar
def modtrim(a):
    while a and not a[-1]:a.pop()
    return a
def modrem(a,b):
    a=a[:];inv=pow(b[-1],-1,p)
    while len(a)>=len(b):
        k=len(a)-len(b);v=a[-1]*inv%p
        for j,c in enumerate(b):a[k+j]=(a[k+j]-v*c)%p
        modtrim(a)
    return a
ma,mb=map(mod_coeff,cof)
while mb:ma,mb=mb,modrem(ma,mb)
check('cofactors_coprime_in_Q_by_degree_preserving_modular_Euclid',len(ma)==1,prime=p,degrees=[max(e[0] for e in a) for a in cof])
for degree in [4,8]:
    path=OUT/f'Ezero_terminal_degree_{degree}.json';d=load(path);fac=readpoly(d['factor_coefficients']);assert fac==factors[degree]
    for n,h in d['source_sha256'].items():assert sha(OUT/f'Ezero_{n}.json')==h
    expect=z if degree==4 else transported['N'];assert d['target']==('z' if degree==4 else 'N')
    assert reduce_t(expect,fac)==readpoly(d['target_coefficients'])
    rhs={}
    for n,mult in zip(d['source_names'],d['multipliers']):rhs=add(rhs,mul(readpoly(mult),transported[n]))
    check(f'full_characteristic_zero_terminal_degree_{degree}',not reduce_t(add(expect,scale(rhs,-1)),fac),target=d['target'],certificate_sha256=sha(path))
summary={'status':'AUTHOR_CHECK_PASS','theorem':'Over C, B0*N!=0 and P5=V0=V1=0 imply u*y-y+1!=0.','independent_review':'NOT_PERFORMED_BY_THIS_SCRIPT','Lean':'NOT_RUN','original_problem_closed':False,'checks':checks,'source_provenance':provenance,'resource_start':resource,'python_version':sys.version,'seconds':round(time.monotonic()-started,3),'checker_sha256':sha(Path(__file__))}
(OUT/'08-E-zero-verification.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(json.dumps({'status':summary['status'],'check_count':len(checks),'seconds':summary['seconds']}),flush=True)


