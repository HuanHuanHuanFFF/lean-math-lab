"""Package a source-only three-log pilot. Never invokes Lean or a full checker.

Writes only beside this file. Frozen runs validate their artifacts read-only.
All 64 exact old log endpoints are compared, but only 2,3,5 have Lean pilots.
"""
from datetime import datetime, timezone
from fractions import Fraction as F
from hashlib import sha256
from pathlib import Path
import argparse
import importlib.util
import json
import re
import time

EXP=Path(__file__).resolve().parent
RUN=EXP.parents[1]
ROOT=RUN.parents[4]
MATH=Path('D:/CodingProject/Math/.lake/packages/mathlib')
OLD=RUN.parent/'20260909-low-index-structure-b41a5a63/notes/zero-boundary'
CHECKER=OLD/'check_log_certificate.py'
CERTIFICATE=OLD/'verification/20260909T090620Z/certificate.json'
OLD_SHA='25374AD229541F0968C26F64ECBEA21684DADFB6D4E49E29D2500FBA51C5DFFE'
CERT_SHA='F51D4E1EF908527837BBB9A7620A039C0B264CF9EC2BE66D20618B7E445B4932'
PREFIX='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-zero-log-boxes-5e2d13bb»'
NS='Math.B699.ZeroBoundaryLogBoxes'
IMPLEMENTATION=['Definitions','Finite','Bridge','Pilots']
ALLOW={'propext','Classical.choice','Quot.sound'}


def digest(p):return sha256(p.read_bytes()).hexdigest().upper()
def read_json(p):return json.loads(p.read_text(encoding='utf-8-sig'))
def save(name,data):
    (EXP/name).write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')


def partial(m,z):
    # Independent sequential recurrence, not the frozen helper's per-term powers.
    total,power=F(0),z
    for k in range(m):
        total += power/(2*k+1)
        power *= z*z
    return total


def small_lower(z):return 2*partial(96,z)
def small_upper(z):return small_lower(z)+2*z**193/(193*(1-z*z))
def coarse(m,z):return 2*partial(m,z)+2*z**(2*m+1)/(1-z*z)


def direct_endpoint(a):
    k=a.bit_length()-1
    power=1<<k
    z=F(a-power,a+power)
    return k,power,z,(k*small_lower(F(1,3))+small_lower(z),
                      k*small_upper(F(1,3))+small_upper(z))


def source_roots():
    all_roots=[]
    modules={}
    for stem in IMPLEMENTATION:
        source=(EXP/(stem+'.lean')).read_text(encoding='utf-8')
        names=re.findall(r'^(?:def|theorem)\s+([A-Za-z0-9_]+)',source,re.M)
        modules[stem]=[NS+'.'+name for name in names]
        all_roots.extend(modules[stem])
    assert len(all_roots)==len(set(all_roots))
    return all_roots,modules


