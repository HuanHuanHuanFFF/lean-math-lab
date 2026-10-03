#!/usr/bin/env python3
"""Exact arithmetic, source shape, signature snippets, and temporary patch replay. NOT Lean."""
from pathlib import Path
import argparse,hashlib,json,re,subprocess,tempfile

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--root',type=Path,required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args()
 root=a.root.resolve();a.out.mkdir(parents=True,exist_ok=False)
 s=(root/'NonprimeCertificates.lean').read_text()
 cases=[(4884,2,2442),(4885,5,977),(4886,2,2443),(4887,3,1629),(4888,2,2444)]
 assert not re.search(r'\b(by|rfl|decide|native_decide|sorry|admit|axiom|unsafe|maxRecDepth|maxHeartbeats)\b',s)
 assert s.count('theorem ')==5 and s.count('import ')==1 and s.count('Nat.not_prime_mul ')==5
 assert s.startswith('import Mathlib.Data.Nat.Prime.Basic\n\nnamespace B699CompositeTransfer20261003\n')
 assert s==(root/'input/r2/NonprimeCertificates.lean').read_text()
 checks=[]
 for n,x,y in cases:
  assert x*y==n and x-2>=0 and y-2>=0
  expected=f'theorem not_prime_{n} : ¬ Nat.Prime {n} :=\n  Nat.not_prime_mul (a := {x}) (b := {y})\n    (Nat.succ_succ_ne_one {x-2}) (Nat.succ_succ_ne_one {y-2})'
  assert expected in s
  checks.append({'n':n,'a':x,'b':y,'successor_args':[x-2,y-2],'product':x*y,'exact_source_block_matched':True,'lean_typechecked':False})
 orig=(root/'input/original/source/CompositeTransferLegacy.lean').read_bytes()
 with tempfile.TemporaryDirectory(prefix='b699-r3-patch-') as t:
  target=Path(t)/'CompositeTransferLegacy.lean';target.write_bytes(orig)
  cmd=['patch','--batch','--fuzz=0','-p1','-i',str(root/'integration/CompositeTransferLegacy.patch')]
  result=subprocess.run(cmd,cwd=t,capture_output=True)
  (a.out/'patch.stdout.log').write_bytes(result.stdout);(a.out/'patch.stderr.log').write_bytes(result.stderr)
  assert result.returncode==0
  assert target.read_bytes()==(root/'integration/CompositeTransferLegacy.candidate.lean').read_bytes()
  candidate=target.read_text()
 assert orig.decode().split('theorem common_succ_of_nonprime',1)[1].split('theorem complete_4885',1)[0]==candidate.split('theorem common_succ_of_nonprime',1)[1].split('theorem complete_4885',1)[0]
 basic=(root/'input/original/reference/Prime-Basic.lean').read_bytes();lf=basic.replace(b'\r\n',b'\n')
 blob=hashlib.sha1(b'blob '+str(len(lf)).encode()+b'\0'+lf).hexdigest();assert blob=='e059d0ae408fdf5dcf90e34afbcc397a2f880a9b'
 assert 'theorem not_prime_mul {a b : ℕ} (a1 : a ≠ 1) (b1 : b ≠ 1) : ¬Prime (a * b)' in lf.decode()
 assert 'theorem succ_succ_ne_one (a : Nat) : succ (succ a) ≠ 1 := nofun' in (root/'sources/upstream/Lean-Nat-Basic.L645-L655.txt').read_text()
 report={'status':'static_checks_passed_NOT_Lean','case_count':5,'cases':checks,'main_bytes':len(s.encode()),'main_sha256':hashlib.sha256(s.encode()).hexdigest(),'main_byte_identical_to_R2':True,'patch_exit_code':result.returncode,'patch_replayed_only_in_temporary_directory':True,'generic_transfer_body_unchanged':True,'normalized_mathlib_blob_match':True,'lean_executed':False}
 (a.out/'result.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n');print(json.dumps(report,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
