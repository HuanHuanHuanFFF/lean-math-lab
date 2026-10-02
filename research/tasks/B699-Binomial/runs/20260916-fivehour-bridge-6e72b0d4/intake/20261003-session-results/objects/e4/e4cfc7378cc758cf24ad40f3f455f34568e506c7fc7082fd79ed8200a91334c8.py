"""Final state2000 exact-q closure and full raw-M7 quintic proxy preimages."""
from common import *
from enumerate_types import enumerate_types
import subprocess,collections,hashlib
O=ROOT/'certificates/final_exact';O.mkdir(exist_ok=True)
idx=2000;z=STATES[idx];C=z['C'];h=z['h'];lic=json.loads((ROOT/'certificates/kernels/LICENCE_2000_S5.json').read_text());assert lic['state']==idx and lic['full_bounded_kernel_zero']
cm={(a['q'],*a['fee']):a['mask'] for a in json.loads((ROOT/'certificates/final_ledger/catalog113.json').read_text())};old=calc(C,RAW);ty=[]
for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
 fs=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
 if not fs:continue
 up=h-int(old[7][tuple(b-a for a,b in zip(c,C))])
 for q in range(min(fs),up+1):
  m=cm.get((q,*c))
  if m is None or m&~1:ty.append((q,*c))
ty.sort();rows,lower=enumerate_types(ty,C,h);assert not rows and lower==149
pre=O/'s2000_mask1_catalog113';pre.with_suffix('.types.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in ty));pre.with_suffix('.multisets.tsv').write_text('')
rr=subprocess.run([str(ROOT/'work/enumeration_receiver'),str(ROOT/'sources/global649.txt'),str(ROOT/'certificates/final_ledger/catalog113.tsv'),'4','1',str(pre)+'.types.tsv',str(pre)+'.multisets.tsv',str(pre)+'.receipt.json',str(idx)],capture_output=True,text=True,check=True);r=json.loads(rr.stdout);assert r['verified'] and r['complete_multisets']==0 and r['min_degree_lower_bound']==149
proxy=(5,0,0,0,1,2,2);pr=low(C,h,RAW,proxy,h)
# Two ways to enumerate raw-M7 preimages; all growth retained here, none declared empty
pr2=[]
for c in itertools.product(*[range(b+1) for b in C]):
 if any(c[i]%2 for i in [0,2,4]) or any(a<b for a,b in zip(c,proxy[1:])):continue
 up=h-int(old[7][tuple(b-a for a,b in zip(c,C))])
 for q in range(proxy[0],h+1):
  if q<=up:pr2.append((q,*c,h-up))
assert sorted(pr)==sorted(pr2)
(O/'quintic_preimages.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in pr))
rrp=subprocess.run([str(ROOT/'work/preimage_receiver'),str(ROOT/'sources/global649.txt'),str(O/'quintic_preimages.tsv')],capture_output=True,text=True,check=True);prrec=json.loads(rrp.stdout);assert prrec['verified'] and prrec['preimages']==len(pr)
(O/'quintic_preimages.receipt.json').write_text(rrp.stdout)
rec={'preimage_receiver':prrec,'state':2000,'h':h,'C':C,'licensed_families':['S5'],'catalogue_domains':113,'type_count':len(ty),'complete_multisets':0,'M8':lower,'receiver':r,'all_higher_unknown_types_kept':True,'quintic_exact_empty_domain':proxy,'quintic_proxy_raw_M7_preimages':pr,'preimage_count':len(pr),'fee_growth_occurs':any(a[1:7]!=proxy[1:] for a in pr),'all_preimages_globally_eliminated':False,'only_q5_original_fee_globally_eliminated':True}
(O/'SUMMARY.json').write_text(json.dumps(rec,indent=2)+'\n');print(rr.stdout.strip());print('quintic preimages',len(pr),'fee growth',rec['fee_growth_occurs'])
