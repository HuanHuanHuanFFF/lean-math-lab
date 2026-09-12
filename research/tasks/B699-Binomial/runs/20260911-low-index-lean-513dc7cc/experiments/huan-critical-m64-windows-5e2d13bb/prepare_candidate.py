"""Source-only M64 window package: exact fixed checks, types, hashes and freeze.

Never invokes Lean, Git, a full old checker or a prime-pair certificate generator.
All writes are confined to this script's directory. Frozen mode is read-only.
"""
from datetime import datetime,timezone
from hashlib import sha256
from math import comb,factorial,gcd,isqrt
from pathlib import Path
import argparse,json,re,time

EXP=Path(__file__).resolve().parent;RUN=EXP.parents[1];ROOT=RUN.parents[4]
OLD=RUN.parent/'20260909-low-index-structure-b41a5a63'
NS='Math.B699.CriticalM64Windows'
PREFIX='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-m64-windows-5e2d13bb»'
STEMS=['Definitions','Constants','Windows','Actual','Height']
ALLOWED={'propext','Classical.choice','Quot.sound'}
M64_SHA='B86CEAE13DF5724C96E3AFAD1A87F46BD9BAF3D154C191E866746156B4518EE7'

def digest(p):return sha256(p.read_bytes()).hexdigest().upper()
def load(p):return json.loads(p.read_text(encoding='utf-8-sig'))
def save(name,obj):(EXP/name).write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')

def declarations(stem):
    source=(EXP/(stem+'.lean')).read_text(encoding='utf-8')
    result=[]
    for m in re.finditer(r'^(def|theorem|instance)\s+([A-Za-z0-9_]+)',source,re.M):
        start=m.end();end=source.index(':=',start);header=source[start:end].strip()
        depth=0;split=None
        for pos,char in enumerate(header):
            if char in '({[':depth+=1
            elif char in ')}]':depth-=1
            elif char==':' and depth==0:split=pos;break
        assert split is not None,(stem,m.group(2))
        binders=header[:split].strip();typ=header[split+1:].strip()
        result.append(dict(name=NS+'.'+m.group(2),kind=m.group(1),binders=binders,type=typ))
    return result

def typed_example(d):
    signature=('∀ '+d['binders']+',\n    '+d['type']) if d['binders'] else d['type']
    return 'example : '+signature+' :=\n  @'+d['name']+'\n'

def raw_examples(bounded=False):
    out=[]
    for i in [28,31,34]:
        root=f'actual_i{i}_bounded_windows' if bounded else f'actual_i{i}_m64_windows'
        result=f'BoundedM64Pair n {i}' if bounded else f'M64Pair n {i}'
        out.append(f'''example : ∀ {{n j : ℕ}}, 4096 < n → {i} < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ {i} ≤ p ∧ p ∣ Nat.gcd (n.choose {i}) (n.choose j)) →
    {result} := @{NS}.{root}
''')
    return '\n'.join(out)

def axiom_check(text,roots):
    if re.search(r'(^|\n).*\berror:',text,re.I):raise ValueError('Lean error')
    entries={}
    for m in re.finditer(r"'([^']+)'\s+(?:depends on axioms:\s*\[([^]]*)\]|does not depend on any axioms)",text,re.S):
        name=m.group(1)
        if name not in roots:continue
        if name in entries:raise ValueError('duplicate root')
        axioms={x.strip() for x in (m.group(2) or '').split(',') if x.strip()}
        if axioms-ALLOWED:raise ValueError('unexpected axiom')
        entries[name]=sorted(axioms)
    if set(entries)!=set(roots):raise ValueError('missing root')
    return entries

def v(n,p):
    exponent=0
    while n%p==0:n//=p;exponent+=1
    return exponent

def primes(i):return [p for p in range(2,i) if all(p%d for d in range(2,isqrt(p)+1))]

