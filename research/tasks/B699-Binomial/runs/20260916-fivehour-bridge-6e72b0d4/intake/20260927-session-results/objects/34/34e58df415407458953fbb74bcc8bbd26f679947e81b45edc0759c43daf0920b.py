"""Deliberately corrupt mathematical certificates, bypassing hash screening."""
import sys,json,tempfile,shutil,subprocess,time
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
def cases():
 return [
 ('false_source_d1','01_source_cycles.json',lambda x:x['unique_d1'].__setitem__('743',[0,7])),
 ('free_B','02_true743_quotient.json',lambda x:x['rows'][0].__setitem__('B',(x['rows'][0]['B']+1)%743)),
 ('drop_zero_square','02_true743_quotient.json',lambda x:next(r for r in x['rows'] if r['S']==0).__setitem__('roots',[])),
 ('reset_original_n','03_A1486_closure.json',lambda x:x['roots'][0].__setitem__('n',20)),
 ('wrong_full3','05_source769_source17.json',lambda x:x['closed_A1836'].__setitem__('FULL3_v3q',2)),
 ('incorrect_net_count','06_projection_delta.json',lambda x:x.__setitem__('net_deleted',x['net_deleted']+1)),
 ('wrong_fiber_factor','06_projection_delta.json',lambda x:x['rows'][0].__setitem__(6,52)),
 ('different_H_in_boundary','07_finite_boundary.json',lambda x:x['H_residues'].__setitem__('11',6))]
def main():
 results=[]
 for name,fn,edit in cases():
  with tempfile.TemporaryDirectory(prefix='a1486-corrupt-') as t:
   folder=Path(t);shutil.copytree(ROOT/'certificates',folder/'certs');p=folder/'certs'/fn;x=json.loads(p.read_text());edit(x);p.write_text(json.dumps(x))
   r=subprocess.run([sys.executable,str(ROOT/'evidence/verify.py'),'--cert-dir',str(folder/'certs')],capture_output=True,text=True)
   if r.returncode==0:raise RuntimeError('Corruption accepted: '+name)
   results.append(dict(case=name,certificate=fn,rejected=True,returncode=r.returncode,last_error=r.stderr.strip().splitlines()[-1]))
 print(json.dumps(dict(mathematical_corruptions_tested=len(results),all_rejected=True,hash_screening_bypassed=True,results=results),indent=2))
if __name__=='__main__':main()
