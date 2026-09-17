"""Create the immutable stage-02 file manifest. No Git operation."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json

here=Path(__file__).resolve().parent
run=here.parent.parent
notes=run/'notes/cubic'
files={notes/'02-integral-polynomial-bridge.md',notes/'02-execution-record.md',
       here/'submit_magma_file.py',Path(__file__).resolve()}
for prefix in ('stage02','stage03_nf_integral_points','magma-form','magma-mw'):
    files.update(p for p in here.glob(prefix+'*') if p.is_file())
rows=[{'path':p.relative_to(run).as_posix(),'bytes':p.stat().st_size,
       'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in sorted(files)]
result={'utc':datetime.now(timezone.utc).isoformat(),'stage':'cubic-02',
        'baseline':'a7468a887224e35906d8486bd18d21d0e8368393',
        'status':'mathematical integral-map bridge verified; complete integral-points solver unsupported',
        'files':rows}
out=notes/'02-FROZEN.json'
with out.open('x',encoding='utf-8') as stream:json.dump(result,stream,ensure_ascii=False,indent=2);stream.write('\n')
print(json.dumps({'path':str(out),'files':len(rows),'bytes':sum(r['bytes'] for r in rows),
                  'sha256':hashlib.sha256(out.read_bytes()).hexdigest()},separators=(',',':')))
