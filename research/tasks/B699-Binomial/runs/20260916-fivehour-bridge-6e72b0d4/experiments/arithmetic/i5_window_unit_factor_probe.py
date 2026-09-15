"""Factor discovery only for the canonical i5 finite boundary.

SymPy's primality decisions are not acceptance: every resulting factor will be
certified deterministically and its product checked by the later verifier.
"""
from pathlib import Path
import json
import time
import sympy


def main():
    start=time.perf_counter()
    here=Path(__file__).resolve().parent
    data=json.loads((here/'i5_window_unit_probe.json').read_text(encoding='utf-8'))
    reps={}
    for z in data['non_QIG_representations']:
        reps.setdefault(int(z['n']),z)
    found=[]
    for n,z in sorted(reps.items()):
        fs=[]
        for r in range(5):
            f={int(p):int(e) for p,e in sympy.factorint(n-r).items()}
            assert sympy.prod(p**e for p,e in f.items())==n-r
            fs.append(f)
        found.append({'n':n,'representative':{k:z[k] for k in ('d','A','B','h')},'factorizations':fs})
    ps=sorted({p for row in found for f in row['factorizations'] for p in f})
    out={'status':'factor proposals only, deterministic primality pending','rows':found,
         'prime_candidates':ps,'sympy_version':sympy.__version__,'seconds':time.perf_counter()-start}
    path=here/'i5_window_unit_factor_probe.json'
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({'rows':len(found),'prime_candidates':len(ps),'largest_candidates':ps[-10:],
                      'trial_limit':int(sympy.integer_nthroot(ps[-1],2)[0]),'seconds':out['seconds']}))


if __name__=='__main__':
    main()
