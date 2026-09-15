"""Reproduce compact original certificates, deduplicating shifted target n.

This reuses the frozen deterministic carry-cover implementation. Independent
verification is performed by shifted_mixed_verify.py, which does not import it.
"""
import json
from pathlib import Path
import mixed_powers_probe as base


def main():
    here=Path(__file__).resolve().parent
    data=json.loads((here/'shifted_mixed_probe.json').read_text(encoding='utf-8'))
    reps={}
    for row in data['non_QIG_representations']:
        reps.setdefault(row['n'],[]).append(row)
    finite=[]
    for n,representations in sorted(reps.items(),key=lambda z:int(z[0])):
        row=representations[0]
        for i in (4,5):
            checked=base.carry_cover(row,i)
            checked['h']=row['h']
            finite.append(checked)
    out={'scope':'unique target rows for shifted family; exponent proof separate',
         'rows':finite,'pairs':sum(z['pairs'] for z in finite)}
    path=here/'shifted_mixed_certificate.json'
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({'unique_n':len(reps),'indexed_rows':len(finite),'pairs':out['pairs'],
                      'intervals':sum(len(z['intervals']) for z in finite),
                      'largest_n':max(z['n'] for z in finite),'bytes':path.stat().st_size}))


if __name__=='__main__':
    main()
