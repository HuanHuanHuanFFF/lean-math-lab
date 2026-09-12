from pathlib import Path
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-remaining-final-consumers-5e2d13bb'
dat=run/'experiments/huan-i11-remaining-growth-numeric-5e2d13bb'
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-remaining-final-consumers-5e2d13bb»'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def replace_numbers(s,mp):return re.sub(r'\b(?:'+'|'.join(map(re.escape,mp))+r')\b',lambda m:mp[m[0]],s)
configs=[
 ('ThreeTwo','row02','three-two','threeTwo','three_two',3,2,23,15,9,226,268,774,732,46000,69000,162,
 '4ddc1389a9955acaa330a265e77574fb36142ddc3dd06cce962a0c722af54bed'),
 ('FiveSeven','row04','five-seven','fiveSeven','five_seven',5,7,11,7,50,352,216,648,784,22000,22000,194,
 '72b2510a3029dc0dfa4a94bfc31d7275e8cbca010f0a321ba1b79d96d343a7bf')]
for group,row,slug,camel,snake,p,q,c,d,y,wp,wq,ap,aq,jp,jq,M,fh in configs:
    sub=out/group;assert not (sub/'FREEZE.json').exists()
    assert sha(dat/row/'FREEZE.json')==fh,'author freeze mismatch'
    fre=json.loads((dat/row/'FREEZE.json').read_text())
    for rel,rec in fre['files'].items():
        file=dat/row/rel
        if file.exists():assert sha(file)==rec['sha256'],str(file)
    edge=base+f'.experiments.«huan-i11-{slug}-scaled-edge-5e2d13bb»'
    tree=base+'.experiments.«huan-i11-remaining-growth-numeric-5e2d13bb».'+row+'.candidate.lean.Growth.I11'+group+'Tree'
    sel=base+'.experiments.«huan-i11-remaining-growth-numeric-5e2d13bb».'+row+'.selector.candidate.lean.I11Numeric.I11'+group+'Selector'
    def common(s):
        s=s.replace(base+'.lean.I11TwoFiveFinal',own+'.'+group)
        s=s.replace(base+'.lean.I11TwoFiveEdge.FixedEdge',edge+'.FixedEdge')
        s=s.replace(base+'.lean.I11TwoFiveNumeric.Selector',sel)
        s=s.replace(base+'.lean.Growth.I11TwoFiveTree',tree)
        s=s.replace(' Math.B699.I11TwoFivePrefix','')
        s=s.replace('I11TwoFive','I11'+group).replace('twoFive',camel).replace('two_five',snake)
        s=s.replace('5 4',f'{c} {d}').replace('(3 / 128)',f'(1 / {y})')
        s=s.replace('(2 : ℕ) ^ 35000',f'({p} : ℕ) ^ {jp}').replace('2 ^ 35000',f'{p} ^ {jp}')
        s=s.replace('(5 : ℕ) ^ 15000',f'({q} : ℕ) ^ {jq}').replace('5 ^ 15000',f'{q} ^ {jq}')
        s=replace_numbers(s,{'329':str(M),'35000':str(jp),'15000':str(jq),'752':str(ap),'748':str(aq),'248':str(wp),'252':str(wq)})
        s=s.replace('pow329','pow'+str(M))
        s=s.replace('Y ≤ 2 ^ e',f'Y ≤ {p} ^ e').replace('5 ^ f',f'{q} ^ f')
        s=s.replace('(2 : ℤ) ^ e',f'({p} : ℤ) ^ e').replace('(5 : ℤ) ^ f',f'({q} : ℤ) ^ f')
        return s
    for mod in ['ActualNumeric','ActualInstance']:
        s=common((run/'lean/I11TwoFiveFinal'/(mod+'.lean')).read_text())
        a=s.index('/-!');b=s.index('-/',a)+2
        t=('Actual rate plus seven officially re-frozen selector statements; And.intro bundle then alias-only normalization.' if mod=='ActualNumeric' else
           'Officially re-frozen actual Q/E tree roots; false is delta1, true is delta0. No tree remains as an external final input.')
        s=s[:a]+'/-! UNCOMPILED CANDIDATE. '+t+' -/'+s[b:]
        file=sub/(mod+'.lean');assert not file.exists();file.write_text(s,encoding='utf-8')
    file=sub/'Component.lean';s=file.read_text()
    a=s.index('/-!');b=s.index('-/',a)+2
    s=s[:a]+f'''/-! UNCOMPILED CANDIDATE. Actual raw binomial ({p},{q}) prime components.
The final theorem keeps only n>=2^15360. It constructs both windows from accepted
localization; offsets may coincide and the signed difference may be zero. -/'''+s[b:]
    file.write_text(s,encoding='utf-8')
# Correct the provisional token normalizer for harmless repeated Nat type annotations.
pcheck=out/'provisional_statement_check.py'
s=pcheck.read_text().replace("s=re.sub(r'\\((\\d+):ℕ\\)',r'\\1',s)", "s=re.sub(r'\\((\\d+)(?::ℕ)+\\)',r'\\1',s)")
pcheck.write_text(s,encoding='utf-8')
print('Both groups now have all four full candidate modules; RateBasis files unchanged.')
