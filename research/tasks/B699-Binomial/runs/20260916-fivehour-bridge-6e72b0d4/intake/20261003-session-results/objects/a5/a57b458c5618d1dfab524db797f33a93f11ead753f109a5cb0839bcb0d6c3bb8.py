from pathlib import Path
import subprocess,time,json
w=Path('/mnt/data/r5_work');basis=w/'gb_colon_input.txt.basis';records=[]
for step,(axis,shift) in enumerate([(0,0)]*5+[(1,0)]*3+[(2,0)]*3+[(1,1)]*4+[(2,1)]*4,1):
 stamp=f'cycle{step:02d}_{axis}_{shift}';st=time.monotonic()
 lines=basis.read_text().splitlines();n=int(lines[0].split()[1]);pos=1;mx=0
 for k in range(n):
  count=int(lines[pos]);pos+=1;mx=max(mx,sum(map(int,lines[pos].split()[:3])));pos+=count
 D=min(32,mx+2)
 log=w/(stamp+'_colon.log')
 with log.open('w') as f:
  p=subprocess.run([str(w/'colon_probe'),str(basis),'32003',str(D),'90',str(axis),str(shift)],stdout=f,stderr=subprocess.STDOUT,timeout=100)
 cf=Path(str(basis)+f'.colon{axis}_{shift}')
 c=cf.read_text().splitlines();m=int(c[0]);rec={'step':step,'axis':axis,'shift':shift,'D':D,'kernel_relations':m}
 if m:
  out=w/(stamp+'.txt');out.write_text(str(n+m)+'\n'+'\n'.join(lines[1:]+c[1:])+'\n')
  with (w/(stamp+'_gb.log')).open('w') as f:
   p=subprocess.run([str(w/'gb_sat_v2'),str(out),'32003','120'],stdout=f,stderr=subprocess.STDOUT,timeout=135)
  basis=Path(str(out)+'.basis');rec['basis']=str(basis);rec['basis_count']=int(basis.read_text().splitlines()[0].split()[1])
  if 'UNIT' in (w/(stamp+'_gb.log')).read_text():rec['unit']=True;records.append(rec);break
 rec['seconds']=time.monotonic()-st;records.append(rec);print(rec,flush=True)
 (w/'colon_driver_progress.json').write_text(json.dumps(records,indent=2))
(w/'colon_driver_progress.json').write_text(json.dumps(records,indent=2))
