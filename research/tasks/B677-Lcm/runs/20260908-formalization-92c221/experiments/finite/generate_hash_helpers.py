"""Untrusted deterministic lookup-table construction; Lean checks every use."""
from math import isqrt


def next_prime(n):
    def prime(x):
        return x >= 2 and all(x % d for d in range(2, isqrt(x) + 1))
    while not prime(n):
        n += 1
    return n


def build_lookup(first_by_value, limit):
    bucket_mod = next_prime(limit + 1)
    slot_mod = next_prime((3 * limit + 1) // 2 + 1)
    buckets = [[] for _ in range(bucket_mod)]
    for value, first in first_by_value.items():
        buckets[value % bucket_mod].append((value // bucket_mod, first))
    order = sorted(range(bucket_mod), key=lambda i: len(buckets[i]), reverse=True)
    while True:
        if any(len({q % slot_mod for q, _ in b}) != len(b) for b in buckets):
            slot_mod = next_prime(slot_mod + 1)
            continue
        occupied = [False] * slot_mod
        table = [0] * slot_mod
        seeds = [0] * bucket_mod
        maximum = 0
        success = True
        for bucket in order:
            values = buckets[bucket]
            if not values:
                continue
            if len(values) == 1:
                seeds[bucket] = values[0][1]
                continue
            residues = [q % slot_mod for q, _ in values]
            state = ((bucket + 1) * 2654435761) % 2**32
            for attempt in range(100000):
                state = (1664525 * state + 1013904223) % 2**32
                displacement = state % slot_mod
                slots = [(q + displacement) % slot_mod for q in residues]
                if all(not occupied[s] for s in slots):
                    break
            else:
                success = False
                break
            seeds[bucket] = limit + displacement
            maximum = max(maximum, displacement)
            for slot, (_, first) in zip(slots, values):
                occupied[slot] = True
                table[slot] = first
        if success:
            for value, first in first_by_value.items():
                seed = seeds[value % bucket_mod]
                actual = seed if seed < limit else table[(value // bucket_mod + seed - limit) % slot_mod]
                assert actual == first
            return {'width': max(1, (limit + maximum).bit_length()),
                    'bucket_mod': bucket_mod, 'slot_mod': slot_mod,
                    'seeds': seeds, 'representatives': table,
                    'max_displacement': maximum}
        slot_mod = next_prime((11 * slot_mod + 9) // 10)
