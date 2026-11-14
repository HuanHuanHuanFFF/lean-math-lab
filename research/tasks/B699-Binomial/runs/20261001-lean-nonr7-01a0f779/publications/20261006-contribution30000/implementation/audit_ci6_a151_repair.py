"""Administrative source binding/order/input audit for the CI6 A151 repair.
It does not invoke Lean and cannot establish mathematical acceptance.
"""
import hashlib, json, re
from pathlib import Path
from extract import REPO

BASE=Path(__file__).resolve().parent
R=BASE/'repairs/20261006-ci6-a151'

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def main():
 freeze=json.loads((R/'FREEZE.json').read_text(encoding='utf-8'))
 meta=json.loads((R/'analysis/a151-compression.json').read_text(encoding='utf-8'))
 source=REPO/freeze['newArtifact']['path'];text=source.read_text(encoding='utf-8')
 assert digest(source)==freeze['newArtifact']['sha256']
 assert len(meta['rows'])==151 and sum(x['goodsCount'] for x in meta['rows'])==37313
 report=meta['packedCandidates'][0];names=report['declarationNameMap']
 getter=names['HeightCertificateDatum']+'.n0';trial=names['trialPrimeCheck'];sound=names['trialPrimeCheck_sound']
 getter_definition=text.index('def '+getter+' ')
 first_getter_use=min(text.index(v) for v in ['row.n0','height.n0'])
 trial_definition=text.index('def '+trial+' ');sound_definition=text.index('theorem '+sound+' ')
 trial_use=text.index('&& '+trial+' p');sound_use=text.index(','+sound+' hp,')
 assert getter_definition<first_getter_use and trial_definition<trial_use and sound_definition<sound_use
 for value in ['sorry','admit','native_decide','Lean.ofReduceBool']:
  assert not re.search(r'\b'+re.escape(value)+r'\b',text),value
 policy=json.loads((R/'analysis/source-policy.json').read_text(encoding='utf-8'))
 assert policy['errors']==0 and policy['sourceFiles'][0]['sha256']==digest(source)
 result={'status':'static source/input/order binding only; Lean pending','artifactSHA256':digest(source),'sourcePolicyErrors':0,'reviewFindings':policy['reviewFindings'],'getterDefinitionBeforeAllObservedUses':True,'trialAndSoundDefinitionsBeforeObservedFastCheckUses':True,'indices':151,'goods':37313,'layers':sum(x['layerCount'] for x in meta['rows']),'originalEncodedDataUnchanged':freeze['exactInputComparison']['encodedDataStringsEqualToV2'],'literalRoot':freeze['newArtifact']['root'],'nativeLeanExecuted':False}
 (R/'analysis/static-repair-audit.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps(result,ensure_ascii=False))

if __name__=='__main__':main()
