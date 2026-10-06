"""Static hash/data/command-position audit; deliberately no Lean invocation."""
import hashlib, importlib.util, json, re, sys
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO
from freeze import renamed
from repair_i11_below_kind import data_block

BASE=Path(__file__).resolve().parent
R=BASE/'repairs/20261007-i11-below-kind'

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
 freeze=json.loads((R/'FREEZE.json').read_text(encoding='utf-8'))
 report=json.loads((R/'analysis/i11-below-local-proof.json').read_text(encoding='utf-8'))
 policy=json.loads((R/'analysis/source-policy.json').read_text(encoding='utf-8'))
 p=REPO/freeze['newArtifact']['path'];text=p.read_text(encoding='utf-8')
 assert sha(p)==freeze['newArtifact']['sha256']==policy['sourceFiles'][0]['sha256']
 assert policy['errors']==0 and policy['reviewFindings']==2
 assert not re.search(r'^\s+(?:structure|inductive|class|namespace)\b',text,re.M)
 checker=REPO/'.tools/b699-contribution-platform-20261006/contribution/src/conjectures_contribution/lean.py'
 spec=importlib.util.spec_from_file_location('b699_frozen_official_source',checker)
 official=importlib.util.module_from_spec(spec);sys.modules[spec.name]=official;spec.loader.exec_module(official)
 declarations=official.declarations(text)
 assert len(declarations)<=200
 assert all(x.startswith('Contribution.B699I11BelowFinalCandidate.') for x in declarations)
 root=freeze['newArtifact']['root'];literal=freeze['newArtifact']['literalExpectedType']
 assert f'#check ({root} : {literal})' in text and f'#print axioms {root}' in text
 original='Math.B699.I11TerminalCandidateCoverage.compactBundles'
 local=next(x['localName'] for x in report['localSourceMap'] if x['original']==original)
 initializer=data_block(text,local)
 fingerprint=json.loads((BASE.parent/'reviews/I11BELOW-CI7-SYNTHETIC-DATA-FINGERPRINT.json').read_text(encoding='utf-8'))
 canonical=re.sub(r'\s+','',initializer)
 counts={x:len(re.findall(r'\.'+x+r'\b',initializer)) for x in ['good','largeDivisor','special330','topPrime']}
 assert hashlib.sha256(canonical.encode()).hexdigest()==fingerprint['whitespaceStrippedInitializerSha256']
 assert sha(REPO/freeze['fixedOldSource']['path'])==freeze['fixedOldSource']['sha256']
 assert counts==fingerprint['constructorOccurrences']
 assert len(initializer.encode())==fingerprint['initializerUtf8Bytes']
 assert hashlib.sha256(initializer.encode()).hexdigest()==fingerprint['initializerSha256']
 payload=json.loads((BASE/'RETAINED-SOURCES.json').read_text(encoding='utf-8'))
 hypothetical=payload['finalArtifactBytes']-freeze['fixedOldSource']['bytes']+p.stat().st_size
 assert hypothetical<=4194304
 result={'status':'static input/data/command-position binding only; no kernel acceptance','newSourceSHA256':sha(p),'officialSourceDeclarationCount':len(declarations),'sourcePolicyErrors':0,'reviewFindings':policy['reviewFindings'],'reviewReasons':[x['message'] for x in policy['sourceFiles'][0]['findings']],'sameLiteralCompleteDoubleChooseConclusion':True,'topLevelStructureBeforeConsumer':freeze['structureAtTopLevelBeforeConsumer'],'structureDependenciesWithNewNames':[dict(d,newName=renamed(report,d['original'])) for d in freeze['structureDependencies']],'initializerUtf8Bytes':len(initializer.encode()),'initializerSha256':hashlib.sha256(initializer.encode()).hexdigest(),'whitespaceStrippedInitializerSha256':hashlib.sha256(canonical.encode()).hexdigest(),'constructorOccurrences':counts,'originalDataEqualsIndependentVerifierFingerprint':True,'candidateIntervals':1055,'bundles':1111,'witnesses':4041,'hypotheticalSevenPayloadBytes':hypothetical,'oldFrozenInputsUnmodified':True,'nativeLeanExecuted':False,'compilerAndAXAnd900sAndStd3':'pending actual fixed Linux CI; static checks cannot establish these'}
 (R/'analysis/static-repair-audit.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps(result,ensure_ascii=False))

if __name__=='__main__':main()
