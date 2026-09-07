from pathlib import Path
import argparse,re,json
root=Path(__file__).resolve().parent
p=argparse.ArgumentParser()
p.add_argument('--certify',action='store_true')
p.add_argument('--include-support',action='store_true')
a=p.parse_args()
names=[]
for filename in ['SumTwoPositions.lean','SumFiveAdic.lean']+(['SumPrimeSupport.lean'] if a.include_support else []):
    text=(root/filename).read_text(encoding='utf-8-sig')
    names.extend('B686Round6B.'+n for n in re.findall(r'^theorem\s+(\w+)',text,re.M))
assert len(names)==len(set(names))
entry='SumPrimeSupport' if a.include_support else 'SumFiveAdic'
imports='import research.tasks.«B686-Four».round6.b.'+entry+'\n\n'
if not a.certify:
    (root/'AuditPending.lean').write_text(imports+'\n'.join('#print axioms '+n for n in names)+'\n',encoding='utf-8')
    print(json.dumps({'kind':'pending axiom observation','theorems':len(names),'entry':entry}))
else:
    log=(root/'lean-audit-pending.log').read_text(encoding='utf-8-sig')
    matches=dict(re.findall(r"'(B686Round6B\.[^']+)' depends on axioms: (\[[^\]]*\])",log))
    missing=[n for n in names if n not in matches]
    assert not missing,missing
    permitted={'propext','Classical.choice','Quot.sound'}
    blocks=[]
    for n in names:
        axioms={v.strip() for v in matches[n][1:-1].split(',') if v.strip()}
        assert axioms<=permitted,(n,axioms)
        blocks.append('/-- info: \''+n+'\' depends on axioms: '+matches[n]+' -/\n#guard_msgs in\n#print axioms '+n)
    (root/'AxiomAudit.lean').write_text(imports+'\n\n'.join(blocks)+'\n',encoding='utf-8')
    (root/'axiom-summary.json').write_text(json.dumps({'entry':entry,'count':len(names),'axioms':{n:matches[n] for n in names}},indent=2),encoding='utf-8')
    print(json.dumps({'kind':'executable guards generated; require Lean recheck','theorems':len(names),'entry':entry}))