def source_closure():
    todo=[EXP/(s+'.lean') for s in STEMS];seen={};package=set()
    while todo:
        p=todo.pop().resolve()
        if p in seen:continue
        if len(seen)>=250:raise ValueError('bounded source closure cap reached')
        src=p.read_text(encoding='utf-8-sig')
        seen[p]=dict(path=p.relative_to(ROOT).as_posix(),sha256=digest(p),bytes=p.stat().st_size,
            own_candidate=p.parent==EXP)
        for line in re.findall(r'^(?:public )?import\s+([^\n]+)',src,re.M):
            for module in line.split():
                clean=module.replace('«','').replace('»','')
                if clean.startswith('Mathlib.'):
                    package.add(clean);continue
                if clean.startswith(('research.','Math.','Tests.','Examples.')):
                    q=ROOT/(clean.replace('.','/')+'.lean')
                    assert q.is_file(),q
                    todo.append(q)
    return sorted(seen.values(),key=lambda x:x['path']),sorted(package)

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--freeze',action='store_true');parser.add_argument('--log')
    args=parser.parse_args();groups={s:declarations(s) for s in STEMS};decls=sum(groups.values(),[]);roots=[d['name'] for d in decls]
    assert len(roots)==len(set(roots)) and roots
    if args.log:
        checked=axiom_check(Path(args.log).read_text(encoding='utf-8-sig'),roots)
        print(json.dumps(dict(verified_roots=len(checked),axioms=checked)));return
    if (EXP/'FREEZE.json').exists():
        frozen=load(EXP/'FREEZE.json')
        for item in frozen['files']:assert digest(EXP/item['path'])==item['sha256'],item['path']
        mapping=load(EXP/'SOURCE_MAP.json')
        for item in mapping['external_project_sources']:assert digest(ROOT/item['path'])==item['sha256'],item['path']
        assert digest(OLD/'notes/zero-boundary/M64-certificates.json')==M64_SHA
        print(json.dumps(dict(status='frozen_candidate_readonly_validated',files=len(frozen['files']),public_roots=len(roots),lean_invocations=0)));return
    ts=time.perf_counter();m64_path=OLD/'notes/zero-boundary/M64-certificates.json'
    assert digest(m64_path)==M64_SHA
    fixed=[]
    for row in load(m64_path)['rows']:
        i,t,r,s=row['i'],row['t'],row['r'],row['s'];lam=2*s-r;degree=s*(s+1)+(i-r-1)*(i-r)//2
        K=2**(s*(s+1))
        for a in range(1,s+1):K*=factorial(a)**2
        for a in range(1,i-r):K*=factorial(a)
        lhs=(2*factorial(i))**lam;rhs=K*64**(lam*(t-1))
        assert len(primes(i))==t and i*lam==t*lam+degree and lhs<=rhs
        assert str(lhs)==row['left'] and str(rhs)==row['right']
        assert 2<=i<=34 and s<i and t>=2 and lam>0 and i*(i-1)<=4097
        fixed.append(dict(i=i,r=r,s=s,t=t,lam=lam,degree=degree,d=0,left_bits=lhs.bit_length(),right_bits=rhs.bit_length(),exact_old_values_match=True))
    samples=[];pairs=[];large_windows=0;index_boundary=0
    for i in [28,31,34]:
        base_primes=primes(i)
        if i==31:base_primes=base_primes+[31]
        for n in [4097,4098,4099,4110,4158,5000]:
            choose=comb(n,i);selected=[]
            for p in base_primes:
                e,vi=v(choose,p),v(i,p);h=e+vi;power=p**h
                positions=[a for a in range(i) if (n-a)%power==0]
                assert positions
                a=positions[0];A=(n-a)//power
                assert A>=1 and n==A*power+a
                big=n<=64*p**e
                if big:
                    assert h>vi and A*p**vi<=64 and A<=64
                    large_windows+=1
                    if p<i:selected.append((p,a,A,h,e,vi))
                if p==i:index_boundary+=1
                samples.append(dict(n=n,i=i,p=p,e=e,index_exponent=vi,full_exponent=h,offset=a,cofactor=A,large_component=big,p_equals_i=p==i))
            for left in range(len(selected)):
                for right in range(left+1,len(selected)):
                    p,a,A,h,e,vi=selected[left];q,b,B,k,f,vj=selected[right]
                    gap=A*p**h-B*q**k
                    assert p<q and a!=b and gap==b-a and 1<=abs(gap)<=33
                    assert gcd(p**h,q**k)==1
                    pairs.append(dict(n=n,i=i,p=p,q=q,a=a,b=b,signed_gap=gap))
    # Source-only typed audit uses the exact complete declaration headers.
    for stem,ds in groups.items():
        (EXP/(stem+'Audit.lean')).write_text('import '+PREFIX+'.'+stem+'\n\n'+
            '\n'.join('#print axioms '+d['name'] for d in ds)+'\n',encoding='utf-8')
    base=sum((groups[s] for s in STEMS[:-1]),[])
    common='set_option autoImplicit false\nset_option relaxedAutoImplicit false\nopen '+NS+' B699LowIndex B699LargePrimeStructure\n\n'
    unfold_checks='''example (n i p : ℕ) : fullExponent n i p =
    (n.choose i).factorization p + i.factorization p := rfl

example (n i p a A : ℕ) : M64Window n i p a A ↔
    a < i ∧ 1 ≤ A ∧ i.factorization p < ((n.choose i).factorization p + i.factorization p) ∧
    A * p ^ i.factorization p ≤ 64 ∧ n ≤ 64 * p ^ (n.choose i).factorization p ∧
    n = A * p ^ ((n.choose i).factorization p + i.factorization p) + a := Iff.rfl

example (n i p q A B : ℕ) : signedGap n i p q A B =
    ((A * p ^ ((n.choose i).factorization p + i.factorization p) : ℕ) : ℤ) -
    ((B * q ^ ((n.choose i).factorization q + i.factorization q) : ℕ) : ℤ) := rfl
'''
    (EXP/'TypedBaseAudit.lean').write_text('import '+PREFIX+'.Actual\n\n'+common+
        '\n'.join(typed_example(d) for d in base)+'\n'+unfold_checks+'\n'+raw_examples(False),encoding='utf-8')
    (EXP/'TypedAudit.lean').write_text('import '+PREFIX+'.TypedBaseAudit\nimport '+PREFIX+'.Height\n\n'+common+
        '\n'.join(typed_example(d) for d in groups['Height'])+'\n'+raw_examples(True),encoding='utf-8')
    (EXP/'BaseAudit.lean').write_text('import '+PREFIX+'.TypedBaseAudit\n\n'+
        '\n'.join('#print axioms '+d['name'] for d in base)+'\n',encoding='utf-8')
    (EXP/'Audit.lean').write_text('import '+PREFIX+'.TypedAudit\n\n'+
        '\n'.join('#print axioms '+r for r in roots)+'\n',encoding='utf-8')
    valid='\n'.join("'"+r+"' depends on axioms: [propext, Classical.choice, Quot.sound]" for r in roots)
    assert len(axiom_check(valid,roots))==len(roots)
    for bad in [valid.split('\n',1)[1],valid+'\n'+valid.split('\n')[0],valid.replace('propext','sorryAx',1),valid.replace('propext','Unproved.custom',1),valid+'\nerror: failed']:
        try:axiom_check(bad,roots)
        except ValueError:pass
        else:raise AssertionError('negative axiom control accepted')
    violations=[]
    for p in EXP.glob('*.lean'):
        if re.search(r'\b(sorry|admit|native_decide)\b|^\s*(axiom|opaque)\s',p.read_text(encoding='utf-8'),re.M):violations.append(p.name)
    assert not violations
    closure,packages=source_closure();external=[x for x in closure if not x['own_candidate']]
    shared_path=RUN/'verification/20260911T004440769454Z/evidence.json';shared=load(shared_path)
    assert shared['success'] is True
    verified=[]
    for filename in ['CofactorCover.lean','SmallPrimeLocalization.lean','SmallPowerIntervals.lean']:
        p=OLD/'lean'/filename;rel=p.relative_to(ROOT).as_posix()
        row=next(r for r in shared['source_closure'] if r['source']==rel)
        actual=digest(p)
        assert actual==row['source_sha256_before'].upper()==row['source_sha256_after'].upper()
        verified.append(dict(path=rel,sha256=actual,accepted_evidence=str(shared_path.relative_to(ROOT))))
    height=RUN/'lean/CriticalPadeHeight/Final.lean'
    mapping=dict(candidate_namespace=NS,target_prefix='research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/CriticalM64Windows',
        project_source_closure=closure,external_project_sources=external,package_imports=packages,
        verified_shared_sources=verified,shared_source_commit=shared['source_commit'],
        pending_height_source=dict(path=height.relative_to(ROOT).as_posix(),sha256=digest(height),status='candidate_pending_parent_serial_Lean_acceptance'),
        old_M64=dict(path=m64_path.relative_to(ROOT).as_posix(),sha256=M64_SHA),
        candidates=[dict(source=p.name,sha256=digest(p),bytes=p.stat().st_size,target='lean/CriticalM64Windows/'+p.name)
                    for p in sorted(EXP.glob('*.lean'))])
    save('SOURCE_MAP.json',mapping)
    save('exact-checks.json',dict(utc=datetime.now(timezone.utc).isoformat(),status='bounded_exact_static_diagnostic_not_Lean',
        fixed_M64=fixed,localization_sample_count=len(samples),large_windows=large_windows,p_equals_i_samples=index_boundary,
        nonzero_ordered_pair_samples=len(pairs),localization_samples=samples,ordered_pairs=pairs,
        exponent_budget=dict(raw_max=15359,resonant_shift=6,shifted_max=15365,old_M0=str(2**53),comparison=15365<2**53),
        lean_invocations=0,git_commands=0,full_checker_invocations=0,elapsed_seconds=time.perf_counter()-ts,runner_sha256=digest(Path(__file__))))
    save('expected-axioms.json',dict(roots=roots,base_roots=[d['name'] for d in base],allowed=sorted(ALLOWED),negative_controls_rejected=5))
    save('STATIC_CHECK.json',dict(status='uncompiled_candidate',public_roots=len(roots),base_roots=len(base),
        typed_all_roots=True,expanded_original_noCommon_checks=6,complete_index_exponent_definitional_check=True,
        source_policy_violations=violations,source_closure_size=len(closure),new_original_indices=0,lean_invocations=0))
    if args.freeze:
        save('FREEZE.json',dict(utc=datetime.now(timezone.utc).isoformat(),status='frozen_uncompiled_candidate',owner='/root/critical_finite_audit',
            files=[dict(path=p.name,sha256=digest(p),bytes=p.stat().st_size) for p in sorted(EXP.iterdir()) if p.is_file() and p.name!='FREEZE.json'],lean_invocations=0))
    print(json.dumps(dict(status='bounded_static_checks_passed_uncompiled',roots=len(roots),base_roots=len(base),fixed_M64=3,
        localization_samples=len(samples),large_windows=large_windows,ordered_pair_samples=len(pairs),source_closure=len(closure),
        elapsed_seconds=time.perf_counter()-ts,lean_invocations=0)))

if __name__=='__main__':main()
