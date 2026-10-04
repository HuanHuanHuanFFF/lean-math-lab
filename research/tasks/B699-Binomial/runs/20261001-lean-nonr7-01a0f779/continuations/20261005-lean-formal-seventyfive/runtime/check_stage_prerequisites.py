"""Validate static restore-stage contracts, without executing Lean or restore."""
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
rows=[]
for path in sorted(set(HERE.glob('*-stage-spec.json')) | set(HERE.glob('*-stage-spec-corrected-candidate.json'))):
    spec=json.loads(path.read_text())
    available={r['stageName'] for r in spec['reusedPrerequisiteArtifacts']}
    missing=[]
    for stage in spec['stages']:
        missing.extend({'stage':stage['name'],'prerequisite':p} for p in stage.get('prerequisites',[]) if p not in available)
        available.add(stage['name'])
    rows.append({'spec':path.name,'status':'fail' if missing else 'pass','missing':missing})
out={'check':'static artifact.stageName or earlier closed stage contract; no mathematical acceptance','specs':rows}
(HERE/'STAGE-PREREQUISITE-CHECK.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out))
