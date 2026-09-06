from pathlib import Path
import json
base=Path('research/tasks/M1-Hypercomb/independent'); target=base/'SectorCertificate.lean'
text=target.read_text(encoding='utf-8')
# Keep the manually specified coefficient identity as a separate reproducible resource.
identity=base/'resultant-substitution.lean.txt'
if not identity.exists():
 start=text.index('/-- The scalar polynomial')
 identity.write_text(text[start:text.index('end M1Sector',start)],encoding='utf-8')
if 'def resultantCore' not in text: text=text.replace('end M1Sector',identity.read_text(encoding='utf-8')+'\nend M1Sector')
record=json.loads((base/'bezout.json').read_text())
def lean(expr): return expr.replace('**',' ^ ').replace('*',' * ')
extra=''
for name,key in [('bezoutU','U'),('bezoutV','V')]:
 extra+=f'\ndef {name} (c1 c2 c3 c4 u : K) : K :=\n  {lean(record[key])}\n'
extra+='''
omit [LinearOrder K] [IsStrictOrderedRing K] in
theorem bezout_identity (c1 c2 c3 c4 u : K) :
    resultantCore c1 c2 c3 c4 =
      bezoutU c1 c2 c3 c4 u * (c1 - 2 * c2 * u + 8 * c4 * u ^ 3) +
      bezoutV c1 c2 c3 c4 u * (1 - c1 * u - 2 * c2 * u ^ 2 + 8 * c3 * u ^ 3 - 8 * c4 * u ^ 4) := by
  unfold resultantCore bezoutU bezoutV
  ring

/-- Algebraic exclusion of the simultaneous real/imaginary boundary equations. -/
theorem no_boundary_solution (q e s u : K) (hq : 0 ≤ q) (he : 0 ≤ e)
    (hs : 0 ≤ s) (hs4 : s ≤ 4) :
    let a := q + 1
    let c1 := 2 * (2 * a + 1 + e) + s
    let c2 := (2 * a + 1 + e) ^ 2 + 2 * a * (a + 1) + s * (a + 1)
    let c3 := 2 * a * (a + 1) * (2 * a + 1 + e)
    let c4 := a ^ 2 * (a + 1) ^ 2
    ¬(c1 - 2 * c2 * u + 8 * c4 * u ^ 3 = 0 ∧
      1 - c1 * u - 2 * c2 * u ^ 2 + 8 * c3 * u ^ 3 - 8 * c4 * u ^ 4 = 0) := by
  dsimp only
  intro hb
  have hf := certificate_pos q e s hq he hs hs4
  have hcore : resultantCore (2 * (2 * (q + 1) + 1 + e) + s)
      ((2 * (q + 1) + 1 + e) ^ 2 + 2 * (q + 1) * ((q + 1) + 1) + s * ((q + 1) + 1))
      (2 * (q + 1) * ((q + 1) + 1) * (2 * (q + 1) + 1 + e))
      ((q + 1) ^ 2 * ((q + 1) + 1) ^ 2) < 0 := by
    rw [resultant_substitution]
    have hp : 0 < (q + 1) ^ 2 * ((q + 1) + 1) ^ 2 := by positivity
    exact mul_neg_of_neg_of_pos (neg_neg_of_pos hp) hf
  have hz := bezout_identity (2 * (2 * (q + 1) + 1 + e) + s)
      ((2 * (q + 1) + 1 + e) ^ 2 + 2 * (q + 1) * ((q + 1) + 1) + s * ((q + 1) + 1))
      (2 * (q + 1) * ((q + 1) + 1) * (2 * (q + 1) + 1 + e))
      ((q + 1) ^ 2 * ((q + 1) + 1) ^ 2) u
  rw [hb.1, hb.2, mul_zero, mul_zero, add_zero] at hz
  exact (ne_of_lt hcore) hz

#print axioms bezout_identity
#print axioms no_boundary_solution
'''
if 'def bezoutU' not in text: text=text.replace('end M1Sector',extra+'\nend M1Sector')
for name in ['decomposition','resultant_substitution']:
 if '\nomit [LinearOrder K] [IsStrictOrderedRing K] in\ntheorem '+name not in text:
  text=text.replace('\ntheorem '+name,'\nomit [LinearOrder K] [IsStrictOrderedRing K] in\ntheorem '+name)
text=text.replace('/-- Exact substitution identity','/- Exact substitution identity')
for name in ['decomposition','certificate_pos','resultant_substitution','bezout_identity','no_boundary_solution']:
 ax='[propext, Classical.choice, Quot.sound]' if name in ['certificate_pos','no_boundary_solution'] else '[propext, Quot.sound]'
 if "'M1Sector."+name+"' depends on axioms:" not in text:
  text=text.replace('#print axioms '+name,"/-- info: 'M1Sector."+name+"' depends on axioms: "+ax+" -/\n#guard_msgs in\n#print axioms "+name)
target.write_text(text,encoding='utf-8')
print('extended sector certificate',len(text))
