"""Apply only the approved Bool conjunction spec repair to the V2 A151 leaf.
Verify all other frozen bytes and all encoded data strings remain unchanged.
"""
import hashlib, json, re, shutil
from pathlib import Path
from extract import REPO
from freeze import renamed

BASE=Path(__file__).resolve().parent
V2=BASE/'v2'
SCRATCH=REPO/'.tools/b699-contribution-implementation-20261006/v2'

def main():
 manifest_path=V2/'FIRST-COMPILE-SNAPSHOT.json'
 manifest=json.loads(manifest_path.read_text(encoding='utf-8'))
 name='A151Packed.lean'
 record=next(r for r in manifest['artifacts'] if Path(r['path']).name==name)
 for r in manifest['artifacts']:
  p=REPO/r['path'];assert hashlib.sha256(p.read_bytes()).hexdigest()==r['sha256']
 dest=REPO/record['path'];old=dest.read_text(encoding='utf-8')
 report=json.loads((SCRATCH/'analysis/a151-compression.json').read_text(encoding='utf-8'))['packedCandidates'][0]
 assert renamed(report,report['target'])==record['root']
 commands=f"\n#check ({record['root']} : {record['literalExpectedType']})\n#print axioms {record['root']}\n"
 new=(SCRATCH/'candidates'/name).read_text(encoding='utf-8').rstrip()+'\n'+commands
 literals=lambda s: re.findall(r'"(?:[^"\\]|\\.)*"',s)
 assert literals(old)==literals(new),'encoded data changed'
 receipt={'repair':'normalize Bool/Prop conjunction association using and_assoc; use canonical right-nested proof projections','oldBytes':len(old.encode()),'oldSHA256':record['sha256'],'dataStringsUnchanged':True,'otherThreeLeafBytesUnchanged':True,'compilerResult':'not_run'}
 dest.write_text(new,encoding='utf-8',newline='\n')
 record.update(bytes=dest.stat().st_size,sha256=hashlib.sha256(dest.read_bytes()).hexdigest())
 receipt.update(newBytes=record['bytes'],newSHA256=record['sha256'])
 manifest['selectedBytes']=sum(r['bytes'] for r in manifest['artifacts'])
 manifest['v2Corrections'].append(receipt['repair'])
 manifest_path.write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 shutil.copyfile(SCRATCH/'analysis/a151-compression.json',V2/'analysis/a151-compression.json')
 (V2/'analysis/a151-conjunction-repair.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps(receipt,ensure_ascii=False))

if __name__=='__main__':main()
