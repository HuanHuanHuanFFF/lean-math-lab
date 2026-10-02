from pathlib import Path
import subprocess,json
R=Path(__file__).resolve().parents[1]
for idx in [1899,1946,1982,2001,2020,2025,2030,2032]:
 nm=f's{idx}_S5quot_p257_m0';out=R/'certificates'/nm
 with (R/'logs'/f'{nm}.log').open('w') as log, (R/'certificates'/f'{nm}.input').open() as src:
  subprocess.run([str(R/'code/module_kernel'),str(out)],stdin=src,stdout=log,stderr=subprocess.STDOUT,check=True)
 d=json.loads(out.with_suffix('.json').read_text());print(idx,{k:d[k] for k in ['e','L','conditions','min_weight','dimension']},flush=True)
