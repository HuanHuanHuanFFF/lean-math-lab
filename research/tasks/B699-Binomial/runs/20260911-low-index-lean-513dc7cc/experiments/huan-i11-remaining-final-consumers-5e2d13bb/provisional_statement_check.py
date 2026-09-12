from pathlib import Path
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-remaining-final-consumers-5e2d13bb'
dat=run/'experiments/huan-i11-remaining-growth-numeric-5e2d13bb'
results=[]
def canon(s):
    s=re.sub(r'\s+','',s)
    s=re.sub(r'\((\d+)(?::ℕ)+\)',r'\1',s)
    return s.replace('(','').replace(')','')
for group,row,p,q,jp,jq,ap,aq,M in [('ThreeTwo','row02',3,2,46000,69000,774,732,162),('FiveSeven','row04',5,7,22000,22000,648,784,194)]:
    folder=dat/row
    sh=folder/'candidate/lean/Growth'/('I11'+group+'Shared.lean')
    tr=folder/'candidate/lean/Growth'/('I11'+group+'Tree.lean')
    se=folder/'selector/candidate/lean/I11Numeric'/('I11'+group+'Selector.lean')
    st=canon(sh.read_text());tt=tr.read_text();nt=se.read_text()
    for kind in ['q','e']:
        for delta in [0,1]:
            assert f'{kind}SeedWeight{delta}:ℚ[X]:=Math.B699.GrowthLeaf.{kind}Weight{kind}SeedC{kind}SeedD{delta}{kind}SeedZ' in st
            typ=re.search(r'theorem '+kind+'_tree_delta'+str(delta)+r'\s*:(.*?) := by',tt,re.S)[1]
            assert canon(typ)==f'GrowthTree{kind}Lam{kind}SeedWeight{delta}{kind}SeedCore'
    expected={'predecessor':f'certificateZ^({M}-1)≤4*2^15359',
      'p_rate':f'{p}^{jp}≤certificateZ^{ap}','p_base':f'({p}^{jp})^{M}≤(2^15359)^{ap}',
      'p_lookahead':f'4^{ap}*({p}^{jp})^({M}+1)≤certificateZ^({ap}*{M})',
      'q_rate':f'{q}^{jq}≤certificateZ^{aq}','q_base':f'({q}^{jq})^{M}≤(2^15359)^{aq}',
      'q_lookahead':f'4^{aq}*({q}^{jq})^({M}+1)≤certificateZ^({aq}*{M})'}
    for key,exp in expected.items():
        actual=re.search(r'theorem '+key+r'\s*:(.*?) :=',nt,re.S)[1]
        assert canon(actual)==canon(exp),(group,key,actual,exp)
    results.append({'group':group,'checked_tree_family_types':4,'checked_weight_delta_definitions':4,'checked_selector_statement_tokens':7,
      'status':'provisional read-only source correspondence, not adopted',
      'hashes':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in [sh,tr,se]}})
(out/'PROVISIONAL_STATEMENT_CHECK.json').write_text(json.dumps(results,indent=2)+'\n',encoding='utf-8')
print(json.dumps([{k:v for k,v in r.items() if k!='hashes'} for r in results],indent=2))
