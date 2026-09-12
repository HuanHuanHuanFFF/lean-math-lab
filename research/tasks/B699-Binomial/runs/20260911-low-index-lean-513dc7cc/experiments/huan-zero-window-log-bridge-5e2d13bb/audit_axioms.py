"""Fail-closed check of future actual Lean axiom output for this source package.
This does not run Lean and cannot replace successful compiler exit codes.
--self-test uses synthetic strings only and certifies no Lean declaration.
"""
from pathlib import Path
import argparse,json,re

HERE=Path(__file__).resolve().parent
ALLOWED={'propext','Classical.choice','Quot.sound'}

def inspect_output(text,expected):
    if not text.strip():
        raise ValueError('empty axiom output')
    if re.search(r'\berror:',text,re.I):
        raise ValueError('compiler error appears in supplied output')
    found={}
    for name,body in re.findall(r"'([^']+)'\s+depends on axioms:\s*\[([^\]]*)\]",text,re.S):
        found.setdefault(name,set()).update(a.strip() for a in body.split(',') if a.strip())
    for name in re.findall(r"'([^']+)'\s+does not depend on any axioms",text):
        found.setdefault(name,set())
    missing=sorted(set(expected)-set(found))
    if missing:
        raise ValueError('missing roots: '+', '.join(missing))
    unexpected={k:sorted(found[k]-ALLOWED) for k in expected if found[k]-ALLOWED}
    if unexpected:
        raise ValueError('unexpected transitive axioms: '+json.dumps(unexpected))
    return {'output_nonempty':True,'expected_root_count':len(expected),'observed_root_count':len(expected),'axioms':{k:sorted(found[k]) for k in expected},'all_in_allowlist':True,'compiler_exit_code_must_be_checked_separately':True}

def expected_roots():
    return json.loads((HERE/'record.json').read_text(encoding='utf-8'))['static_audit']['roots']

def self_test():
    roots=expected_roots()
    lines=[f"'{r}' depends on axioms: [propext, Classical.choice, Quot.sound]" for r in roots]
    good='\n'.join(lines)
    assert inspect_output(good,roots)['observed_root_count']==len(roots)
    rejected={}
    cases={'empty':'','missing_final_root':'\n'.join(lines[:-1]),'sorryAx':good.replace('Quot.sound','Quot.sound, sorryAx',1),'other_axiom':good.replace('Quot.sound','Quot.sound, Lean.ofReduceBool',1),'compiler_error':good+'\nerror: failed proof'}
    for label,text in cases.items():
        try:
            inspect_output(text,roots)
        except ValueError:
            rejected[label]=True
        else:
            raise AssertionError('unsafe log accepted: '+label)
    return {'synthetic_only':True,'root_count':len(roots),'valid_fixture_accepted':True,'invalid_fixtures_rejected':rejected,'is_Lean_acceptance':False}

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('logs',nargs='*',type=Path)
    ap.add_argument('--output',type=Path)
    ap.add_argument('--self-test',action='store_true')
    args=ap.parse_args()
    if args.self_test:
        result=self_test()
    else:
        if not args.logs:
            ap.error('provide actual Lean log paths or --self-test')
        result=inspect_output('\n'.join(p.read_text(encoding='utf-8-sig',errors='strict') for p in args.logs),expected_roots())
        result['logs']=[str(p.resolve()) for p in args.logs]
        result['kind']='actual_supplied_log_audit'
    if args.output:
        args.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(result,ensure_ascii=False))

if __name__=='__main__':
    main()