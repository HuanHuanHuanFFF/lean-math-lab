"""Exact canonical-height intervals and rational LDL lower bounds for five MW bases."""
from pathlib import Path
from fractions import Fraction as F
from datetime import datetime, timezone
import ctypes
import hashlib
import json
import math
import re
import shutil
import time

ROOT = Path(__file__).resolve().parent
RUN = ROOT.parents[1]
MW_SOURCE = RUN/'experiments/main/b3_five_curve_mw-output-20260915T205232Z.txt'
HEIGHT_SOURCE = RUN/'experiments/cubic/stage09-generic-height-20260915T205103Z.json'
DOUBLINGS = 6


def memory():
    class S(ctypes.Structure):
        _fields_ = [('length', ctypes.c_ulong), ('load', ctypes.c_ulong)] + [
            (name, ctypes.c_ulonglong) for name in ('total', 'available', 'page_total',
            'page_available', 'virtual_total', 'virtual_available', 'extended')]
    s = S()
    s.length = ctypes.sizeof(s)
    ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(s))
    return {'available_memory': s.available, 'memory_load': s.load, 'D_free': shutil.disk_usage('D:/').free}


def bounds_ln2():
    N = 40
    lo = sum((F(2, (2*k+1)*3**(2*k+1)) for k in range(N)), F(0))
    hi = lo+F(9, 4*(2*N+1)*3**(2*N+1))
    return lo, hi


def on_curve(P, A, B):
    if P is None:
        return True
    x, y = P
    return y*y == x*x*x+A*x+B


def add(P, Q, A, B):
    if P is None:
        return Q
    if Q is None:
        return P
    x, y = P
    u, v = Q
    if x == u:
        if y == -v:
            return None
        assert y == v and y != 0
        slope = (3*x*x+A)/(2*y)
    else:
        slope = (v-y)/(u-x)
    xx = slope*slope-x-u
    yy = -y+slope*(x-xx)
    result = xx, yy
    assert on_curve(result, A, B)
    return result


def x_double(a, b, A, B):
    numerator = a**4-2*A*a*a*b*b-8*B*a*b**3+A*A*b**4
    denominator = 4*b*(a**3+A*a*b*b+B*b**3)
    divisor = math.gcd(numerator, denominator)
    assert divisor
    numerator //= divisor
    denominator //= divisor
    if denominator < 0:
        numerator, denominator = -numerator, -denominator
    assert denominator > 0
    return numerator, denominator


