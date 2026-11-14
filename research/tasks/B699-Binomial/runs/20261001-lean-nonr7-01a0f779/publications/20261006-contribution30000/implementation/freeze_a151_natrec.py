"""Freeze complete151-index Nat/List.rec candidate and source field roundtrips."""
import hashlib, json, re, shutil, collections, os
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO, Tree
from freeze import renamed

BASE=Path(__file__).resolve().parent
SCRATCH=Path(os.getenv('B699_A151_FREEZE_SCRATCH',str(REPO/'.tools/b699-contribution-implementation-20261006/a151-natrec')))
R=Path(os.getenv('B699_A151_FREEZE_DEST',str(BASE/'repairs/20261007-a151-natrec')))
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def source(p):return {'path':str(p.relative_to(REPO).as_posix()),'bytes':p.stat().st_size,'sha256':sha(p)}
def main():
 (R/'analysis').mkdir(parents=True,exist_ok=True)
 previous=json.loads((BASE/'repairs/20261006-ci6-a151/FREEZE.json').read_text(encoding='utf-8'))
 meta=json.loads((SCRATCH/'analysis/a151-compression.json').read_text(encoding='utf-8'))
 original=json.loads((BASE/'repairs/20261006-ci6-a151/analysis/a151-compression.json').read_text(encoding='utf-8'))
 assert len(meta['rows'])==151 and sum(x['goodsCount'] for x in meta['rows'])==37313 and sum(x['layerCount'] for x in meta['rows'])==3919
 assert [x['i'] for x in meta['rows']]==[29,*range(35,185)]
 comparable=['i','goodsCount','layerCount','goodsSource','goodsSourceSHA256','largeDivisors','roundTrip','layersRoundTrip']
 assert [{k:x[k] for k in comparable} for x in meta['rows']]==[{k:x[k] for k in comparable} for x in original['rows']]
 checked=[];parsedSources={}
 for row in meta['rows']:
  p=REPO/row['goodsSource'];assert sha(p)==row['goodsSourceSHA256']
  if row['goodsSource'] not in parsedSources:
   t=Tree.__new__(Tree);t.mods={row['goodsSource']:{'text':p.read_text(encoding='utf-8'),'imports':[]}};t.order=[row['goodsSource']];t.decls={};t.byname=collections.defaultdict(list);t.parse(row['goodsSource']);parsedSources[row['goodsSource']]=t
  t=parsedSources[row['goodsSource']]
  d=next(d for d in t.decls.values() if d['name']=='row'+str(row['i']).zfill(3)+'_goods')
  records=[(int(lo),int(hi),kind,int(v)) for lo,hi,kind,v in re.findall(r'lower := (\d+), upper := (\d+), witness := RowWitness\.(topPrime|largeDivisor) (\d+)',d['text'])]
  assert len(records)==row['goodsCount']
  assert hashlib.sha256(json.dumps(records,separators=(',',':')).encode()).hexdigest()==row['originalGoodsRecordsSHA256']
  layerDecl=next(d for d in t.decls.values() if d['name']=='row'+str(row['i']).zfill(3)+'_layers')
  layers=[tuple(map(int,x)) for x in re.findall(r'lower := (\d+), upper := (\d+), M := (\d+)',layerDecl['text'])]
  assert len(layers)==row['layerCount']
  assert hashlib.sha256(json.dumps(layers,separators=(',',':')).encode()).hexdigest()==row['originalLayerRecordsSHA256']
  checked.append({'i':row['i'],'goods':len(records),'goodsRawFieldSHA256':row['originalGoodsRecordsSHA256'],'layerRawFieldSHA256':row['originalLayerRecordsSHA256'],'sourceSHA256':sha(p)})
 report=meta['packedCandidates'][0];root=renamed(report,report['target'])
 p=R/'A151Packed.lean';content=(SCRATCH/'candidates/A151Packed.lean').read_text(encoding='utf-8').rstrip()
 expected=previous['newArtifact']['literalExpectedType']
 content+=f'\n\n#check ({root} : {expected})\n#print axioms {root}\n'
 p.write_text(content,encoding='utf-8',newline='\n')
 assert p.stat().st_size<=1048576 and report['selectedDeclarations']<=200
 assert 'List Char' not in content and 'digit37' not in content
 structural='termination_by structural codes' in content and 'termination_by structural indices' in content
 assert structural or re.search(r'List\.rec\s*\(motive\s*:=',content)
 assert '(decide (g.lower ≤ g.upper ∧ p ≤ g.lower ∧ g.upper < p + i) &&' in content
 shutil.copyfile(SCRATCH/'analysis/a151-compression.json',R/'analysis/a151-compression.json')
 audit={'status':'complete original source field representation roundtrip, not actual Lean acceptance','indices':151,'goods':37313,'layers':3919,'everyOriginalGoodFieldRecheckedFromLiveSource':True,'everyOriginalLayerFieldRecheckedFromLiveSource':True,'everyOriginalLayerFieldReconstructedInProducer':True,'records':checked,'encoding':'oneNat(delta,width,index,tag) pergood, oneNatM perlayer','recursion':'ordinary single-cons structural recursion' if structural else 'explicitprimitiveList.rec (unsupportedcodegen historical)','oldCharacterEncodingRemoved':True,'oldDataAndScopeUnchanged':True,'nativeLeanExecuted':False}
 (R/'analysis/data-roundtrip.json').write_text(json.dumps(audit,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 freeze={'status':'complete A151 Nat structural source candidate; actual Lean/AX/900s/Std3 pending','timeUTC':datetime.now(timezone.utc).isoformat(),'fixedOldSource':previous['newArtifact'],'newArtifact':dict(source(p),root=root,literalExpectedType=expected,auditsEmbedded=True,compilerStatus='pending',transitiveAxiomStatus='pending',independentVerifierStatus='pending'),'changes':['parenthesize complete Bool.and before =true in fastGood soundness bridge','exact oneNat pergood/oneNat perlayer numeric data','ordinary single-cons structural recursion, no directList.rec or Char9/Char2 pattern' if structural else 'explicitList.rec (historicalunsupportedcodegen)','preserve every original field and all151 indices37313goods3919layers'],'scope':'all legalNatn/i/j fori=29 or35<=i<=184; same actualPrime>=i divides complete twochoose; fullS unchanged','sourcePolicy':'analysis/source-policy.json','dataRoundtrip':'analysis/data-roundtrip.json','sourceDeclarationCount':report['selectedDeclarations'],'sizeBytes':p.stat().st_size,'oldSourceAndSevenInputsUnmodified':True,'nativeLeanExecuted':False,'producerSources':[source(BASE/n) for n in ['extract.py','compress_i11.py','compress_a151.py','freeze_a151_natrec.py']]}
 (R/'FREEZE.json').write_text(json.dumps(freeze,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'sourceSHA256':sha(p),'bytes':p.stat().st_size,'root':root,'declarations':report['selectedDeclarations'],'indices':151,'goods':37313,'layers':3919,'allSourceFieldRoundtripsEqual':True,'compile':'pending'}))

if __name__=='__main__':main()
