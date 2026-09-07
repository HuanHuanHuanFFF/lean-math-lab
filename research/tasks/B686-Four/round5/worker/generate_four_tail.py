"""Generate exact termwise height proof for main's four-slot (-77,4) auxiliary."""
from pathlib import Path
from fractions import Fraction as Q
import json
HERE=Path(__file__).resolve().parent
r=json.loads((HERE/'contact1245-input.json').read_text())['row']
p={(a,b):c for a,b,c in r['terms']}
L,U,M=83894387,83894390,10000000
bounds={0:(-20000000,0),2:(0,32000000),4:(0,686000000),6:(0,1585000000),8:(0,854000000),10:(-15000,-14000)}
def expr(terms):return ' + '.join(f'({c} : ℤ) * z ^ {a} * d ^ {b}' for (a,b),c in terms if c) or '0'
source='''import research.tasks.«B686-Four».round5.worker.ContactTail

/-! Height and sign for the degree10/order11 noncentral four-position auxiliary.
All polynomial coefficients and interval comparisons are kernel-checked. -/
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round5FourTail
open B686Round5Tail

def optimizedFour (z d : ℤ) : ℤ :=
  '''+expr(p.items())+'\n\n'
endpoint=[]
for k,(low,up) in bounds.items():
 terms=[(ab,c) for ab,c in p.items() if sum(ab)==k]
 exactlow=sum(c*Q(L if c>=0 else U,M)**a for (a,b),c in terms)
 exactup=sum(c*Q(U if c>=0 else L,M)**a for (a,b),c in terms)
 assert low<=exactlow<=exactup<=up,(k,exactlow,exactup)
 endpoint.append({'degree':k,'exact_lower':str(exactlow),'exact_upper':str(exactup),'lean_lower':low,'lean_upper':up})
 source+=f'def part{k} (z d : ℤ) : ℤ :=\n  '+expr(terms)+'\n\n'
 source+=f'''theorem part{k}_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    {low} * d ^ {k} ≤ part{k} z d ∧ part{k} z d ≤ {up} * d ^ {k} := by
'''
 if k==0:source+='  norm_num [part0]\n\n';continue
 for a in range(1,min(k,4)+1):source+=f'  obtain ⟨h{a}l, h{a}u⟩ := scaled_monomial_bounds z d {a} {k-a} hd hl hu\n'
 source+='  norm_num at '+(' '.join(f'h{a}{side}' for a in range(1,min(k,4)+1) for side in ('l','u')))+'\n'
 source+=f'  have hdK : 0 ≤ d ^ {k} := pow_nonneg hd {k}\n'
 source+=f'  unfold part{k}\n  constructor <;> nlinarith only ['+', '.join(['hdK']+[f'h{a}{side}' for a in range(1,min(k,4)+1) for side in ('l','u')])+']\n\n'
source+='''theorem four_bounds (z d : ℤ) (hd : 20000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -20000 * d ^ 10 < optimizedFour z d ∧ optimizedFour z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  have hd1 : 1 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := part0_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := part2_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := part4_bounds z d hd0 hl hu
  obtain ⟨h6l, h6u⟩ := part6_bounds z d hd0 hl hu
  obtain ⟨h8l, h8u⟩ := part8_bounds z d hd0 hl hu
  obtain ⟨h10l, h10u⟩ := part10_bounds z d hd0 hl hu
  have ha : (1 : ℤ) ≤ d ^ 8 := one_le_pow₀ hd1
  have hb : d ^ 2 ≤ d ^ 8 := pow_le_pow_right₀ hd1 (by decide : 2 ≤ 8)
  have hc : d ^ 4 ≤ d ^ 8 := pow_le_pow_right₀ hd1 (by decide : 4 ≤ 8)
  have he : d ^ 6 ≤ d ^ 8 := pow_le_pow_right₀ hd1 (by decide : 6 ≤ 8)
  have hrest : -4000000000 * d ^ 8 ≤ part0 z d + part2 z d + part4 z d + part6 z d + part8 z d ∧
      part0 z d + part2 z d + part4 z d + part6 z d + part8 z d ≤ 4000000000 * d ^ 8 := by
    norm_num at h0l h0u h2l h4l h6l h8l
    constructor <;> nlinarith only [h0l,h0u,h2l,h2u,h4l,h4u,h6l,h6u,h8l,h8u,ha,hb,hc,he]
  have h108 : 400000000 * d ^ 8 ≤ d ^ 10 := by
    have hsq := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 20000) hd 2
    have h := mul_le_mul_of_nonneg_right hsq (pow_nonneg hd0 8)
    norm_num at h
    nlinarith only [h]
  have hd10 : 0 < d ^ 10 := by positivity
  have hid : optimizedFour z d = part0 z d + part2 z d + part4 z d +
      part6 z d + part8 z d + part10 z d := by
    unfold optimizedFour part0 part2 part4 part6 part8 part10
    ring
  rw [hid]
  constructor <;> nlinarith only [hrest.1,hrest.2,h10l,h10u,h108,hd10]

/-- info: 'B686Round5FourTail.four_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms four_bounds
end B686Round5FourTail
'''
(HERE/'FourContactTail.lean').write_text(source)
(HERE/'four-tail-endpoints.json').write_text(json.dumps({'evidence':'exact rational termwise bounds; generated Lean independently checks all inequalities','L':L,'U':U,'M':M,'bounds':endpoint},indent=2)+'\n')
print('generated FourContactTail.lean',len(source),'bytes')
