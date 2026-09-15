"""Freeze explicitly classified paper artifacts. Does not execute mathematics."""
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

exp = Path(__file__).resolve().parent
run = exp.parent.parent
repo = run.parents[4]
groups = {
    'accepted_chain_author_artifacts': [
        'notes/cubic/05-effective-height-and-lll-contract.md',
        'notes/cubic/05-addenda-and-rf-certificate.md',
        'notes/cubic/06-dyadic-h25-transfer.md',
        'experiments/cubic/stage04-primary-pdf-success.json',
        'experiments/cubic/stage05_height_bounds.py',
        'experiments/cubic/stage05-height-20260915T195012Z.json',
        'experiments/cubic/stage05_certified_rf_lll_v2.py',
        'experiments/cubic/exact_lll3.py',
        'experiments/cubic/stage05-rf-lll-20260915T200406Z.json',
        'experiments/cubic/verify_stage05_rf_lll.py',
        'experiments/cubic/stage05-rf-lll-independent-20260915T200804Z.json',
        'experiments/cubic/stage06_h25_transfer.py',
        'experiments/cubic/stage06-h25-transfer-20260915T202648Z.json',
    ],
    'crosscheck_only_not_a_rigorous_interval_proof': [
        'experiments/cubic/stage05_magma_log_crosscheck.m',
        'experiments/cubic/stage05_magma_log_crosscheck-output-20260915T201631Z.txt',
        'experiments/cubic/stage05_magma_log_crosscheck-response-20260915T201631Z.html',
        'experiments/cubic/stage05_magma_log_crosscheck-receipt-20260915T201631Z.json',
    ],
    'exploration_or_failure_not_acceptance_input': [
        'notes/cubic/04-reformulations-and-failures.md',
        'experiments/cubic/stage04_squareclass_probe.m',
        'experiments/cubic/stage04_squareclass_probe-output-20260915T193140Z.txt',
        'experiments/cubic/stage04_squareclass_probe-response-20260915T193140Z.html',
        'experiments/cubic/stage04_squareclass_probe-receipt-20260915T193140Z.json',
        'experiments/cubic/stage04_norm_ansatz.py',
        'experiments/cubic/stage04-norm-ansatz-20260915T193253Z.json',
        'experiments/cubic/stage04_square_cover.m',
        'experiments/cubic/stage04_square_cover-output-20260915T194520Z.txt',
        'experiments/cubic/stage04_square_cover-response-20260915T194520Z.html',
        'experiments/cubic/stage04_square_cover-receipt-20260915T194520Z.json',
        'experiments/cubic/stage04-primary-pdf-receipt.json',
        'experiments/cubic/stage05_certified_rf_lll.py',
    ],
    'administrative': ['experiments/cubic/freeze_stage05_06.py'],
}

def info(path):
    blob=path.read_bytes()
    return {'bytes':len(blob),'sha256':hashlib.sha256(blob).hexdigest()}

files=[]
for group, paths in groups.items():
    for rel in paths:
        files.append({'path':rel,'role':group,**info(run/rel)})
assert len({f['path'] for f in files})==len(files)
assert (run/'notes/cubic/05-effective-height-and-lll-contract.md').is_file()
assert info(run/'notes/cubic/05-effective-height-and-lll-contract.md')['sha256']=='43940c239a8894e4371525886cc82d33201035fb6ef8a09a91c42fd8170541df'
source_base = repo/'research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc'
sources=[
    source_base/'intake/20260915-daily-results/materials/B-normalized-three-neighbor-and-square-rows/notes/PROOFS.md',
    source_base/'intake/20260915-daily-results/materials/B-normalized-three-neighbor-and-square-rows/exploration/probe2-output.json',
    source_base/'deliveries/B-cubic/notes/PROOFS.md',
    source_base/'intake/20260915-daily-results/materials/D-lcm-denominator-closure/REPORT.md',
]
out={
    'created_utc':datetime.now(timezone.utc).isoformat(),
    'owner':'/root/nc3',
    'scope':'Fixed stage04/05/06 artifacts. Mathematical AI acceptance is owned by parent and geometry review records; this manifest only binds bytes.',
    'files':files,
    'file_count':len(files),
    'total_bytes':sum(f['bytes'] for f in files),
    'adopted_earlier_manifests':['notes/cubic/02-FROZEN.json'],
    'source_comparison':[{'path':str(p.relative_to(repo)).replace('\\','/'),**info(p)} for p in sources],
    'no_lean':True,
    'no_complete_NF_integral_point_list':True,
}
dest=run/'notes/cubic/05-06-FROZEN.json'
assert not dest.exists(), 'Do not overwrite a frozen manifest.'
dest.write_text(json.dumps(out,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
print(json.dumps({'manifest':str(dest),'file_count':len(files),'total_bytes':out['total_bytes'],**info(dest)},ensure_ascii=False))
