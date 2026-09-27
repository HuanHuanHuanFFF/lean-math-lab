"""Deliberately corrupt mathematical fields and require the accepting checker to reject."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import json,tempfile,shutil
from pathlib import Path
from intake import ROOT,canon,need
from verify import verify

def field(d,path,value):
 for p in path[:-1]:d=d[p]
 d[path[-1]]=value

def main():
 cases=[
 ('source state','01_source_cycles.json',['states','41',1,0],15),
 ('actual quotient','02_true7_quotient.json',['rows',0,'B'],0),
 ('false zero acceptance','02_true7_quotient.json',['rows',5,'roots',0,'kept'],True),
 ('wrong nonresidue','03_A882_PERIOD41.json',['f_A_mod41'],25),
 ('missing uniform class','03_A882_PERIOD41.json',['forbidden_nonzero_A_mod41'],[3]),
 ('valuation leading unit','04_TRUE7_all_exponents.json',['unit_60816_over7_mod7'],2),
 ('original n root','05_original_FN41.json',['rows',0,'roots',0,'n'],0),
 ('inflated final count','06_projection_delta.json',['final_count'],33982738911439),
 ('CRT source mask','06_projection_delta.json',['mask_rows',0,'allowed_A41_masks_by_Aover7_mod7',0],0),
 ('uncovered weak progression','07_finite_boundary.json',['q_step'],2941),
 ('wrong next q','08_next_A1090.json',['necessary_q_classes'],[81]),
 ('source frontier corruption','09_source_adoption.json',['parent_count'],0),
 ]
 receipts=[]
 for name,f,path,value in cases:
  with tempfile.TemporaryDirectory(prefix='A882-negative-') as td:
   dest=Path(td)
   for pp in (ROOT/'certificates').glob('*.json'):shutil.copyfile(pp,dest/pp.name)
   pp=dest/f;d=json.loads(pp.read_text());field(d,path,value);pp.write_bytes(canon(d))
   try:verify(dest,quiet=True)
   except (ValueError,AssertionError) as exc:receipts.append(dict(test=name,rejected=True,reason=str(exc)))
   else:raise ValueError('UNREJECTED CORRUPTION: '+name)
 need(len(receipts)==len(cases),'negative tests complete')
 print(json.dumps(dict(status='PASS',deliberate_corruptions=len(cases),receipts=receipts,evidence_boundary='same-author robustness checks, not an external proof review'),ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()
