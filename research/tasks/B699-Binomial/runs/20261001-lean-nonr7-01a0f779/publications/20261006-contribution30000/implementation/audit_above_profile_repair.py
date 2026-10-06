"""Static full-source numeric array/name mapping audit; no Lean acceptance."""
import collections, hashlib, json, re, os
from pathlib import Path
from extract import REPO, ID

BASE=Path(__file__).resolve().parent
R=Path(os.getenv('B699_ABOVE_REPAIR_DEST',str(BASE/'repairs/20261007-above-prefix-errors')))
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def arrays(text,report):
 local={x['localName']:x['original'] for x in report['localSourceMap']}
 ns={v:k for k,v in report['namespaceSegmentMap'].items()}
 names={v:k for k,v in report['declarationNameMap'].items()}
 own=report['ownNamespace']+'.'
 def token(m):
  s=m.group()
  if s in local:return local[s]
  if s.startswith(own):s=s[len(own):]
  return '.'.join(names.get(x,ns.get(x,x)) for x in s.split('.'))
 stack=[];found=[]
 for i,c in enumerate(text):
  if c=='[':stack.append(i)
  elif c==']' and stack:
   begin=stack.pop();body=text[begin+1:i].strip()
   if not body or not re.match(r'(?:\(|⟨|\d)',body):continue
   if not re.search(r'(?<![A-Za-z_0-9])\d+(?![A-Za-z_0-9])',body):continue
   canonical=re.sub(r'\s+','',re.sub(ID,token,body))
   found.append({'sourceLine':text[:begin].count('\n')+1,'canonicalSHA256':hashlib.sha256(canonical.encode()).hexdigest(),'numericLiteralCount':len(re.findall(r'(?<![A-Za-z_0-9])\d+(?![A-Za-z_0-9])',body)),'canonical':canonical})
 return found

def main():
 freeze=json.loads((R/'FREEZE.json').read_text(encoding='utf-8'))
 oldmap=json.loads((BASE/'v2/analysis/i11-above-local-proof.json').read_text(encoding='utf-8'))
 newmap=json.loads((R/'analysis/i11-above-local-proof.json').read_text(encoding='utf-8'))
 oldp=REPO/freeze['fixedOldSource']['path'];newp=REPO/freeze['newArtifact']['path']
 assert sha(oldp)==freeze['fixedOldSource']['sha256'] and sha(newp)==freeze['newArtifact']['sha256']
 oldtext=oldp.read_text(encoding='utf-8');newtext=newp.read_text(encoding='utf-8')
 old=arrays(oldtext,oldmap);new=arrays(newtext,newmap)
 numerals=r'(?<![A-Za-z_0-9])\d+(?![A-Za-z_0-9])'
 oldnums=collections.Counter(re.findall(numerals,oldtext));newnums=collections.Counter(re.findall(numerals,newtext))
 before=collections.Counter(x['canonicalSHA256'] for x in old);after=collections.Counter(x['canonicalSHA256'] for x in new)
 missing=before-after;added=after-before
 comparison={'status':'static source data and namespace/name mapping comparison only; actual Lean pending','oldSourceSHA256':sha(oldp),'newSourceSHA256':sha(newp),'numericArrayCountOld':len(old),'numericArrayCountNew':len(new),'numericArrayInitializerMultisetsEqual':before==after,'numericLiteralsOld':sum(x['numericLiteralCount'] for x in old),'numericLiteralsNew':sum(x['numericLiteralCount'] for x in new),'oldArrays':[{k:v for k,v in x.items() if k!='canonical'} for x in old],'newArrays':[{k:v for k,v in x.items() if k!='canonical'} for x in new],'missingArraySHAs':list(missing.elements()),'addedArraySHAs':list(added.elements()),'scope':'full Above literal unchanged, no CRT or Bernstein numerical data regenerated','compiler':'pending','nativeLeanExecuted':False}
 (R/'analysis/data-roundtrip.json').write_text(json.dumps(comparison,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 comparison['allExplicitNumericLiteralMultisetsEqual']=oldnums==newnums
 comparison['allExplicitNumericLiteralOccurrences']=sum(newnums.values())
 comparison['removedNumericLiterals']=dict(oldnums-newnums);comparison['addedNumericLiterals']=dict(newnums-oldnums)
 (R/'analysis/data-roundtrip.json').write_text(json.dumps(comparison,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 if before!=after:
  differences={'missing':[dict(x,canonical=x['canonical'][:180]) for x in old if x['canonicalSHA256'] in missing],'added':[dict(x,canonical=x['canonical'][:180]) for x in new if x['canonicalSHA256'] in added]}
  (R/'analysis/array-diff.json').write_text(json.dumps(differences,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
  raise AssertionError('numeric array name-normalized multiset differs; inspect bounded array-diff metadata')
 assert oldnums==newnums,'non-array numeric literal count differs; inspect exact metadata before accepting data identity'
 print(json.dumps({'newSHA':sha(newp),'numericArrays':len(new),'numericLiterals':sum(x['numericLiteralCount'] for x in new),'allLiteralOccurrences':sum(newnums.values()),'exactArrayPayloadsAfterNameNormalizationEqual':True,'allExplicitNumericLiteralMultisetsEqual':True,'compile':'pending'}))

if __name__=='__main__':main()
