"""Canonical i5 q_r=1 cost probe: d in {1,5}, 23-smooth core, shifts 0..4.

The frozen signed one-power lifting engine is reused; its scalar i7 labels are
discarded. This file evaluates i5's own full-power small-part rule and QIG.
"""
from pathlib import Path
import json
import time
import i7_window_unit_probe as lifts


def small5(n):
    return 2**lifts.vp(n,2)*3**lifts.vp(n,3)*(5 if lifts.vp(n,5)==1 else 1)


def qig(n):
    if n<12:
        return True
    t=1
    for r in range(4):
        t*=small5(n-r)
    return t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3


def row(d,a,b,h):
    n=d*2**a*3**b+h
    return {'d':d,'A':a,'B':b,'h':h,'n':str(n),'QIG':qig(n)}


def main():
    started=time.perf_counter()
    cases=[];all_rows=[];bottom=[];both=[]
    for d in (1,5):
        for h in range(5):
            configurations=[]
            for b in (0,1):
                configurations.append({'d':d,'p':2,'e':d*3**b,'fixed':[None,b,0],'minimum':3})
            for a in range(3):
                configurations.append({'d':d,'p':3,'e':d*2**a,'fixed':[a,None,0],'minimum':2})
            for st in configurations:
                p=st['p'];q=3 if p==2 else 2
                label='A' if p==2 else 'B'
                values=set(range(st['minimum'],lifts.CUT))
                branches=[]
                for rho in range(-h,4-h):
                    if not rho:
                        continue
                    items=[lifts.odd(st,h,q,rho)] if q==3 else [lifts.even(st,h,rho,eps) for eps in (0,1)]
                    for br in items:
                        if br is None:
                            continue
                        exps=sorted(z[label] for z in br.pop('rows'))
                        assert len(exps)==len(set(exps))
                        br['candidate_exponents']=exps
                        values.update(exps)
                        branches.append(br)
                for exponent in sorted(values):
                    a,b,_=[exponent if x is None else x for x in st['fixed']]
                    all_rows.append(row(d,a,b,h))
                cases.append(dict(st,h=h,branches=branches,candidate_exponents=sorted(values)))
            for a in range(3):
                for b in (0,1):
                    bottom.append(row(d,a,b,h))
    # Both high at d=5 are impossible; at d=1 QIG-height gives n<11125.
    for a in range(3,14):
        for b in range(2,9):
            for h in range(5):
                n=2**a*3**b+h
                if n<11125:
                    both.append(row(1,a,b,h))
    all_rows.extend(bottom);all_rows.extend(both)
    assert len({(z['d'],z['A'],z['B'],z['h']) for z in all_rows})==len(all_rows)
    failed=[z for z in all_rows if not z['QIG']]
    ns=sorted({int(z['n']) for z in failed})
    out={'scope':'i5 canonical q_r=1 finite reduction; cap derivation and original acceptance separate',
         'ds':[1,5],'shifts':list(range(5)),'low_cut':lifts.CUT,'both_high_n_cap':11125,
         'single_cases':cases,'bottom':bottom,'both_high_finite':both,'non_QIG_representations':failed}
    path=Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({'single_cases':len(cases),'bottom':len(bottom),'both_high_finite':len(both),
                      'finite_representations':len(all_rows),'non_QIG_representations':len(failed),
                      'unique_original_n':len(ns),'largest_n':ns[-10:],'max_bits':max(ns).bit_length(),
                      'seconds':time.perf_counter()-started,'bytes':path.stat().st_size}))


if __name__=='__main__':
    main()
