from pathlib import Path
import json
import strong_ledger as L
from ledger_probe import table
from states import states
out={}
for name,b5,bc,cc,fc in [('baseline',5,4,16,25),('no_B22',5,4,16,25),('B5_min6',6,4,16,25),('B5_min7',7,4,16,25),('all_double_class_closed',153,4,16,25),('no_B22_free26',5,4,16,26),('B5_min6_free26',6,4,16,26)]:
 L.NEW=table([('B3',bc,3),('B5',b5,2),('C',cc,1),('F',fc,0)])
 types=[t for t in L.TYPES if not(name.startswith('no_B22') and t[0].startswith('B'))]
 vals=[];mx=0
 for st in states():
  if st['E'] or not L.trace0(st):continue
  (n,w),_=L.one(st,types)
  if n>mx:mx=n;vals=[]
  if n==mx:vals.append(dict(**st,witness=w))
 out[name]=dict(max=mx,min_h=min(x['h'] for x in vals),states=len(vals),witness=vals[0])
 print(name,out[name]['max'],out[name]['min_h'],len(vals))
Path(__file__).with_name('next_fee_probe.json').write_text(json.dumps(out,indent=2))
