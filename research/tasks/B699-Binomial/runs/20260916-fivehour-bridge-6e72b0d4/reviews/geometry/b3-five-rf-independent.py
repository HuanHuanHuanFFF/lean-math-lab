"""Independent exact review of five RF/lattice certificates; no author imports.

Reuses geometry's previously frozen interval arithmetic implementation, at higher
precision, with new root brackets and independently reduced cubic-field doubles.
Purpose: make the ten-template finite consumer usable after the analytic chain.
"""
from pathlib import Path
from fractions import Fraction as F
from datetime import datetime, timezone
from itertools import permutations
import argparse
import ctypes
import hashlib
import importlib.util
import json
import shutil
import time

import sympy as sp

ROOT = Path(__file__).resolve().parent
RUN = ROOT.parents[1]
SOURCE = RUN/'experiments/cubic'
ARITHMETIC = ROOT/'cubic-rf-independent.py'
spec = importlib.util.spec_from_file_location('geometry_rf_arithmetic', ARITHMETIC)
ar = importlib.util.module_from_spec(spec)
spec.loader.exec_module(ar)

BASES = {
    7: [(F(40), F(660)), (F(110), F(-320))],
    11: [(F(-2, 9), F(53504, 27)), (F(142), F(-768))],
    16: [(F(538, 9), F(-60544, 27)), (F(202), F(1152))],
    20: [(F(458), F(7520)), (F(1354), F(-48288)),
         (F(-304), F(5180)), (F(2762), F(-144032))],
    25: [(F(2014, 9), F(-20800, 27)), (F(302), F(-1472)),
         (F(6334, 25), F(32448, 125))],
}
RF_FILES = {7: 'stage10-rf-k7-20260915T210101Z.json',
            11: 'stage10-rf-k11-20260915T210507Z.json',
            16: 'stage10-rf-k16-20260915T210803Z.json',
            20: 'stage10-rf-k20-20260915T210837Z.json',
            25: 'stage10-rf-k25-20260915T210855Z.json'}
LATTICE_FILES = {7: 'stage10-lattice-k7-20260915T210436Z.json',
                 11: 'stage10-lattice-k11-20260915T211022Z.json',
                 16: 'stage10-lattice-k16-20260915T211024Z.json',
                 20: 'stage10-lattice-k20-20260915T211105Z.json',
                 25: 'stage10-lattice-k25-20260915T211117Z.json'}


def resources():
    class MemoryStatus(ctypes.Structure):
        _fields_ = [('length', ctypes.c_ulong), ('load', ctypes.c_ulong),
                    ('total', ctypes.c_ulonglong), ('available', ctypes.c_ulonglong),
                    ('total_page', ctypes.c_ulonglong), ('available_page', ctypes.c_ulonglong),
                    ('total_virtual', ctypes.c_ulonglong), ('available_virtual', ctypes.c_ulonglong),
                    ('extended', ctypes.c_ulonglong)]
    status = MemoryStatus()
    status.length = ctypes.sizeof(status)
    assert ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(status))
    return {'physical_available_bytes': status.available, 'physical_total_bytes': status.total,
            'D_free_bytes': shutil.disk_usage('D:/').free,
            'policy': 'serial, expected below 200 MB; no installation or other-process mutations'}


def item(path):
    data = path.read_bytes()
    return {'path': path.relative_to(RUN).as_posix(), 'bytes': len(data),
            'sha256': hashlib.sha256(data).hexdigest()}


def isolate(A, B, low, high):
    low = ar.interval(F(low))[0]
    high = ar.interval(F(high))[1]
    def value(t):
        return t**3+A*t*ar.UNIT**2+B*ar.UNIT**3
    sign = 1 if value(low) < 0 else -1
    assert sign*value(low) < 0 < sign*value(high)
    while high-low > 1:
        middle = (low+high)//2
        if sign*value(middle) < 0:
            low = middle
        else:
            high = middle
    assert sign*value(low) <= 0 <= sign*value(high)
    return low, high


def double_rational(point, A, B):
    x, y = point
    assert y*y == x**3+A*x+B and y
    slope = (3*x*x+A)/(2*y)
    xx = slope*slope-2*x
    yy = -y+slope*(x-xx)
    assert yy*yy == xx**3+A*xx+B
    return ar.interval(xx), ar.interval(yy)


def double_infinity(k, A, B):
    z = sp.symbols('z')
    modulus = z**3-27*z+2*k
    assert sp.Poly(modulus, z).is_irreducible
    x, y = -9*z*z+2*k*z+189, 81*z*z-18*k*z+4*k*k-2187
    remainder = lambda p: sp.rem(p, modulus, z)
    assert remainder(y*y-x**3-A*x-B) == 0
    slope = remainder((3*x*x+A)*sp.invert(2*y, modulus, z))
    xx = remainder(slope*slope-2*x)
    yy = remainder(-y+slope*(x-xx))
    assert remainder(yy*yy-xx**3-A*xx-B) == 0
    coefficients = lambda p: [F(sp.Poly(p, z).nth(i)) for i in range(3)]
    cx, cy = coefficients(xx), coefficients(yy)
    assert cx[1] or cx[2]
    return cx, cy


