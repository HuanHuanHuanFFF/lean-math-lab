"""Generate explicit normalized cofactors for k=5, n modulo 8 and 9.

All coefficients are computed by exact multiplication and then verified
symbolically by `ring` in the emitted Lean file. No packages required.
"""
from pathlib import Path

HERE=Path(__file__).resolve().parent
HEAD='''import research.tasks.«B686-Four».round4.worker.K5PrimeClasses

set_option maxRecDepth 100000
set_option maxHeartbeats 5000000

namespace B686Round4SmallPrime
open B686Round4K5

def residueQuartic (p a b c e f t : ℤ) : ℤ :=
  p * (a*t^4+b*t^3+c*t^2+e*t) + f

theorem quartic_mod (p a b c e f t : ℤ) :
    residueQuartic p a b c e f t % p = f % p := by
  simp [residueQuartic, Int.add_emod, Int.mul_emod]

theorem quartic_shift (p a b c e f t D : ℤ) :
    p*D ∣ residueQuartic p a b c e f (t+D) - residueQuartic p a b c e f t := by
  refine ⟨a*(4*t^3+6*t^2*D+4*t*D^2+D^3)+b*(3*t^2+3*t*D+D^2)+c*(2*t+D)+e, ?_⟩
  unfold residueQuartic
  ring

'''


def emit(p,M,slots,name,mult):
    lines=[f'''theorem {name}_residue (r : ℕ) (hr : r < {M}) (t D : ℤ) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ∃ c u v : ℤ, c ≠ 0 ∧
      p5 ({M}*t+r) = c*(({M}*t+r+i)*u) ∧
      p5 ({M}*t+r+{M}*D) = c*(({M}*t+r+{M}*D+i)*v) ∧
      u % {p} ≠ 0 ∧ v % {p} ≠ 0 ∧ {M}*D ∣ {mult}*(v-u) := by
  have hcases : {' ∨ '.join('r = '+str(j) for j in range(M))} := by omega
  rcases hcases with {' | '.join('rfl' for _ in range(M))}
''']
    for r,i in enumerate(slots):
        co=[1];scale=1
        for j in range(1,6):
            if j==i:continue
            offset=r+j;power=1
            while offset%p==0:
                offset//=p;power*=p
            scale*=power;a=M//power
            nc=[0]*(len(co)+1)
            for e,x in enumerate(co):nc[e]+=offset*x;nc[e+1]+=a*x
            co=nc
        assert co[0]%p and all(x%p==0 for x in co[1:])
        pars=[co[4]//p,co[3]//p,co[2]//p,co[1]//p,co[0]]
        par=' '.join(map(str,pars));u=f'residueQuartic {p} {par} t';v=f'residueQuartic {p} {par} (t+D)'
        lines.append(f'''  · refine ⟨{i}, by decide, {scale}, {u}, {v}, by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl ({mult} : ℤ)) (quartic_shift {p} {par} t D)
      have hid : ({mult} : ℤ) * ({p} * D) = {M} * D := by ring
      rwa [hid] at h
''')
    lines.append(f'''
theorem {name} (n d : ℤ) (hd : {M} ∣ d) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ∃ c u v : ℤ, c ≠ 0 ∧
      p5 n = c*((n+i)*u) ∧ p5 (n+d) = c*((n+d+i)*v) ∧
      u % {p} ≠ 0 ∧ v % {p} ≠ 0 ∧ d ∣ {mult}*(v-u) := by
  obtain ⟨D, hD⟩ := hd
  let r : ℕ := (n % {M}).toNat
  have hr : r < {M} := by dsimp [r]; omega
  have hr' : (r : ℤ) = n % {M} := by dsimp [r]; omega
  have hn : {M}*(n/{M})+r = n := by omega
  have h := {name}_residue r hr (n/{M}) D
  rw [hn, ← hD] at h
  exact h

/-- info: 'B686Round4SmallPrime.{name}' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms {name}

''')
    return ''.join(lines)


def main():
    source=HEAD+emit(2,8,[4,3,2,5,4,3,2,1],'two_cofactor_data',4)
    source+=emit(3,9,[3,2,1,3,5,4,3,2,1],'three_cofactor_data',3)
    source+='end B686Round4SmallPrime\n'
    (HERE/'K5SmallPrimeData.lean').write_text(source)
    print('Generated 8 binary and 9 ternary cofactor identities for kernel checking.')


if __name__=='__main__':main()
