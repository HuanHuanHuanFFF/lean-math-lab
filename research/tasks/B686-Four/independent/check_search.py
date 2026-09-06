"""Check bisection against sequential binomial-coefficient evaluation."""
import importlib.util
import json
from math import comb
from pathlib import Path

root = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('b686_probe',root/'experiments/explore.py')
probe = importlib.util.module_from_spec(spec)
spec.loader.exec_module(probe)
count = 0
for k in range(2,13):
    for d in range(k,4*k+1):
        # Independently scan n from zero; binomial coefficients cancel the common k!.
        n = 0
        while comb(n+d+k,k) > 4*comb(n+k,k):
            n += 1
        lo,hi,_ = probe.crossing(k,d)
        assert (lo,hi) == (n-1,n)
        assert probe.difference(hi,k,d) == (
            comb(n+d+k,k)-4*comb(n+k,k))*__import__('math').factorial(k)
        count += 1
report={'method':'sequential scan with math.comb vs product-based doubling/bisection',
        'k_range':[2,12], 'displacements':'k <= d <= 4k',
        'parameter_pairs_checked':count,'result':'all crossing brackets agree',
        'scope':'algorithm cross-check; not a Lean proof of all reported searches'}
Path(__file__).with_suffix('.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps(report,indent=2))
