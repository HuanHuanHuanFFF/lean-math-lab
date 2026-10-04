#!/usr/bin/env python3
"""Recheck source arithmetic, pinned full-source blobs and scratch-only patch replay.
This program is NOT a Lean parser, elaborator, kernel or axiom checker.
"""
from pathlib import Path
import ast,hashlib,json,re,subprocess,tempfile,sys
R=Path(__file__).resolve().parents[1]
CASES=[(4884,2,2442,0,2440),(4885,5,977,3,975),(4886,2,2443,0,2441),(4887,3,1629,1,1627),(4888,2,2444,0,2442)]
def sha(b):return hashlib.sha256(b).hexdigest()
def blob(b):return hashlib.sha1(b'blob '+str(len(b)).encode()+b'\0'+b).hexdigest()
def main():
 result={'kind':'Python source/arithmetic checks, NOT Lean','cases':[],'frozen_full_sources':[]}
 s=(R/'NonprimeDefsOnly.lean').read_text()
 assert s.splitlines()[0]=='import Mathlib.Data.Nat.Prime.Defs'
 assert len(re.findall(r'^import ',s,re.M))==1
 assert not re.search(r'\b(?:by|decide|native_decide|sorry|admit|axiom|opaque|unsafe)\b',s)
 assert s.count('theorem ')==5 and s.count(' rfl)')==5
 assert s.count('namespace B699CompositeTransfer20261003')==1
 for n,a,b,x,y in CASES:
  assert a*b==n and x+2==a and y+2==b
  pattern=rf'theorem not_prime_{n} : ¬ Nat\.Prime {n} :=\s+fun h => Or\.elim \(h\.isUnit_or_isUnit \(a := {a}\) \(b := {b}\) rfl\)\s+\(fun u => Nat\.succ_succ_ne_one {x} \(Nat\.isUnit_iff\.mp u\)\)\s+\(fun u => Nat\.succ_succ_ne_one {y} \(Nat\.isUnit_iff\.mp u\)\)'
  assert re.search(pattern,s)
  result['cases'].append({'n':n,'a':a,'b':b,'succ_parameters':[x,y],'product_verified_by_Python':True,'source_pattern_matches':True,'Lean_type_check':None})
 lock=json.loads((R/'sources/SOURCE_LOCK.json').read_text())
 for row in lock['records']:
  data=(R/row['local_path']).read_bytes()
  assert sha(data)==row['sha256']
  if row['full_blob_match'] is True:
   got=blob(data);assert got==row['upstream_full_git_blob_sha1'];result['frozen_full_sources'].append({'path':row['local_path'],'git_blob':got,'match':True})
 anchors={
  'sources/upstream/Mathlib-Prime-Defs.lean':['def Prime (p : ℕ) :=\n  Irreducible p','have := pp.isUnit_or_isUnit hn','public import Mathlib.Algebra.Group.Nat.Units'],
  'sources/upstream/Mathlib-Irreducible-Defs.lean':['isUnit_or_isUnit ⦃a b : M⦄ : p = a * b → IsUnit a ∨ IsUnit b'],
  'sources/upstream/Mathlib-Nat-Units.lean':['protected lemma isUnit_iff {n : ℕ} : IsUnit n ↔ n = 1 := isUnit_iff_eq_one'],
  'sources/upstream/Lean-succ-succ-ne-one.L645-L655.txt':['theorem succ_succ_ne_one (a : Nat) : succ (succ a) ≠ 1 := nofun']}
 for f,values in anchors.items():
  text=(R/f).read_text()
  for v in values:assert v in text
 result['source_signature_anchors_match']=True
 original=(R/'input/original/source/CompositeTransferLegacy.lean').read_text()
 candidate=(R/'integration/CompositeTransferLegacy.candidate.lean').read_text()
 original_body=original.split('theorem common_succ_of_nonprime',1)[1].split('\ntheorem complete_4885 ',1)[0]
 candidate_body=candidate.split('theorem common_succ_of_nonprime',1)[1].split('\ntheorem complete_4885 ',1)[0]
 assert original_body==candidate_body
 with tempfile.TemporaryDirectory(prefix='b699-r4-patch-') as td:
  d=Path(td);(d/'CompositeTransferLegacy.lean').write_text(original)
  cp=subprocess.run(['patch','--batch','--fuzz=0','-p1','-i',str(R/'integration/CompositeTransferLegacy.patch')],cwd=d,capture_output=True,text=True)
  assert cp.returncode==0,(cp.stdout,cp.stderr)
  got=(d/'CompositeTransferLegacy.lean').read_text();assert got==candidate
  result['patch']={'exit_code':cp.returncode,'stdout':cp.stdout,'stderr':cp.stderr,'byte_equivalent_after_LF_text_replay':True,'common_succ_body_unchanged':True,'workspace':'temporary directory, deleted; no repository mutation'}
 for p in (R/'repro').glob('*.py'):ast.parse(p.read_text(),filename=p.name)
 result.update(python_syntax_parses=True,source_sha256=sha((R/'NonprimeDefsOnly.lean').read_bytes()),status='static_checks_passed_not_Lean',actual_axiom_result=None,actual_checker_result=None)
 out=R/'evidence/static-check.json';out.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
 print(json.dumps(result,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
