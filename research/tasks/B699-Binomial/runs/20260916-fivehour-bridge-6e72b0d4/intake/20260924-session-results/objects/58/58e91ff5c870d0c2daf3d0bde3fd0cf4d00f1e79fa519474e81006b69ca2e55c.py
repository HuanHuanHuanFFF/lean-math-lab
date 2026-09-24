#!/usr/bin/env python3
import hashlib,json,sys
from pathlib import Path
cert=Path(sys.argv[1]);out=Path(sys.argv[2])
files=['edge8_frontier_direct.tsv','edge8_frontier_raw_reverse.tsv','positive_payoff.json',
       'q3_mod32749.txt','q3_mod32719.txt','q3_exact.json',
       'q4_mod32749.txt','q4_mod32719.txt','q4_exact.json',
       'q5_mod32749.txt','q5_mod32719.txt','frontier_key_states.json','summary.json']
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
rec={};
for f in files:
    a=cert/f;b=out/f
    if not a.exists():raise SystemExit(f'missing certificate {a}')
    if not b.exists():raise SystemExit(f'missing replay output {b}')
    rec[f]={'certificate_sha256':sha(a),'replay_sha256':sha(b),'match':a.read_bytes()==b.read_bytes()}
assert all(x['match'] for x in rec.values())
print(json.dumps({'status':'PASS_BYTE_IDENTICAL_CERTIFICATE_REPLAY','files':rec},indent=2))
