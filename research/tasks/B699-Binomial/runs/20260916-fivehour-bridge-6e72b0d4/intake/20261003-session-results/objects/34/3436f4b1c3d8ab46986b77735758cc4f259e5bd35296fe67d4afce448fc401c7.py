#!/usr/bin/env python3
"""Offline replay for this audit only. Never invokes Lean or historical scripts."""
from pathlib import Path
from hashlib import sha256,sha1
import json,sys
import check_math,derive_ledger
ROOT=Path(__file__).resolve().parents[1]
def verify_manifest(name):
 p=ROOT/name
 if not p.exists():return 0
 seen=set()
 for line in p.read_text().splitlines():
  if not line.strip():continue
  h,rel=line.split(maxsplit=1);rel=rel.lstrip('* ')
  pp=Path(rel)
  if pp.is_absolute() or '..' in pp.parts:raise ValueError('unsafe manifest path')
  if rel in seen:raise ValueError('duplicate manifest entry')
  seen.add(rel)
  assert sha256((ROOT/rel).read_bytes()).hexdigest()==h,(name,rel)
 return len(seen)
def main():
 full=verify_manifest('SHA256SUMS')
 count=verify_manifest('PAYLOAD_SHA256SUMS')
 assert count>0
 assert sha256((ROOT/'sources/OVERVIEW.md').read_bytes()).hexdigest()=='96f92ba7061e8facb774bdf2d42c5d445f3f1a63564ca0e2b71ceaca08d44066'
 pins=json.loads((ROOT/'sources/REMOTE_FILE_PINS.json').read_text())
 for name,pin in pins.items():
  b=(ROOT/'sources'/name).read_bytes()
  assert sha1(b'blob '+str(len(b)).encode()+b'\0'+b).hexdigest()==pin['git_blob_expected']
  assert sha256(b).hexdigest()==pin['sha256']
 new=json.loads(json.dumps(check_math.run()));expected=json.loads((ROOT/'certificates/ARITHMETIC_EXPECTED.json').read_text());assert new==expected
 sets=derive_ledger.calculate();assert sets==json.loads((ROOT/'certificates/INDEX_SET_LEDGER.json').read_text())
 matrix=json.loads((ROOT/'PER_INDEX_SOURCE_MATRIX.json').read_text())
 assert all(not row['full_chain_verified_this_round'] and not row['fixed_registered_full_acceptance'] for row in matrix)
 state=json.loads((ROOT/'SESSION_STATE.json').read_text())
 assert state['new_accepted_indices']==[] and state['new_verified_full_chains']==[]
 assert state['full_index_gap_mixed']==sets['conservative_mixed_complement']
 # Do not let final-manifest presence change the deterministic mathematical output.
 result={'status':'PASS_NEW_AUDIT_ONLY','payload_members_verified':count,
 'fixed_overview_hash_matches':True,'exact_remote_text_blobs_verified':len(pins),
 'routes_located':9,'indices_matrix_rows':23,'full_old_chains_verified':0,'new_accepted_full_indices':[],
 'conservative_mixed_complement':sets['conservative_mixed_complement'],
 'conditional_claim_complement':sets['hypothetical_complement_if_every_paper_chain_adopted'],
 'seven_height_integer_checks':len(new['seven_height_integer_certificates']),
 'signed_CRT_families':new['signed_CRT']['families_checked'],
 'residue_weight_cases':new['full_power_windows']['residue_cases'],
 'finite_original_rows':new['isolated_actual_rows']['rows'],
 'warnings':['通过的是本轮新证据，不是23条历史全域链','旧回执不被重标为本轮接受','无Lean、外部独立审读或仓库操作']}
 print(json.dumps(result,ensure_ascii=False,indent=2))
if __name__=='__main__':
 try:main()
 except Exception as exc:
  print('FAIL:',type(exc).__name__,str(exc),file=sys.stderr)
  raise
