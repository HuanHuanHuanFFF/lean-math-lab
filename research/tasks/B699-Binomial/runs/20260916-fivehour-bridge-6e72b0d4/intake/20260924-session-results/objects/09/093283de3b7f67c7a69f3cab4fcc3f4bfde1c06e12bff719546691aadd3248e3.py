#!/usr/bin/env python3
"""Receiver rejection tests. Uses only temporary mutated copies, never frozen evidence."""
from __future__ import annotations
import argparse,json,resource,subprocess,sys,tempfile
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--run',type=Path,required=True);ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
 resource.setrlimit(resource.RLIMIT_CORE,(0,0))
 B=a.run/'certificates/modules/state_1619_forward.txt.basis'
 C=a.run/'certificates/covers/state_1619_p11.txt'
 E=a.run/'certificates/extensions/state_1623_a.txt'
 EB=a.run/'certificates/modules/state_1623_forward.txt.basis'
 v=[21,17,14,12,10,11];results=[]
 with tempfile.TemporaryDirectory(prefix='h111-negative-') as d:
  d=Path(d)
  def reject(name,cmd):
   r=subprocess.run(list(map(str,cmd)),capture_output=True,text=True)
   assert r.returncode!=0,('bad evidence accepted',name)
   results.append(dict(test=name,rejected=True))
  lines=C.read_text().splitlines()
  muts={
   'missing_projective_direction':lines[:1],
   'duplicate_projective_direction':lines+lines[1:],
   'false_count_bound':[lines[0],lines[1].replace('BOUND 4','BOUND 3')]+lines[2:],
   'truncated_factor_payload':lines[:-1],
  }
  z=lines[:];t=z[2].split();t[0]='2';z[2]=' '.join(t);muts['false_equal_degree_block']=z
  z=lines[:];t=z[3].split();t[3]=str((int(t[3])+1)%11);z[3]=' '.join(t);muts['altered_factor_coefficient']=z
  for name,z in muts.items():
   p=d/(name+'.txt');p.write_text('\n'.join(z)+'\n')
   reject(name,[a.run/'bin/checker',B,*v,p])
  z=B.read_text().splitlines();t=z[2].split();assert len(t)>2;t[2]=str((int(t[2])+1)%11);z[2]=' '.join(t);p=d/'altered_basis.txt';p.write_text('\n'.join(z)+'\n')
  reject('basis_not_satisfying_original_jets',[a.run/'bin/checker',p,*v,C])
  z=E.read_text().splitlines();t=z[2].split();t[3]=str((int(t[3])+1)%121);z[2]=' '.join(t);p=d/'bad_extension.txt';p.write_text('\n'.join(z)+'\n')
  reject('altered_extension_factor',[sys.executable,ROOT/'code/check_extension.py',EB,p])
  z=E.read_text().splitlines();t=z[1].split();t[2]=str((int(t[2])+1)%11);z[1]=' '.join(t);p=d/'bad_extension_direction.txt';p.write_text('\n'.join(z)+'\n')
  reject('altered_extension_projective_direction',[sys.executable,ROOT/'code/check_extension.py',EB,p])
 # Cubic irreducibility is equivalent to root absence over F_11.
 values=[(x**3+x+4)%11 for x in range(11)]
 assert all(values)
 # Two independent ways of losing soundness are illustrated exactly.
 # (11 X^3+1)(X^3+X+4) has two irreducible rational cubics;
 # its reduction has just one cubic. 1+floor((6-3)/3)=2.
 # P and P+11 are distinct monic Q-irreducibles (same irreducible reduction);
 # P(P+11) reduces to P^2. Omega counted with multiplicity is 2, not 1.
 result=dict(status='PASS_NEGATIVE_TESTS',tests=results,count=len(results),counterexamples=dict(
  irreducible_cubic_coefficients=[4,1,0,1],nonzero_residue_values=values,
  degree_loss=dict(h=6,reduced_degree=3,reduced_Omega=1,minimum_factor_degree=3,bound=2,rational_factor_count=2),
  multiplicity=dict(distinct_Q_factors=2,distinct_modular_factors=1,modular_Omega_with_multiplicity=2)))
 a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(result,sort_keys=True,indent=2)+'\n');print(result['status'],result['count'])
if __name__=='__main__':main()