def pair_hash(a, b):
    def binary(n):
        return (b'-' if n < 0 else b'+')+abs(n).to_bytes((abs(n).bit_length()+7)//8 or 1, 'big')
    return hashlib.sha256(binary(a)+b'|'+binary(b)).hexdigest()


def height_interval(P, A, B, lower_error, upper_error, name):
    assert P is not None and on_curve(P, A, B)
    a, b = P[0].numerator, P[0].denominator
    initial = [str(P[0]), str(P[1])]
    for _ in range(DOUBLINGS):
        a, b = x_double(a, b, A, B)
    # Independent full-point rational doubling path for the same terminal height.
    Q = P
    for _ in range(DOUBLINGS):
        Q = add(Q, Q, A, B)
    assert Q is not None and Q[0] == F(a, b)
    q = max(abs(a), b)
    bits = q.bit_length()
    ln2lo, ln2hi = bounds_ln2()
    scale = 4**DOUBLINGS
    lo = ((bits-1)*ln2lo-lower_error)/scale
    hi = (bits*ln2hi+upper_error)/scale
    return (lo, hi), {'name': name, 'initial_point': initial, 'terminal_Q_bits': bits,
                      'terminal_x_sha256': pair_hash(a, b), 'two_doubling_paths_agree': True,
                      'lower': pack(lo), 'upper': pack(hi)}


def pack(x):
    x = F(x)
    return [x.numerator, x.denominator]


def ldl(matrix):
    n = len(matrix)
    L = [[F(int(i == j)) for j in range(n)] for i in range(n)]
    D = []
    for i in range(n):
        d = matrix[i][i]-sum(L[i][k]**2*D[k] for k in range(i))
        if d <= 0:
            return None
        D.append(d)
        for j in range(i+1, n):
            L[j][i] = (matrix[j][i]-sum(L[j][k]*L[i][k]*D[k] for k in range(i)))/d
    assert all(sum(L[i][k]*D[k]*L[j][k] for k in range(n)) == matrix[i][j]
               for i in range(n) for j in range(n))
    return L, D


def model(k, basis, constants):
    A, B = constants['A'], constants['B']
    lowerr = constants['height_lower_error_less_than']
    upperr = constants['height_upper_error_less_than']
    rank = len(basis)
    diagonals = []
    traces = []
    for i, P in enumerate(basis):
        value, trace = height_interval(P, A, B, lowerr, upperr, f'g{i+1}')
        diagonals.append(value)
        traces.append(trace)
    bounds = [[None]*rank for _ in range(rank)]
    for i in range(rank):
        bounds[i][i] = diagonals[i]
        for j in range(i):
            value, trace = height_interval(add(basis[i], basis[j], A, B), A, B, lowerr, upperr, f'g{j+1}+g{i+1}')
            traces.append(trace)
            lo = (value[0]-diagonals[i][1]-diagonals[j][1])/2
            hi = (value[1]-diagonals[i][0]-diagonals[j][0])/2
            bounds[i][j] = bounds[j][i] = (lo, hi)
    midpoint = [[(lo+hi)/2 for lo, hi in row] for row in bounds]
    error = [[(hi-lo)/2 for lo, hi in row] for row in bounds]
    epsilon = max(sum(row) for row in error)
    gershgorin = min(bounds[i][i][0]-sum(max(abs(bounds[i][j][0]), abs(bounds[i][j][1]))
                   for j in range(rank) if j != i) for i in range(rank))
    certificate = None
    for e in range(-3, 17):
        lam = F(2**(-e)) if e <= 0 else F(1, 2**e)
        adjusted = [[midpoint[i][j]-(lam+epsilon if i == j else 0) for j in range(rank)] for i in range(rank)]
        certificate = ldl(adjusted)
        if certificate is not None:
            break
    assert certificate is not None, 'increase exact doubling depth before changing the MW basis'
    L, D = certificate
    upper_sum = sum(bounds[i][i][1] for i in range(rank)) + 2*sum(
        max(abs(bounds[i][j][0]), abs(bounds[i][j][1])) for i in range(rank) for j in range(i))
    upper_integer = math.ceil(upper_sum)
    return {'k': k, 'A': A, 'B': B, 'rank': rank, 'basis': [[str(x), str(y)] for x, y in basis],
            'doublings': DOUBLINGS, 'point_traces': traces,
            'height_matrix': [[{'lo': pack(lo), 'hi': pack(hi)} for lo, hi in row] for row in bounds],
            'lambda': pack(lam), 'max_coefficient_height_constant': upper_integer,
            'upper_absolute_sum': pack(upper_sum), 'interval_error_row_norm': pack(epsilon),
            'raw_gershgorin_lower': pack(gershgorin),
            'LDL_adjustment': 'midpoint-(lambda+interval_error_row_norm)*I',
            'LDL_L': [[pack(x) for x in row] for row in L], 'LDL_D': [pack(x) for x in D],
            'conclusion': 'lambda*sum(m_i^2) <= H(sum m_i G_i + torsion) <= C*max(abs(m_i))^2'}


def main():
    start = time.time()
    resources = memory()
    text = MW_SOURCE.read_text()
    constants = {r['k']: r for r in json.loads(HEIGHT_SOURCE.read_text())['models']}
    generators = {}
    for match in re.finditer(r'RESULT GENERATORS (\d+) \[(.*?)\]\s*true true', text, re.S):
        k = int(match.group(1))
        triples = re.findall(r'\(([^:]+):([^:]+):([^\)]+)\)', match.group(2))
        points = []
        for x, y, z in triples:
            assert F(z.strip()) == 1
            P = F(x.strip()), F(y.strip())
            assert on_curve(P, constants[k]['A'], constants[k]['B'])
            if P[1] != 0:
                points.append(P)
        generators[k] = points
    expected = {7: 2, 11: 2, 16: 2, 20: 4, 25: 3}
    assert {k: len(v) for k, v in generators.items()} == expected
    for k, rank in expected.items():
        assert f'RESULT FLAGS {k} true true' in text
        assert f'RESULT RANK {k} {rank} {rank}' in text
    outputs = []
    for k in expected:
        result = model(k, generators[k], constants[k])
        outputs.append(result)
        print(json.dumps({'k': k, 'rank': result['rank'], 'lambda': result['lambda'],
                          'C': result['max_coefficient_height_constant'],
                          'gershgorin_display': float(F(*result['raw_gershgorin_lower'])),
                          'elapsed': time.time()-start}), flush=True)
    out = {'status': 'PASS', 'utc': datetime.now(timezone.utc).isoformat(), 'owner': '/root/geometry',
           'models': outputs, 'resource_start': resources, 'resource_end': memory(),
           'MW_source_sha256': hashlib.sha256(MW_SOURCE.read_bytes()).hexdigest(),
           'generic_height_source_sha256': hashlib.sha256(HEIGHT_SOURCE.read_bytes()).hexdigest(),
           'source_completeness': 'parent-accepted Magma flags; point membership independently rechecked',
           'elapsed': time.time()-start, 'scope': 'five exact height matrices and LDL bounds; no logarithm or period closure claim'}
    path = ROOT/'b3_height_matrices.json'
    path.write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'status': 'PASS', 'models': len(outputs), 'elapsed': out['elapsed'],
                      'output_sha256': hashlib.sha256(path.read_bytes()).hexdigest()}))


if __name__ == '__main__':
    main()
