from pathlib import Path
import argparse,hashlib,json,re
OUT=Path(__file__).resolve().parent
EXPECTED=json.loads((OUT/'expected-axioms.json').read_text())
def validate(log):
    if 'error:' in log or 'sorryAx' in log:raise ValueError('compiler error or sorryAx')
    seen={}
    for name,body in re.findall(r"'([^']+)' depends on axioms:\s*\[([^\]]*)\]",log,re.S):
        axioms={x.strip() for x in body.split(',') if x.strip()}
        if axioms-set(EXPECTED['allowed_axioms']):raise ValueError('unexpected axioms: '+name)
        seen[name]=sorted(axioms)
    for name in re.findall(r"'([^']+)' does not depend on any axioms",log):seen[name]=[]
    missing=set(EXPECTED['expected_print_roots'])-set(seen)
    if missing:raise ValueError('missing audit roots: '+str(sorted(missing)))
    return {name:seen[name] for name in EXPECTED['expected_print_roots']}
def main():
    ap=argparse.ArgumentParser();ap.add_argument('log',nargs='?');ap.add_argument('--self-test',action='store_true');args=ap.parse_args()
    if args.self_test:
        names=EXPECTED['expected_print_roots']
        good='\n'.join("'"+n+"' depends on axioms: [propext, Classical.choice, Quot.sound]" for n in names)
        assert len(validate(good))==len(names)
        rejected=[]
        for label,bad in [('sorry',good.replace('propext','sorryAx',1)),('missing','\n'.join(good.splitlines()[1:])),
                          ('custom_axiom',good.replace('propext','unjustifiedAxiom',1)),('compile_error',good+'\nerror: No goals to be solved')]:
            try:validate(bad)
            except ValueError:rejected.append(label)
            else:raise AssertionError('bad fixture accepted: '+label)
        result={'status':'PASS_SYNTHETIC_AUDITOR_SELFTEST_ONLY','print_roots':len(names),'candidate_public_theorems':len(EXPECTED['candidate_public_theorems']),
                'bad_fixtures_rejected':rejected,'real_lean_audit':'not run','lean_invocations':0}
        assert not (OUT/'FREEZE.json').exists(), 'do not overwrite frozen evidence'
        (OUT/'audit-selftest.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    else:
        if not args.log:ap.error('provide actual successful Lean Audit.lean output')
        p=Path(args.log);result={'status':'PASS_PROVIDED_AXIOM_LOG','log_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                               'public_axioms':validate(p.read_text(encoding='utf-8-sig')),
                               'boundary':'successful Lean command and exact source closure must also be bound by the parent verifier'}
    print(json.dumps(result,indent=2))
if __name__=='__main__':main()
