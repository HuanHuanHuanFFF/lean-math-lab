#!/usr/bin/env python3
"""Exhaustive finite-ring necessary projection. Python standard library only.
No network, no repository operations, and no enumeration of bounded original n.
"""
import argparse, csv, json
from pathlib import Path

PRIMES = (5, 7, 13)
FIELDS = ('B','H','h','P','Q','n','N','Z','S','E','F')

def orbit(m):
    d, y = 1, 1
    rows = []
    while True:
        rows.append([d, y])
        d, y = ((18817*d+32592*y+9408) % m,
                (10864*d+18817*y+5432) % m)
        if [d, y] == [1 % m, 1 % m]:
            return rows
        if len(rows) > m*m:
            raise RuntimeError('No first return in the finite state space')

def powers(m):
    out, x = [], 1
    while x not in out:
        out.append(x)
        x = 2*x % m
    if x != 1:
        raise RuntimeError('Not a group cycle')
    return out

def roots(p, a, d, y):
    # a=0 is a genuine nonunit branch: B is NOT set to zero.
    bs = ([3*(d-1)*pow(a, -1, p) % p] if a else
          (range(p) if 3*(d-1) % p == 0 else ()))
    assert d % p  # Holds on every source state for precisely these primes.
    rows = []
    v, Q = a*y % p, (d+a*y) % p
    for B in bs:
        S = (v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y) % p
        for H in range(p):
            Z = (2*d*H-Q*Q) % p
            if (Z*Z-S) % p:
                continue
            h = (4*H+Q)*pow(d, -1, p) % p
            P = (Q+h*v) % p
            E = (4*v*H*H-P*Q*Q+1) % p
            F = (4*d*v*H*H-4*v*Q*Q*H-Q**4+d) % p
            if E or F:
                continue
            n = (2*P*Q*H+2) % p
            N = (4*v*H**3+H+Q) % p
            if (2*N-n*Q) % p:
                continue
            rows.append([B,H,h,P,Q,n,N,Z,S,E,F])
    return sorted(rows)

def build():
    periods = {str(m): orbit(m) for m in (5,7,9,13,3762,41382,71478)}
    power_cycles = {str(p): powers(p) for p in PRIMES}
    tables, labels = [], {}
    for p in PRIMES:
        oo = periods[str(p)]
        for r in range(3):
            d, y = oo[r % len(oo)]
            for a in range(p):
                rr = roots(p,a,d,y)
                ns = {row[5] for row in rr}
                lab = sorted([c,s] for c in (1,3) for s in range(12)
                             if c*pow(2,s,p) % p in ns)
                tables.append({'prime':p,'q_mod_3':r,'A_mod_prime':a,
                               'source':[d,y],'roots':rr,'labels':lab})
                labels[p,r,a] = {tuple(x) for x in lab}
    fibers, bad, good, baseline_bad = [], [], [], []
    for a in range(455):
        by_r, baseline = [], False
        for r in range(3):
            common = set.intersection(*(labels[p,r,a%p] for p in PRIMES))
            common_c = set.intersection(*({c for c,s in labels[p,r,a%p]} for p in PRIMES))
            baseline |= bool(common_c)
            by_r.append({'q_mod_3':r,'labels':[list(t) for t in sorted(common)],
                         'independent_exponents_common_c': sorted(common_c)})
        survives = any(row['labels'] for row in by_r)
        (good if survives else bad).append(a)
        if not baseline:
            baseline_bad.append(a)
        fibers.append({'A_mod_455':a,'by_q':by_r,'survives':survives,
                       'survives_independent_exponents_baseline':baseline})
    sync_only = sorted(set(bad)-set(baseline_bad))
    counts = {
        'A_residues':455,'excluded_A_residues':len(bad),'retained_A_residues':len(good),
        'independent_exponents_baseline_excluded':len(baseline_bad),
        'independent_exponents_baseline_retained':455-len(baseline_bad),
        'additional_synchronized_projection_exclusions':len(sync_only),
        'excluded_qA_cells':[sum(not f['by_q'][r]['labels'] for f in fibers) for r in range(3)],
        'local_tables':len(tables), 'local_root_witnesses':sum(len(t['roots']) for t in tables),
        'root_witnesses_with_P_zero':sum(row[3]==0 for t in tables for row in t['roots']),
        'root_witnesses_with_Q_zero':sum(row[4]==0 for t in tables for row in t['roots']),
        'root_witnesses_with_S_zero':sum(row[8]==0 for t in tables for row in t['roots']),
    }
    return {'schema':'B699-D04-SYNC455-v1','primes':list(PRIMES),
            'witness_fields':list(FIELDS),'source_periods':periods,
            'power_cycles':power_cycles,'local_tables':tables,'fibers':fibers,
            'excluded_A_residues':bad,'retained_A_residues':good,
            'baseline_excluded_A_residues':baseline_bad,'sync_only_A_residues':sync_only,
            'counts':counts}

def dump(path, value):
    path.write_text(json.dumps(value,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args();args.output.mkdir(parents=True,exist_ok=True)
    result=build()
    dump(args.output/'certificate.json',result)
    dump(args.output/'summary.json',result['counts'])
    (args.output/'RETAINED_A.txt').write_text(
        '# Necessary A residues modulo455; not original inputs.\n'+
        ','.join(map(str,result['retained_A_residues']))+'\n',encoding='utf-8')
    with (args.output/'A_projection.csv').open('w',newline='',encoding='utf-8') as f:
        wr=csv.writer(f,lineterminator='\n')
        wr.writerow(['A_mod_455','excluded','excluded_only_after_exponent_sync','q0_labels_c_s12','q1_labels_c_s12','q2_labels_c_s12'])
        for row in result['fibers']:
            a=row['A_mod_455']
            wr.writerow([a,int(not row['survives']),int(a in result['sync_only_A_residues'])]+
                        [';'.join(f'{c}:{s}' for c,s in x['labels']) for x in row['by_q']])
    print(json.dumps(result['counts'],sort_keys=True))
if __name__=='__main__': main()
