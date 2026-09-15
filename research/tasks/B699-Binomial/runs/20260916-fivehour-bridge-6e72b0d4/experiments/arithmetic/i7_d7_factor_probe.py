"""Factor discovery for all 80 finite non-QIG rows, no primality acceptance.

SymPy proposes factors. A later stdlib verifier will certify every prime and the
exact products, so a probable-prime decision here is never a proof input.
"""
import json
from pathlib import Path
import time
import sympy


def main():
    started=time.perf_counter()
    here=Path(__file__).resolve().parent
    data=json.loads((here/'i7_d7_probe.json').read_text(encoding='utf-8'))
    rows=[r for s in data['strips'] for r in s['rows']]+data['bottom']
    chosen=[r for r in rows if r['classification']['kind'] not in ('QIG','empty')]
    found=[]
    for row in chosen:
        n=int(row['n'])
        fs=[]
        for r in range(7):
            f={int(p):int(e) for p,e in sympy.factorint(n-r).items()}
            assert sympy.prod(p**e for p,e in f.items())==n-r
            fs.append(f)
        found.append({'A':row['A'],'B':row['B'],'C':row['C'],'n':n,'factorizations':fs})
    ps=sorted({p for row in found for f in row['factorizations'] for p in f})
    result={'status':'factor proposals only; primality pending deterministic verification',
            'sympy_version':sympy.__version__,'rows':found,
            'prime_candidates':ps,'elapsed_seconds':time.perf_counter()-started}
    out=here/'i7_d7_factor_probe.json'
    out.write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps({'rows':len(found),'factor_candidates':len(ps),
                      'largest_candidates':ps[-10:],'largest_trial_limit':int(sympy.integer_nthroot(ps[-1],2)[0]),
                      'seconds':result['elapsed_seconds']}))


if __name__=='__main__':
    main()
