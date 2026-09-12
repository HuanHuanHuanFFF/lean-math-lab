from pathlib import Path
from datetime import datetime,timezone
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-seven-two-final-consumers-5e2d13bb'
out.mkdir(exist_ok=True)
assert not (out/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-seven-two-final-consumers-5e2d13bb»'
edge=base+'.experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb»'
tree=base+'.experiments.«huan-i11-seven-two-growth-tree-5e2d13bb».candidate.lean.Growth.I11SevenTwoTree'
selector=base+'.experiments.«huan-i11-seven-two-growth-tree-5e2d13bb».selector.candidate.lean.I11Numeric.I11SevenTwoSelector'
def read(n):return (run/'lean/I11TwoFiveFinal'/f'{n}.lean').read_text()
def names(s):
    s=s.replace(base+'.lean.I11TwoFiveFinal',own)
    s=s.replace(base+'.lean.I11TwoFiveEdge.FixedEdge',edge+'.FixedEdge')
    s=s.replace(base+'.lean.I11TwoFiveNumeric.Selector',selector)
    s=s.replace(base+'.lean.Growth.I11TwoFiveTree',tree)
    s=s.replace(' Math.B699.I11TwoFivePrefix','')
    return s.replace('I11TwoFive','I11SevenTwo').replace('twoFive','sevenTwo').replace('two_five','seven_two')
def nreplace(s,mp):return re.sub(r'\b(?:'+'|'.join(map(re.escape,mp))+r')\b',lambda m:mp[m[0]],s)
def seed(s):
    s=s.replace('5 4','9 5').replace('(3 / 128)','(1 / 49)')
    s=nreplace(s,{'329':'285','35000':'18000','15000':'36000','752':'940','748':'670','248':'60','252':'330'})
    s=s.replace('(2 : ℕ) ^ 18000','(7 : ℕ) ^ 18000').replace('2 ^ 18000','7 ^ 18000')
    s=s.replace('(5 : ℕ) ^ 36000','(2 : ℕ) ^ 36000').replace('5 ^ 36000','2 ^ 36000')
    s=s.replace('Y ≤ 2 ^ e','Y ≤ 7 ^ e').replace('5 ^ f','2 ^ f')
    s=s.replace('(2 : ℤ) ^ e','(7 : ℤ) ^ e').replace('(5 : ℤ) ^ f','(2 : ℤ) ^ f')
    return s
def label(s,text):
    a=s.index('/-!');b=s.index('-/',a)+2
    return s[:a]+'/-! UNCOMPILED CANDIDATE. '+text+' -/'+s[b:]
def write(n,s):
    p=out/(n+'.lean');assert not p.exists()
    p.write_text(s,encoding='utf-8')
s=names(read('RateBasis'))
s=s.replace('83682878107040006334695941930360399789273674382573568','4330188673454998956186527952585840960990059954176')
s=s.replace('80167724078165772891757631585792600333690643310546875','4199440704612936599415011687195348453521728515625')
s=s.replace('329','285')
s=label(s,'Only the 32nd-power integer certificate is decided; 192nd/285th powers remain symbolic. The local depth cap is a resource limit.')
write('RateBasis',s)
s=seed(names(read('ActualNumeric')))
s=s.replace('pow329','pow285')
s=label(s,'Bind the actual c9d5 qRate and the seven exact selector theorems. Build And.intro bundle before alias-only normalization.')
write('ActualNumeric',s)
s=seed(names(read('ActualInstance')))
s=label(s,'Actual c9d5 z1/49 tree roots supply all four families. false is delta1, true is delta0; tree acceptance belongs to the parent.')
write('ActualInstance',s)
s=names(read('Component'))
s=nreplace(s,{'248':'60','252':'330'})
# Simultaneous substitutions preserve the original height base 2.
s=re.sub(r'(PrimeWindow n |primeComponent n |factorization )(2|5)\b',lambda m:m[1]+{'2':'7','5':'2'}[m[2]],s)
s=re.sub(r'\((2|5) : (ℕ|ℤ)\) \^ \(\(n.choose',lambda m:'('+{'2':'7','5':'2'}[m[1]]+' : '+m[2]+') ^ ((n.choose',s)
s=re.sub(r'(p := |Nat.Prime )(2|5)\b',lambda m:m[1]+{'2':'7','5':'2'}[m[2]],s)
s=s.replace('actual (2,5) component edge','actual (7,2) component edge')
s=label(s,'Actual raw prime-power components of choose(n,11), with common ceil-half windows. Final theorem has only n>=2^15360; no finite certificate/tree/window/cofactor premise.')
write('Component',s)
(out/'CHECKPOINT.md').write_text('''# Seven-two final consumers

Owner: /root/pade_construction. Only this new directory is writable.
Start: 2026-09-11 20:52:46 UTC. Checkpoint: 21:12:46 UTC, not a total deadline.
Expected reduction: discharge the actual (7,2) edge's four GrowthTrees and eight finite numerical inputs, then derive the raw choose(n,11) component edge from only n>=2^15360.
Actual status: complete candidate under construction; no Lean/Git. Original B still 0/19.
''',encoding='utf-8')
print('Four implementation modules written; no Lean.')
