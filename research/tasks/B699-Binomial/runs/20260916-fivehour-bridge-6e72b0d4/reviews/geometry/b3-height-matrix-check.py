"""Independent rational replay of the five height matrices and LDL certificates."""
from pathlib import Path
from fractions import Fraction as F
import hashlib
import json
import math

ROOT = Path(__file__).resolve().parent
RUN = ROOT.parents[1]
SOURCE = RUN/'experiments/geometry/b3_height_matrices.json'


def add(P, Q, A):
    x1, y1 = P
    x2, y2 = Q
    assert x1 != x2
    slope = (y2-y1)/(x2-x1)
    x3 = slope*slope-x1-x2
    return x3, slope*(x1-x3)-y1


def point_hash(x):
    a, b = x.numerator, x.denominator
    def encode(n):
        return (b'-' if n < 0 else b'+')+abs(n).to_bytes(max(1, (abs(n).bit_length()+7)//8), 'big')
    return hashlib.sha256(encode(a)+b'|'+encode(b)).hexdigest()


def main():
    data = json.loads(SOURCE.read_text())
    constants = {m['k']: m for m in json.loads((RUN/'experiments/cubic/stage09-generic-height-20260915T205103Z.json').read_text())['models']}
    expected = {
        7: [('40', '660'), ('110', '-320')],
        11: [('-2/9', '53504/27'), ('142', '-768')],
        16: [('538/9', '-60544/27'), ('202', '1152')],
        20: [('458', '7520'), ('1354', '-48288'), ('-304', '5180'), ('2762', '-144032')],
        25: [('2014/9', '-20800/27'), ('302', '-1472'), ('6334/25', '32448/125')]
    }
    terms = 40
    lo2 = sum((F(2, (2*i+1)*3**(2*i+1)) for i in range(terms)), F(0))
    hi2 = lo2+F(9, 4*(2*terms+1)*3**(2*terms+1))
    summaries = []
    point_count = 0
    for model in data['models']:
        k, A, B = model['k'], model['A'], model['B']
        basis = [(F(x), F(y)) for x, y in model['basis']]
        assert basis == [(F(x), F(y)) for x, y in expected[k]]
        assert all(y*y == x**3+A*x+B for x, y in basis)
        scale = 4**model['doublings']
        intervals = {}
        for trace in model['point_traces']:
            ids = [int(part[1:])-1 for part in trace['name'].split('+')]
            P = basis[ids[0]] if len(ids) == 1 else add(basis[ids[0]], basis[ids[1]], A)
            assert [str(P[0]), str(P[1])] == trace['initial_point']
            x = P[0]
            for _ in range(model['doublings']):
                x = ((x*x-A)**2-8*B*x)/(4*(x**3+A*x+B))
            bits = max(abs(x.numerator), x.denominator).bit_length()
            assert bits == trace['terminal_Q_bits'] and point_hash(x) == trace['terminal_x_sha256']
            lo = ((bits-1)*lo2-constants[k]['height_lower_error_less_than'])/scale
            hi = (bits*hi2+constants[k]['height_upper_error_less_than'])/scale
            assert (lo, hi) == (F(*trace['lower']), F(*trace['upper']))
            intervals[tuple(ids)] = lo, hi
            point_count += 1
        rank = len(basis)
        matrix = []
        for i in range(rank):
            row = []
            for j in range(rank):
                if i == j:
                    bound = intervals[i,]
                else:
                    pair = intervals[min(i,j), max(i,j)]
                    bound = ((pair[0]-intervals[i,][1]-intervals[j,][1])/2,
                             (pair[1]-intervals[i,][0]-intervals[j,][0])/2)
                saved = model['height_matrix'][i][j]
                assert bound == (F(*saved['lo']), F(*saved['hi']))
                row.append(bound)
            matrix.append(row)
        mid = [[(lo+hi)/2 for lo, hi in row] for row in matrix]
        eps = max(sum((hi-lo)/2 for lo, hi in row) for row in matrix)
        assert eps == F(*model['interval_error_row_norm'])
        lam = F(*model['lambda'])
        L = [[F(*x) for x in row] for row in model['LDL_L']]
        D = [F(*x) for x in model['LDL_D']]
        assert lam > 0 and all(d > 0 for d in D)
        assert all(L[i][i] == 1 and all(L[i][j] == 0 for j in range(i+1, rank)) for i in range(rank))
        assert all(sum(L[i][s]*D[s]*L[j][s] for s in range(rank)) ==
                   mid[i][j]-(lam+eps if i == j else 0) for i in range(rank) for j in range(rank))
        upper = sum(matrix[i][i][1] for i in range(rank))+2*sum(
            max(abs(matrix[i][j][0]), abs(matrix[i][j][1])) for i in range(rank) for j in range(i))
        C = model['max_coefficient_height_constant']
        assert upper == F(*model['upper_absolute_sum']) and math.ceil(upper) == C
        summaries.append({'k': k, 'rank': rank, 'lambda': str(lam), 'C': C, 'LDL_verified': True})
    assert point_count == 25
    out = {'status': 'PASS', 'reviewer': '/root/geometry', 'models': summaries,
           'point_and_pair_traces_recomputed': point_count,
           'source_sha256': hashlib.sha256(SOURCE.read_bytes()).hexdigest(),
           'scope': 'independent arithmetic/LDL replay; source MW completeness remains the parent-accepted Magma receipt'}
    (ROOT/'b3-height-matrix-check.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps(out))


if __name__ == '__main__':
    main()
