from pathlib import Path
import subprocess,json,time,sys
R=Path(__file__).resolve().parents[1];G=R/'certificates/geometry';wait='--wait' in sys.argv
while True:
 ps=json.loads((G/'profiles.json' if (G/'profiles.json').exists() else G/'profiles_progress.json').read_text())
 for x in ps:
  i=x['index'];q=x['q']
  for p,exe in [(32749,'six_jets'),(32719,'six_jets_32719')]:
   done=G/f'g{i:02}.p{p}.done.json'
   if done.exists(): continue
   cmd=[str(R/'code'/exe),str(q),str(G/f'g{i:02}.txt'),str(G/f'g{i:02}.p{p}.minors'),str(G/f'g{i:02}.p{p}.exceptions')]
   r=subprocess.run(cmd,check=True,capture_output=True,text=True)
   done.write_text(json.dumps({'profile':i,'q':q,'p':p,'stdout':r.stdout.strip()},indent=2)+'\n')
   print(i,p,r.stdout.strip(),flush=True)
 if not wait or (G/'profiles.json').exists():break
 time.sleep(2)
