"""Generate one concrete, checked, small Lean growth-leaf candidate.

The generator does not run Lean. It checks the actual polynomial coefficient
identity before emitting a proof that must independently establish that same
identity in Lean using Polynomial.funext and rational ring arithmetic.
"""
from pathlib import Path
from fractions import Fraction as F
from datetime import datetime,timezone
import argparse,ctypes,hashlib,json,math,os,re,time

OUT=Path(__file__).resolve().parent
RUN=OUT.parents[1]
REPO=RUN.parents[4]
GROWTH=RUN/'experiments/huan-pade-growth-certificates-5e2d13bb'
PKG=Path('D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/materials/i18/B699-i18-content-Pade-closure-20260911')


def clean(p):return {k:F(v) for k,v in p.items() if v}
def add(p,q):return clean({k:p.get(k,F(0))+q.get(k,F(0)) for k in p.keys()|q.keys()})
def scale(c,p):return clean({k:F(c)*v for k,v in p.items()})
def mul(p,q):
    ans={}
    for i,a in p.items():
        for j,b in q.items():ans[i+j]=ans.get(i+j,F(0))+a*b
    return clean(ans)
def power(p,n):
    r={0:F(1)}
    for _ in range(n):r=mul(r,p)
    return r
def compose(p,q):
    r={}
    for k,a in p.items():r=add(r,scale(a,power(q,k)))
    return r
def basis(a,b):return {a+k:F((-1)**k*math.comb(b,k)) for k in range(b+1)}
def coefficient_core(c,d,z,kind):
    X={1:F(1)};Y={0:F(1),1:F(-1)}
    third={0:F(1),1:(z-1 if kind=='Q' else -z)}
    es=(c-d,d,d) if kind=='Q' else (d,d,c-d)
    r={0:F(1)}
    for p,e in zip((X,Y,third),es):r=mul(r,power(p,e))
    return r
def moment(p):return sum((v/F(k+1) for k,v in p.items()),F(0))
def lean_rat(q):
    q=F(q)
    return f'({q.numerator} : ℚ)' if q.denominator==1 else f'({q.numerator} : ℚ) / {q.denominator}'


def peak_bytes():
    class Mem(ctypes.Structure):
        _fields_=[('cb',ctypes.c_ulong),('faults',ctypes.c_ulong)]+[(k,ctypes.c_size_t) for k in
          ('peak','working','peak_paged','paged','peak_nonpaged','nonpaged','pagefile','peak_pagefile')]
    m=Mem();m.cb=ctypes.sizeof(m)
    ctypes.windll.kernel32.GetCurrentProcess.restype=ctypes.c_void_p
    ctypes.windll.psapi.GetProcessMemoryInfo.argtypes=[ctypes.c_void_p,ctypes.POINTER(Mem),ctypes.c_ulong]
    ctypes.windll.psapi.GetProcessMemoryInfo.restype=ctypes.c_int
    assert ctypes.windll.psapi.GetProcessMemoryInfo(ctypes.windll.kernel32.GetCurrentProcess(),ctypes.byref(m),m.cb)
    return m.peak


