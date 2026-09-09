from pathlib import Path
import hashlib,json
from datetime import datetime,timezone
r=Path("research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63")
dest=r/'experiments/lightweight-prime'
snap=dest/'source-snapshots'
snap.mkdir(parents=True,exist_ok=True)
h=lambda b:hashlib.sha256(b).hexdigest()
goods=(r/'lean/probes/Row184Goods.lean').read_text(encoding='utf-8')
a,b=goods.split('theorem row184_goods_checked',1)
norm=a+'theorem row184_goods_checked'+b.replace('  decide +kernel','  norm_num [row184, row184_height, row184_goods, goodSegmentCheck, List.all_cons, List.all_nil]',1)
variants={}
for name,text in [('goods-current',goods),('goods-norm-num',norm),('goods-norm-num-prime-import','import Mathlib.Tactic.NormNum.Prime\n'+norm)]:
  for endings in ('LF','CRLF'):
    raw=text.replace('\r\n','\n')
    if endings=='CRLF': raw=raw.replace('\n','\r\n')
    for bom in (False,True):
      payload=(b'\xef\xbb\xbf' if bom else b'')+raw.encode('utf-8')
      variants[h(payload)]=(name+'-'+endings+('-BOM' if bom else ''),payload)
draft=(dest/'LightweightWitnessDraft.lean').read_bytes()
variants[h(draft)]=('saved-optimized-witness',draft)
records=[]
for folder in sorted((r/'verification/development').iterdir()):
  if not folder.is_dir() or folder.name<'20260909T093248Z': continue
  f=folder/'result.json'
  if not f.exists():continue
  entry=json.loads(f.read_text(encoding='utf-8-sig'))
  source=Path(entry['source'])
  target=entry['sourceSHA256'].lower()
  choice=None
  if source.exists() and h(source.read_bytes())==target:
    choice=('current-source-exact-hash',source.read_bytes())
  elif target in variants:
    choice=variants[target]
  item={'record':str(f).replace('\\','/'),'source':str(source).replace('\\','/'),
        'recorded_source_sha256':target,'exit_code':entry['exitCode'],
        'finished_utc':entry['finishedUtc'],'matched_snapshot':choice is not None}
  if choice:
    label,payload=choice
    out=snap/(target[:16]+'-'+source.name+'.txt')
    out.write_bytes(payload)
    assert h(out.read_bytes())==target
    item.update(snapshot=str(out).replace('\\','/'),snapshot_method=label)
  records.append(item)
report={'created_utc':datetime.now(timezone.utc).isoformat(),
 'scope':'Source preservation only; no Lean or certificate computation was rerun.',
 'reconstruction':'Named source variants were reconstructed from retained code and known edits; accepted only if bytes matched the original recorded SHA256.',
 'development_object_warning':'The 091130 object directory was subsequently used as a development overlay. Its later objects are not a pristine acceptance artifact and must not be reused for a fresh source acceptance.',
 'records':records}
(dest/'source-snapshot-index.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'records':len(records),'exact_hash_snapshots':sum(x['matched_snapshot'] for x in records),
 'missing':[x['record'] for x in records if not x['matched_snapshot']]},ensure_ascii=False))
