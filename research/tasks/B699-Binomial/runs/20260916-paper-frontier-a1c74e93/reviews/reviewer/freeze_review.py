from pathlib import Path
from datetime import datetime,timezone
import json,hashlib,re
R=Path(__file__).resolve().parent;run=R.parents[1]
expected={
'notes/nc3/PROOFS.md':'adb2ed7ffe63850b8ea2ee89158563017fabfd9b0c2b7106b4651002c1f481bb',
'notes/nc3/BLOCK_EXTENSION.md':'f7c221bb263cec2c356d174b58077b9ffe05d962dc62240a53cfa0b78aeae3a0',
'notes/nc3/FINITE_TEST_BARRIER.md':'de5467e777289cc95165b5afdf55e2a11b4e9ef0487636b8f3f09f9560a1bd15',
'notes/main/02-h02-gcd-fourth.md':'79a6931f47a72c27057d2e83369cb99ae7c754a983b21b59d6d72806c94a876f',
'notes/main/03-h02-origin-seven.md':'9a1e0789dde6eb925eaf8fe81cc363cab2f27e026a89372f880a8b2f5eecae73',
'notes/main/04-deficit-one-boundary.md':'f1db2d2d3d8282b6770fd6680cebce96e474bcbb49e605364b384be7a7469d17',
'notes/h023/PROOFS.md':'d630fe1b20799fea7dc02d48a479e23a3d4880c0a2dbca5acecf371282a60881',
'experiments/h023/certificate_selected.json':'f5f52a935cab94bd03e491f81f2e716475c4dcc348a1c7b6af3ccbb9e592ee20'}
sources=[]
for name,digest in expected.items():
    p=run/name;blob=p.read_bytes();actual=hashlib.sha256(blob).hexdigest()
    assert actual==digest,(name,digest,actual)
    sources.append({'run_relative_path':name,'bytes':len(blob),'sha256':actual})
checks=['independent_checks.json','h02_strengthening.json','independent_g7.json','independent_method_boundary.json','independent_finite_barrier.json','H023_CORE_CHECK.json']
for name in checks:
    obj=json.loads((R/name).read_text(encoding='utf-8-sig'))
    assert obj.get('status') in ('passed','all bounded checks passed')
reports=['NC3_REVIEW.md','FINITE_BARRIER_REVIEW.md','H02_REVIEW.md','H023_CORE_REVIEW.md']
for name in reports:
    text=(R/name).read_text(encoding='utf-8-sig')
    for target in re.findall(r'\]\(([^)]+)\)',text):
        if '://' not in target and not target.startswith('#'):assert (R/target).exists(),(name,target)
receipt={'reviewer':'/root/reviewer','frozen_utc':datetime.now(timezone.utc).isoformat(),'baseline':'1fccc6454c67d2122bc5bcdc7a31561d8f04c164','status':'completed','sources':sources,'reports':reports,'summary':{'NC3_original_and_block_extension':'independent paper accepted; entire families already rejected by adopted OLD128; net newly excluded old frontier region is empty','NC3_finite_barrier':'independent paper accepted; arbitrary fixed finite odd-prime-power carry layers and fixed residual modulus compatible with internal j/n, while full windows fail','H02':'independent paper and exact certificate accepted: 8*n^4<625*alpha^5 and n^6<2^22*alpha^7; origin order 7 optimal only in the stated symmetric degree-gap-one uniform-row class','H023':'selected core independently accepted: n^5<2^275*alpha^7; no acceptance of the unrelated large dimension-count kernel'},'limitations':['No Lean, installation, publication, or full indicator closure.','No general absolute bound on alpha; H02 and H023 remain open.','No full historical-union novelty audit for H02/H023; NC3 full containment in OLD128 is established.']}
(R/'REVIEW_RECEIPT.json').write_text(json.dumps(receipt,indent=2)+'\n',encoding='utf-8')
artifacts=[]
for p in sorted(R.iterdir()):
    if p.is_file() and p.name!='MANIFEST.json':
        blob=p.read_bytes();artifacts.append({'name':p.name,'bytes':len(blob),'sha256':hashlib.sha256(blob).hexdigest()})
manifest={'frozen_utc':receipt['frozen_utc'],'artifacts':artifacts,'sources':sources}
(R/'MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'completed','frozen_utc':receipt['frozen_utc'],'reports':reports,'source_versions_checked':len(sources),'artifact_count':len(artifacts),'artifact_bytes':sum(x['bytes'] for x in artifacts)}))
