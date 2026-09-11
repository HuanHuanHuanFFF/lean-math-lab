from __future__ import annotations
from fractions import Fraction
from pathlib import Path
import hashlib
import json

OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
IMPORT_COMMON = 'research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon'
IMPORT_EXPERIMENT = 'research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-factorial-extra-pairs-5e2d13bb»'
NAMESPACE = 'Math.B699.ElementaryFactorialBound'


def horner(coefficients):
    result = coefficients[-1]
    for value in reversed(coefficients[:-1]):
        result = f'({value} + x * {result})'
    return result


def generate(row, template):
    c, d, a, b = (row[key] for key in ('c', 'd', 'a', 'b'))
    tag = f'{c}_{d}'
    beta = Fraction(row['beta'])
    bn, bd = beta.numerator, beta.denominator
    numerator = ' * '.join(f'({a} * m + {j})' for j in range(1, a))
    denominator = ' * '.join([f'({d} * m + {j})' for j in range(1, d)] * 2 +
                             [f'({b} * m + {j})' for j in range(1, b)])
    certificate = f"{row['residual_content']} * {horner(row['primitive_coefficients_ascending'])}"
    prefix = f'''import {IMPORT_COMMON}

/-!
# Additional actual BFT factorial prefactor: (c,d)=({c},{d})

UNCOMPILED CANDIDATE. The imported common module is accepted under the source
hashes in INPUT_SOURCES.json; this file has not been compiled or axiom-audited.
The complete actual factorial proof follows accepted Factorial3D2.lean, with
an independently computed positive-coefficient certificate for this fixed pair.
No recurrence, factorial bound, or HeightValid hypothesis is assumed.

Source: BFT author manuscript 2007-02-26, (3.1)--(3.3) and page-10 substitution;
PDF SHA256 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.
Only the factorial prefactor is covered. No G/theta, integral maximum, or
B699 original-index claim is made.
-/

namespace {NAMESPACE}

/-- Exact numerator after cancellation of positive endpoint factors. -/
def numerator_{tag} (m : ℚ) : ℚ :=
  {numerator}

def denominator_{tag} (m : ℚ) : ℚ :=
  {denominator}

def ratio_{tag} (m : ℚ) : ℚ :=
  {a} * numerator_{tag} m /
    ({b} * {d} ^ 2 * m * (m + 1) * denominator_{tag} m)

/-- All coefficients of the residual in x=m-1 are strictly positive.
The literal integer identity is a proof obligation for ring, not an input axiom. -/
theorem certificate_{tag} (x : ℚ) (hx : 0 ≤ x) :
    {a} * {bd} * (x + 3) * numerator_{tag} (x + 1) ≤
      {bn} * {b} * {d} ^ 2 * (x + 2) ^ 3 * denominator_{tag} (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ {certificate} := by positivity
    _ = {bn} * {b} * {d} ^ 2 * (x + 2) ^ 3 * denominator_{tag} (x + 1) -
        {a} * {bd} * (x + 3) * numerator_{tag} (x + 1) := by
      unfold numerator_{tag} denominator_{tag}
      ring

theorem ratio_bound_{tag} (m : ℚ) (hm : 1 ≤ m) :
    ratio_{tag} m ≤ beta {c} {d} * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_{tag} (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_{tag} m := by
    unfold denominator_{tag}
    positivity
  have hbeta : beta {c} {d} = ({bn} : ℚ) / {bd} := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- The actual factorial recurrence for all k, with m=k+1.
All subtracted natural-number indices are nonnegative on this domain. -/
theorem factorial_step_zero_{tag} (k : ℕ) :
    factorialTerm {c} {d} 0 (k + 2) =
      factorialTerm {c} {d} 0 (k + 1) * ratio_{tag} ((k : ℚ) + 1) := by
  change ((({a} * (k + 2)).factorial : ℕ) : ℚ) /
      ((((({d} * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        ((({b} * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    ((({a} * (k + 1)).factorial : ℕ) : ℚ) /
      ((((({d} * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        ((({b} * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_{tag} ((k : ℚ) + 1)
  have ha : {a} * (k + 2) = {a} * (k + 1) + {a} := by omega
  have hd : {d} * (k + 2) = {d} * (k + 1) + {d} := by omega
  have hb : {b} * (k + 2) - 1 = ({b} * (k + 1) - 1) + {b} := by omega
  have hp : ({b} * (k + 1) - 1) + 1 = {b} * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast ({a} * (k + 1)) {a},
    factorial_add_cast ({d} * (k + 1)) {d},
    factorial_add_cast ({b} * (k + 1) - 1) {b}, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_{tag} numerator_{tag} denominator_{tag}
  field_simp
  <;> ring

'''
    start = template.index('theorem factorial_step_bound_zero_3_2')
    finish = template.index('#print axioms')
    suffix = template[start:finish]
    for before, after in [('_3_2', '_' + tag),
                          ('factorialTerm 3 2', f'factorialTerm {c} {d}'),
                          ('factorialTerm_pos 3 2', f'factorialTerm_pos {c} {d}'),
                          ('beta 3 2', f'beta {c} {d}'),
                          ('factorial_delta_one_eq 3 2', f'factorial_delta_one_eq {c} {d}'),
                          ('(2 : ℚ) ^ 2 / ((5 : ℚ) * (1 : ℚ))', f'({d} : ℚ) ^ 2 / (({a} : ℚ) * ({b} : ℚ))')]:
        assert before in suffix
        suffix = suffix.replace(before, after)
    ks = [Fraction(case['K']) for case in row['cases']]
    extras = f'''/-- Both actual initial constants are recorded separately.
There is no assumption that the delta=1 constant is smaller. -/
theorem factorial_initial_constants_{tag} :
    2 * factorialTerm {c} {d} 0 1 / beta {c} {d} = ({ks[0].numerator} : ℚ) / {ks[0].denominator} ∧
    2 * factorialTerm {c} {d} 1 1 / beta {c} {d} = ({ks[1].numerator} : ℚ) / {ks[1].denominator} := by
  norm_num [factorialTerm, beta, Nat.factorial]

/-- Tight K_delta bound for the downstream Q/E growth constants. -/
theorem factorial_strict_k_{tag} (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm {c} {d} delta m <
      (2 * factorialTerm {c} {d} delta 1 / beta {c} {d}) * beta {c} {d} ^ m := by
  exact strict_bound_from_step (by norm_num [beta]) (factorialTerm_pos {c} {d} delta 1)
    (fun n hn => factorial_step_bound_{tag} delta n hdelta hn) hm

/-- The middle envelope itself is strictly below beta^m/2. -/
theorem factorial_envelope_lt_half_{tag} (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    (2 * factorialTerm {c} {d} delta 1 / beta {c} {d}) *
        beta {c} {d} ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta {c} {d} ^ m := by
  have hbeta : 0 < beta {c} {d} := by norm_num [beta]
  have hK : 2 * factorialTerm {c} {d} delta 1 / beta {c} {d} < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hF : 0 < factorialTerm {c} {d} delta 1 := factorialTerm_pos {c} {d} delta 1
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * factorialTerm {c} {d} delta 1 / beta {c} {d}) * beta {c} {d} ^ m := by
    positivity
  calc
    _ < (2 * factorialTerm {c} {d} delta 1 / beta {c} {d}) * beta {c} {d} ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith
    _ < (1 / 2 : ℚ) * beta {c} {d} ^ m := mul_lt_mul_of_pos_right hK (pow_pos hbeta m)

/-- The requested complete strengthened bound for every m>=1 and both deltas. -/
theorem factorial_full_bound_{tag} (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm {c} {d} delta m ≤
        (2 * factorialTerm {c} {d} delta 1 / beta {c} {d}) *
          beta {c} {d} ^ m * (m : ℚ) / ((m : ℚ) + 1) ∧
      (2 * factorialTerm {c} {d} delta 1 / beta {c} {d}) *
        beta {c} {d} ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta {c} {d} ^ m := by
  exact ⟨factorial_telescoping_{tag} delta m hdelta hm,
    factorial_envelope_lt_half_{tag} delta m hdelta hm⟩

'''
    theorem_names = [f'{stem}_{tag}' for stem in (
        'certificate', 'ratio_bound', 'factorial_step_zero', 'factorial_step_bound_zero',
        'factorial_step_bound', 'factorial_telescoping', 'factorial_uniform',
        'factorial_initial_constants', 'factorial_strict_k', 'factorial_envelope_lt_half', 'factorial_full_bound')]
    prints = '\n'.join(f'#print axioms {NAMESPACE}.{name}' for name in theorem_names)
    content = prefix + suffix + extras + prints + f'\n\nend {NAMESPACE}\n'
    return content, theorem_names


