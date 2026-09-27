#!/usr/bin/env python3
import argparse,copy,json,subprocess,sys,tempfile,shutil
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def main(certs):
    tests=[('false_net','claims.json',lambda x:x.update(historical_net_deleted=1)),
      ('fake_full_model','claims.json',lambda x:x.update(full_model_found=True)),
      ('fake_Z_square','integer_menu_family.json',lambda x:x['members'][0].update(ordinary_Z_square=True)),
      ('fake_j','integer_menu_family.json',lambda x:x['members'][0].update(j_restored=True)),
      ('changed_period','integer_menu_family.json',lambda x:x['members'][0].update(period=x['members'][0]['period']+1)),
      ('changed_nonresidue','cross_prime_11.json',lambda x:x['table'][0].update(z2_mod11=(x['table'][0]['z2_mod11']+1)%11)),
      ('false_search_hit','bounded_global_search.json',lambda x:x['counts'].update(z_square=1)),
      ('changed_quartic','quartic_identity.json',lambda x:x['discriminant_core_coefficients'][0].__setitem__(2,x['discriminant_core_coefficients'][0][2]+1))]
    result=[]
    with tempfile.TemporaryDirectory(prefix='b699-r7-mutations-') as td:
      d=Path(td)/'certs'
      for name,file,change in tests:
        if d.exists():shutil.rmtree(d)
        shutil.copytree(certs,d);p=d/file;x=json.loads(p.read_text());change(x);p.write_text(json.dumps(x))
        run=subprocess.run([sys.executable,str(ROOT/'scripts'/'accept.py'),'--certs',str(d),'--skip-scan'],capture_output=True,text=True)
        if run.returncode==0:raise RuntimeError('receiver accepted mutation '+name)
        result.append(dict(name=name,rejected=True))
    print(json.dumps(dict(status='PASS',mutations=result),indent=2,sort_keys=True))
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--certs',type=Path,default=ROOT/'certificates');a=p.parse_args();main(a.certs)
