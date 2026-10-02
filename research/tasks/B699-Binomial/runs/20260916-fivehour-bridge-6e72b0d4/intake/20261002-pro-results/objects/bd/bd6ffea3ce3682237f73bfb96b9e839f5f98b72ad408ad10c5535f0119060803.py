#!/usr/bin/env python3
"""Compare the complete deterministic certificate sets, not just summary counts."""
from pathlib import Path
import hashlib,json,sys
sys.dont_write_bytecode=True

def digest_tree(p):return {str(f.relative_to(p)):hashlib.sha256(f.read_bytes()).hexdigest()for f in sorted(p.rglob('*'))if f.is_file()}
def compare(a,b):
 x,y=digest_tree(a),digest_tree(b);assert x==y,{'missing':sorted(set(x)-set(y)),'extra':sorted(set(y)-set(x)),'changed':[n for n in x.keys()&y.keys()if x[n]!=y[n]]}
 return {'status':'PASS_BYTE_IDENTICAL','certificate_files':len(x),'certificate_sha256':x}
if __name__=='__main__':print(json.dumps(compare(Path(sys.argv[1]),Path(sys.argv[2])),indent=2))
