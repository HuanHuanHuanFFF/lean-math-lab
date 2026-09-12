from pathlib import Path
import json,hashlib,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc';OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-c311-actual-edge-5e2d13bb'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def ent(p):return {'path':p.relative_to(ROOT).as_posix(),'sha256':sha(p),'bytes':p.stat().st_size}
def run():
 checks=json.loads((OUT/'independent-check.json').read_text());mapped=[]
 for x in checks['candidate_sources']:
  p=OUT/x['candidate'];assert sha(p)==x['sha256'];mapped.append(x)
 # Established utility source closure, plus accepted actualG75 closure.
 accepted=[];accepted_sources={}
 for n in ['i11-seven-two-actual-component-edge','i13-g75-full-audit']:
  rp=RUN/f'verification/huan-prerequisites/{n}.json';r=json.loads(rp.read_text());ep=ROOT/r['evidence'];e=json.loads(ep.read_text())
  assert e['success'] and e['exit_code']==0
  for x in e['source_closure']:
   p=ROOT/x['source'];assert sha(p)==x['source_sha256_before']==x['source_sha256_after'];accepted_sources[x['source']]=x['source_sha256_after']
  rec=next(x for x in e['compile_records']+e['reuse_records'] if x['source']==r['root'])
  assert sha(ROOT/rec['output'])==r['output_sha256']==rec['output_sha256']
  assert sha(ROOT/r['root'])==r['source_sha256']
  assert all(set(x['axioms'])<={'propext','Classical.choice','Quot.sound'} for x in r['public_axiom_audit'])
  accepted.append({'name':n,'receipt':ent(rp),'evidence':ent(ep),'root':ent(ROOT/r['root']),'root_object_current_sha_matched':True,'audited_roots':len(r['public_axiom_audit']),
    'source_commit':e['source_commit'],'toolchain':e['toolchain']})
 used=[]
 for rel in ['DiscreteSelector/LeastExponent.lean','DiscreteSelector/ShortPowerBounds.lean','Pade/Rows.lean','HomRemainder/Remainder.lean','I11Edge/Capacity.lean','I11Scaled/RatBounds.lean','Growth/Normalization.lean']:
  p=RUN/'lean'/rel;key=p.relative_to(ROOT).as_posix();assert key in accepted_sources and sha(p)==accepted_sources[key]
  used.append(ent(p))
 qe=RUN/'experiments/huan-i13-c311-actual-growth-5e2d13bb';qm=json.loads((qe/'SOURCE_MAP.json').read_text());qfiles=[]
 for x in qm['candidate_sources']:
  p=ROOT/x['future_target'];assert sha(p)==x['sha256'];qfiles.append(ent(p))
 pending={'QE_actual_sources':qfiles,'QE_source_package_freeze':ent(qe/'FREEZE.json'),
  'tail_source':ent(RUN/'lean/I13G75Tail/Bounds.lean'),'tail_audit_source':ent(RUN/'lean/I13G75Tail/Audit.lean'),
  'status':'pending Lean at dispatch; this task only checked bytes, not reclassified acceptance'}
 templates=[RUN/'lean/I11SevenTwoEdge/SourceRows.lean',RUN/'lean/I11SevenTwoEdge/ActualRows.lean',RUN/'lean/I11SevenTwoEdge/SelectedEdge.lean',RUN/'lean/I11SevenTwoNumeric/Selector.lean',RUN/'lean/I11Scaled/ScaledGap.lean']
 if (OUT/'FREEZE.json').exists():
  f=json.loads((OUT/'FREEZE.json').read_text())
  for n,v in f['files'].items():assert sha(OUT/n)==v['sha256']
 result={'status':'SOURCE_COMPLETE_FIXED_ACTUAL_EDGE_CANDIDATE_NOT_LEAN','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'owner':'/root/i13_high_height',
  'candidate_sources':mapped,'serial_order':checks['serial_order'],'final_root':'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/I13C311Edge/Audit.lean',
  'final_audit_roots':checks['final_audit_roots'],'final_type':checks['final_type'],'final_external_selector_growth_error_inputs':0,
  'accepted_input_receipts':accepted,'accepted_utility_sources':used,'pending_source_inputs':pending,'template_sources':[ent(p) for p in templates],
  'numeric_plan':ent(OUT/'numeric-plan.json'),'independent_check':ent(OUT/'independent-check.json'),
  'largest_expanded_primitive_power_bits':51937,'only_expanded_primitive_integer_bases':'3^32768,11^4096,71^4096,matching powersof2',
  'symbolic_large_powers':'Z^4096 basis factors out2^(76*4096); fullcapacity/lookahead powers remain symbolic viaShortPowerBounds; no crossed-billion-exponent decide',
  'new_Lean_invocations':0,'main_run_lean_written':False,'old_frozen_packages_unchanged':checks['old_frozen_packages'],'original_i13_acceptance_added':False,
  'acceptance_boundary':'source-complete candidate; allnew14modules,43-root audit and pendingQE/tail input acceptance belong toparent serial verifier; no new actualedge accepted by this task'}
 if not (OUT/'FREEZE.json').exists():(OUT/'SOURCE_MAP.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':result['status'],'candidate_modules':len(mapped),'final_audit_roots':result['final_audit_roots'],'accepted_utility_sources':len(used),'QE_mapped_sources_matched':len(qfiles),'largest_expanded_primitive_bits':51937,'Lean_invocations':0},ensure_ascii=False,indent=2))
if __name__=='__main__':run()
