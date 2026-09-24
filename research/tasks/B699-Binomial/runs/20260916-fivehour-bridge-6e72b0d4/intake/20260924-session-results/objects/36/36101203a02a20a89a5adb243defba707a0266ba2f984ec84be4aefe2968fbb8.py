#!/usr/bin/env python3
from pathlib import Path
import json,sys
ROOT=Path(__file__).resolve().parents[1]
DST=Path(sys.argv[1])
files=[]
for p in sorted((ROOT/'certificates/geometry').rglob('*')):
    if p.is_file(): files.append(p.relative_to(ROOT))
for name in ('coarse_frontier_direct.tsv','coarse_frontier_raw_reverse.tsv','final_E0_frontier.tsv'):
    files.append(Path('certificates/ledger')/name)
for mask in (0,1,3,7,15,31,63): files.append(Path(f'certificates/ledger/stage_{mask}.tsv'))
files.append(Path('certificates/moment/targeted_moments.json'))
for rel in files:
    a=ROOT/rel;b=DST/rel
    assert b.exists(), rel
    assert a.read_bytes()==b.read_bytes(), rel
res=dict(status='PASS_FULL_CLEAN_REPLAY_MIDDOUBLE5_7_TRACE_H57',
         files_compared=len(files),all_byte_identical=True,
         compared=[str(x) for x in files],same_fixed_G_cover_upper_bound=8,
         minimum_equality_h=57,remaining_E0_states=381,
         COVER7_proved=False,Lean=False,repository_writes=False)
(DST/'replay_result.json').write_text(json.dumps(res,indent=2)+'\n')
print(json.dumps(res,indent=2))
