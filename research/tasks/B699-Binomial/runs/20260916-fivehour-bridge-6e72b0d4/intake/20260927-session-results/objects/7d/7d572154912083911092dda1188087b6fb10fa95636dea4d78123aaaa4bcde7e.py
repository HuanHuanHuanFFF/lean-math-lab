#!/usr/bin/env python3
"""Reject damaged arithmetic and scope certificates in fresh temporary copies."""
import copy,json,subprocess,sys,tempfile
from pathlib import Path
BASE=Path(__file__).resolve().parents[1]

def main():
 mutations=[
 ('source_slot','source_separation.json',lambda d:d['slots'][0].__setitem__('value',0)),
 ('inflated_complete_exponent','fifth_consumers.json',lambda d:d['inputs'][1].__setitem__('f',d['inputs'][1]['f']+1)),
 ('false_global_candidate','fifth_consumers.json',lambda d:d['inputs'][1].__setitem__('global_current_candidate',True)),
 ('lost_fifth_source_window','fifth_consumers.json',lambda d:d['inputs'][1].__setitem__('all_q5_near',False)),
 ('invented_true_gcd','infinite_regression.json',lambda d:d['examples'][0].__setitem__('g',10)),
 ('wrong_primitive_W','joint_local_lifts.json',lambda d:d['packets'][-1].__setitem__('W',d['packets'][-1]['W']*d['packets'][-1]['p'])),
 ('wrong_surviving_digit','joint_local_lifts.json',lambda d:d['packets'][0].__setitem__('b_prefix',d['packets'][0]['b_prefix']+1)),
 ('local_as_global_unitary','joint_local_lifts.json',lambda d:d['packets'][0].__setitem__('global_unitary_factorization_verified',True)),
 ]
 result=[]
 for name,filename,mutate in mutations:
  with tempfile.TemporaryDirectory(prefix='b699-r6-mutation-') as tmp:
   tmp=Path(tmp)
   for p in (BASE/'certificates').glob('*.json'):(tmp/p.name).write_bytes(p.read_bytes())
   p=tmp/filename;data=json.loads(p.read_text());mutate(data);p.write_text(json.dumps(data))
   r=subprocess.run([sys.executable,str(BASE/'scripts/accept.py'),'--certificates',str(tmp)],capture_output=True,text=True)
   if r.returncode==0:raise AssertionError('damaged certificate accepted: '+name)
   assert 'AssertionError' in r.stderr,(name,r.stderr)
   result.append({'mutation':name,'rejected':True,'returncode':r.returncode})
 print(json.dumps({'status':'PASS','rejected':len(result),'tests':result},indent=2),flush=True)
if __name__=='__main__':main()
