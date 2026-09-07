"""Generate explicit polynomial identities; Lean checks all resulting claims."""
import json
from pathlib import Path
from prym_probe import trim, sub, rem, powmod, irreducible

ROOT = Path(__file__).resolve().parent
P = 7
F = trim([14641, 10648, 3993, 1474, 523, 134, 33, 8, 1], P)


def add(a, b):
    return sub(a, [-v for v in b], P)


def mul(a, b):
    out = [0] * (len(a) + len(b) - 1)
    for i, ai in enumerate(a):
        for j, bj in enumerate(b):
            out[i+j] += ai * bj
    return trim(out, P)


def power(a, n):
    out = [1]
    for _ in range(n):
        out = mul(out, a)
    return out


def divrem(a, b):
    a, b = trim(a, P), trim(b, P)
    q = [0] * max(1, len(a)-len(b)+1)
    while len(a) >= len(b) and a != [0]:
        j, c = len(a)-len(b), a[-1] * pow(b[-1], -1, P) % P
        q[j] = c
        a = sub(a, [0]*j + [c*bi for bi in b], P)
    return trim(q, P), a


def bezout(a, b):
    r0, r1, s0, s1, t0, t1 = a, b, [1], [0], [0], [1]
    while r1 != [0]:
        q, r = divrem(r0, r1)
        r0, r1 = r1, r
        s0, s1 = s1, sub(s0, mul(q, s1), P)
        t0, t1 = t1, sub(t0, mul(q, t1), P)
    assert len(r0) == 1
    inv = pow(r0[0], -1, P)
    return trim([v*inv for v in s0], P), trim([v*inv for v in t0], P)


def expression(a):
    terms = []
    for i in range(len(a)-1, -1, -1):
        if not a[i]:
            continue
        power_x = 'X' if i == 1 else f'X ^ {i}'
        terms.append(str(a[i]) if i == 0 else
                     power_x if a[i] == 1 else f'{a[i]} * {power_x}')
    return ' + '.join(terms) or '0'


