"""Deliberately corrupt copies, never frozen certificates. All must be rejected."""
from pathlib import Path
import sys,json,shutil,subprocess
R=Path(__file__).resolve().parents[1]
def run(out:Path):
 out.mkdir(parents=True,exist_ok=True);g=R/'certificates/geometry';k=R/'certificates/kernels';l=R/'certificates/ledger';cases=[]
 roots=out/'missing_root.txt';roots.write_text('\n'.join((g/'g00.txt').read_text().splitlines()[1:])+'\n')
 cases.append(('missing_root',[sys.executable,str(R/'code/root_set_receiver.py'),str(roots),str(g/'g00.txt'),'49']))
 bad=out/'wrong.minors';lines=(g/'g00.p32749.minors').read_text().splitlines();v=lines[0].split();v[2]=str((int(v[2])+1)%32749 or 1);lines[0]=' '.join(v);bad.write_text('\n'.join(lines)+'\n')
 cases.append(('wrong_determinant',[str(R/'work/receive_geometry_p32749'),'19','32749',str(g/'g00.txt'),str(bad),str(g/'g00.p32749.exceptions')]))
 badt=out/'wrong.trace.tsv';lines=(k/'s1981_S5_p257_m0.trace.tsv').read_text().splitlines();v=lines[1].split('\t');v[5]=str(int(v[5])+1);lines[1]='\t'.join(v);badt.write_text('\n'.join(lines)+'\n')
 cases.append(('wrong_pivot_value',[str(R/'work/check_trace'),str(k/'s1981_S5_p257_m0.input'),str(badt)]))
 d=out/'wrong_dp';shutil.copytree(l/'s1937',d,dirs_exist_ok=True);blob=bytearray((d/'new.i32').read_bytes());blob[0]^=1;(d/'new.i32').write_bytes(blob)
 cases.append(('wrong_DP_cell',[str(R/'work/ledger_receiver'),str(R/'sources/global649.txt'),str(l/'catalog104.tsv'),str(d/'job.txt'),str(d)]))
 job=out/'missing_license.txt';v=(l/'s1981/job.txt').read_text().split();v[2]='0';job.write_text(' '.join(v)+'\n')
 cases.append(('missing_own_state_license',[str(R/'work/ledger_receiver'),str(R/'sources/global649.txt'),str(l/'catalog104.tsv'),str(job),str(l/'s1981')]))
 receipt=[]
 for name,cmd in cases:
  p=subprocess.run(cmd,capture_output=True,text=True);(out/(name+'.log')).write_text(p.stdout+p.stderr)
  if p.returncode==0:raise AssertionError('corruption accepted: '+name)
  receipt.append({'test':name,'rejected':True,'returncode':p.returncode,'diagnostic':(p.stdout+p.stderr).strip()[:500]})
 result={'complete':True,'tests':receipt,'meaning':'same-author rejection controls, not independent mathematical review'}
 (out/'RECEIPT.json').write_text(json.dumps(result,indent=2)+'\n');return result
if __name__=='__main__':print(json.dumps(run(Path(sys.argv[1])),indent=2))
