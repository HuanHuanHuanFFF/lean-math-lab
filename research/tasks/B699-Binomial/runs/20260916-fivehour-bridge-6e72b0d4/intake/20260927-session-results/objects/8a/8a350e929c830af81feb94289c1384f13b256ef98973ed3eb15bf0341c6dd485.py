#!/usr/bin/env python3
"""Generate exact arithmetic certificates. Standard-library only; no old proof rerun."""
from __future__ import annotations
import argparse, hashlib, json, math, sys, zipfile
from pathlib import Path
if hasattr(sys, 'set_int_max_str_digits'):
    sys.set_int_max_str_digits(0)
ROOT = Path(__file__).resolve().parents[1]
PARENT_PREFIX = 'B699-D-i3-20260926-A42-NOSPLIT3-Q336/'
PARENT_SHA = '8fe240451e6261726a9663805530629a83d6f94ec133e9128fa8b7e3d1882637'

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def step(pair: tuple[int, int], mod: int) -> tuple[int, int]:
    d, y = pair
    return ((18817*d+32592*y+9408) % mod,
            (10864*d+18817*y+5432) % mod)

def orbit(mod: int) -> list[list[int]]:
    seen: set[tuple[int, int]] = set()
    rows: list[list[int]] = []
    pair = (1, 1)
    while pair not in seen:
        seen.add(pair); rows.append(list(pair)); pair = step(pair, mod)
        if len(rows) > 100000:
            raise RuntimeError('unexpected finite-orbit size')
    if pair != (1, 1):
        raise ValueError('orbit has a preperiod')
    return rows

def square_target(d: int, y: int, A: int, B: int) -> int:
    v = A*y
    return v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y