def main():
    residues = [[0, 1]]
    quotients = []
    for i in range(8):
        nxt = powmod(residues[-1], P, F, P)
        q, r = divrem(sub(power(residues[-1], P), nxt, P), F)
        assert r == [0]
        quotients.append(q)
        residues.append(nxt)
    assert residues[8] == [0, 1] and irreducible(F, P)
    u, v = bezout(F, sub(residues[4], [0, 1], P))
    assert add(mul(u, F), mul(v, sub(residues[4], [0, 1], P))) == [1]
    data = dict(modulus=P, F=F, residues=residues, quotients=quotients,
                bezout_u=u, bezout_v=v, Lean_verified=False)
    (ROOT / 'frobenius-certificate-data.json').write_text(json.dumps(data, indent=2)+'\n')
    lines = [
        'import Mathlib.FieldTheory.Finite.Extension',
        'import Mathlib.RingTheory.Polynomial.GaussLemma',
        'import Mathlib.Algebra.Polynomial.Eval.Irreducible',
        'import Mathlib.RingTheory.Coprime.Lemmas',
        'import Mathlib.Tactic.ComputeDegree',
        'import Mathlib.Tactic.IntervalCases',
        'import Mathlib.Tactic.NormNum',
        'import Mathlib.Tactic.Ring',
        'import Mathlib.Tactic.ReduceModChar',
        '',
        '/-! Algebraic certificate only: this file does not assert point counts,',
        'good reduction, or a Jacobian/Prym identification. -/',
        'namespace B686Round4Frobenius',
        'noncomputable section',
        'open Polynomial',
        'local instance : Fact (Nat.Prime 7) := ⟨by decide⟩',
        'local notation "K" => ZMod 7',
        f'def f : K[X] := {expression(F)}',
    ]
    for i, r in enumerate(residues):
        lines.append(f'def r{i} : K[X] := {expression(r)}')
    lines += ['', 'set_option maxRecDepth 100000', 'set_option maxHeartbeats 3000000', '',
              '@[irreducible] def frobPower (n : ℕ) : K[X] := X ^ (7 ^ n)', '']
    for i, q in enumerate(quotients[:4]):
        lines += [f'theorem step{i} : f ∣ r{i} ^ 7 - r{i+1} := by',
                  f'  refine ⟨{expression(q)}, ?_⟩',
                  f'  simp only [f, r{i}, r{i+1}]',
                  ('  ring_nf' if i == 0 else
                   '  ring_nf; reduce_mod_char; ring_nf; reduce_mod_char' if i in (1,2) else
                   '  ring_nf; reduce_mod_char'),
                  '']
    lines += [
        'theorem frob_step (n : ℕ) (a b : K[X])',
        '    (h : f ∣ frobPower n - a) (hs : f ∣ a ^ 7 - b) :',
        '    f ∣ frobPower (n + 1) - b := by',
        '  unfold frobPower at *',
        '  have hp := dvd_trans h (sub_dvd_pow_sub_pow (X ^ (7 ^ n)) a 7)',
        '  have hh := dvd_add hp hs',
        '  rw [sub_add_sub_cancel, ← pow_mul, ← pow_succ] at hh',
        '  exact hh', '',
        'theorem power0 : f ∣ frobPower 0 - r0 := by simp [frobPower, r0]',
    ]
    for i in range(4):
        lines.append(f'theorem power{i+1} : f ∣ frobPower {i+1} - r{i+1} := frob_step {i} r{i} r{i+1} power{i} step{i}')
    for i in range(1,5):
        u, v = bezout(F, sub(residues[i], [0,1], P))
        lines += [
            '', f'theorem coprime{i} : IsCoprime f (frobPower {i} - X) := by',
            f'  let u : K[X] := {expression(u)}',
            f'  let v : K[X] := {expression(v)}',
            f'  have hb : u * f + v * (r{i} - X) = 1 := by',
            f'    simp only [u, v, f, r{i}]',
            '    ring_nf; reduce_mod_char',
            f'  obtain ⟨q, hq⟩ := power{i}',
            '  refine ⟨u - v * q, v, ?_⟩',
            '  calc',
            f'    _ = u * f + v * (r{i} - X) + v * (frobPower {i} - r{i} - f * q) := by ring',
            '    _ = 1 := by rw [hb, hq]; ring', '',
        ]
    lines += [
        'theorem f_monic : f.Monic := by unfold f; monicity <;> norm_num',
        'theorem f_degree : f.natDegree = 8 := by unfold f; compute_degree <;> norm_num', '',
        'theorem f_irreducible : Irreducible f := by',
        '  have hf1 : f ≠ 1 := by',
        '    intro h',
        '    have := f_degree',
        '    rw [h, natDegree_one] at this',
        '    omega',
        '  apply (f_monic.irreducible_iff_lt_natDegree_lt hf1).mpr',
        '  intro q hq hdegree hqf',
        '  obtain ⟨hl, hu⟩ := Finset.mem_Ioc.mp hdegree',
        '  rw [f_degree] at hu',
        '  obtain ⟨g, hg, hgq⟩ := exists_irreducible_of_natDegree_pos hl',
        '  have hgf := dvd_trans hgq hqf',
        '  have hgl := Irreducible.natDegree_pos hg',
        '  have hgu := natDegree_le_of_dvd hgq hq.ne_zero',
        '  have hbound : g.natDegree ≤ 4 := by omega',
        '  have hgd : g ∣ frobPower g.natDegree - X := by',
        '    simpa only [frobPower, Nat.card_eq_fintype_card, ZMod.card] using hg.natDegree_dvd_iff_dvd_X_pow_card_pow_sub_X.mp (dvd_refl g.natDegree)',
        '  have hc : IsCoprime f (frobPower g.natDegree - X) := by',
        '    interval_cases he : g.natDegree',
        '    · exact coprime1',
        '    · exact coprime2',
        '    · exact coprime3',
        '    · exact coprime4',
        '  exact hg.not_isUnit (hc.isUnit_of_dvd\' hgf hgd)', '',
        'def integralPolynomial : ℤ[X] := X ^ 8 + 8 * X ^ 7 + 33 * X ^ 6 +',
        '  134 * X ^ 5 + 523 * X ^ 4 + 1474 * X ^ 3 + 3993 * X ^ 2 + 10648 * X + 14641',
        'theorem integral_monic : integralPolynomial.Monic := by',
        '  unfold integralPolynomial',
        '  monicity <;> norm_num',
        'theorem integral_mod_seven : integralPolynomial.map (Int.castRingHom K) = f := by',
        '  simp only [integralPolynomial, f, Polynomial.map_add, Polynomial.map_mul, Polynomial.map_pow,',
        '    Polynomial.map_X, Polynomial.map_ofNat]',
        '  reduce_mod_char',
        'theorem integral_irreducible : Irreducible integralPolynomial := by',
        '  apply Polynomial.Monic.irreducible_of_irreducible_map (Int.castRingHom K) integralPolynomial integral_monic',
        '  rw [integral_mod_seven]',
        '  exact f_irreducible',
        'theorem rational_irreducible : Irreducible (integralPolynomial.map (Int.castRingHom ℚ)) := by',
        '  exact (Polynomial.IsPrimitive.Int.irreducible_iff_irreducible_map_cast integral_monic.isPrimitive).mp integral_irreducible', '',
        '/-- info: \'B686Round4Frobenius.f_irreducible\' depends on axioms: [propext, Classical.choice, Quot.sound] -/',
        '#guard_msgs in', '#print axioms f_irreducible', '',
        '/-- info: \'B686Round4Frobenius.rational_irreducible\' depends on axioms: [propext, Classical.choice, Quot.sound] -/',
        '#guard_msgs in', '#print axioms rational_irreducible', '',
        'end', 'end B686Round4Frobenius',
    ]
    (ROOT / 'FrobeniusCertificate.lean').write_text('\n'.join(lines)+'\n')


if __name__ == '__main__':
    main()
