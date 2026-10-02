from pathlib import Path
import subprocess,time,json
w=Path('/mnt/data/r5_work');basis=w/'gb_Ncolon.txt.basis';records=[]
seq=[('N',3,0)]*5+[('K',3,0)]*4+[('r',0,0)]*3+[('u',1,0)]*4+[('y',2,0)]*4+[('um',1,1)]*2+[('ym',2,1)]*3
for step,(name,axis,shift) in enumerate(seq,1):
 stamp=f'pc{step:02d}_{name}';st=time.monotonic();lines=basis.read_text().splitlines();n=int(lines[0].split()[1]);pos=1;mx=0
 for k in range(n):
  cnt=int(lines[pos]);pos+=1;mx=max(mx,sum(map(int,lines[pos].split()[:3])));pos+=cnt
 gate=w/f'gate_{name}.txt';gd=1
 if axis==3:gd=max(sum(map(int,line.split()[:3]))for line in gate.read_text().splitlines()[1:])
 D=min(32,max(10,mx-gd+3))
 cmd=[str(w/'colon_poly'),str(basis),'32003',str(D),'100',str(axis),str(shift)]+([str(gate)]if axis==3 else [])
 with (w/(stamp+'_colon.log')).open('w') as f:subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,timeout=115)
 cf=Path(str(basis)+f'.colon{axis}_{shift}');c=cf.read_text().splitlines();m=int(c[0]);rec={'step':step,'gate':name,'D':D,'kernel_relations':m}
 if m:
  out=w/(stamp+'.txt');out.write_text(str(n+m)+'\n'+'\n'.join(lines[1:]+c[1:])+'\n')
  with (w/(stamp+'_gb.log')).open('w')as f:subprocess.run([str(w/'gb_sat_v2'),str(out),'32003','150'],stdout=f,stderr=subprocess.STDOUT,timeout=165)
  basis=Path(str(out)+'.basis');rec['basis']=str(basis);rec['basis_count']=int(basis.read_text().splitlines()[0].split()[1])
  if 'UNIT' in (w/(stamp+'_gb.log')).read_text():rec['unit']=True;records.append(rec);print(rec,flush=True);break
 rec['seconds']=time.monotonic()-st;records.append(rec);print(rec,flush=True);(w/'colon_poly_progress.json').write_text(json.dumps(records,indent=2))
(w/'colon_poly_progress.json').write_text(json.dumps(records,indent=2))
