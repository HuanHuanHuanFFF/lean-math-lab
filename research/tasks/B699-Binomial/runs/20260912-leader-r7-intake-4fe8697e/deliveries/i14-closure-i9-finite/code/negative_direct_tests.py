"""Corrupt private copies and require the current preferred receivers to reject."""
from pathlib import Path
import json,tempfile,shutil,time,copy
import check_local_crt as crt
import direct_terminal as term
import check_i9_probe as blocks9
R=Path(__file__).resolve().parents[1]
def main():
 start=time.monotonic();passed=[]
 def trial(name,mutate,receiver,module):
  with tempfile.TemporaryDirectory(prefix='b699-direct-negative-') as td:
   temp=Path(td)
   for rel in ['evidence/blocks_check.json','evidence/i9/block_probe.json','evidence/i9/block_probe_check.json',
               'evidence/direct/crt_certificate.json','evidence/direct/candidates.tsv','evidence/direct/terminal_certificate.json',
               'evidence/i9/direct/crt_certificate.json','evidence/i9/direct/candidates.tsv','evidence/i9/direct/terminal_certificate.json']:
    target=temp/rel;target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(R/rel,target)
   mutate(temp);old=module.R;module.R=temp
   try:
    try:receiver()
    except (AssertionError,ValueError,KeyError):passed.append(name)
    else:raise RuntimeError('Corrupted certificate was accepted: '+name)
   finally:module.R=old
 def edit(root,rel,fun):
  p=root/rel;d=json.loads(p.read_text());fun(d);p.write_text(json.dumps(d))
 path14='evidence/direct/crt_certificate.json';term14='evidence/direct/terminal_certificate.json';term9='evidence/i9/direct/terminal_certificate.json'
 trial('local_CRT_wrong_cubic_constant',lambda t:edit(t,path14,lambda d:d['specification']['profiles']['cubic'].__setitem__(2,215)),lambda:crt.receive(14),crt)
 trial('local_CRT_missing_prime_pair_stream',lambda t:edit(t,path14,lambda d:d['streams'].pop()),lambda:crt.receive(14),crt)
 def remove_interval(t):
  p=t/'evidence/direct/candidates.tsv';a=p.read_text().splitlines();del a[len(a)//2];p.write_text('\n'.join(a)+'\n')
 trial('local_CRT_missing_candidate_interval',remove_interval,lambda:crt.receive(14),crt)
 trial('terminal_missing_i14_exception',lambda t:edit(t,term14,lambda d:d['exceptions'].pop(0)),lambda:term.receive(14),term)
 trial('terminal_wrong_i14_full_power_V',lambda t:edit(t,term14,lambda d:d['exceptions'][0].__setitem__('V',str(int(d['exceptions'][0]['V'])*17))),lambda:term.receive(14),term)
 trial('terminal_composite_top_prime',lambda t:edit(t,term14,lambda d:d['exceptions'][0].__setitem__('p',25)),lambda:term.receive(14),term)
 def firstfinite(d):return next(e for e in d['exceptions'] if e['consumer']=='finite_j')
 trial('finite_j_gap_in_coverage',lambda t:edit(t,term9,lambda d:firstfinite(d)['j_runs'][1].__setitem__(0,84)),lambda:term.receive(9),term)
 trial('finite_j_false_dividing_prime',lambda t:edit(t,term9,lambda d:firstfinite(d)['j_runs'][0].__setitem__(2,17)),lambda:term.receive(9),term)
 trial('finite_j_unclosed_final_endpoint',lambda t:edit(t,term9,lambda d:firstfinite(d)['j_runs'][-1].__setitem__(1,124)),lambda:term.receive(9),term)
 trial('i9_forged_unbounded_or_larger_input_height',lambda t:edit(t,'evidence/i9/block_probe.json',lambda d:d.__setitem__('input_height_bits',5000)),blocks9.main,blocks9)
 out={'status':'PASS_CURRENT_ROUTE_ACTUAL_CORRUPTION_REJECTIONS','count':len(passed),'rejected_mutations':passed,'seconds':round(time.monotonic()-start,3)}
 (R/'evidence/negative_direct_tests.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out),flush=True)
if __name__=='__main__':main()
