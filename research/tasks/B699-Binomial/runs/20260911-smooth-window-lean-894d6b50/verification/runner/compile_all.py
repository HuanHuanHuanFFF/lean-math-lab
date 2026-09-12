#!/usr/bin/env python3
"""Serial clean-source compilation plus a separate imported transitive audit for every module."""
import hashlib,json,os,re,subprocess,sys
from pathlib import Path
run=Path(__file__).resolve().parents[2]
source=run/'lean';modules={p.stem:p for p in source.glob('*.lean')}
seen=set();order=[]
def visit(name):
 if name in seen:return
 seen.add(name)
 for dep in re.findall(r'^import .*\.lean\.([A-Za-z_0-9]+)$',modules[name].read_text(),re.M):
  if dep in modules:visit(dep)
 order.append(name)
for name in sorted(modules):visit(name)
record={'source_commit':subprocess.run(['git','rev-parse','HEAD'],capture_output=True,text=True).stdout.strip(),
        'fixed_main':'eaa8d5760117b0b1133424548a162d28e23cc361','order':order,
        'pins':{p:hashlib.sha256(Path(p).read_bytes()).hexdigest() for p in ['lean-toolchain','lake-manifest.json']},'modules':[]}
out=run/'verification/current';out.mkdir(parents=True,exist_ok=True)
(out/'complete.exit').write_text('1\n')
for name in order:
 proc=subprocess.run([sys.executable,str(run/'verification/runner/local_compile.py'),name])
 record['modules'].append({'name':name,'exit':proc.returncode})
 (out/'all-modules.json').write_text(json.dumps(record,indent=2)+'\n')
 if proc.returncode:sys.exit(proc.returncode)
(out/'complete.exit').write_text('0\n')
print(json.dumps({'accepted_modules':len(order),'complete_exit':0}))