def main():
    started=time.monotonic()
    ap=argparse.ArgumentParser();ap.add_argument('--row',type=int,default=0);ap.add_argument('--kind',choices=('Q','E'),default='Q')
    ap.add_argument('--leaf',type=int,default=0);args=ap.parse_args()
    if (OUT/'FREEZE_V1.json').exists():raise RuntimeError('Frozen experiment: copy it to a new owned experiment before regenerating.')
    path=GROWTH/'certificates-compact'/f'row-{args.row:02d}.json'
    raw=path.read_bytes()
    frozen=json.loads((GROWTH/'FREEZE_V1.json').read_text(encoding='utf-8'))
    fixed={r['path']:r['sha256'] for r in frozen['files']}
    assert hashlib.sha256(raw).hexdigest()==fixed[path.relative_to(GROWTH).as_posix()]
    assert hashlib.sha256((GROWTH/'SOURCE_LEDGER.json').read_bytes()).hexdigest()==fixed['SOURCE_LEDGER.json']
    assert hashlib.sha256((RUN/'lean/Growth/Partition.lean').read_bytes()).hexdigest()==fixed['PartitionGrowth.lean']
    data=json.loads(raw);row=data['row'];part=data[args.kind];leaf=part['leaves'][args.leaf]
    source_rows=json.loads((PKG/'input/i18_cut_inputs.json').read_text())['cuts']
    assert row==source_rows[args.row]
    c,d=row['c'],row['d'];z=F(data['z']);N=c+d
    assert 0<d<c and N<=9,'Prototype generator deliberately limited to degree <=9'
    assert 0<z<F(d,c)<1
    assert z==F(row['D0'],row['a']*row['p']**row['k0'])
    a,b=F(leaf['a']),F(leaf['b']);depth=leaf['depth'];lam=F(part['lambda'])
    assert 0<=a<b<=1 and b-a==F(1,2**depth) and (a*2**depth).denominator==1
    assert lam==F(int(part['lambda_grid_numerator']),2**96)>0
    bs=[F(int(n),int(leaf['bernstein_denominator'])) for n in leaf['bernstein_numerators']]
    assert len(bs)==N+1 and all(F(0)<=x<lam for x in bs)
    gammas=[math.comb(N,k)*(lam-bs[k]) for k in range(N+1)]
    assert all(x>0 for x in gammas)
    core=coefficient_core(c,d,z,args.kind);aff=clean({0:a,1:b-a});local=compose(core,aff)
    actual_gap=add({0:lam},scale(-1,local));expansion={}
    for k,g in enumerate(gammas):expansion=add(expansion,scale(g,basis(k,N-k)))
    assert actual_gap==expansion,'Actual core differs from the supplied Bernstein coefficient identity'
    bad_g=gammas.copy();bad_g[1]+=F(1,2**96)
    bad_exp={}
    for k,g in enumerate(bad_g):bad_exp=add(bad_exp,scale(g,basis(k,N-k)))
    assert actual_gap!=bad_exp,'The identity gate must reject positive but altered coefficients'
    pathword=format(int(a*2**depth),f'0{depth}b') if depth else ''
    expression='(X : ℚ[X])'
    if pathword:
        expression='halfLeft' if pathword[0]=='0' else 'halfRight'
        for bit in pathword[1:]:expression=f'({expression}).comp '+('halfLeft' if bit=='0' else 'halfRight')
    namespace=f'Math.B699.GrowthLeaf.Row{args.row:02d}{args.kind}Leaf{args.leaf:03d}'
    kind=args.kind.lower();core_name=kind+'Core';weight_name=kind+'Weight'
    hz_proof='by norm_num [seedZ]'
    import_prefix='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
    lines=[f'import {import_prefix}.experiments.«huan-growth-leaf-lean-5e2d13bb».AffineCone',
      f'import {import_prefix}.lean.Growth.Partition','import Mathlib.Algebra.Polynomial.Roots',
      'import Mathlib.Tactic.NormNum','import Mathlib.Tactic.Ring','',
      '/-!','UNCOMPILED CANDIDATE. One actual compact-certificate leaf; two actual delta weights.',
      f'Source row {args.row}, {args.kind} core, leaf {args.leaf}, path {pathword or "root"}.',
      f'Certificate SHA256 {hashlib.sha256(raw).hexdigest()}.',
      'The gap identity is proved for the actual source polynomial, not assumed from JSON.',
      'Polynomial.funext below requires equality at every rational x; no finite sampling inference.',
      '-/','',f'namespace {namespace}','',
      'open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf','',
      f'def seedC : ℕ := {c}',f'def seedD : ℕ := {d}',f'def seedZ : ℚ := {lean_rat(z)}',
      f'def leafA : ℚ := {lean_rat(a)}',f'def leafB : ℚ := {lean_rat(b)}',
      f'def lam : ℚ := ({part["lambda_grid_numerator"]} : ℚ) / (2 : ℚ) ^ 96','',
      'theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧',
      '    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by',
      '  norm_num [seedC, seedD, seedZ]','',
      'theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by',
      '  norm_num [leafA, leafB]','',
      'theorem lam_pos : 0 < lam := by norm_num [lam]','',
      f'noncomputable def seedCore : ℚ[X] := {core_name} seedC seedD seedZ',
      f'noncomputable def seedWeight0 : ℚ[X] := {weight_name} seedC seedD 0 seedZ',
      f'noncomputable def seedWeight1 : ℚ[X] := {weight_name} seedC seedD 1 seedZ',
      'noncomputable def leafMap : ℚ[X] := affine leafA leafB',
      'noncomputable def localCore : ℚ[X] := seedCore.comp leafMap',
      'noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap',
      'noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap','']
    for k,g in enumerate(gammas):lines.append(f'def gapCoeff{k} : ℚ := {lean_rat(g)}')
    lines += ['', 'noncomputable def gapExpansion : ℚ[X] :=']
    for k in range(N+1):lines.append(f'  Polynomial.C gapCoeff{k} * bernsteinMonomial {k} {N-k}'+(' +' if k<N else ''))
    definitions=', '.join(['lam','localCore','seedCore',core_name,kind+'Factor','seedC','seedD','seedZ',
             'leafMap','affine','leafA','leafB','gapExpansion']+[f'gapCoeff{k}' for k in range(N+1)]+['bernsteinMonomial'])
    lines += ['', '/-- Actual polynomial identity, proved by rational ring arithmetic at all x. -/',
       'theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by',
       '  apply Polynomial.funext','  intro x',f'  norm_num [{definitions},',
       '    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub, Polynomial.eval_mul,',
       '    Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring','',
       '/-- Bind the supplied interval to its actual path in the dyadic tree. -/',
       f'theorem leafMap_eq_path : leafMap = {expression} := by',
       '  apply Polynomial.funext','  intro x',
       '  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,',
       '    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub, Polynomial.eval_mul,',
       '    Polynomial.eval_C, Polynomial.eval_X] <;> ring','',
       'theorem gapExpansion_cone : BernsteinCone gapExpansion := by']
    for k in range(N+1):
        lines += [f'  have h{k} : BernsteinCone (Polynomial.C gapCoeff{k} * bernsteinMonomial {k} {N-k}) :=',
                  f'    BernsteinCone.scale gapCoeff{k} (by norm_num [gapCoeff{k}]) (BernsteinCone.basis {k} {N-k})']
    expression='h0'
    for k in range(1,N+1):expression=f'(BernsteinCone.add {expression} h{k})'
    lines += [f'  exact {expression}','',
      'theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by',
      '  rw [actual_gap_eq]','  exact gapExpansion_cone','',
      'theorem local_core_cone : BernsteinCone localCore := by',
      f'  exact cone_comp_affine (cone_{core_name} seedC seedD seedZ ({hz_proof}))',
      '    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])','']
    for delta in (0,1):
        lines += [f'theorem local_weight{delta}_cone : BernsteinCone localWeight{delta} := by',
          f'  exact cone_comp_affine (cone_{weight_name} seedC seedD {delta} seedZ ({hz_proof}))',
          '    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])','',
          f'theorem leaf_delta{delta} : GrowthTree lam localWeight{delta} localCore := by',
          f'  exact GrowthTree.leaf (lam := lam) (w := localWeight{delta}) (f := localCore)',
          f'    local_weight{delta}_cone local_core_cone local_gap_cone','']
    for name in ['actual_gap_eq','leafMap_eq_path','local_core_cone','local_weight0_cone','local_weight1_cone','local_gap_cone','leaf_delta0','leaf_delta1']:
        lines.append(f'#print axioms {namespace}.{name}')
    lines += ['',f'end {namespace}','']
    proof='\n'.join(lines);(OUT/'ConcreteLeaf.lean').write_text(proof,encoding='utf-8')
    assert not re.search(r'^\s*(?:axiom|opaque)\s',proof,re.M)
    assert not re.search(r'\b(?:sorry|admit|sorryAx|native_decide)\b',proof)
    peak=peak_bytes();assert peak<200_000_000
    sources=[path,GROWTH/'SOURCE_LEDGER.json',GROWTH/'FREEZE_V1.json',
       RUN/'lean/Growth/Partition.lean',RUN/'lean/Moment/Bernstein.lean',
       PKG/'input/i18_cut_inputs.json',Path('D:/CodingProject/Math/.lake/packages/mathlib/Mathlib/Algebra/Polynomial/Roots.lean')]
    source_hashes=[{'path':str(p),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in sources]
    record={'status':'CONCRETE_SINGLE_LEAF_CANDIDATE_GENERATED_NO_LEAN_RUN','row':args.row,'kind':args.kind,
       'leaf':args.leaf,'seed':row,'z':str(z),'lambda':str(lam),'lambda_N':part['lambda_grid_numerator'],
       'interval':[str(a),str(b)],'depth':depth,'path_word':pathword,'degree':N,
       'normalized_Bernstein_coefficients':[str(x) for x in bs],
       'unnormalized_gap_coefficients':[str(x) for x in gammas],
       'actual_coefficient_identity_checked':True,'positive_coeff_tamper_rejected_by_identity':True,
       'both_delta_weights':part['weights'],'source_hashes':source_hashes,
       'generated_source_sha256':hashlib.sha256((OUT/'ConcreteLeaf.lean').read_bytes()).hexdigest(),
       'source_correspondence':'Actual polynomial core composed with actual affine interval map equals supplied Bernstein combination.',
       'certificate_scope':'One real leaf and both delta weights; not a complete tree or whole seed growth.',
       'elapsed_seconds':time.monotonic()-started,'peak_working_set_bytes':peak,
       'finished_utc':datetime.now(timezone.utc).isoformat(),'lean_run':False,'new_B_original_results':0}
    (OUT/'GENERATION_CHECK.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in record.items() if k not in ('source_hashes','normalized_Bernstein_coefficients','unnormalized_gap_coefficients','seed')},ensure_ascii=False,indent=2))
    print('gap_coefficients='+json.dumps(record['unnormalized_gap_coefficients']))

if __name__=='__main__':main()
