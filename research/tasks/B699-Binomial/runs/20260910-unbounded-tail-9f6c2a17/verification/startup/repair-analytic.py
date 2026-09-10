from pathlib import Path
p=Path('research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17/lean/ECAnalytic.lean')
s=p.read_text(encoding='utf-8')
s=s.replace('  convert hd using 1\n  unfold correctionDeriv\n  field_simp [h0, hl, ha]\n  <;> ring','  convert hd using 1 <;> try rfl\n  unfold correctionDeriv\n  generalize (3 / 2 : ℝ) = a at *\n  field_simp [h0, hl, ha] <;> ring')
a=s.index('  have heq : correctionDeriv x - log 4 / log x ^ 2 =')
b=s.index('\n\n\nend B699TailEC',a)
s=s[:a]+'''  have identity (a z c : ℝ) (hz0 : z ≠ 0) (hza : z - a ≠ 0) :
      a * c * (z * (z - a) - (2 * z - a)) / (z ^ 2 * (z - a) ^ 2) -
        c / z ^ 2 = c * z * ((a - 1) * z - a ^ 2) / (z ^ 2 * (z - a) ^ 2) := by
    field_simp [hz0, hza] <;> ring
  have heq := identity (3 / 2) (log x) (log 4) hl ha
  change correctionDeriv x - log 4 / log x ^ 2 = _ at heq
  have hp : 0 ≤ ((3 / 2 : ℝ) - 1) * log x - (3 / 2 : ℝ) ^ 2 := by
    linarith
  have hn : 0 ≤ correctionDeriv x - log 4 / log x ^ 2 := by
    rw [heq]
    exact div_nonneg (mul_nonneg (mul_nonneg hc.le hlp.le) hp) (by positivity)
  linarith''' +s[b:]
p.write_text(s,encoding='utf-8')
