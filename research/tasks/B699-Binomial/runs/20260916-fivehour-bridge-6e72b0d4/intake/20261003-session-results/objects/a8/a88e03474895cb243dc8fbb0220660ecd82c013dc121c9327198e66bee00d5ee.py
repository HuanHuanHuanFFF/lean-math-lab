from pathlib import Path
import json,subprocess,time
R=Path(__file__).resolve().parents[1];O=R/'certificates/geometry';plans=json.loads((O/'profiles_plan.json').read_text());done=[]
for z in plans:
 i=z['index'];base=O/f'g{i:02d}'
 while True:
  p=json.loads((O/'profiles.json').read_text())
  if p[i].get('set_equal'):break
  time.sleep(2)
 rec={'index':i,'q':z['q'],'runs':[]}
 for prime,ex in [(32749,'six_jets'),(32719,'six_jets_p32719')]:
  print('START jets',i,prime,flush=True);st=time.monotonic()
  cmd=[str(R/'work'/ex),str(z['q']),str(base)+'.txt',str(base)+f'.p{prime}.minors',str(base)+f'.p{prime}.exceptions']
  rr=subprocess.run(cmd,capture_output=True,text=True,check=True);print('DONE jets',i,prime,rr.stdout.strip(),'secs',time.monotonic()-st,flush=True)
  (R/f'logs/g{i:02d}_jets{prime}.txt').write_text(rr.stdout+rr.stderr)
  st=time.monotonic();cmd=[str(R/'work'/f'receive_geometry_p{prime}'),str(z['q']),str(prime),str(base)+'.txt',str(base)+f'.p{prime}.minors',str(base)+f'.p{prime}.exceptions']
  rr=subprocess.run(cmd,capture_output=True,text=True,check=True);print('DONE receive',i,prime,rr.stdout.strip(),'secs',time.monotonic()-st,flush=True)
  (R/f'logs/g{i:02d}_receive{prime}.txt').write_text(rr.stdout+rr.stderr)
  rec['runs'].append({'p':prime,'received':True,'exceptions':Path(str(base)+f'.p{prime}.exceptions').read_text().splitlines()})
 done.append(rec);(O/'JETS_RECEIPT.json').write_text(json.dumps(done,indent=2)+'\n')
