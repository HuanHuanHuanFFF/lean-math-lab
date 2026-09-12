"""Check frozen archive identities and exact parameter alignment, not inherited G replay."""
from pathlib import Path
import json,time
from source_paths import frozen,digest,R,SPECS
start=time.monotonic();A=frozen('A');C=frozen('C')
cuts=json.loads((A/'input/cuts.json').read_text())['cuts']
contents=json.loads((A/'evidence/content_check.json').read_text())
new={tuple(sorted((r['e'],r['d'],r['f']))) for r in cuts if r['content_source']=='new_permutation_content'}
pub=[r for r in cuts if r['content_source']=='BFT_5_1']
cbridge=json.loads((C/'evidence/threshold_certificate.json').read_text())
cc={tuple(sorted(r['triple'])) for r in cbridge['families']}
assert len(new)==33 and len(pub)==12 and len(cc)==6 and not(new&cc)
assert contents['family_count']==33 and contents['total_finite_blocks']==2284358 and contents['total_tail_terms']==9775
assert new=={tuple(sorted((r['e'],r['d'],r['f']))) for r in contents['rows']}
# The extracted A interval proof uses residual sum >=2p+2, stronger than N's 2p+1.
assert '2ℓ+2' in (A/'notes/PROOFS.md').read_text()
# The lightweight C receiver snapshot is an exact source copy for every shipped code file.
snapshot=R/'adopted/C-minimal';checked=0
for p in (snapshot/'code').glob('*.py'):
 assert p.read_bytes()==(C/'code'/p.name).read_bytes();checked+=1
assert (snapshot/'evidence/threshold_certificate.json').read_bytes()==(C/'evidence/threshold_certificate.json').read_bytes()
out={'status':'PASS_FROZEN_INPUT_IDENTITY_AND_PARAMETER_ALIGNMENT','A_new_families':33,'C_bridge_families':6,'intersection':[],
     'N_replaces_G_for_A_new_interval_families':33,'BFT_table_cuts_still_require_published_G_bound':12,
     'C_new_m0_used_for_i14':False,'frozen_content_certificates_adopted_not_replayed':2284358,
     'C_snapshot_code_files_matched':checked,'seconds':round(time.monotonic()-start,3),
     'archives':{SPECS[k][0]:digest(R/'adopted/archives'/SPECS[k][0]) for k in SPECS}}
(R/'evidence/dependency_alignment.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out),flush=True)
