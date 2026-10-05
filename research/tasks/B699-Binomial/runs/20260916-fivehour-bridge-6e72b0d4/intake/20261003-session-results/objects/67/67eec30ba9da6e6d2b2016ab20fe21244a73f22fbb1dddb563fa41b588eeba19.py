from pathlib import Path
import subprocess,json,datetime
R=Path(__file__).resolve().parents[1]
with (R/'logs/geometry1907.log').open('w') as f:
 z=subprocess.run(['python',str(R/'code/geometry_1907.py')],stdout=f,stderr=subprocess.STDOUT)
(R/'logs/geometry1907.status.json').write_text(json.dumps({'exit_code':z.returncode,'end_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()},indent=2)+'\n')
