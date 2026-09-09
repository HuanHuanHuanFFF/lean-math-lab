#!/usr/bin/env python3
"""Generate untrusted cutoffs; every pair of strict signs is checked in Lean.

The product and binary search here provide input data, not a proof. An equality
is reported as a potential original witness and stops generation for review.
"""
from pathlib import Path
from math import prod
import hashlib
import json

run = Path(__file__).resolve().parents[2]
rows, checks = [], []
for k in range(22, 71):
    row = []
    for h in range(8):
        def difference(n):
            return prod(n + k + h + i for i in range(1, k + 1)) - 4 * prod(
                n + i for i in range(1, k + 1))
        lo, hi = 0, 1
        assert difference(lo) > 0
        while difference(hi) > 0:
            hi *= 2
        if difference(hi) == 0:
            raise RuntimeError(f'Potential original witness: {(k, hi, hi+k+h)}')
        while lo + 1 < hi:
            mid = (lo + hi) // 2
            sign = difference(mid)
            if sign == 0:
                raise RuntimeError(f'Potential original witness: {(k, mid, mid+k+h)}')
            if sign > 0:
                lo = mid
            else:
                hi = mid
        assert difference(lo) > 0 and difference(lo + 1) < 0
        row.append(lo)
        checks.append({'k': k, 'h': h, 'cutoff': lo,
                       'lower_difference': str(difference(lo)),
                       'upper_difference': str(difference(lo + 1))})
    rows.append(row)

body = '''import research.tasks.«B686-Four».lean.Round3SmallGapCertificates

/-! Exact cutoffs extending the original all-start certificate to k=70.
Python supplies only data. The Lean kernel checks every strict sign and the
existing antitonicity theorem covers every natural starting point. -/
namespace B686ShortGapCertificate
open Finset B686Round3SmallGap

def cutoffTable : List (List ℕ) :=
  [''' + ',\n   '.join(str(row) for row in rows) + ''']

def cutoff (k h : ℕ) : ℕ := (cutoffTable.getD (k-22) []).getD h 0

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem sign_certificates : ∀ k ∈ Icc 22 70, ∀ h ∈ Icc 0 7,
    4 * product k (cutoff k h) < product k (cutoff k h + (k+h)) ∧
      product k (cutoff k h + 1 + (k+h)) < 4 * product k (cutoff k h + 1) := by
  decide +kernel

theorem no_small_gap_k_le70 (k h n : ℕ) (hk : 2≤k) (hk70 : k≤70) (hh : h≤7) :
    product k (n+k+h) ≠ 4 * product k n := by
  by_cases hk21 : k≤21
  · exact no_small_gap_k_le21 k h n hk hk21 hh
  · obtain ⟨hl,hu⟩ := sign_certificates k (mem_Icc.mpr ⟨by omega,hk70⟩)
      h (mem_Icc.mpr ⟨Nat.zero_le _,hh⟩)
    simpa only [Nat.add_assoc] using not_four_of_adjacent_signs k (k+h) (cutoff k h) n hl hu

/-- info: 'B686ShortGapCertificate.sign_certificates' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms sign_certificates
/-- info: 'B686ShortGapCertificate.no_small_gap_k_le70' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_small_gap_k_le70
end B686ShortGapCertificate
'''
target = run / 'lean/shortgap/BoundedCertificate.lean'
target.parent.mkdir(parents=True, exist_ok=True)
target.write_text(body)
report = {'accepted_as_proof': False, 'role': 'untrusted input generation',
          'k_min': 22, 'k_max': 70, 'h_min': 0, 'h_max': 7,
          'entries': len(checks), 'rows': checks,
          'lean_source_sha256': hashlib.sha256(target.read_bytes()).hexdigest()}
(Path(__file__).parent / 'cutoff-data.json').write_text(json.dumps(report, indent=2) + '\n')
print(f'Generated {len(checks)} untrusted cutoffs; kernel validation still required.')
