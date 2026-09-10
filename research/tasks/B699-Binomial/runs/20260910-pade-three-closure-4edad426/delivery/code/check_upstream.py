#!/usr/bin/env python3
"""Replay the frozen Padé numerical checker in a disposable copy, not the originals."""
from pathlib import Path
import tempfile,zipfile,subprocess,sys,os,json,time
ROOT=Path(__file__).resolve().parents[1]
def main():
 ts=time.monotonic()
 with tempfile.TemporaryDirectory(prefix='b699-pade-replay-') as tmp:
  base=Path(tmp)
  with zipfile.ZipFile(ROOT/'originals'/'asymmetric-pade.zip') as z:
   for x in z.infolist():
    assert not x.filename.startswith('/') and '..' not in Path(x.filename).parts
   z.extractall(base)
  run=base/'B699-asymmetric-Pade';env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
  with (ROOT/'results'/'upstream_replay.log').open('w') as log:
   p=subprocess.run([sys.executable,str(run/'code/verify_refined_profiles.py')],cwd=run,env=env,stdout=log,stderr=subprocess.STDOUT,timeout=120)
  if p.returncode:raise RuntimeError('Frozen Padé numerical replay failed; inspect upstream_replay.log')
  data=json.loads((run/'results/refined_certificate.json').read_text());assert data['status']=='PASS_EXACT'
  adopted=[r for r in data['profiles'] if r['i'] in [11,16,21]]
  assert {r['i']:r['height_bits'] for r in adopted}=={11:4096,16:65536,21:32768}
  result=dict(status='PASS',all_old_cuts_replayed=data['analytic_cut_occurrences'],all_old_orientations=data['enumerated_orientations'],
   adopted_profiles=adopted,seconds=time.monotonic()-ts,
   scope='Finite arithmetic replay only. Old frontier strings ignored; not a reproof of BFT or a new seven-index result.')
  (ROOT/'results'/'upstream_replay.json').write_text(json.dumps(result,indent=2))
  print(json.dumps(dict(status='PASS',cuts=result['all_old_cuts_replayed'],orientations=result['all_old_orientations'],adopted=[r['i'] for r in adopted],seconds=result['seconds'])))
if __name__=='__main__':main()
