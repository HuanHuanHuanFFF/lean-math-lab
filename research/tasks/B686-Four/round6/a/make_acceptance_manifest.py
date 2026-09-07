"""Record actual accepted artifacts, source hashes, executable guards and gaps."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,re,subprocess,sys
HERE=Path(__file__).resolve().parent
names=['Contact.lean','Tail.lean','Positions.lean']+[f'Finite{i}.lean' for i in range(8)]+['Finite.lean']
optional=['FourHeight.lean','FourTail.lean','FourPositions.lean','Integration.lean']
if '--high' in sys.argv:names+=optional
records=[]
for name in names:
    p=HERE/name;text=p.read_text();o=p.with_suffix('.olean')
    assert o.exists(),str(o)
    assert not re.search(r'\b(sorry|admit|native_decide)\b',text),name
    assert not re.search(r'^\s*axiom\s',text,re.M),name
    guards=re.findall(r"/-- info: '([^']+)' depends on axioms: \[([^\]]+)\] -/\s*#guard_msgs in\s*#print axioms ([^\n]+)",text)
    for full,axioms,short in guards:
        assert full.endswith('.'+short.strip()),(full,short)
        assert set(a.strip() for a in axioms.split(','))<={'propext','Classical.choice','Quot.sound'}
    records.append({'file':name,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'olean_mtime_utc':datetime.fromtimestamp(o.stat().st_mtime,timezone.utc).isoformat(),'executable_axiom_guards':[{'declaration':full,'axioms':[a.strip() for a in axioms.split(',')]} for full,axioms,_ in guards]})
report={'utc':datetime.now(timezone.utc).isoformat(),'toolchain':'Lean 4.33.1','evidence':'Source and executable-guard manifest; exit-code provenance in compilation records and support reports','files':records,'guard_count':sum(len(r['executable_axiom_guards']) for r in records),'compile_provenance':{'Contact.lean':'A direct compile attempt4 exit0; command in exploration.md','Tail.lean':'A direct compile attempt1 exit0; tail-attempt1.log','Positions.lean':'A direct compile attempt1 exit0','Finite0..7/Finite':'support recursive builder exit0; ../support/a-finite-prebuild-manifest.json','FourHeight.lean':'A direct compile attempt1 exit0; four-height-attempt1.log','FourTail.lean':'A direct compile attempt1 exit0; four-tail-attempt1.log','FourPositions.lean':'A direct compile attempt1 exit0; four-positions-attempt1.log','Integration.lean':'A direct joint-import compile attempt1 exit0; integration-attempt1.log'},'pending':[] if '--high' in sys.argv else optional,'scope':'Research subtree only; no formal-library source changed, no publication or original all-k claim'}
(HERE/'acceptance-manifest.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({'files':len(records),'guards':report['guard_count'],'pending':report['pending']},indent=2))