def check_axiom_log(text,roots):
    if re.search(r'(^|\n).*\berror:',text,re.I):raise ValueError('Lean error in log')
    entries={}
    pat=r"'([^']+)'\s+(?:depends on axioms:\s*\[([^]]*)\]|does not depend on any axioms)"
    for m in re.finditer(pat,text,re.S):
        name=m.group(1)
        if name not in roots:continue
        if name in entries:raise ValueError('duplicate root '+name)
        deps=set(x.strip() for x in (m.group(2) or '').split(',') if x.strip())
        if deps-ALLOW:raise ValueError('unexpected axioms '+str(deps-ALLOW))
        entries[name]=sorted(deps)
    if set(entries)!=set(roots):raise ValueError('missing roots '+str(set(roots)-set(entries)))
    return entries


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--freeze',action='store_true')
    parser.add_argument('--log')
    args=parser.parse_args()
    roots,modules=source_roots()
    if args.log:
        checked=check_axiom_log(Path(args.log).read_text(encoding='utf-8-sig'),roots)
        print(json.dumps(dict(verified_axiom_roots=len(checked),axioms=checked)))
        return
    if (EXP/'FREEZE.json').exists():
        frozen=read_json(EXP/'FREEZE.json')
        for item in frozen['files']:
            assert digest(EXP/item['path'])==item['sha256'],item['path']
        assert digest(CHECKER)==OLD_SHA and digest(CERTIFICATE)==CERT_SHA
        for item in read_json(EXP/'SOURCE_MAP.json')['mathlib_inputs']:
            assert digest(Path(item['source']))==item['sha256'],item['source']
        print(json.dumps(dict(status='frozen_candidate_readonly_validated',files=len(frozen['files']),lean_invocations=0)))
        return
    ts=time.perf_counter()
    assert digest(CHECKER)==OLD_SHA and digest(CERTIFICATE)==CERT_SHA
    spec=importlib.util.spec_from_file_location('frozen_zero_log_helper',CHECKER)
    old=importlib.util.module_from_spec(spec);spec.loader.exec_module(old)
    cert=read_json(CERTIFICATE)
    assert cert['terms']==96 and cert['M0']==str(2**53)
    endpoints=[]
    for a in range(1,65):
        k,power,z,bounds=direct_endpoint(a)
        expected=old.log_interval(a,96)
        assert bounds==expected
        assert power<=a<2*power and 0<=z<1 and 1-z*z>0
        assert F(a)==power*(1+z)/(1-z)
        endpoints.append(dict(a=a,k=k,power=power,z=str(z),
            lower=dict(num=str(bounds[0].numerator),den=str(bounds[0].denominator)),
            upper=dict(num=str(bounds[1].numerator),den=str(bounds[1].denominator)),
            original_checker_equal=True,pilot=a in (2,3,5)))
    comparisons=[]
    for z in [F(0),F(1,3),F(1,5),F(1,9)]:
        c,u=coarse(102,z),small_upper(z)
        assert c<=u
        comparisons.append(dict(z=str(z),coarse102_le_old96_upper=True,slack=str(u-c),
            exact_largest_fraction_bits=max(c.numerator.bit_length(),c.denominator.bit_length(),u.numerator.bit_length(),u.denominator.bit_length())))
    for stem,names in modules.items():
        (EXP/(stem+'Audit.lean')).write_text('import '+PREFIX+'.'+stem+'\n\n'+
            '\n'.join('#print axioms '+name for name in names)+'\n',encoding='utf-8')
    (EXP/'Audit.lean').write_text('import '+PREFIX+'.TypedAudit\n\n'+
        '\n'.join('#print axioms '+name for name in roots)+'\n',encoding='utf-8')
    typed=(EXP/'TypedAudit.lean').read_text(encoding='utf-8')
    assert len(re.findall(r'^example\b',typed,re.M))==len(roots)
    for name in roots:assert '@'+name.rsplit('.',1)[1] in typed,name
    violations=[]
    for p in EXP.glob('*.lean'):
        src=p.read_text(encoding='utf-8')
        if re.search(r'\b(sorry|admit|native_decide)\b|^\s*(axiom|opaque)\s',src,re.M):
            violations.append(p.name)
    assert not violations
    # A parser must reject missing, duplicate and forbidden root evidence.
    valid='\n'.join("'"+r+"' depends on axioms: [propext, Classical.choice, Quot.sound]" for r in roots)
    assert len(check_axiom_log(valid,roots))==len(roots)
    variants=[valid.split('\n',1)[1],valid+'\n'+valid.split('\n')[0],
        valid.replace('propext','sorryAx',1),valid.replace('propext','Unproved.custom',1),valid+'\nerror: failed']
    for bad in variants:
        try:check_axiom_log(bad,roots)
        except ValueError:pass
        else:raise AssertionError('axiom parser accepted a negative control')
    math_modules=['Mathlib/Data/Rat/BigOperators','Mathlib/Data/Nat/Log',
        'Mathlib/Analysis/SpecialFunctions/Log/Deriv','Mathlib/Data/Rat/Cast/Order',
        'Mathlib/Tactic/Linarith','Mathlib/Tactic/NormNum','Mathlib/Tactic/Ring']
    math_inputs=[]
    for module in math_modules:
        source=MATH/(module+'.lean');olean=MATH/'.lake/build/lib/lean'/(module+'.olean')
        math_inputs.append(dict(module=module.replace('/','.'),source=str(source),sha256=digest(source),
            olean=str(olean),olean_exists=olean.is_file(),olean_bytes=olean.stat().st_size if olean.is_file() else None))
    source_map=[]
    for p in sorted(EXP.glob('*.lean')):
        source_map.append(dict(source=p.name,sha256=digest(p),bytes=p.stat().st_size,
            target='research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/ZeroBoundaryLogBoxes/'+p.name,
            integration='remap only this candidate internal experiment import prefix to lean.ZeroBoundaryLogBoxes'))
    save('exact-endpoints.json',dict(source_checker=str(CHECKER),source_sha256=OLD_SHA,terms=96,range=[1,64],endpoints=endpoints))
    save('exact-checks.json',dict(utc=datetime.now(timezone.utc).isoformat(),status='exact_rational_comparison_not_Lean',
        old_checker_sha256=OLD_SHA,old_certificate_sha256=CERT_SHA,endpoint_matches=64,normalization_checks=64,
        comparisons=comparisons,negative_axiom_controls_rejected=5,lean_invocations=0,full_checker_invocations=0,
        elapsed_seconds=time.perf_counter()-ts,runner_sha256=digest(Path(__file__))))
    save('expected-axioms.json',dict(roots=roots,allowed=sorted(ALLOW),negative_controls_rejected=5))
    save('SOURCE_MAP.json',dict(mathlib_pin='0df444a360eaa60ab8c11dca51a86af692955474',
        mathlib_head_read=(MATH/'.git/HEAD').read_text().strip(),mathlib_inputs=math_inputs,candidates=source_map,
        old_checker=dict(path=str(CHECKER),sha256=OLD_SHA),old_certificate=dict(path=str(CERTIFICATE),sha256=CERT_SHA),
        preceding_audit_record=dict(path=str(RUN/'experiments/huan-critical-finite-reuse-audit-5e2d13bb/record.json'),
            sha256=digest(RUN/'experiments/huan-critical-finite-reuse-audit-5e2d13bb/record.json'))))
    save('STATIC_CHECK.json',dict(status='source_candidate_uncompiled',public_roots=len(roots),typed_examples=len(roots),
        source_policy_violations=violations,all_direct_mathlib_oleans_present=all(x['olean_exists'] for x in math_inputs),
        original_log_endpoint_definitions_stable=True,pilot_values=[2,3,5],other_61_values_not_Lean_proved=True,
        no_original_index_claim=True,lean_invocations=0))
    if args.freeze:
        files=[dict(path=p.name,sha256=digest(p),bytes=p.stat().st_size) for p in sorted(EXP.iterdir()) if p.is_file() and p.name!='FREEZE.json']
        save('FREEZE.json',dict(utc=datetime.now(timezone.utc).isoformat(),status='frozen_uncompiled_candidate',files=files,
            lean_invocations=0,owner='/root/critical_finite_audit'))
    print(json.dumps(dict(status='candidate_static_checks_passed_uncompiled',endpoint_matches=64,rational_comparisons=4,
        typed_and_axiom_roots=len(roots),all_direct_mathlib_oleans_present=all(x['olean_exists'] for x in math_inputs),
        lean_invocations=0,elapsed_seconds=time.perf_counter()-ts)))


if __name__=='__main__':main()
