from pathlib import Path
from fractions import Fraction as F
from datetime import datetime,timezone
import hashlib,json,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-remaining-final-consumers-5e2d13bb'
out.mkdir(exist_ok=True)
template=run/'lean/I11TwoFiveFinal/RateBasis.lean'
original=template.read_text()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-remaining-final-consumers-5e2d13bb»'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def obj(p):return {'path':str(p.relative_to(root)).replace('\\','/'),'sha256':sha(p),'bytes':p.stat().st_size}
results=[]
for group,slug,c,d,Lt,P,y,M,factor in [
 ('ThreeTwo','three-two',23,15,F(41069,31250),9,9,162,64),
 ('FiveSeven','five-seven',11,7,F(1303943,1000000),25,50,194,2)]:
    sub=out/group;sub.mkdir(exist_ok=True)
    assert not (sub/'RATE_FREEZE.json').exists()
    edge=run/f'experiments/huan-i11-{slug}-scaled-edge-5e2d13bb'
    growth=(edge/'GrowthInputs.lean').read_text()
    lam=F(re.search(r'def qLambda : ℚ := (\d+) / (\d+)',growth)[1],
          re.search(r'def qLambda : ℚ := (\d+) / (\d+)',growth)[2]) if False else None
    mat=re.search(r'def qLambda : ℚ := (\d+) / (\d+)',growth)
    lam=F(int(mat[1]),int(mat[2]))
    beta=F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d))
    R=F(P**c)*Lt**d/(y**d*beta*lam);N,D=R.numerator,R.denominator
    scaled=(edge/'ScaledGap.lean').read_text()
    assert f'def qNumerator : ℚ := ({P} : ℚ) ^ {c} * contentBase' in scaled
    assert f'def qDenominator (BQ : ℚ) : ℚ := ({y} : ℚ) ^ {d} * BQ' in scaled
    actual=(edge/'ActualRows.lean').read_text()
    assert f'def contentBase : ℚ := ({Lt.numerator} / {Lt.denominator} : ℚ) ^ {d}' in actual
    exact=json.loads((edge/'exact-checks.json').read_text())
    assert F(exact['qRate'])==R and exact['M']==M
    assert 0<D<=N and factor*D**32<=N**32
    s=original.replace('I11TwoFiveFinalConsumers','I11'+group+'FinalConsumers')
    s=s.replace('83682878107040006334695941930360399789273674382573568',str(N))
    s=s.replace('80167724078165772891757631585792600333690643310546875',str(D))
    s=s.replace('329',str(M))
    if factor==64:
        s=s.replace('    2 * rateDenominator ^ 32','    64 * rateDenominator ^ 32')
        s=s.replace('rateRational_thirtytwo_ge_two','rateRational_thirtytwo_ge_sixtyfour')
        s=s.replace('theorem rateRational_thirtytwo_ge_sixtyfour : (2 : ℚ)','theorem rateRational_thirtytwo_ge_sixtyfour : (64 : ℚ)')
        a=s.index('theorem rateRational_pow162_gt_48')
        b=s.index('\nend ',a)
        s=s[:a]+'''theorem rateRational_pow162_gt_48 : (48 : ℚ) < rateRational ^ 162 := by
  exact lt_of_lt_of_le (by norm_num : (48 : ℚ) < 64)
    (rateRational_thirtytwo_ge_sixtyfour.trans
      (pow_le_pow_right₀ rateRational_ge_one (by decide : 32 ≤ 162)))
'''+s[b:]
    a=s.index('/-!');b=s.index('-/',a)+2
    comment=f'''/-! UNCOMPILED CANDIDATE. Fixed actual {slug} rate independently recalculated
from ScaledGap/GrowthInputs. Only the 32nd power is decided; the {M}th power
remains symbolic. maxRecDepth8192 is a bounded local resource setting. -/'''
    s=s[:a]+comment+s[b:]
    p=sub/'RateBasis.lean';assert not p.exists();p.write_text(s,encoding='utf-8')
    ns='Math.B699.I11'+group+'FinalConsumers'
    ds=[{'kind':m[1],'name':ns+'.'+m[2]} for m in re.finditer(r'^(theorem|def)\s+(\w+)',s,re.M)]
    roots=[x['name'] for x in ds]
    (sub/'RateBasisAudit.lean').write_text('import '+own+'.'+group+'.RateBasis\n\n'+'\n'.join('#print axioms '+x for x in roots)+'\n',encoding='utf-8')
    sourcepaths=[template,edge/'FREEZE.json',edge/'ScaledGap.lean',edge/'GrowthInputs.lean',edge/'ActualRows.lean',edge/'Parameters.lean']
    check={'status':'EXACT_RATE_NUMERICS_NOT_LEAN','c':c,'d':d,'Lt':str(Lt),'P':P,'y':y,'M':M,'qLambda':str(lam),'beta':str(beta),
      'actual_rate':str(R),'basis_inequality':f'{factor}*D^32 <= N^32','max_basis_bits':max((factor*D**32).bit_length(),(N**32).bit_length()),
      'symbolic_extension':'R^32>=64,32<=162' if group=='ThreeTwo' else 'R^32>=2,R^192>=64,192<=194',
      'final_scalar_comparison':'48<64','source_bindings':[obj(x) for x in sourcepaths],
      'proof_candidate_sha256':sha(p),'new_Lean_invocations':0}
    (sub/'rate-exact-checks.json').write_text(json.dumps(check,indent=2)+'\n',encoding='utf-8')
    (sub/'RATE_AUDIT_PLAN.json').write_text(json.dumps({'status':'UNCOMPILED','declarations':ds,'import_root':own+'.'+group+'.RateBasisAudit',
     'target':'lean/I11'+group+'Final/RateBasis.lean','allowed_axioms':['propext','Classical.choice','Quot.sound']},indent=2)+'\n',encoding='utf-8')
    freeze={'utc':datetime.now(timezone.utc).isoformat(),'status':'RATE_PREFIX_FROZEN_UNCOMPILED','owner':'/root/pade_construction',
      'group':group,'public_theorems':7,'audit_roots':10,'new_Lean_invocations':0,'new_original_B_results':0,
      'remaining':'ActualNumeric/Instance/Component wait for Luna final verified-source namespace/seed/lambda freeze; no unresolved fact assumed here.',
      'files':{x.name:{'sha256':sha(x),'bytes':x.stat().st_size} for x in sorted(sub.iterdir()) if x.is_file()}}
    (sub/'RATE_FREEZE.json').write_text(json.dumps(freeze,indent=2)+'\n',encoding='utf-8')
    results.append({'group':group,'rate':R.__str__(),'RateBasis':sha(p),'RateBasisAudit':sha(sub/'RateBasisAudit.lean'),
      'RATE_FREEZE':sha(sub/'RATE_FREEZE.json'),'max_basis_bits':check['max_basis_bits']})
(out/'CHECKPOINT.md').write_text('Owner: pade_construction. Only this new directory, with disjoint ThreeTwo and FiveSeven children. Started2026-09-11 21:30:15 UTC; first checkpoint21:50:15 UTC, not a deadline. Independent actual rate prefixes frozen; no Lean/Git. Do not connect temporarily mislabeled Luna tree files before the author revalidates seed/lambda/namespace and re-freezes. Final raw component edges still pending.\n',encoding='utf-8')
print(json.dumps(results,indent=2))
