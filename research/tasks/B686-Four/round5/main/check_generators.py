"""Rebuild generated contact certificates in an isolated temporary directory."""
from pathlib import Path
from tempfile import TemporaryDirectory
from datetime import datetime,timezone
import subprocess,shutil,hashlib,json,sys
BASE=Path(__file__).resolve().parent
commands=['contact_search.py','dimension_audit.py','contact_certificate.py','combination_certificate.py','four_position_probe.py','four_contact_certificate.py']
files=['ContactCertificates.lean','ContactCombination.lean','FourContact.lean','dimension-audit.json','contact_certificate.json','combination_certificate.json','four-position-probe.json','four-contact-certificate.json']
result=dict(utc=datetime.now(timezone.utc).isoformat(),commands=[],files={})
with TemporaryDirectory(prefix='b686-round5-repro-') as td:
 work=Path(td)
 for p in BASE.iterdir():
  if p.is_file() and p.suffix in ('.py','.json','.lean'):shutil.copy2(p,work/p.name)
 for name in commands:
  r=subprocess.run([sys.executable,str(work/name)],capture_output=True,text=True,timeout=30)
  result['commands'].append(dict(script=name,exit_code=r.returncode))
  assert r.returncode==0,(name,r.stderr)
 for name in files:
  expected=(BASE/name).read_bytes();actual=(work/name).read_bytes()
  assert expected==actual,name
  result['files'][name]=hashlib.sha256(actual).hexdigest()
 before=json.loads((BASE/'contact_search.json').read_text());after=json.loads((work/'contact_search.json').read_text())
 before.pop('utc');after.pop('utc');assert before==after
 result['contact_search_rows_match']=True
result['success']=True
(BASE/'generator-verification.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
