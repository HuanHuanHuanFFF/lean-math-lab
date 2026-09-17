#!/usr/bin/env python3
"""Select only the rigorously required n<2^37 terminal certificate subtree.
Selection is not acceptance. Run verify.py afterwards.
"""
import json
from verify import ROOT, recover
_, terminals, _ = recover()
old=json.loads((ROOT/'sources/frozen_i5_terminals.json').read_text())
by_n={row['n']:row for row in old['rows']}
rows=[by_n[n] for n in terminals]
primes={node['p']:node for node in old['prime_certificates']}
needed=set()
def add(p):
    if p in needed:return
    needed.add(p)
    for q,e in primes[p].get('factorization_p_minus_1',[]):add(q)
for row in rows:
    for fs in row['row_factorizations']:
        for p,e in fs:add(p)
    for v in row['candidates']:add(v['p'])
result={'rows':rows,'prime_certificates':[primes[p] for p in sorted(needed)]}
(ROOT/'evidence/finite37_certificate.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'selected_terminal_rows':len(rows),'selected_Lucas_nodes':len(needed)}))
