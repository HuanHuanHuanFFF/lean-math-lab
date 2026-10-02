"""Deterministic corruption tests against the separate receiver. No package writes."""
import contextlib,importlib.util,io,json,sys,tempfile
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('receiver',ROOT/'evidence/verify.py');v=importlib.util.module_from_spec(spec);spec.loader.exec_module(v)

def run():
 tests=[
 ('01_true25_A4090.json','change actual B residue',lambda x:x['rows'][2].__setitem__('B_mod25',0)),
 ('01_true25_A4090.json','drop allowed zero square roots',lambda x:x['rows'][2].__setitem__('square_roots_mod25',[])),
 ('02_universal_TRUE5.json','change the binomial unit',lambda x:x.__setitem__('gamma24_mod25',[1,5])),
 ('03_local_same_phase.json','delete an original nonunit source root',lambda x:x['rows']['11'].__setitem__(9,[1,4,[]])),
 ('04_projection_delta.json','inflate net projection difference',lambda x:x['ledgers'][1].__setitem__('net_deleted',x['ledgers'][1]['net_deleted']+1)),
 ('05_fixed_branches.json','reset original c in A5940',lambda x:x['branches'][2]['records'][0].__setitem__('c',1)),
 ('06_failure_family.json','make the lost n power look compatible',lambda x:x.__setitem__('n',x['power84_modM'])),
 ('08_source_adoption.json','replace frozen input digest',lambda x:x.__setitem__('parent_sha256','0'*64))]
 out=[]
 for fn,title,mut in tests:
  obj=json.loads((ROOT/'certificates'/fn).read_bytes());mut(obj)
  with tempfile.TemporaryDirectory(prefix='A4090_negative_') as td:
   p=Path(td);(p/fn).write_bytes(v.serial(obj));buf=io.StringIO();error=None
   try:
    with contextlib.redirect_stdout(buf):v.run(p,fn)
   except (ValueError,KeyError,IndexError,AssertionError) as e:error=str(e)
   if error is None:raise RuntimeError('Corruption not rejected: '+title)
   out.append(dict(certificate=fn,mutation=title,rejected=True,reason=error))
 return dict(tests=out,rejected=len(out),accepted_corruptions=0,receiver_imports_generator=False)
if __name__=='__main__':print(json.dumps(run(),ensure_ascii=False,sort_keys=True,indent=2))
