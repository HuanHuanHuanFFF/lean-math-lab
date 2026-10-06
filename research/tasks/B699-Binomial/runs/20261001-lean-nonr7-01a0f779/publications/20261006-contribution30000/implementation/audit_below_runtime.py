"""Below numeric/context source comparison after shared Bool/rw repairs."""
import collections, hashlib, json, re
from pathlib import Path
from extract import REPO
from audit_above_profile_repair import arrays

BASE=Path(__file__).resolve().parent
R=BASE/'repairs/20261007-below-runtime'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
 freeze=json.loads((R/'FREEZE.json').read_text(encoding='utf-8'))
 oldmap=json.loads((BASE/'repairs/20261007-i11-below-options/analysis/i11-below-local-proof.json').read_text(encoding='utf-8'))
 newmap=json.loads((R/'analysis/i11-below-local-proof.json').read_text(encoding='utf-8'))
 oldp=REPO/freeze['fixedOldSource']['path'];newp=REPO/freeze['newArtifact']['path']
 assert sha(oldp)==freeze['fixedOldSource']['sha256'] and sha(newp)==freeze['newArtifact']['sha256']
 old=oldp.read_text(encoding='utf-8');new=newp.read_text(encoding='utf-8')
 before=arrays(old,oldmap);after=arrays(new,newmap)
 assert collections.Counter(x['canonicalSHA256'] for x in before)==collections.Counter(x['canonicalSHA256'] for x in after)
 numbers=r'(?<![A-Za-z_0-9])\d+(?![A-Za-z_0-9])'
 assert collections.Counter(re.findall(numbers,old))==collections.Counter(re.findall(numbers,new))
 assert not re.search(r'^\s+(?:structure|inductive|class|namespace)\b',new,re.M)
 assert not re.search(r'(?m)^set_option .* in\n(?=end )',new)
 assert re.search(r'have hc:\(decide [^\n]+ && [^\n]+\) = true',new)
 result={'status':'full Below source/data comparison only; actual Lean/AX/900s pending','oldSHA256':sha(oldp),'newSHA256':sha(newp),'numericArrayCount':len(after),'allNumericArrayPayloadsEqualAfterNameMapping':True,'allExplicitNumericLiteralMultisetsEqual':True,'explicitNumericLiteralOccurrences':len(re.findall(numbers,new)),'bundles':1111,'witnesses':4041,'candidates':1055,'BoolBridgeParenthesesPresent':True,'productDefinitionForRwKeptGlobal':'B686Round8.product' in newmap['rewriteDefinitionsKeptGlobal'],'noLocalDatatypeOrOrphanOption':True,'CRTRecomputed':False,'originalSourceUnmodified':True,'nativeLeanExecuted':False}
 (R/'analysis/data-roundtrip.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps(result))

if __name__=='__main__':main()
