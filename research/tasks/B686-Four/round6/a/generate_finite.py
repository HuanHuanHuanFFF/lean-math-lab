"""New exact all-start certificates for 20000 <= d < 50000."""
from pathlib import Path
from math import prod, comb
from datetime import datetime, timezone
import json
HERE=Path(__file__).resolve().parent
rows=[]
for d in range(20000,50000):
    def f(n):return prod(range(n+d+1,n+d+6))-4*prod(range(n+1,n+6))
    lo,hi=0,4*d
    while hi-lo>1:
        mid=(lo+hi)//2
        if f(mid)>0:lo=mid
        else:hi=mid
    assert f(lo)>0 and f(hi)<0,(d,lo,hi)
    assert all(f(n)==120*(comb(n+d+5,5)-4*comb(n+5,5)) for n in (lo,hi))
    rows.append({'d':d,'cutoff':lo,'lower_sign':f(lo),'upper_sign':f(hi)})
exceptions=[r for r in rows if 312981296038*r['d']//100000000000-3 != r['cutoff']]
cutoff='\n  '.join(f"if d = {r['d']} then {r['cutoff']} else" for r in exceptions)
cutoff+='\n  312981296038 * d / 100000000000 - 3'
header='''import research.tasks.«B686-Four».round5.worker.ContactFinite
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A
open B686Round4K5Finite
'''
modules=[]
for j,start in enumerate(range(20000,50000,4000)):
    end=min(start+4000,50000)
    code=header+f'\ndef cutoff{j} (d : ℕ) : ℕ :=\n  '+cutoff.lstrip()+'\n\n'
    for b in range(start,end,200):
        size=min(200,end-b)
        code+=f'''theorem signs{j}_{b} : ∀ t : Fin {size},
    4 * product 5 (cutoff{j} (t.val + {b})) <
      product 5 (cutoff{j} (t.val + {b}) + (t.val + {b})) ∧
    product 5 (cutoff{j} (t.val + {b}) + 1 + (t.val + {b})) <
      4 * product 5 (cutoff{j} (t.val + {b}) + 1) := by
  decide

'''
    code+=f'''theorem not_four_block{j} (n d : ℕ) (hl : {start} ≤ d) (hu : d < {end}) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
'''
    for b in range(start,end,200):
        if b+200<end:
            code+=f'  by_cases hb{b} : d < {b+200}\n  ·\n'; indent='    '
        else:indent='  '
        code+=indent+f'have h := signs{j}_{b} ⟨d - {b}, by omega⟩\n'
        code+=indent+f'have he : d - {b} + {b} = d := by omega\n'
        code+=indent+'simp only [he] at h\n'
        code+=indent+f'exact not_four_of_adjacent_signs 5 d (cutoff{j} d) n h.1 h.2\n'
    code+=f'''
/-- info: 'B686Round6A.not_four_block{j}' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_block{j}
end B686Round6A
'''
    name=f'Finite{j}.lean';(HERE/name).write_text(code);modules.append(name)
code='\n'.join(f'import research.tasks.«B686-Four».round6.a.{name[:-5]}' for name in modules)
code+='''
namespace B686Round6A

theorem not_four_below_50000 (n d : ℕ) (hd : 5 ≤ d) (hu : d < 50000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases h0 : d < 20000
  · exact B686Round5Finite.not_four_below_20000 n d hd h0
'''
for j,start in enumerate(range(20000,50000,4000)):
    end=min(start+4000,50000)
    if end<50000:code+=f'  by_cases h{j+1} : d < {end}\n  · exact not_four_block{j} n d (by omega) h{j+1}\n'
    else:code+=f'  exact not_four_block{j} n d (by omega) hu\n'
code+='''
/-- info: 'B686Round6A.not_four_below_50000' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_below_50000
end B686Round6A
'''
(HERE/'Finite.lean').write_text(code)
(HERE/'finite-data.json').write_text(json.dumps({'utc':datetime.now(timezone.utc).isoformat(),'evidence':'exact finite computation; Lean acceptance separate','scope':'20000<=d<50000; two adjacent signs per displacement, all n through prior monotonicity','rows':rows},indent=2)+'\n')
print(json.dumps({'rows':len(rows),'exceptions':exceptions,'modules':modules,'maximum_cutoff':rows[-1]['cutoff']}))
