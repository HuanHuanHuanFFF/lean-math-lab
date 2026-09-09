#!/usr/bin/env python3
"""Check that the compiled prime witness checker rejects three bad inputs.
Run after compiling build/check_prime_chain. This tests the checker, not B699.
"""
from pathlib import Path
import subprocess,json
ROOT=Path(__file__).resolve().parents[1]
def main():
    xs=(ROOT/'outputs/prime_chain_20m.txt').read_text().splitlines()
    tests={
      'composite_witness':xs[:1]+['4']+xs[1:],
      'missing_gap_witness':xs[:1]+xs[2:],
      'missing_target_endpoint':xs[:-1]
    }
    cases=[]
    for name,data in tests.items():
        p=ROOT/'build'/f'{name}.txt'
        try:
            p.write_text('\n'.join(data)+'\n')
            r=subprocess.run([str(ROOT/'build/check_prime_chain'),str(p)],capture_output=True,text=True)
            assert r.returncode!=0,(name,r.stdout,r.stderr)
            cases.append(dict(test=name,returncode=r.returncode,stdout=r.stdout,stderr=r.stderr))
        finally:
            if p.exists():p.unlink()
    out=dict(status='PASS',cases=cases)
    (ROOT/'outputs/rejection_checks.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
if __name__=='__main__':main()
