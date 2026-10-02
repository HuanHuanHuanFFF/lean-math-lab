"""Tie the completed certificates to actual allowed state-specific consumers."""
from pathlib import Path
import json,csv,hashlib
R=Path(__file__).resolve().parents[1];J=lambda p:json.loads((R/p).read_text());K=J('certificates/kernel_receipts.json');L=J('certificates/ledger_verification.json');F=J('certificates/frontier_audit.json')
assert K['all_passed'] and K['jobs']==25 and K['state_factor_systems']==13 and L['states']==9
seen=set()
for x in K['receipts']:
 key=(x['state'],x['factor'],x['prime'],x['mode']);assert key not in seen;seen.add(key)
 assert x['dimension']==0 and x['min_weight']>x['D_Q'] and x['second_implementation_pass']
 pre=R/f'certificates/s{x["state"]}_{x["factor"]}quot_p{x["prime"]}_m{x["mode"]}'
 for ext,k in [('.input','input_sha256'),('.trace.tsv','trace_sha256')]:assert hashlib.sha256(pre.with_suffix(ext).read_bytes()).hexdigest()==x[k]
for x in L['records']:
 for label in x['required_factor_classes']:assert (x['state'],label,257,0) in seen
 assert x['M8_after']>x['h'] and x['M8_one_less']<=x['h']
 assert x['low_count']==len(x['low']) and all(a['q']+a['M7_old']<=x['h'] for a in x['low'])
 for c in x['checks']:assert c['all_cells_equal']
assert sorted(L['removed'])==F['removed'] and F['output_count']==17 and F['strict_current_round_net']==9
profiles=0;configs=0;minors=0;exceptions=0;geometry_runs=0;newprofiles=0;newconfigs=0
for folder in ['geometry','extra_geometry']:
 pr=J(f'certificates/{folder}/profiles.json');rec=J(f'certificates/{folder}/geometry_receipt.json')
 assert rec['received_runs']==2*len(pr) and len(rec['results'])==rec['received_runs']
 assert all(x['stdout'].startswith('PASS ') for x in rec['results'])
 profiles+=len(pr);configs+=sum(x['rows'] for x in pr);geometry_runs+=rec['received_runs']
 for x in pr:
  isnew=x['purpose']!='Fstar_recovery';newprofiles+=isnew;newconfigs+=x['rows'] if isnew else 0
  i=x['index'];p0=R/f'certificates/{folder}'
  for p in [32749,32719]:
   nm=len((p0/f'g{i:02}.p{p}.minors').read_text().splitlines());ne=len((p0/f'g{i:02}.p{p}.exceptions').read_text().splitlines());assert nm+ne==x['rows'];minors+=nm;exceptions+=ne
 rr=J('certificates/geometry/rational_receipt.json');assert rr['complete_exception_list'] and rr['exception_count']==8
assert profiles==53 and configs==5514 and newprofiles==51 and newconfigs==5503 and minors==11012 and exceptions==16
assert J('certificates/negative_controls.json')['all_rejected']
summary={'status':'AUTHOR_PAPER_PLUS_EXACT_CERTIFICATES','accepted_for_round':True,'historical_mathematics_reaccepted':False,
 'new_removed_states':F['removed'],'net_current_necessary_state_difference':9,'frontier_before':26,'frontier_after':17,'h_min':137,'V_max':31,'COVER8_unchanged':True,'R7_unchanged':True,
 'new_geometric_domains':31,'new_profiles':newprofiles,'new_root_configurations':newconfigs,'including_Fstar_recovery_profiles':profiles,'including_Fstar_recovery_configurations':configs,'double_prime_full_augmented_minors':minors,'rational_exception_configurations':8,'rational_exception_prime_occurrences':exceptions,'geometry_receiver_runs':geometry_runs,
 'own_state_quotient_systems':13,'module_generator_and_receiver_jobs':25,'tagged_low_preimages':L['total_tagged_low_preimages'],'ledger_cells_compared':L['all_compared_cells'],'negative_controls':4,
 'Lean':False,'external_independent_review':False,'actual_G_recovered':False,'actual_NC_point_elimination_claimed':False,'repository_modified':False}
(R/'certificates/ROUND_ACCEPTANCE.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
