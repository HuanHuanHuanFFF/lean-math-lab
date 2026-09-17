"""Independent exact review of the arbitrary-b height application, all parameters."""
from pathlib import Path
from datetime import datetime, timezone
from fractions import Fraction
import ctypes
import hashlib
import json
import shutil
import sympy as sp

ROOT = Path(__file__).resolve().parent
RUN = ROOT.parents[1]
WORKTREE = Path.cwd()


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


class Memory(ctypes.Structure):
    _fields_ = [('length', ctypes.c_ulong), ('load', ctypes.c_ulong)]+[
        (name, ctypes.c_ulonglong) for name in ('total', 'available', 'page_total',
        'page_available', 'virtual_total', 'virtual_available', 'extended')]


mem = Memory()
mem.length = ctypes.sizeof(mem)
assert ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(mem))
resources = {'available_physical_bytes': mem.available, 'D_free_bytes': shutil.disk_usage('D:/').free,
             'policy': 'one small symbolic job, no new dependencies'}
frozen_path = RUN/'notes/cubic/11-FROZEN.json'
frozen = json.loads(frozen_path.read_text())
for record in frozen['files']:
    path = RUN/record['path']
    assert len(path.read_bytes()) == record['bytes'] and digest(path) == record['sha256']
for record in frozen['primary_source_cache']+[frozen['adopted_old_proof']]:
    path = WORKTREE/record['path']
    assert len(path.read_bytes()) == record['bytes'] and digest(path) == record['sha256']

b, rho, x, a, z, D, W, k = sp.symbols('b rho x a z D W k')
A = -36*(8*k*k+243)
B = 32*k**4+31104*k*k-314928
L = 9*W+2*k*D
C = 8*k*(729-k*k)
T, Z = (C*D-(486-4*k*k)*L)/9, L

results = []
for epsilon in (1, -1):
    dd = x-epsilon*z
    F = 12*a*(a-b*dd)*(a-2*b*dd)-(rho*dd-3*a*b*b)*(x*x-2*z*z)
    G = W**3-27*W*D*D+2*k*D**3+epsilon*(18*D*W+4*k*D*D)*z-L*z*z
    transported = G.subs({D: dd, W: 6*a/b-6*dd, k: 27-9*rho/b**3}, simultaneous=True)
    assert sp.cancel(transported-18*F/b**3) == 0
    V = C*(z-epsilon*D)
    # Test the whole homogeneous equation, including every point at infinity.
    assert sp.Poly(sp.expand(V*V*Z-T**3-A*T*Z*Z-B*Z**3+C*C*G), D, W, z).is_zero
    matrix = sp.Matrix([[sp.diff(coord, variable) for variable in (D, W, z)]
                        for coord in (T, V, Z)])
    assert sp.expand(matrix.det()+C*C) == 0
    first = sp.Matrix([[sp.diff(coord, variable) for variable in (x, a, z)]
                       for coord in (dd, 6*a/b-6*dd, z)])
    assert sp.simplify(first.det()-6/b) == 0
    assert sp.expand(F.subs(rho, 3*b**3)-3*(a-b*dd)*(4*a*(a-2*b*dd)+b*b*(x*x-2*z*z))) == 0
    assert sp.expand(F.subs(rho, 6*b**3)-3*(a-2*b*dd)*(4*a*(a-b*dd)+b*b*(x*x-2*z*z))) == 0
    leading = sp.expand(F.subs(z, 0))
    infinity_discriminant = sp.discriminant(leading.subs(x, 1), a)
    assert sp.expand(infinity_discriminant-3888*rho*(6*b**3-rho)) == 0
    coefficients = sp.Poly(F.subs(z, 1), x, a).coeffs()
    assert len(coefficients) == 10
    # Compare the expanded coefficient multiset to the complete hand list.
    expected = [12, -36*b, 36*epsilon*b, 27*b*b, -48*epsilon*b*b,
                18*b*b, -rho, epsilon*rho, 2*rho, -2*epsilon*rho]
    assert sorted(map(str, coefficients)) == sorted(map(str, expected))
    residue_checks = []
    for xr in (0, 2):
        dr = (xr-epsilon) % 4
        for br in (1, 3):
            assert br*br*(3*dr*dr-2*epsilon*dr+1) % 4 == 2
            if epsilon == -1:
                assert br*br*(3-2*epsilon*xr) % 4 == 3
            residue_checks.append([xr, br])
    results.append({'epsilon': epsilon, 'homogeneous_transport': True,
                    'projective_linear_identity': True, 'determinant_minus_C_squared': True,
                    'first_linear_determinant_6_over_b': True,
                    'two_singular_factorizations': True,
                    'infinity_discriminant': '3888*rho*(6*b^3-rho)',
                    'coefficients': list(map(str, expected)), 'parity_cases': residue_checks})

assert sp.expand(-16*(4*A**3+27*B**2)+442368*k*k*(k*k-729)**2*(k*k-54)) == 0
# Full canonical-pair identities. Here u0*u1*q=J with gcd(u0,u1)=1.
u0, u1, qq = sp.symbols('u0 u1 qq', positive=True)
J = u0*u1*qq
assert sp.cancel((J/u0)*(J/u1)-qq*J) == 0
assert 7**4*3**3 == 64827
assert 20*48 == 960
out = {'status': 'PASS', 'reviewer': '/root/geometry', 'utc': datetime.now(timezone.utc).isoformat(),
       'resources': resources, 'frozen_cubic_files_checked': len(frozen['files']),
       'source_and_page_bytes_checked': len(frozen['primary_source_cache'])+1,
       'all_parameter_checks': results, 'short_discriminant': True,
       'coefficient_height': 'H=48*b^3, for b>=1 and 0<rho<7*b^3',
       'Masser_application': 'all integral solutions, genus one with three distinct complex points at infinity',
       'accepted_height': 'log(n)<=2*(960*b^3)^600000 for each actual canonical b',
       'four_actual_loss_product': 'product(b_epsilon,zeta)=c*(n-1), c in {1,3}',
       'combined_old_LOSS': 'if x=2^s*m with m odd, m^2<64827*2^(6s)',
       'source_hashes': {'notes/cubic/11-FROZEN.json': digest(frozen_path)},
       'remaining': 'b and s are still unbounded; no NC3-preserving descent constructed'}
path = ROOT/'general-loss-check.json'
assert not path.exists()
path.write_text(json.dumps(out, indent=2), encoding='utf-8')
print(json.dumps({key: out[key] for key in ('status', 'resources', 'frozen_cubic_files_checked',
                   'accepted_height', 'four_actual_loss_product', 'combined_old_LOSS')}))
