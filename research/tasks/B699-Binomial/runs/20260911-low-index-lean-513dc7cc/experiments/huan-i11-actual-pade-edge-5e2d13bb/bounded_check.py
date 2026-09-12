from time import perf_counter
# Reproduces only the finite arithmetic part of checks-and-sources.json.
t0 = perf_counter()
count = valid = 0
for p in [1, 2, 3, 5]:
 for T in range(5):
  for w in range(T + 1):
   for e in range(5):
    for k in range(4):
     for A in range(6):
      for Y in range(13):
       count += 1
       if Y <= p**e*A and A**T < Y**w and (p**k)**T <= Y**(T-w):
        valid += 1
        assert k < e, (p, e, A, Y, k, T, w)
factors = 0
for p in [-3, -1, 0, 1, 3, 5]:
 for e in range(9):
  for k in range(e + 1):
   for A in [-2, 0, 1, 7]:
    factors += 1
    assert p**k*(p**(e-k)*A) == p**e*A
for m in range(1, 15):
 assert 625**(5*m) == 5**(20*m)
 assert 2187**(5*m) == 3**(35*m)
 assert 625**(5*m)*7**(5*m) == 4375**(5*m)
 assert 2187**(5*m)*2**(5*m) == 4374**(5*m)
 for d in [0, 1]:
  assert (3*m-d)+(2*m+d-1)+1 == 5*m
print(dict(capacity_tuples=count, valid=valid, factor_checks=factors, seconds=perf_counter()-t0))