def main():
    data = json.loads((OUT / 'extra-factorial-certificates.json').read_text())
    template_path = RUN / 'lean/Factorial/Factorial3D2.lean'
    template = template_path.read_text(encoding='utf-8')
    source_map = json.loads((OUT / 'INPUT_SOURCES.json').read_text())['sources']
    template_key = next(key for key in source_map if key.endswith('/Factorial3D2.lean'))
    assert hashlib.sha256(template_path.read_bytes()).hexdigest() == source_map[template_key]['sha256']
    files = []
    for row in data['pairs']:
        content, theorem_names = generate(row, template)
        filename = f"Factorial{row['c']}D{row['d']}.lean"
        path = OUT / filename
        path.write_text(content, encoding='utf-8')
        files.append({'path': filename, 'bytes': path.stat().st_size,
                      'sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
                      'imports': [IMPORT_COMMON], 'public_theorems': theorem_names,
                      'status': 'uncompiled candidate'})
    entry = '\n'.join(f'import {IMPORT_EXPERIMENT}.{Path(row["path"]).stem}' for row in files)
    entry += '\n\n/-! UNCOMPILED: exactly three additional actual factorial pairs. See README.md. -/\n'
    (OUT / 'ExtraFactorialBound.lean').write_text(entry, encoding='utf-8')
    files.append({'path': 'ExtraFactorialBound.lean', 'bytes': len(entry.encode('utf-8')),
                  'sha256': hashlib.sha256(entry.encode('utf-8')).hexdigest(),
                  'status': 'uncompiled entry point'})
    (OUT / 'candidate-sources.json').write_text(json.dumps({'files': files}, indent=2) + '\n', encoding='utf-8')
    print(json.dumps([{'path': item['path'], 'bytes': item['bytes'], 'sha256': item['sha256']} for item in files], indent=2))


if __name__ == '__main__':
    main()
