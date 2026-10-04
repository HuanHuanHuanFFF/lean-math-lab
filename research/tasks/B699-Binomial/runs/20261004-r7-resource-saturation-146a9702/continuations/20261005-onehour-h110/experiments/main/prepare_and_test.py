from pathlib import Path
import json,subprocess,time,hashlib
R=Path.cwd()/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';O=R/'continuations/20261005-fiftymin';C=R/'continuations/20261005-onehour-h110';B=C/'experiments/main';T=Path('D:/Temp/b699-r7-onehour-h110-20261005/ddf');T.mkdir(exist_ok=True)
def mul(a,b,p):
 c=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]=(c[i+j]+x*y)%p
 while c and not c[-1]:c.pop()
 return c
def certpoly(z,p):
 a=[z['unit']%p]
 for f in z['factors']:
  for _ in range(f['multiplicity']):a=mul(a,f['coeffs_high'][::-1],p)
 return a,sum(f['multiplicity'] for f in z['factors'])
cases={11:[],257:[]}
a=json.loads((O/'experiments/main/kernel109p11/projective-certificates.json').read_text());b=json.loads((O/'experiments/main/kernel109p11/joint-degree-certificates.json').read_text());cases[11]+=[certpoly(z['certificate'],11) for z in a['results'] if z['certificate']];cases[11]+=[certpoly(z,11) for v in b['results'] for z in v['full_degree_certificates']]
a=json.loads((O/'experiments/main/kernel108/projective-certificates.json').read_text());cases[257]+=[certpoly(z['certificate'],257) for z in a['results']]
for p in cases:
 cases[p].append(([3],0));linear=[1,1]
 for exponent in (1,2,5,p,p+1,2*p):
  a=[1]
  for _ in range(exponent):a=mul(a,linear,p)
  cases[p].append((a,exponent))
 nonsquare=next(a for a in range(2,p) if pow(a,(p-1)//2,p)==p-1)
 quad=[(-nonsquare)%p,0,1];a=[1]
 for _ in range(p):a=mul(a,quad,p)
 for _ in range(5):a=mul(a,linear,p)
 cases[p].append((a,p+5))
 lines=[str(p),str(len(cases[p]))]
 for i,(v,cnt) in enumerate(cases[p]):lines.append(' '.join(map(str,[i,len(v)-1,cnt,*v])))
 (T/f'controls-p{p}.txt').write_bytes(('\n'.join(lines)+'\n').encode())
exe=T/'ddf_scan.exe';build=subprocess.run(['D:/CLion/CLion 2025.1.1/bin/mingw/bin/g++.exe','-O3','-std=c++17',str(B/'ddf_scan.cpp'),'-o',str(exe)],capture_output=True,text=True,timeout=45);(B/'ddf-build.log').write_bytes((build.stdout+build.stderr).encode());assert build.returncode==0,build.stderr[-500:]
results=[]
for p in cases:
 t=time.time();r=subprocess.run([str(exe),'check'],input=(T/f'controls-p{p}.txt').read_text(),capture_output=True,text=True,timeout=90);(B/f'ddf-check-p{p}.log').write_bytes((r.stdout+r.stderr).encode());assert r.returncode==0,r.stderr;results.append({'prime':p,'cases':len(cases[p]),'seconds':time.time()-t});print(r.stdout.strip(),flush=True)
polys=[];manifest=[]
for k in range(6):
 f=B/f'kernel110p11/basis.{k}.poly.tsv';polys.append([tuple(map(int,l.split())) for l in f.read_text().splitlines()[1:]]);manifest.append({'path':str(f.relative_to(Path.cwd())).replace('\\','/'),'sha256':hashlib.sha256(f.read_bytes()).hexdigest()})
lines=['11 110 6 5']
for c in (0,1,2,9,10):
 lines.append(str(c));powers=[pow(c,i,11) for i in range(306)]
 for ts in polys:
  a=[0]*111
  for i,j,k in ts:a[j]=(a[j]+k*powers[i])%11
  lines.append(' '.join(map(str,a)))
values=B/'kernel110p11/evaluations.txt';values.write_bytes(('\n'.join(lines)+'\n').encode());(B/'ddf-control-results.json').write_bytes((json.dumps({'status':'author exact-counter comparison PASS; independent review separate','cases':results,'tests_per_case':'exact Omega and caps1..8','basis_sources':manifest,'evaluations_sha256':hashlib.sha256(values.read_bytes()).hexdigest()},indent=2)+'\n').encode())
pref=T/'probe1000';r=subprocess.run([str(exe),'scan',str(values),str(pref),'1000','0'],capture_output=True,text=True,timeout=90);(B/'probe1000.log').write_bytes((r.stdout+r.stderr).encode());assert r.returncode==0,r.stderr
for suf in ['.tsv','.residual.tsv','.json']:(B/('probe1000'+suf)).write_bytes(Path(str(pref)+suf).read_bytes())
print(r.stdout.strip(),flush=True)
