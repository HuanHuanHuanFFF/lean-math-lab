"""Exact sparse polynomials over Z. No third-party packages."""
from __future__ import annotations
from dataclasses import dataclass

@dataclass
class Poly:
    arity: int
    terms: dict[tuple[int, ...], int]

    def __post_init__(self):
        self.terms = {tuple(e): int(c) for e, c in self.terms.items() if c}
        if any(len(e) != self.arity or any(v < 0 for v in e) for e in self.terms):
            raise ValueError('invalid exponent tuple')

    @classmethod
    def const(cls, arity, c):
        return cls(arity, {(0,) * arity: c})

    @classmethod
    def var(cls, arity, index):
        e = [0] * arity
        e[index] = 1
        return cls(arity, {tuple(e): 1})

    def coerce(self, other):
        if isinstance(other, int):
            return Poly.const(self.arity, other)
        if not isinstance(other, Poly) or other.arity != self.arity:
            raise TypeError('polynomial arity mismatch')
        return other

    def __add__(self, other):
        other = self.coerce(other)
        result = self.terms.copy()
        for e, c in other.terms.items():
            result[e] = result.get(e, 0) + c
        return Poly(self.arity, result)

    __radd__ = __add__

    def __neg__(self):
        return Poly(self.arity, {e: -c for e, c in self.terms.items()})

    def __sub__(self, other):
        return self + (-self.coerce(other))

    def __rsub__(self, other):
        return self.coerce(other) - self

    def __mul__(self, other):
        other = self.coerce(other)
        result = {}
        for e, c in self.terms.items():
            for f, d in other.terms.items():
                k = tuple(a + b for a, b in zip(e, f))
                result[k] = result.get(k, 0) + c * d
        return Poly(self.arity, result)

    __rmul__ = __mul__

    def __pow__(self, power):
        if not isinstance(power, int) or power < 0:
            raise ValueError('nonnegative integer exponent required')
        result = Poly.const(self.arity, 1)
        for _ in range(power):
            result = result * self
        return result

    def encoded(self):
        return [[list(e), c] for e, c in sorted(self.terms.items())]
