from pathlib import Path
import re,json,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-remaining-final-consumers-5e2d13bb'
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-remaining-final-consumers-5e2d13bb»'
source=run/'lean/I11TwoFiveFinal/Component.lean'
template=source.read_text()
for group,camel,snake,p,q,wp,wq in [('ThreeTwo','threeTwo','three_two',3,2,226,268),('FiveSeven','fiveSeven','five_seven',5,7,352,216)]:
    sub=out/group
    assert not (sub/'FREEZE.json').exists()
    s=template.replace(base+'.lean.I11TwoFiveFinal.ActualInstance',own+'.'+group+'.ActualInstance')
    s=s.replace('I11TwoFiveFinalConsumers','I11'+group+'FinalConsumers').replace('I11TwoFiveScaled','I11'+group+'Scaled')
    s=s.replace('twoFive',camel).replace('two_five',snake)
    s=re.sub(r'\b(248|252)\b',lambda m:str(wp if m[0]=='248' else wq),s)
    prime={'2':str(p),'5':str(q)}
    s=re.sub(r'(PrimeWindow n |primeComponent n |factorization )(2|5)\b',lambda m:m[1]+prime[m[2]],s)
    s=re.sub(r'\((2|5) : (ℕ|ℤ)\) \^ \(\(n.choose',lambda m:'('+prime[m[1]]+' : '+m[2]+') ^ ((n.choose',s)
    s=re.sub(r'(p := |Nat.Prime )(2|5)\b',lambda m:m[1]+prime[m[2]],s)
    s=s.replace('actual (2,5) component edge',f'actual ({p},{q}) component edge')
    a=s.index('/-!');b=s.index('-/',a)+2
    s=s[:a]+f'''/-! UNCOMPILED CANDIDATE. Actual raw binomial ({p},{q}) component edge.
Window arithmetic is copied from the accepted general template. This file awaits
its own ActualInstance implementation; no provisional external tree freeze is
adopted by writing it. The eventual final root assumes only n>=2^15360. -/'''+s[b:]
    target=sub/'Component.lean';assert not target.exists();target.write_text(s,encoding='utf-8')
(out/'README.md').write_text('''# Remaining final consumers

Only this directory (ThreeTwo/FiveSeven children) is owned by pade_construction. Start2026-09-11 21:30:15 UTC; first checkpoint21:50:15 UTC is not a deadline. No Lean/Git.

Both actual RateBasis prefixes are independently complete and frozen in each RATE_FREEZE.json, with 10-root RateBasisAudit. They use the actual frozen ScaledGap/GrowthInputs data, not Luna metadata.

Component.lean for each group is prepared from accepted primeWindow/CeilHalf code. These two files are UNFROZEN and await ActualInstance; their current presence does not make the package compilable or accepted. Their target is the actual raw choose(n,11) p-component edge from only n>=2^15360.

ActualNumeric and ActualInstance will be written and the full groups frozen only after Luna confirms corrected seed/lambda/degree/namespace source and a new freeze. The parent explicitly rejected adoption based only on provisional stale README/FREEZE text. Numeric factors and component-vs-cofactor meanings are already fixed by each edge package.

Original B remains0/19; no count increase is claimed for these auxiliary artifacts.
''',encoding='utf-8')
print('Prepared two unfrozen pure-window consumers; RATE_FREEZE sources unchanged.')