def determinant(matrix):
    size = len(matrix)
    total = 0
    for perm in permutations(range(size)):
        parity = sum(perm[i] > perm[j] for i in range(size) for j in range(i+1, size))
        product = (-1)**parity
        for i in range(size):
            product *= matrix[i][perm[i]]
        total += product
    return total


def rounded(iv, C):
    values = [(2*C*x+ar.UNIT)//(2*ar.UNIT) for x in iv]
    assert values[0] == values[1]
    result = values[0]
    assert (2*result-1)*ar.UNIT < 2*C*iv[0]
    assert 2*C*iv[1] < (2*result+1)*ar.UNIT
    return result


def containment(computed, old, scale):
    assert old[0]*scale <= computed[0] <= computed[1] <= old[1]*scale


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--k', type=int, required=True, choices=sorted(BASES))
    args = parser.parse_args()
    k = args.k
    start = time.time()
    resource_observation = resources()
    print(json.dumps({'k': k, 'resources': resource_observation}), flush=True)
    rf_path, lattice_path = SOURCE/RF_FILES[k], SOURCE/LATTICE_FILES[k]
    saved = json.loads(rf_path.read_text())
    lattice = json.loads(lattice_path.read_text())
    assert saved['status'] == lattice['status'] == 'PASS'
    assert lattice['source_RF_sha256'] == item(rf_path)['sha256']
    for name, digest in saved['sources'].items():
        assert item(SOURCE/name)['sha256'] == digest
    ar.BITS = saved['bits']+256
    ar.UNIT = 1 << ar.BITS
    ar.STEPS = (ar.BITS+1)//2+192
    scale = 1 << 256
    A, B = -36*(8*k*k+243), 32*k**4+31104*k*k-314928
    assert saved['model'] == [A, B]
    if k == 7:
        root15 = ar.root(ar.interval(15))
        e1 = ar.interval(100)
        e2 = ar.plus(ar.interval(-50), ar.times(ar.interval(32), root15))
        e3 = ar.minus(ar.interval(-50), ar.times(ar.interval(32), root15))
        assert e3[1] < e2[0] < e2[1] < e1[0]
        omega = ar.times(ar.interval(2), ar.rf(ar.interval(0), ar.minus(e1, e2), ar.minus(e1, e3)))
        eta = ar.times(ar.interval(2), ar.rf(ar.interval(0), ar.minus(e2, e3), ar.minus(e1, e3)))
        area_ratio = ar.divide(omega, eta)
        def logarithm(x, y):
            assert ar.minus(x, e1)[0] > 0
            result = ar.rf(ar.minus(x, e1), ar.minus(x, e2), ar.minus(x, e3))
            assert y[0] > 0 or y[1] < 0
            return ar.negate(result) if y[0] > 0 else result
    else:
        assert -16*(4*A**3+27*B**2) < 0
        e = isolate(A, B, -1000, 0)
        aa = ar.times(ar.interval(3), e)
        bb = ar.plus(ar.times(ar.interval(3), ar.times(e, e)), ar.interval(A))
        r = ar.root(bb)
        u = ar.times(ar.interval(4), r)
        v = ar.plus(aa, ar.times(ar.interval(2), r))
        vc = ar.minus(ar.times(ar.interval(2), r), aa)
        assert min(u[0], v[0], vc[0]) > 0
        K = ar.rf(ar.interval(0), u, v)
        Kc = ar.rf(ar.interval(0), u, vc)
        omega = ar.times(ar.interval(4), K)
        area_ratio = ar.divide(ar.times(ar.interval(2), K), Kc)
        def logarithm(x, y):
            w = ar.minus(x, e)
            assert w[0] > 0
            yy = ar.divide(ar.minus(w, r), ar.root(w))
            assert yy[0] > 0 or yy[1] < 0
            zz = ar.times(yy, yy)
            result = ar.rf(zz, ar.plus(zz, u), ar.plus(zz, v))
            if yy[1] < 0:
                result = ar.minus(ar.times(ar.interval(2), K), result)
            assert y[0] > 0 or y[1] < 0
            return ar.negate(result) if y[0] > 0 else result
    containment(omega, saved['omega'], scale)
    containment(area_ratio, saved['area_ratio_omega_squared_over_area'], scale)
    assert 100*omega[0] > ar.UNIT and omega[1] < ar.UNIT
    assert 0 < area_ratio[0] <= area_ratio[1] < 100*ar.UNIT
    points = {f'G{i+1}_double': double_rational(P, A, B) for i, P in enumerate(BASES[k])}
    cx, cy = double_infinity(k, A, B)
    assert saved['two_Q_field_coefficients'] == [[str(c) for c in p] for p in (cx, cy)]
    for name, bracket in zip(('negative', 'small_positive', 'large_positive'),
                             ((-6, -5), (0, F(5, 2)), (F(13, 4), 6))):
        theta = isolate(-27, 2*k, *bracket)
        points[name] = ar.eval_interval(cx, theta), ar.eval_interval(cy, theta)
    logs = {}
    for record in saved['logs']:
        name = record['name']
        phi = ar.divide(logarithm(*points[name]), omega)
        assert 2*phi[0] > -ar.UNIT and 2*phi[1] < ar.UNIT
        containment(phi, record['normalized_log'], scale)
        assert rounded(phi, saved['C']) == record['rounded']
        logs[name] = phi
    phases = []
    for phase in lattice['phases']:
        rank = len(BASES[k])
        C, M0 = phase['C'], phase['M0']
        oldscale = 1 << saved['bits']
        for record in saved['logs']:
            value = rounded(logs[record['name']], C)
            iv = record['normalized_log']
            assert (2*value-1)*oldscale < 2*C*iv[0]
            assert 2*C*iv[1] < (2*value+1)*oldscale
        base = [[int(i == j) for j in range(rank)]+[rounded(logs[f'G{i+1}_double'], C)]
                for i in range(rank)]+[[0]*rank+[C]]
        U, rows = phase['unimodular_transform'], phase['basis']
        assert abs(determinant(U)) == 1 and base == phase['input_basis']
        assert rows == [[sum(U[i][k]*base[k][j] for k in range(rank+1))
                         for j in range(rank+1)] for i in range(rank+1)]
        normal = [(-1)**j*determinant([row[:j]+row[j+1:] for row in rows[:rank]])
                  for j in range(rank+1)]
        assert normal == phase['normal']
        assert all(sum(a*b for a, b in zip(normal, row)) == 0 for row in rows[:rank])
        assert abs(sum(a*b for a, b in zip(normal, rows[-1]))) == C
        nn = sum(v*v for v in normal)
        assert nn == phase['normal_squared']
        margins = []
        for target in phase['targets']:
            rr = rounded(logs[target['name']], C)
            remainder = (normal[-1]*rr) % C
            remainder = min(remainder, C-remainder)
            assert rr == target['rounded_target'] and remainder == target['remainder']
            assert target['distance_squared'] == [remainder*remainder, nn]
            assert remainder*remainder > 100*M0*M0*nn
            margins.append({'target': target['name'],
                            'distance_squared_over_M0_squared_floor': remainder*remainder//(nn*M0*M0)})
        phases.append({'phase': phase['phase'], 'C_power_of_10': len(str(C))-1,
                       'M0_power_of_10': 300 if phase['phase'] == 1 else None,
                       'DIST100': True, 'margins': margins})
    assert lattice['phases'][0]['C'] <= 10**1530
    assert lattice['phases'][0]['M0'] == 10**300
    assert F(30)-F(250**2, 16) < -1230*3
    sources = [rf_path, lattice_path, ARITHMETIC, SOURCE/'stage10_models.py',
               SOURCE/'stage10_intervals.py', SOURCE/'stage10_rf.py', SOURCE/'stage10_lattice.py']
    output = {'status': 'PASS', 'k': k, 'utc': datetime.now(timezone.utc).isoformat(),
              'reviewer': '/root/geometry', 'independent_bits': ar.BITS,
              'independent_RF_duplications': ar.STEPS, 'resources': resource_observation,
              'all_log_intervals_inside_author_intervals': True,
              'omega_and_area_intervals_inside_author_intervals': True,
              'strict_roundings_agree_in_both_phases': True,
              'irreducible_theta_cubic_and_nonrational_two_Q_verified': True,
              'omega': omega, 'area_ratio': area_ratio, 'normalized_logs': logs,
              'Q2_field_coefficients': {'x': list(map(str, cx)), 'y': list(map(str, cy))},
              'integer_lattice_checks': phases,
              'conditional_common_M_lt': 250,
              'source_hashes': [item(path) for path in sources],
              'elapsed_seconds': time.time()-start,
              'scope': 'five-curve RF normalization, exact lattice distance, and conditional M<250; full initial David/UP/source chain is a separate paper review'}
    dest = ROOT/f'b3-five-rf-independent-k{k}.json'
    assert not dest.exists(), 'Version the result instead of overwriting a prior review.'
    dest.write_text(json.dumps(output, indent=2), encoding='utf-8')
    print(json.dumps({key: output[key] for key in ('status', 'k', 'independent_bits',
                      'independent_RF_duplications', 'integer_lattice_checks',
                      'conditional_common_M_lt', 'elapsed_seconds')}), flush=True)


if __name__ == '__main__':
    main()
