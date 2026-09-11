#!/usr/bin/env python3
"""Generate Lean proof scripts; no external result enters a theorem as a premise."""
from pathlib import Path
import json, math
run=Path(__file__).resolve().parents[2]
rows=json.loads((run/'input/certificate.json').read_text())['rows']
header='import Mathlib.Tactic.IntervalCases\nimport research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteChecker\n\nnamespace B699.SmoothWindow\n\n'
crt=[r for r in rows if r['kind']=='crt']
s=header
for row in crt:
 n=row['n'];s+=f'theorem crt_row_{n} : CommonFour {n} := by\n  intro j hj hjhalf\n  by_contra hno\n'
 for z,step in enumerate(row['steps']):
  p,e=step['p'],step['e']
  s+=f'  have h{z} := noCommon_mod_le (p:={p}) (e:={e}) hj hjhalf\n    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno\n  norm_num at h{z}\n'

 if len(row['steps'])>1:
  s+='  '+ ' <;> '.join(f"interval_cases q{z} : j % {t['p']**t['e']}" for z,t in enumerate(row['steps']) if t['r']>0)+' <;> omega\n\n'
 else:s+='  omega\n\n'
s+='end B699.SmoothWindow\n'
(run/'lean/FiniteCRT.lean').write_text(s)
bound=[r for r in rows if r['kind']!='crt']
# Keep certificate proof blocks independently compilable and reviewable.
for idx in range(0,len(bound),48):
 block=bound[idx:idx+48];s=header+'set_option maxRecDepth 8192\n\n'
 for row in block:
  n,U=row['n'],row['U'];V=math.comb(n,4)//U;w='true' if row['kind']=='W' else 'false'
  s+=f'theorem bound_row_{n} : CommonFour {n} :=\n  boundCheck_sound (U:={U}) (V:={V}) (useW:={w}) (by decide)\n\n'
 s+='end B699.SmoothWindow\n'
 (run/f'lean/FiniteBounds{idx//48:02}.lean').write_text(s)
print(json.dumps({'CRT_rows':len(crt),'CRT_steps':sum(len(r['steps']) for r in crt),'bounds':len(bound),'bound_blocks':(len(bound)+47)//48}))
