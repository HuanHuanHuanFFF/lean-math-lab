"""Generate a Lean ring certificate directly from Sylvester cofactors."""
from verify_sector_integer import add, mul, scale
from itertools import permutations
from functools import reduce
from math import gcd
from pathlib import Path
import json


def det(mat):
    n=len(mat); out={}; one={(0,0,0,0):1}
    for p in permutations(range(n)):
        if any(not mat[i][p[i]] for i in range(n)): continue
        term=one
        for i in range(n): term=mul(term,mat[i][p[i]])
        out=add(out,scale(term,(-1)**sum(p[i]>p[j] for i in range(n) for j in range(i+1,n))))
    return out


def lean_poly(p,names):
    pieces=[]
    for mon,c in sorted(p.items(),reverse=True):
        factors=[str(abs(c))] if abs(c)!=1 or not any(mon) else []
        for name,n in zip(names,mon):
            if n: factors.append(name if n==1 else name+' ^ '+str(n))
        term=' * '.join(factors)
        pieces.append((' - ' if c<0 else ' + ')+term)
    if not pieces: return '0'
    return ''.join(pieces).removeprefix(' + ').replace(' - ','- ',1) if pieces[0].startswith(' - ') else ''.join(pieces).removeprefix(' + ')


def run():
    one={(0,0,0,0):1}
    c1,c2,c3,c4=[{tuple(int(i==j) for i in range(4)):1} for j in range(4)]
    ip=[scale(c4,8),{},scale(c2,-2),c1]
    rp=[scale(c4,-8),scale(c3,8),scale(c2,-2),scale(c1,-1),one]
    mat=[[{} for _ in range(7)] for _ in range(7)]
    for i in range(4):
        for j,p in enumerate(ip): mat[i][i+j]=p
    for i in range(3):
        for j,p in enumerate(rp): mat[i+4][i+j]=p
    cofactors=[]
    for i in range(7):
        minor=[[mat[row][col] for col in range(6)] for row in range(7) if row!=i]
        cofactors.append(scale(det(minor),(-1)**(i+6)))
    allterms=[(m,c) for p in cofactors for m,c in p.items()]
    numeric=reduce(gcd,[abs(c) for _,c in allterms])
    c4power=min(m[3] for m,_ in allterms)
    assert c4power==1
    reduced=[]
    for p in cofactors:
        reduced.append({(m[0],m[1],m[2],m[3]-c4power):c//numeric for m,c in p.items()})
    parts=[]
    for i,p in enumerate(reduced):
        coeff='('+lean_poly(p,['c1','c2','c3','c4'])+')'
        power=3-i if i<4 else 6-i
        parts.append(coeff+(' * u ^ '+str(power) if power>1 else ' * u' if power==1 else ''))
    leftScale=4096//numeric
    assert 4096%numeric==0
    header='''import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-! Exact elimination on the 120-degree ray. No root-continuity or determinant
theorem is assumed; the following is a directly kernel-checked ring identity. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace M1Boundary
variable {K : Type*} [CommRing K]

def core (c1 c2 c3 c4 : K) : K :=
  c1 ^ 3 * c3 ^ 3 + c1 ^ 2 * c2 ^ 3 * c4 - c1 ^ 2 * c2 ^ 2 * c3 ^ 2 -
  3 * c1 ^ 2 * c3 ^ 2 * c4 - c1 * c2 ^ 2 * c3 * c4 + 3 * c1 * c3 * c4 ^ 2 -
  c2 ^ 4 * c4 + c2 ^ 3 * c3 ^ 2 + 2 * c2 ^ 2 * c4 ^ 2 - c4 ^ 3

def imagPart (c1 c2 c4 u : K) : K := c1 - 2 * c2 * u + 8 * c4 * u ^ 3
def realPart (c1 c2 c3 c4 u : K) : K :=
  1 - c1 * u - 2 * c2 * u ^ 2 + 8 * c3 * u ^ 3 - 8 * c4 * u ^ 4
'''
    output=header+'\ndef bezoutI (c1 c2 c3 c4 u : K) : K :=\n  '+' +\n  '.join(parts[:4])+'\n\ndef bezoutR (c1 c2 c3 c4 u : K) : K :=\n  '+' +\n  '.join(parts[4:])+f'''\n
theorem bezout_identity (c1 c2 c3 c4 u : K) :
    -{leftScale} * core c1 c2 c3 c4 =
      bezoutI c1 c2 c3 c4 u * imagPart c1 c2 c4 u +
      bezoutR c1 c2 c3 c4 u * realPart c1 c2 c3 c4 u := by
  unfold core bezoutI bezoutR imagPart realPart
  ring

theorem common_zero_obstruction (c1 c2 c3 c4 u : K)
    (hi : imagPart c1 c2 c4 u = 0) (hr : realPart c1 c2 c3 c4 u = 0) :
    ({leftScale} : K) * core c1 c2 c3 c4 = 0 := by
  have hh := bezout_identity c1 c2 c3 c4 u
  rw [hi, hr, mul_zero, mul_zero, add_zero] at hh
  have ht : -({leftScale} * core c1 c2 c3 c4) = 0 := by simpa only [neg_mul] using hh
  exact neg_eq_zero.mp ht

/-- info: 'M1Boundary.bezout_identity' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms bezout_identity
/-- info: 'M1Boundary.common_zero_obstruction' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms common_zero_obstruction
end M1Boundary
'''
    path=Path(__file__).parent.parent/'lean'/'BoundaryElimination.lean'
    path.write_text(output,encoding='utf-8')
    print(json.dumps({'cofactor_terms':[len(p) for p in cofactors],'common_factor_numeric':numeric,'common_factor_c4_power':c4power,'resulting_core_multiplier':leftScale,'output':str(path)},indent=2))


if __name__=='__main__': run()

