#!/usr/bin/env python3
"""Optional finite comparison with ONE prior consumer, not its full theorem union.
Executes only the reviewed, hash-bound prior code/consumer.py as an imported function.
It does NOT run either historical replay.py. Not part of the new main replay.
"""
from pathlib import Path
import zipfile,types,json,math,time
from consumer import assess,small_lt
ROOT=Path(__file__).resolve().parents[1]
zpath=ROOT/'sources/B699-ProD-center-residual-cubic-20260916.zip'
member='B699-ProD-center-residual-cubic-20260916/code/consumer.py'
with zipfile.ZipFile(zpath) as z:txt=z.read(member).decode()
old=types.ModuleType('reviewed_prior_consumer');old.__name__='reviewed_prior_consumer'
exec(compile(txt,member,'exec'),old.__dict__)
start=time.monotonic();counts={'new_yes_old_no':0,'old_yes_new_no':0};ex=[]
for n in range(12,401):
 for i in (5,6,7,8):
  for j in range(i+1,n//2+1):
   a=assess(n,i,j);b=old.assess(n,i,j)
   if a['new_reasons'] and b['status']=='not_covered':
    counts['new_yes_old_no']+=1
    if len(ex)<5:
     G=math.gcd(math.comb(n,i),math.comb(n,j));ex.append({'n':n,'i':i,'j':j,'new_reasons':a['new_reasons'],'actual_qualified_gcd':G//small_lt(G,i)})
   if b['status']=='proved_common' and a['status']=='not_covered':counts['old_yes_new_no']+=1
out={'comparison':'Only preceding center-residual-cubic/code/consumer.py, NOT complete historical union','n_max':400,'counts':counts,'examples':ex,'seconds':time.monotonic()-start}
(ROOT/'evidence/local-consumer-comparison.json').write_text(json.dumps(out,ensure_ascii=False,sort_keys=True,indent=2)+'\n');print(json.dumps(out))
