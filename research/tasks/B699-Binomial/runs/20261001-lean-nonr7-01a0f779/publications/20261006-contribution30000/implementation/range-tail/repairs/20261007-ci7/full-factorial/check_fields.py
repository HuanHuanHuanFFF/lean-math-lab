"""Independent read-back of emitted tables and unchanged consumers, no Lean."""
from pathlib import Path
import hashlib,importlib.util,json,re,sys
here=Path(__file__).resolve().parent
repo=next(parent for parent in here.parents if (parent/'AGENTS.md').is_file())
spec=importlib.util.spec_from_file_location('official_lean',repo/'.tools/b699-contribution-platform-20261006/contribution/src/conjectures_contribution/lean.py')
official=importlib.util.module_from_spec(spec);sys.modules[spec.name]=official;spec.loader.exec_module(official)
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
rows=[]
for identifier,gap,wide,low,upper,terminal in [('Middle185_322',184,False,185,322,20000093),('Middle323_999',322,True,323,999,2000003)]:
    old=(here.parent/(identifier+'.lean')).read_text(encoding='utf-8')
    new=(here/(identifier+'.lean')).read_text(encoding='utf-8')
    old_entries=re.findall(r'^⟨(\d+),("(?:[^"\\]|\\.)*"),by decide \+kernel⟩',old,re.M)
    new_entries=re.findall(r'^⟨(\d+),(\d+),("(?:[^"\\]|\\.)*"),by decide \+kernel,by decide \+kernel⟩',new,re.M)
    assert [(a,s) for a,b,s in new_entries]==old_entries
    cursor=2;node_count=1
    for a,b,encoded in new_entries:
        assert int(a)==cursor
        text=json.loads(encoded);step=2 if wide else 1
        assert len(text)%step==0
        for index in range(0,len(text),step):
            value=ord(text[index])-32+(94*(ord(text[index+1])-32) if wide else 0)
            delta=2*value-1 if cursor==2 else 2*value
            assert 0<delta<=gap
            cursor+=delta;node_count+=1
        assert cursor==int(b)
    assert cursor==terminal
    height_pattern=r'^⟨\d+,\d+,\d+,\d+,by rw.*?by decide \+kernel⟩'
    old_heights=re.findall(height_pattern,old,re.M)
    new_heights=re.findall(height_pattern,new,re.M)
    assert old_heights==new_heights and len(new_heights)==upper-low+1
    assert old[old.index('theorem heightChecked'):]==new[new.index('theorem heightChecked'):]
    decls=len(official.declarations(new))
    assert decls<=200 and len(new.encode())<=1048576
    rows.append({'id':identifier,'sha256':sha(here/(identifier+'.lean')),'sourceDeclarations':decls,
        'sourceBytes':len(new.encode()),'segmentsReadBack':len(new_entries),'primeNodesReadBack':node_count,
        'allOriginalEncodedLoTextFieldsIdentical':True,'allNewEndpointsRecomputedExactly':True,
        'allOriginalHeightFieldsAndProofSyntaxIdentical':True,'finalConsumerAndHeightCheckedSuffixBytesIdentical':True,
        'primeProofsVerifiedByPython':False,'LeanCompiled':False,'proofAccepted':False})
(here/'FIELD-COMPARISON.json').write_text(json.dumps({'owner':'/root/b699_contribution_environment','rows':rows,
    'scope':'byte/data transcription only; not primality or Lean verification'},indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps(rows))
