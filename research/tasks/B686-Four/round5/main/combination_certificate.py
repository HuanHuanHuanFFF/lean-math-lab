"""Generate contact certificates for worker-selected 11*G0-32*G1."""
from pathlib import Path
from fractions import Fraction as Q
import json
import contact_certificate as C
BASE=Path(__file__).resolve().parent
rows=json.loads((BASE/'contact_search.json').read_text())['rows']
r=next(r for r in rows if r['slots']==[1,2,4]); a,b=r['auxiliaries']
C.G=C.add({(a,b):Q(11*c) for a,b,c in a['terms']},{(a,b):Q(-32*c) for a,b,c in b['terms']})
cs=[C.cert(i) for i in (1,2,4)]
terms=[[a,b,int(c)] for (a,b),c in sorted(C.G.items())]
(BASE/'combination_certificate.json').write_text(json.dumps(dict(combination_terms=terms,slots=cs),indent=2)+'\n')
lines=['import research.tasks.«B686-Four».round5.main.ContactOriginal','','namespace B686Round5Contact','open B686Round4Shift','','def combination (z d : ℤ) : ℤ :=','  '+C.lean_expr(terms),'']
for c in cs:
 i=c['slot'];r=c['root'];K=c['denominator']
 lines += [f'def quotientH{i} (y d : ℤ) : ℤ :=','  '+C.lean_expr(c['H'],'y','d'),f'def residualH{i} (u v q : ℤ) : ℤ :=','  '+C.lean_expr(c['remainder'],'u','v','q'),'',f'set_option maxHeartbeats 0 in',f'theorem identityH{i} (u v q : ℤ) :',f'    {K} * combination ({r} + q * u) (q * v) =',f'      quotientH{i} (q * u) (q * v) * curve ({r} + q * u) (q * v) +',f'        q ^ 6 * residualH{i} u v q := by',f'  unfold combination quotientH{i} curve residualH{i}','  ring','',f'theorem contact_combination{i} (z d q : ℤ) (hy : q ∣ z - ({r})) (hd : q ∣ d)',f'    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ combination z d := by',f'  have hK := coprime_denominator q {K} hc (by norm_num)',f'  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left','  obtain ⟨u, hu⟩ := hy','  obtain ⟨v, rfl⟩ := hd',f'  have hz : z = {r} + q * u := by omega','  subst z',f'  refine ⟨residualH{i} u v q, ?_⟩',f'  simpa only [hcurve, mul_zero, zero_add] using identityH{i} u v q','']
orig=(BASE/'ContactOriginal.lean').read_text();s=orig[orig.index('theorem three_position_contact'):orig.index('-- AXIOM AUDIT')]
s=s.replace('three_position_contact','three_position_combination').replace('auxiliary','combination')
for i in (1,2,4):s=s.replace(f':= contact{i} ',f':= contact_combination{i} ')
lines+=[s]+[f"/-- info: 'B686Round5Contact.{name}{i}' depends on axioms: [{('propext, Quot.sound' if name == 'identityH' else 'propext, Classical.choice, Quot.sound')}] -/\n#guard_msgs in\n#print axioms {name}{i}" for i in (1,2,4) for name in ('identityH','contact_combination')]+["/-- info: 'B686Round5Contact.three_position_combination' depends on axioms: [propext, Classical.choice, Quot.sound] -/\n#guard_msgs in\n#print axioms three_position_combination",'end B686Round5Contact','']
(BASE/'ContactCombination.lean').write_text('\n'.join(lines))
print('H denominators:',[(c['slot'],c['denominator']) for c in cs])
