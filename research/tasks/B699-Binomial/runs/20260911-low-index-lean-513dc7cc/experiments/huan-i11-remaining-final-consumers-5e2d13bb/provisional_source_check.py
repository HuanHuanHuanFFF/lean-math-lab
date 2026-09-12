from pathlib import Path
from fractions import Fraction as F
import hashlib,json,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-remaining-final-consumers-5e2d13bb'
data=run/'experiments/huan-i11-remaining-growth-numeric-5e2d13bb'
checks=[]
for group,row,slug,c,d,znum,zden,Z,M in [
 ('ThreeTwo','row02','three-two',23,15,1,9,37002653975761602583641821923,162),
 ('FiveSeven','row04','five-seven',11,7,1,50,719422706382292314227864,194)]:
    shared=data/row/'candidate/lean/Growth'/('I11'+group+'Shared.lean')
    tree=data/row/'candidate/lean/Growth'/('I11'+group+'Tree.lean')
    basis=data/row/'selector/candidate/lean/I11Numeric'/('I11'+group+'Basis.lean')
    selector=data/row/'selector/candidate/lean/I11Numeric'/('I11'+group+'Selector.lean')
    if not all(p.exists() for p in [shared,tree,basis,selector]):
        checks.append({'group':group,'status':'missing source; unadopted'});continue
    st=shared.read_text();tt=tree.read_text();bt=basis.read_text();nt=selector.read_text()
    def getnat(text,key):return int(re.search(r'def '+key+r' : ℕ := (\d+)',text)[1])
    def getrat(text,key):
        expr=re.search(r'def '+key+r' : ℚ := ([^\r\n]+)',text)[1]
        digits=re.findall(r'\d+',expr);assert len(digits)==2
        return F(int(digits[0]),int(digits[1]))
    assert 'namespace Math.B699.I11'+group+'Growth.Shared' in st
    for tag in ['q','e']:
        assert getnat(st,tag+'SeedC')==c and getnat(st,tag+'SeedD')==d
        assert getrat(st,tag+'SeedZ')==F(znum,zden)
        edge=(run/f'experiments/huan-i11-{slug}-scaled-edge-5e2d13bb/GrowthInputs.lean').read_text()
        assert getrat(st,tag+'Lam')==getrat(edge,tag+'Lambda')
    assert 'namespace Math.B699.I11'+group+'Growth.Tree' in tt
    for rootname in ['q_tree_delta0','q_tree_delta1','e_tree_delta0','e_tree_delta1']:
        assert re.search(r'theorem '+rootname+r'\s*:',tt),rootname
    assert getnat(bt,'certificateZ')==Z and getnat(bt,'selectorM')==M
    assert 'namespace Math.B699.I11'+group+'Numeric' in nt
    for rootname in ['predecessor','p_rate','p_base','p_lookahead','q_rate','q_base','q_lookahead']:
        assert re.search(r'theorem '+rootname+r'\s*:',nt),rootname
    checks.append({'group':group,'status':'provisional read-only interface/constants match; NOT ADOPTED',
      'c':c,'d':d,'z':str(F(znum,zden)),'Z':Z,'M':M,'tree_roots':4,'numeric_roots':7,
      'sources':{str(p.relative_to(root)).replace('\\','/'):hashlib.sha256(p.read_bytes()).hexdigest() for p in [shared,tree,basis,selector]}})
(out/'PROVISIONAL_SOURCE_CHECK.json').write_text(json.dumps({'warning':'Not a freeze, not Lean acceptance, not source adoption. Await author/parent confirmation of re-frozen package.', 'checks':checks},indent=2)+'\n',encoding='utf-8')
print(json.dumps([{k:v for k,v in x.items() if k!='sources'} for x in checks],indent=2))
