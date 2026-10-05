"""Mutation tests: each deliberate mathematical corruption must be rejected."""
from pathlib import Path
import copy,json,subprocess,sys,tempfile,os
sys.dont_write_bytecode=True
R=Path(__file__).resolve().parents[1]
def main():
 tests=[
 ('actual_B_corrupted','01_true47_A10152.json',lambda x:x['rows'][0].__setitem__('B_mod47',18)),
 ('zero_square_row_lost','01_true47_A10152.json',lambda x:x['zero_square_rows'].pop()),
 ('nonunit_source_replaced','02_complete_Q13.json',lambda x:x['nonunit_y_row'].__setitem__('y_mod13',1)),
 ('positive_power_cycle_forged','02_complete_Q13.json',lambda x:x['Q13_positive_power_cycle_mod336'].__setitem__(2,73)),
 ('high3_unit_sign_wrong','03_normalized3.json',lambda x:x['diagnostics_only'][0].__setitem__(5,1)),
 ('same_c_phase_changed','03_normalized3.json',lambda x:x['A10152_c3'].__setitem__('required_q_mod9',3)),
 ('one_original_root_hidden','04_secondary_FN17.json',lambda x:x['rows'][1]['core_roots'].pop()),
 ('projected_net_difference_corrupted','05_projection_delta.json',lambda x:x['ledgers'][0].__setitem__('new_count',x['ledgers'][0]['new_count']+1)),
 ('weak_family_c_reset','06_boundary_family.json',lambda x:x.__setitem__('c',1)),
 ('next_c_branch_q_reset','07_next_entry.json',lambda x:x['phase_split'][1].__setitem__('q_mod180',30)),
 ]
 out=[]
 with tempfile.TemporaryDirectory(prefix='b699-r3-negative-') as t:
  target=Path(t)
  base={p.name:p.read_bytes() for p in (R/'certificates').glob('*.json')}
  for name,filename,mutation in tests:
   for n,b in base.items():(target/n).write_bytes(b)
   obj=json.loads(base[filename]);mutation(obj);(target/filename).write_text(json.dumps(obj))
   run=subprocess.run([sys.executable,str(R/'evidence/verify.py'),'--cert-dir',str(target)],capture_output=True,text=True,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
   if run.returncode==0:raise RuntimeError('Receiver incorrectly accepted mutation: '+name)
   out.append({'test':name,'return_code':run.returncode,'rejected':True,'last_error_line':run.stderr.strip().splitlines()[-1]})
 print(json.dumps({'tests':out,'all_rejected':True,'count':len(out)},ensure_ascii=False,indent=2))
if __name__=='__main__':main()
