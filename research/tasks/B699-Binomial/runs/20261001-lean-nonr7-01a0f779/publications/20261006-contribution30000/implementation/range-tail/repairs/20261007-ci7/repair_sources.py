"""Reproduce the fixed CI7 dependency/hypothesis repairs without overwriting frozen sources."""
from pathlib import Path
import hashlib
import json

here=Path(__file__).resolve().parent
publication=here.parents[3]
repo=next(parent for parent in here.parents if (parent/'AGENTS.md').is_file())
evidence=Path('D:/ResearchArtifacts/b699-contribution-validation-20261006/37488807936')
ci7=json.loads((evidence/'INPUT-BINDING.json').read_text())
groups={group['id']:group for group in ci7['groups']}
def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
core=repo/'research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/lean/primeChain/Core.lean'
text=core.read_text(encoding='utf-8-sig')
trans=text[text.index('theorem PrimeChain.trans '):text.index('/-- Every row')].strip()
near=text[text.index('theorem PrimeChain.near_top '):text.index('/-- Right endpoint')].strip()
assert trans.endswith('(ih hright)') and near.endswith('hhi')
records=[]
for identifier,name in [('Middle185_322','middle185_322'),('Middle323_999','middle323_999'),('High1000_30000','high1000_30000')]:
    original=publication/'artifacts'/f'{name}.lean'
    assert sha(original)==groups[identifier]['sourceSha256'], 'frozen CI7 source changed'
    old=original.read_text(encoding='utf-8')
    new=old
    changes=[]
    if identifier.startswith('Middle'):
        assert 'theorem PrimeChain.near_top' not in old and 'theorem PrimeChain.trans' not in old
        anchor='def chainEnd : ℕ → List ℕ → ℕ'
        assert new.count(anchor)==1
        new=new.replace(anchor,trans+'\n\n'+near+'\n\n'+anchor)
        changes.append('restore exact original PrimeChain.trans and near_top in N6')
        anchor='      subst p\n      exact s.chain.trans (ih (chain_last s.chain) hb.2)'
        assert new.count(anchor)==1
        new=new.replace(anchor,'      rcases hb with ⟨hp_eq, htail⟩\n      subst p\n      exact s.chain.trans (ih (chain_last s.chain) htail)')
    else:
        anchor='      subst p\n      exact s.chain.trans (ih s.chain.lastPrime hb.2)'
        assert new.count(anchor)==1
        new=new.replace(anchor,'      rcases hb with ⟨hp_eq, htail⟩\n      subst p\n      exact s.chain.trans (ih s.chain.lastPrime htail)')
    changes.append('destructure equality and tail certificate before subst p')
    target=here/f'{identifier}.lean'
    target.write_text(new,encoding='utf-8',newline='\n')
    records.append({'id':identifier,'originalPath':str(original.relative_to(repo)).replace('\\','/'),
        'originalSha256':sha(original),'path':str(target.relative_to(repo)).replace('\\','/'),
        'bytes':target.stat().st_size,'sha256':sha(target),'changes':changes,
        'scopeUnchanged':True,'sourceDataTablesUnchanged':True,'LeanCompiled':False,
        'kernelChecked':False,'proofAccepted':False})
receipt={'sourceCommit':ci7['sourceCommit'],'ci7RunId':37488807936,'owner':'/root/b699_contribution_environment',
    'dependencySource':{'path':str(core.relative_to(repo)).replace('\\','/'),'sha256':sha(core),
        'theorems':['B699MiddleIndex.PrimeChain.trans','B699MiddleIndex.PrimeChain.near_top']},
    'sourceRepairsOnly':True,'records':records,'remaining':'whole-chain kernel memory, height batch heartbeat, High exit137 unknown; requires bounded Linux profiling and then complete fresh replay'}
(here/'SOURCE-REPAIRS.json').write_text(json.dumps(receipt,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps([{'id':r['id'],'bytes':r['bytes'],'sha256':r['sha256']} for r in records]))
