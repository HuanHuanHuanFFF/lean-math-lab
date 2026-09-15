"""Real fail-closed mutation tests against the independent checker."""
import json,sys,tempfile,subprocess,shutil
from pathlib import Path
src=Path(sys.argv[1]);script=Path(__file__).with_name('check.py')
cases=[
 ('missing_bottom','rank3_bottom.json',lambda d:d['rows'].pop(0)),
 ('wrong_endpoint','rank3_bottom.json',lambda d:d.update(exclusive_stop=520)),
 ('wrong_j','rank3_bottom.json',lambda d:d['rows'][12].update(j=d['rows'][12]['j']+1)),
 ('wrong_residue','rank3_bottom.json',lambda d:d['rows'][20].update(remainder=d['rows'][20]['remainder']+1)),
 ('wrong_polynomial','algebra.json',lambda d:d['remainder'].__setitem__(3,d['remainder'][3]+1)),
 ('wrong_degree','compression.json',lambda d:d['evaluated'][0]['degrees'].__setitem__(0,d['evaluated'][0]['degrees'][0]+1)),
 ('negative_coefficient_exponent','compression.json',lambda d:d['symbolic'][0]['coefficient_exponents'].__setitem__(0,-1)),
 ('reversed_pigeonhole_pair','compression.json',lambda d:d['symbolic'][1]['pair'].reverse()),
 ('wrong_classification_count','classification.json',lambda d:d.update(polynomial_cases=d['polynomial_cases']+1)),
]
res=[]
for name,file,mutate in cases:
 with tempfile.TemporaryDirectory(prefix='b699-bad-') as tmp:
  p=Path(tmp)
  for f in src.glob('*.json'):shutil.copy2(f,p/f.name)
  obj=json.loads((p/file).read_text());mutate(obj);(p/file).write_text(json.dumps(obj))
  a=subprocess.run([sys.executable,'-S','-B',str(script),str(p)],capture_output=True,text=True)
  assert a.returncode!=0,(name,'accepted bad evidence')
  res.append(dict(name=name,returncode=a.returncode,error_last_line=a.stderr.strip().splitlines()[-1]))
out=dict(status='PASS',rejected=len(res),tests=res)
(src/'bad_checks.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'status':'PASS','rejected':len(res)}))
