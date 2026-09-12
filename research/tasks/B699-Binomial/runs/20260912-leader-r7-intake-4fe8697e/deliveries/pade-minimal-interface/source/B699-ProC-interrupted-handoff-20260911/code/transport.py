"""Construct an integer table simultaneously saturating all base-power floors.
No primality or floating-point arithmetic is used here.
"""
from typing import Sequence

def saturated_transport(rows: Sequence[int], cols: Sequence[int], base: int) -> list[list[int]]:
    if base < 2 or not rows or not cols:
        raise ValueError('base >= 2 and nonempty margins required')
    if any(not isinstance(x, int) or x < 0 for x in [*rows, *cols]):
        raise ValueError('margins must be nonnegative integers')
    if sum(rows) != sum(cols):
        raise ValueError('row and column totals differ')
    rr, cc = list(rows), list(cols)
    out = [[0 for _ in cols] for _ in rows]
    total = sum(rows)
    if not total:
        return out
    q = 1
    while q * base <= total:
        q *= base
    while q:
        row_caps = [x // q for x in rr]
        col_caps = [x // q for x in cc]
        a = b = 0
        while a < len(rr) and b < len(cc):
            if not row_caps[a]:
                a += 1
                continue
            if not col_caps[b]:
                b += 1
                continue
            blocks = min(row_caps[a], col_caps[b])
            out[a][b] += blocks * q
            rr[a] -= blocks * q
            cc[b] -= blocks * q
            row_caps[a] -= blocks
            col_caps[b] -= blocks
        q //= base
    if any(rr) or any(cc):
        raise ArithmeticError('unit-level transport did not finish')
    return out
