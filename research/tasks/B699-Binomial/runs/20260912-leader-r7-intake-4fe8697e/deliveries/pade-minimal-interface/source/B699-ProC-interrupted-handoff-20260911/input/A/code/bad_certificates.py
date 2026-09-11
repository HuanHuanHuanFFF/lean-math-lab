"""Actually execute reject paths against isolated, deliberately invalid certificates.
No original certificate is modified; unexpected exceptions are not counted as rejections.
"""
from pathlib import Path
from copy import deepcopy
import tempfile,os,json,sys,contextlib,io,time
R=Path(__file__).resolve().parents[1]
import verify_content as vc
import verify_cuts as cuts
import check_cuts_grid as grid
import build_i10_height as graph
import check_height_grid as height
import run_blocks as blocks
import check_finite as finite
from reverse_crt import check_symbolic_stage

def main():
 st=time.monotonic();records=[]
 def reject(name,fn):
  try:
   with contextlib.redirect_stdout(io.StringIO()):fn()
  except (AssertionError,ValueError) as ex:records.append(dict(case=name,result='REJECTED',exception=type(ex).__name__,message=str(ex)[:180]));return
  raise RuntimeError('Bad certificate ACCEPTED: '+name)
 with tempfile.TemporaryDirectory(prefix='b699_bad_') as tmp:
  T=Path(tmp)
  for folder in ['input','evidence']:
   for src in (R/folder).rglob('*'):
    if not src.is_file():continue
    dst=T/src.relative_to(R);dst.parent.mkdir(parents=True,exist_ok=True);dst.symlink_to(src)
  for name in ['finite_check.json','content_check.json','cuts_check.json','height_grid_check.json']:
   p=T/'evidence'/name
   if p.exists():p.unlink()
  oldroots={mod:mod.R for mod in [vc,cuts,grid,height,finite]}
  for mod in oldroots:mod.R=T
  def shadow(rel,obj):
   dst=T/rel
   if dst.exists() or dst.is_symlink():dst.unlink()
   dst.write_text(json.dumps(obj))
  def restore(rel):
   dst=T/rel
   if dst.exists() or dst.is_symlink():dst.unlink()
   dst.symlink_to(R/rel)
  tail=json.loads((R/'evidence/content_tail.json').read_text());t=deepcopy(next(x for x in tail['rows'] if (x['e'],x['d'],x['f'])==(8,8,13)));rel='evidence/content_finite_8_8_13.json';base=json.loads((R/rel).read_text());ps,prefix=vc.primes_weights(tail['prime_cache_limit'])
  for name,edit in [
   ('finite_gap_at_start',lambda d:d['blocks'][0].__setitem__('a',d['blocks'][0]['a']+1)),
   ('finite_missing_final_block',lambda d:d['blocks'].pop()),
   ('finite_inflated_weight',lambda d:d['blocks'][0].__setitem__('weight',d['blocks'][0]['weight']+1)),
   ('unjustified_permutation_flag',lambda d:d.__setitem__('all_permutations',False)),
   ('changed_effective_start',lambda d:d.__setitem__('m0',d['m0']-1))]:
   d=deepcopy(base);edit(d);shadow(rel,d);reject(name,lambda:vc.verify_one(t,ps,prefix,tail['prime_cache_limit']));restore(rel)
  tbad=deepcopy(t);tbad['rows'][0]['rate']='99999';reject('false_infinite_rate',lambda:vc.verify_one(tbad,ps,prefix,tail['prime_cache_limit']))
  tbad=deepcopy(t);tbad['rows'][0]['error']='0';reject('missing_theta_error',lambda:vc.verify_one(tbad,ps,prefix,tail['prime_cache_limit']))
  inp=json.loads((R/'input/cuts.json').read_text());H=inp['height_Y_bits'];row=deepcopy(inp['cuts'][0]);row['L']='2';reject('changed_BFT_input',lambda:cuts.obligations(row,H,9))
  row=deepcopy(inp['cuts'][1]);row['m0']-=1;reject('cut_start_does_not_match_G',lambda:cuts.obligations(row,H,9))
  row=deepcopy(inp['cuts'][1]);row['wp']=9999;reject('unjustified_stronger_cut',lambda:cuts.obligations(row,H,9))
  def too_low():
   out=cuts.obligations(inp['cuts'][0],2,9);assert out['passed']
  reject('missing_common_Y_threshold',too_low)
  c=json.loads((R/'evidence/graph/distinct.json').read_text());bad=deepcopy(c);bad['nodes'][0]['children'].pop();reject('missing_graph_branch',lambda:graph.check_cover(bad))
  bad=deepcopy(c);leaf=next(x for x in bad['nodes'] if x.get('leaf'));leaf['value']+=1;reject('false_graph_leaf_value',lambda:graph.check_cover(bad))
  hrow=json.loads((R/'input/i10_target.json').read_text());hrow['cube_bridge']['cube_factor']=1;shadow('input/i10_target.json',hrow);reject('substituting_unit_cube',height.main);restore('input/i10_target.json')
  b=json.loads((R/'evidence/blocks/block_2_3.json').read_text())
  for name,edit in [
   ('block_wrong_constant',lambda z:z.__setitem__('cube_factor',1)),
   ('block_truncated_source_exponent',lambda z:z.__setitem__('max_exponent',z['max_exponent']-1)),
   ('block_missing_first',lambda z:z['blocks'].pop(0)),
   ('block_zero_inverse',lambda z:z['blocks'][0].__setitem__('inverse_hex','0x0')),
   ('block_false_residue_range',lambda z:z['blocks'][0].__setitem__('L',1000))]:
   bad=deepcopy(b);edit(bad);reject(name,lambda:blocks.python_check(bad))
  par=finite.parameters();stage=json.loads((R/'evidence/crt_stages.json').read_text())[0]
  bad=deepcopy(stage);bad['M']=str(int(bad['M'])-1);reject('CRT_insufficient_M',lambda:check_symbolic_stage(par,bad))
  bad=deepcopy(stage);bad['next_H']=str(int(bad['next_H'])-1);reject('CRT_false_maximum',lambda:check_symbolic_stage(par,bad))
  badp=deepcopy(par);badp['d']=-1;reject('CRT_negative_delta_misuse',lambda:check_symbolic_stage(badp,stage))
  cand=json.loads((R/'evidence/candidates.json').read_text());cand['candidate_intervals'].pop();shadow('evidence/candidates.json',cand);reject('omitted_candidate_interval',finite.main);restore('evidence/candidates.json')
  term=json.loads((R/'evidence/terminal_certificate.json').read_text())
  for name,edit in [
   ('composite_terminal_prime',lambda d:d['top_prime_rows'][0].__setitem__(1,9)),
   ('missing_terminal_exception',lambda d:d['top_prime_rows'].pop(0)),
   ('unresolved_row_not_closed',lambda d:d.__setitem__('unresolved_rows',[22]))]:
   bad=deepcopy(term);edit(bad);shadow('evidence/terminal_certificate.json',bad);reject(name,finite.main);restore('evidence/terminal_certificate.json')
  for mod,root in oldroots.items():mod.R=root
 out=dict(status='PASS_ALL_DELIBERATE_BAD_CERTIFICATES_REJECTED',cases=len(records),records=records,seconds=time.monotonic()-st)
 (R/'evidence/bad_certificates_check.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2),flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()
