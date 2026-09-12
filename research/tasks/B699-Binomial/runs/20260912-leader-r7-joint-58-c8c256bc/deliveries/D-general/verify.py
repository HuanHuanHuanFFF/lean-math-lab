#!/usr/bin/env python3
"""Replay the finite evidence. This does not formalize the paper proof in Lean."""
from pathlib import Path
import argparse,hashlib,json,subprocess,sys,time,zipfile
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT/'code'))

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--replay-inputs',action='store_true');ap.add_argument('--output',type=Path);args=ap.parse_args()
 started=time.monotonic();steps=[]
 def step(name,fun):
  t=time.monotonic();res=fun();steps.append({'step':name,'status':'PASS','seconds':time.monotonic()-t,'result':res})
 def hashes():
  d=json.loads((ROOT/'MANIFEST.json').read_text())
  for rel,h in d['sha256'].items():
   p=ROOT/rel
   assert p.is_file() and sha(p)==h, 'changed/missing file: '+rel
  return {'files':len(d['sha256'])}
 step('manifest',hashes)
 def originals():
  intake=json.loads((ROOT/'input/INTAKE.json').read_text());cnt=0
  for item in intake['actual_inputs']:
   p=ROOT/item['archive_relative'];assert sha(p)==item['sha256']
   base=ROOT/item['unpacked_relative']
   with zipfile.ZipFile(p) as z:
    for zi in z.infolist():
     if zi.is_dir():continue
     target=(base/zi.filename).resolve()
     assert target.is_relative_to(base.resolve()),'unsafe input archive path'
     assert target.read_bytes()==z.read(zi.filename),'frozen original modified'
     cnt+=1
  return {'archives':len(intake['actual_inputs']),'original_members_byte_identical':cnt,'requested_v2_read':False}
 step('original-input-byte-audit',originals)
 def read(name):return json.loads((ROOT/'outputs'/name).read_text())
 from allocation_certificate import generate as gen_alloc
 from check_allocation import verify as check_alloc
 from small_prefix import run as gen_prefix
 from check_prefix_direct import run as check_prefix
 from check_pell_primary import verify as check_log1
 from check_pell import verify as check_log2
 from check_structures import run as check_structures
 from check_bad_certificates import run as bad
 def alloc1():
  obj=gen_alloc();assert obj==read('allocation-certificate.json')
  return {'parameters':obj['complete_parameter_count'],'surviving_classes':obj['surviving_class_count']}
 step('complete-allocation-generation',alloc1)
 step('different-allocation-checker',lambda:check_alloc(read('allocation-certificate.json')))
 def prefix1():
  obj=gen_prefix();assert obj==read('small-prefix-certificate.json')
  return {k:obj[k] for k in ('parameter_power_rows','quadratic_root_count','projection_candidates')}
 step('small-prefix-quadratic-recovery',prefix1)
 def prefix2():
  obj=check_prefix();assert obj==read('prefix-independent-check.json');return obj
 step('small-prefix-direct-original-variables',prefix2)
 def log1():
  obj=check_log1(read('pell-certificate.json'));assert obj==read('pell-primary-check.json');return obj
 step('pell-and-640-bit-log-certificate',log1)
 def log2():
  obj=check_log2(read('pell-certificate.json'));assert obj==read('pell-independent-check.json');return obj
 step('different-384-bit-log-and-seed-checker',log2)
 def structures():
  obj=check_structures();assert obj==read('structure-check.json')
  return {'identities':obj['polynomial_identities'],'original_p3_preserved':True,'wrong_p5_transfer_rejected':True,'whole_large_row_enumerated':False}
 step('algebra-and-semantic-boundaries',structures)
 def mutations():
  obj=bad();assert obj==read('bad-certificate-check.json');return obj
 step('bad-certificates',mutations)
 if args.replay_inputs:
  def replay():
   out=[]
   for rel in ('input/D/B699-ProD-R7-20260912','input/misassigned-B/B699-ProB-R7-primepower-closure-20260912'):
    p=ROOT/rel
    proc=subprocess.run([sys.executable,str(p/'verify.py')],cwd=p,text=True,capture_output=True)
    assert proc.returncode==0,proc.stderr[-3000:]
    out.append({'path':rel,'returncode':proc.returncode,'stdout_last_1000':proc.stdout[-1000:]})
   originals()
   return out
  step('replay-frozen-input-acceptance',replay)
 result={'status':'PASS','seconds':time.monotonic()-started,'steps':steps,'scope':'Finite arithmetic/certificate replay; publication and infinite mathematical argument remain paper proof. No Lean, no independent human review.'}
 target=args.output or ROOT/'runs/last-verification.json';target.parent.mkdir(parents=True,exist_ok=True);target.write_text(json.dumps(result,indent=2)+'\n')
 print(json.dumps({'status':'PASS','steps':len(steps),'seconds':result['seconds'],'record':str(target),'scope':result['scope']}))
if __name__=='__main__':main()
