"""Exact coefficient/endpoint-driven Lean bounds for main's 11 G0 - 32 G1."""
from pathlib import Path
from fractions import Fraction as Q
import json
HERE=Path(__file__).resolve().parent
r=json.loads((HERE/'contact124-input.json').read_text())['row'];p={}
for a,b,c in r['auxiliaries'][0]['terms']:p[a,b]=11*c
for a,b,c in r['auxiliaries'][1]['terms']:p[a,b]=p.get((a,b),0)-32*c
L,U,M=83894387,83894390,10000000
bounds=[(36372240,36372240),(-62000000,-61000000),(-277000000,-276000000),(477000000,478000000),(-44000000,-43000000),(-17000,-16000)]
def expr(terms):
 return ' + '.join(f'({c} : ℤ) * z ^ {a} * d ^ {b}' for (a,b),c in terms if c) or '0'
source='''import research.tasks.«B686-Four».round4.worker.K5CubicTail

/-! Tail height and nonzero bounds for an exact combination of main's saturated
six-contact auxiliaries. No numerical root approximation is an assumption. -/
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round5Tail
open B686Round4K5

def optimizedAuxiliary (z d : ℤ) : ℤ :=
  '''+expr(p.items())+'''

theorem refined_strip (n d : ℤ) (hn : 0 ≤ n) (hd : 20000 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n) :
    83894387 * d ≤ 10000000 * error n d 3 ∧
      10000000 * error n d 3 ≤ 83894390 * d := by
  let x := n + 3
  let y := n + d + 3
  have hx : 3 ≤ x := by dsimp [x]; omega
  have hxy : x < y := by dsimp [x, y]; omega
  have hcent : central y = 4 * central x := by
    simpa only [central_identity, x, y] using heq
  obtain ⟨hp, hg⟩ := central_power_bounds x y hx hxy hcent
  have hx5 : 0 < x ^ 5 := by positivity
  have hs := rational_strip n d hn (by omega) heq
  have hx60000 : 60000 ≤ x := by dsimp [x]; omega
  have hl : 31298129 * d < 10000000 * x := by
    by_contra hnot
    have hf : 41298129 * x ≤ 31298129 * y := by dsimp [x, y] at *; omega
    have ht := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 41298129 * x) hf 5
    simp only [mul_pow] at ht
    norm_num at ht
    nlinarith only [ht, hp, hx5]
  have hu : 10000000 * x < 31298130 * d := by
    by_contra hnot
    have hf : 31298130 * y ≤ 41298130 * x := by dsimp [x, y] at *; omega
    have ht := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 31298130 * y) hf 5
    simp only [mul_pow] at ht
    norm_num at ht
    have hx2 := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 60000) hx60000 2
    have hx3 : 0 < x ^ 3 := by positivity
    have hbig := mul_le_mul_of_nonneg_right hx2 hx3.le
    have hid : x ^ 2 * x ^ 3 = x ^ 5 := by ring
    rw [hid] at hbig
    norm_num at hbig
    nlinarith only [ht, hg, hx3, hbig]
  dsimp [x, error] at *
  omega

theorem scaled_monomial_bounds (z d : ℤ) (a b : ℕ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    83894387 ^ a * d ^ (a + b) ≤ 10000000 ^ a * z ^ a * d ^ b ∧
      10000000 ^ a * z ^ a * d ^ b ≤ 83894390 ^ a * d ^ (a + b) := by
  have hz : 0 ≤ z := by omega
  have h1 := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 83894387 * d) hl a
  have h2 := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 10000000 * z) hu a
  have hb : 0 ≤ d ^ b := pow_nonneg hd b
  have h1' := mul_le_mul_of_nonneg_right h1 hb
  have h2' := mul_le_mul_of_nonneg_right h2 hb
  simp only [mul_pow, pow_add] at *
  constructor <;> nlinarith only [h1', h2']

'''
endpoint=[]
for k,(low,up) in enumerate(bounds):
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
source+='''theorem optimized_bounds (z d : ℤ) (hd : 20000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -20000 * d ^ 5 < optimizedAuxiliary z d ∧ optimizedAuxiliary z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  have hd1 : 1 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := part0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := part1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := part2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := part3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := part4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := part5_bounds z d hd0 hl hu
  have ha : (1 : ℤ) ≤ d ^ 3 := one_le_pow₀ hd1
  have hb : d ^ 1 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 1 ≤ 3)
  have hc : d ^ 2 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 2 ≤ 3)
  have hrest : -1000000000 * d ^ 3 ≤ part0 z d + part1 z d + part2 z d + part3 z d ∧
      part0 z d + part1 z d + part2 z d + part3 z d ≤ 1000000000 * d ^ 3 := by
    norm_num at h0l h0u h1l h1u hb
    constructor <;> nlinarith only [h0l,h0u,h1l,h1u,h2l,h2u,h3l,h3u,ha,hb,hc]
  have h54 : 20000 * d ^ 4 ≤ d ^ 5 := by
    have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 4)
    nlinarith only [h]
  have h53 : 400000000 * d ^ 3 ≤ d ^ 5 := by
    have hsq := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 20000) hd 2
    have h := mul_le_mul_of_nonneg_right hsq (pow_nonneg hd0 3)
    norm_num at h
    nlinarith only [h]
  have hd5 : 0 < d ^ 5 := by positivity
  have hid : optimizedAuxiliary z d = part0 z d + part1 z d + part2 z d +
      part3 z d + part4 z d + part5 z d := by
    unfold optimizedAuxiliary part0 part1 part2 part3 part4 part5
    ring
  rw [hid]
  constructor <;> nlinarith only [hrest.1,hrest.2,h4l,h4u,h5l,h5u,h54,h53,hd5]

/-- info: 'B686Round5Tail.refined_strip' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms refined_strip
/-- info: 'B686Round5Tail.optimized_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms optimized_bounds
end B686Round5Tail
'''
(HERE/'ContactTail.lean').write_text(source)
(HERE/'contact-tail-endpoints.json').write_text(json.dumps({'evidence':'exact rational coefficient bounds; generated Lean checks independently','L':L,'U':U,'M':M,'bounds':endpoint},indent=2)+'\n')
print('generated ContactTail.lean',len(source),'bytes')
