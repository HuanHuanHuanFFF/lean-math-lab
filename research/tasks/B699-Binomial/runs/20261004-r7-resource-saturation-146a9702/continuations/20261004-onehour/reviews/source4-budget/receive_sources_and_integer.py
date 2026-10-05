from pathlib import Path
from functools import lru_cache
from itertools import product
import json,hashlib,time
C=Path(__file__).resolve().parents[2]; R=C.parents[1]; ROOT=R.parents[3]
O=Path(__file__).resolve().parent
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
source=[]
for r in range(3,9):
    for a in range(r//2+1):source.append((r,a,2 if 2*a==r else 1,DIAG[r-3] if 2*a==r else OFF[r-3][a]))
manifest=json.loads((C/'experiments/main/source4-manifest.json').read_text(encoding='utf-8-sig'))
received=[]
for st in manifest:
    idx=st['idx']; prefix=C/f'experiments/main/e1-kernels/s{idx}'
    assert st['h']==107 and sum(st['v'])==90 and st['L']==215
    inp=prefix.with_suffix('.input.txt').read_text().splitlines()
    assert tuple(map(int,inp[0].split()))==(107,215,257,0,21)
    pts=[tuple(map(int,x.split())) for x in inp[1:]]
    expected=[(r,a,w,max(lower-st['v'][r-3],0)) for r,a,w,lower in source]
    assert pts==expected
    trace=prefix.with_suffix('.trace.tsv')
    assert hashlib.sha256(trace.read_bytes()).hexdigest()==st['trace_sha256']
    actual=json.loads((O/f'receive-s{idx}.json').read_text(encoding='utf-8-sig'))
    original=json.loads(prefix.with_suffix('.json').read_text(encoding='utf-8-sig'))
    assert actual['verified'] and actual['dimension']==0 and actual['min_weight']==216
    assert all(actual[k]==original[k] for k in ('conditions','nonredundant','dimension','min_weight','weights'))
    assert len(actual['weights'])==108 and sum(max(0,215-w+1) for w in actual['weights'])==0
    received.append(dict(index=idx,v=st['v'],input_verified_against_fixed21=True,trace_sha256=st['trace_sha256'],conditions=actual['conditions'],dimension=0,min_weight=216,receiver='487596ab5c3ed683aef60cc5e0a930d0002e54a40e90edea471407827fa8e196'))
assert {s['index'] for s in received}=={1583,1585,1588,1592}
# A new independent direct check of all 21 orders for the D315 witness.
witness=json.loads((C/'experiments/main/source-line-integer315.json').read_text(encoding='utf-8-sig'))
t=witness['t'];v=witness['v'];assert len(t)==9 and len(v)==6 and all(type(x)==int and x>=0 for x in t+v)
orders=[(r,a,lower,v[r-3]+(2*t[a] if 2*a==r else t[a]+t[r-a])) for r,a,w,lower in source]
assert all(got>=need for r,a,need,got in orders)
assert list(map(list,orders))==witness['source_orders']
assert sum(v)+2*sum(t)==witness['D']==315
out=dict(source4=received,pure_source_line_integer_witness=dict(t=t,v=v,D=315,source_orders=orders,accepted='all fixed21 lower orders met; with independent odd6 lower-bound receipt the pure product minimum equals315'))
(O/'source4-and-integer315-result.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(dict(source4_states=[s['index'] for s in received],conditions=[s['conditions'] for s in received],source4_accepted=True,integer315_all21_accepted=True)))