def quot_row(rows: list[list[int]], q: int, A: int, p: int) -> dict:
    d, y = rows[q % len(rows)]
    if 3*(d-1) % A:
        raise ValueError('source quotient is not an integer')
    B = (3*(d-1)//A) % p
    S = square_target(d, y, A, B) % p
    roots = [x for x in range(p) if x*x % p == S]
    return dict(q=q, d=d, y=y, B=B, S=S, roots=roots)

def pair_mul(a: tuple[int,int], b: tuple[int,int]) -> tuple[int,int]:
    u,x=a; w,z=b
    return u*w+3*x*z, u*z+x*w

def pell(k: int) -> tuple[int,int]:
    result, base = (1,0), (2,1)
    while k:
        if k & 1: result = pair_mul(result, base)
        base=pair_mul(base,base); k >>= 1
    return result

def make_certificates() -> dict[str, dict]:
    certs = {}
    r500, r2500 = orbit(500), orbit(2500)
    tab5=[dict(r=r, **quot_row(r500,45+60*r,100,5)) for r in range(5)]
    tab25=[dict(r=r, **quot_row(r2500,45+60*r,100,25)) for r in range(25)]
    certs['01_exact_quotient5.json'] = {
        'schema':'A100-actual-quotient-v1', 'scope':'A=100; exact B=3(d-1)/100; q=45+60r',
        'orbits': {'500':r500, '2500':r2500},
        'r_mod5':tab5, 'allowed_r_mod5':[r['r'] for r in tab5 if r['roots']],
        'r_mod25':tab25, 'allowed_r_mod25':[r['r'] for r in tab25 if r['roots']],
        'not_claimed':'These local square gates alone do not close A100.'}
    r25, r29=orbit(25), orbit(29)
    c100=square_target(1,1,100,0)
    certs['02_A100_all_rows_mod29.json'] = {
        'schema':'A100-all-rows-closure-v1','orbit25':r25,'orbit29':r29,
        'd_eq1_mod25_indices':[i for i,(d,y) in enumerate(r25) if d==1],
        'positive_q_multiple':15,'A':100,'A_mod29':100%29,
        'at_q_0_mod15':{'d_mod29':1,'y_mod29':1,'B_mod29':0,'S_mod29':c100%29},
        'S_representative':c100, 'quadratic_residues29':sorted({x*x%29 for x in range(29)}),
        'euler_power':pow(c100,14,29),
        'claim':'No positive q in the adopted A100 source admits an integer Y with Y^2=S.',
        'independent_of':['old TRI4','CUBIC3','HEIGHT26','P/Q prime powers','n power equality']}
    f=lambda a:(a**4+5*a**3+10*a*a+10*a+5)%29
    sq29={x*x%29 for x in range(29)}
    bad=[a for a in range(1,29) if f(a) not in sq29]
    bad725=[a for a in range(725) if a%25==0 and a%29 in bad]
    certs['03_general_25_mod29.json']={
        'schema':'source-period-transfer-v1', 'hypothesis':'25|A and 29 does not divide A',
        'polynomial_coefficients_ascending':[5,10,10,5,1],
        'values_mod29':[f(a) for a in range(29)],'bad_A_mod29':bad,
        'bad_A_mod725':bad725,'excluded_residue0_mod29':False,
        'reason_zero_not_excluded':'29|A does not determine B mod29 from AB.'}
    gen5=[]; u,x=1,0
    for i in range(3):
        gen5.append({'q_mod3':i,'U4q_mod5':u,'X4q_mod5':x,'U4q1_mod5':(2*u+3*x)%5})
        u,x=(97*u+168*x)%5,(56*u+97*x)%5
    u12,x12=pell(12)
    configurations=[]
    for d in range(1,25,5):
        for y in range(1,25,5):
            if (d*d+d+1-3*y*y)%25: continue
            for a in range(0,25,5):
                for b in range(25):
                    if (a*b-3*(d-1))%25: continue
                    s=square_target(d,y,a,b)%25
                    configurations.append([d,y,a,b,s,s in {z*z%25 for z in range(25)}])
    certs['04_SPLIT5_CAP_and_valuation.json']={
        'schema':'five-adic-source-cap-v1','gamma_mod5':gen5,
        'U12':u12,'X12':x12,'X12_mod25':x12%25,
        'fifth_angle_factor_ascending':[5,0,60,0,144],
        'valuation_hypothesis':'3 divides positive q',
        'valuation_identity':'v5(d-1)=1+v5(q)',
        'square_conditions_if_5_divides_A':[
            '3 divides q','v5(B) in {0,1}',
            'if v5(B)=0 then B mod5 in {1,4}',
            'if v5(B)=1 then B mod25=20',
            'v5(q) in {v5(A)-1,v5(A)}'],
        'universal_mod25_checks':configurations,
        'warning':'This universal necessary relaxation does not choose B for a given A100 row.'}
    parent=json.loads((ROOT/'inputs/parent_frontier.json').read_text())
    residues=parent['surviving_A_residues']; m=parent['new_A_modulus']
    assert m==3031056 and len(residues)==118548
    least=next(a for a in residues if a>0 and a%725 not in bad725)
    certs['05_frontier_CRT_product.json']={
        'schema':'exact-parent-projection-difference-v1',
        'parent_frontier_sha256':sha(ROOT/'inputs/parent_frontier.json'),
        'parent_modulus':m,'parent_surviving_classes':len(residues),
        'new_gate_modulus':725,'bad_new_residues':bad725,
        'gcd_of_moduli':math.gcd(m,725),'new_modulus':m*725,
        'CRT_multiplier_inverse':pow(m,-1,725),
        'parent_lift_classes':len(residues)*725,
        'newly_excluded_classes':len(residues)*len(bad725),
        'surviving_classes':len(residues)*(725-len(bad725)),
        'least_positive_surviving_A':least,
        'new_fixed_minimum_branch_closed':[100],
        'representation':'parent residue set times allowed residues modulo725; no 86-million-state scan claimed',
        'not_counted':['SPLIT5-CAP A/B/q restrictions','all historical consumers','actual original inputs']}
    q=165; u,x=pell(8*q+1); d=(3*x-1)//2; y=u//2
    B=3*(d-1)//100; v=100*y; S=square_target(d,y,100,B); floor=math.isqrt(S)
    q0=165; stride=1500
    modular={}
    for p in [3,5,7,25,29,31,97]:
        rows=orbit(100*p)
        base=quot_row(rows,q0,100,p)
        # Evaluate the exact progression over its entire finite orbit, not just its first row.
        period=len(rows)//math.gcd(len(rows),stride)
        values=[quot_row(rows,q0+stride*k,100,p)['S'] for k in range(period)]
        modular[str(p)]={'lifted_modulus':100*p,'pell_period':len(rows),
                         'progression_period':period,'S_values':values,'initial':base}
    certs['06_boundary_local_family.json']={
        'schema':'already-rejected-weak-family-v1','A':100,'q0':q0,'q_stride':stride,
        'meaning':'q=165+1500k passes the stated low-five-adic tests but the entire family is rejected mod29.',
        'modular':modular,
        'sample':{'q':q,'d':str(d),'y':str(y),'B':str(B),'Q':str(d+v),
                  'S':str(S),'floor_sqrt_S':str(floor),
                  'lower_gap':str(S-floor*floor),'upper_gap':str((floor+1)**2-S)},
        'not_restored':['integer Y','original P and Q complete prime powers','h','nu','n=c*2^s','original j'],
        'not_a_remaining_frontier_model':True}
    paths={'parent_HANDOFF.md':'HANDOFF.md','parent_PROOFS.md':'PROOFS.md',
           'parent_FAILURE_BOUNDARIES.md':'FAILURE_BOUNDARIES.md',
           'parent_frontier.json':'certificates/frontier.json'}
    pzip=ROOT/'inputs/parent_A42_evidence.zip'
    if sha(pzip)!=PARENT_SHA: raise ValueError('wrong frozen parent')
    with zipfile.ZipFile(pzip) as z:
        crc=z.testzip()
        if crc is not None: raise ValueError('parent CRC failure')
        adopted={}
        for local,member in paths.items():
            content=z.read(PARENT_PREFIX+member)
            if content!=(ROOT/'inputs'/local).read_bytes(): raise ValueError('source mismatch')
            adopted[local]={'source_member':PARENT_PREFIX+member,'sha256':hashlib.sha256(content).hexdigest()}
    certs['07_source_adoption.json']={
        'parent_sha256':PARENT_SHA,'parent_zip_crc_ok':True,'adopted_members':adopted,
        'overview_sha256':sha(ROOT/'inputs/OVERVIEW-2026-09-22.md.txt'),
        'historical_reduction':'NC3 to the canonical balanced core is adopted author-level input, not proved here.',
        'old_proofs_rerun':False,'repository_operations':[]}
    certs['08_same_input_polynomial_interface.json']={
        'schema':'exact-integer-source-identities-v1',
        'Q':'d+v','P':'Q+h*v',
        'identity1':'v*(d*nu-Q^2)^2-Q^5+d^2 = d^2*(v*nu^2-P*Q^2+1)+d*v*Q^2*(h*d-Q-2*nu)',
        'identity2':'v*S-Q^5+d^2 = d^2*(v*W-d^3+1)',
        'identity3':'A*B*y^2-d^3+1 = y^2*(A*B-3*(d-1))+(d-1)*(3*y^2-d^2-d-1)',
        'source_n':'n=PQ*nu+2=c*2^s; c in {1,3}',
        'logical_use':'Contradiction in the integer square relaxation implies impossibility of the full same-input core; not a converse.'}
    return certs

def main() -> None:
    parser=argparse.ArgumentParser(); parser.add_argument('--out',type=Path,required=True)
    args=parser.parse_args(); args.out.mkdir(parents=True,exist_ok=True)
    certs=make_certificates()
    for name,obj in sorted(certs.items()):
        data=json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
        (args.out/name).write_text(data,encoding='utf-8')
        print(f'GENERATED {name} {hashlib.sha256(data.encode()).hexdigest()}')
    print(f'GENERATION PASS: {len(certs)} deterministic certificates')
if __name__=='__main__': main()
