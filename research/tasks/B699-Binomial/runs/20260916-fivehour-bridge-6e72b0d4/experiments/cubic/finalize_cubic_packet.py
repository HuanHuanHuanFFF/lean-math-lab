"""Fresh final byte audit and full owned-file freeze; no mathematics is rerun."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json

run=Path(__file__).resolve().parents[2];repo=run.parents[4]
final=run/'notes/cubic/FINAL_FROZEN.json';assert not final.exists()
def info(p):
    data=p.read_bytes();return {'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()}
manifests=sorted((run/'notes/cubic').glob('*FROZEN*.json'))+sorted((run/'reviews/cubic').glob('*manifest.json'))
checks=[]
for manifest in manifests:
    data=json.loads(manifest.read_text())
    for entry in data['files']:
        actual=info(run/entry['path'])
        assert actual['sha256'].lower()==entry['sha256'].lower(),entry['path']
        assert actual['bytes']==entry['bytes'],entry['path']
    checks.append({'path':str(manifest.relative_to(run)).replace('\\','/'),'bound_files':len(data['files']),**info(manifest)})

stage1={
 'notes/cubic/00-start.md':'cb937ac07e62c69f425a0fdfaade4b6df92297552fc6c6cb237314642928f2c6',
 'notes/cubic/01-model-and-domain.md':'92b072dee0268001656c23adf189e128145de48f86eb0e7eec4c7a20eb062f1f',
 'notes/cubic/01-primary-sources.md':'577dea0ebbc09df800532ce40694dd722c9fbbd5524d7a7150c9b1e77834a362',
 'experiments/cubic/stage01_model.py':'df02aaac5703b2ad063e9fcedde7d2633b569305b2b7eec5ab64fa6f631fb2f0',
 'experiments/cubic/stage01-model-20260915T184703Z.json':'23e2f3a0228f10af2587e8b784faddb12fdc8ae7bf9b5586b688292efe28f45b',
}
for name,sha in stage1.items():assert info(run/name)['sha256']==sha,name
papers={
 'Ellqua-v2.pdf':'4d10be33587e7c398cf95184686e941caa139d0806eeba70ef215d8c5b25bd97',
 'Masser-2024-binary-cubic.pdf':'cc5ba4819fa9f80a9e44910bcd62fc04770a09d01c9caa144c9a26d6234f709b',
}
for name,sha in papers.items():assert info(repo/'.tools/replay/6e72b0d4-cubic/sources'/name)['sha256']==sha,name
audit={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS','kind':'fresh fixed-source byte audit, not a mathematical test',
       'prior_manifests':checks,'prior_manifest_count':len(checks),'stage01_five_sources_unchanged':True,
       'primary_PDFs_unchanged':True}
audit_path=run/'experiments/cubic/final-byte-audit.json';assert not audit_path.exists()
audit_path.write_text(json.dumps(audit,indent=2)+'\n',encoding='utf-8')

files=[]
for folder in ('notes/cubic','experiments/cubic','reviews/cubic'):
    for path in sorted((run/folder).rglob('*')):
        if path.is_file() and path!=final:
            assert '__pycache__' not in path.parts
            files.append({'path':str(path.relative_to(run)).replace('\\','/'),**info(path)})
reviews=[
 'reviews/geometry/b3-five-review-manifest.json',
 'reviews/geometry/general-loss-review-manifest.json',
 'reviews/cubic/nonbinary-review-manifest.json',
 'reviews/cubic/SQ-review-manifest.json',
]
out={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/nc3','source_baseline':'a7468a887224e35906d8486bd18d21d0e8368393',
     'files':files,'file_count':len(files),'total_bytes':sum(f['bytes'] for f in files),
     'proof_entrypoints':['notes/cubic/REPORT.md','notes/cubic/PROOFS.md','notes/cubic/HANDOFF.md'],
     'independent_AI_reviews':[{'path':p,**info(run/p)} for p in reviews],
     'byte_audit':{'path':str(audit_path.relative_to(run)).replace('\\','/'),**info(audit_path)},
     'scope':'Completed cubic branch package: all b3 square-row candidates closed; negative 3P^r-1 square rows completed, positive rows rederived; normalized support lower bound; all genuine losses satisfy explicit Masser height. General i3 remains open.',
     'paper_not_Lean':True,'publication_owner':'parent /root',
     'preserved_failures':'NF IntegralPoints implementation error, nonsplitting/norm/square-cover probes, first LLL finder failure are retained as diagnostics, not accepted solution lists.'}
final.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(final),'file_count':len(files),'total_bytes':out['total_bytes'],
                  'previous_frozen_manifests_unchanged':len(checks),'stage01_unchanged':True,**info(final)}))
