import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-divisor-finite-5e2d13bb».Actual

/-! UNCOMPILED. Original frozen c9d5 delta0 rough and middle certificates.
Every displayed finite polynomial identity is proved with ring, not assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorSevenTwo

theorem rough_certificate (x : ℚ) (hx : 0 ≤ x) :
    823543 * denominator (x + 1) * (x + 1 + 1) ^ 2 ≤
      200000 * numerator (x + 1) * (x + 1 + 2) ^ 2 := by
  apply sub_nonneg.mp
  calc
    0 ≤ 280 * (34743116160 + x * (311831874288 + x * (1182975546528 + x * (2545550033552 + x * (3476878706540 + x * (3169740079477 + x * (1961292435907 + x * (815487285193 + x * (218446881625 + x * (34080394250 + x * (2352980000))))))))))) := by positivity
    _ = 200000 * numerator (x + 1) * (x + 1 + 2) ^ 2 -
        823543 * denominator (x + 1) * (x + 1 + 1) ^ 2 := by
      unfold numerator denominator
      ring

theorem middle_certificate (x : ℚ) (hx : 0 ≤ x) :
    125753077556736983843483347507 * denominator (x + 44) ≤
      31250000000000000000000000000 * numerator (x + 44) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 40 * (888990068964266031222412587094676826041752320 + x * (1049907701632704461760931593102015037856855496 + x * (172804445017786172780861565916462523721247850 + x * (13184792740869286998683247713790279231268815 + x * (583821996052614144233518347071584266586965 + x * (16260558498122644149413365137112662146499 + x * (290787678779857519193466249948595121625 + x * (3256172179982886255755021529086472750 + x * (20859812833036759413698386468930000 + x * (58510323865260323130333049860000)))))))))) := by positivity
    _ = 31250000000000000000000000000 * numerator (x + 44) -
        125753077556736983843483347507 * denominator (x + 44) := by
      unfold numerator denominator
      ring

end Math.B699.I11DivisorSevenTwo
