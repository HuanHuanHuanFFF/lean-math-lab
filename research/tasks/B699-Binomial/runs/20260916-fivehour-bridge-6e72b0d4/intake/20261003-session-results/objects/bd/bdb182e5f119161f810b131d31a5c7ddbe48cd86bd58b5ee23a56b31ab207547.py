"""Tamper controls must be rejected by the second implementations."""
from pathlib import Path
import json,subprocess,tempfile,struct,hashlib
R=Path(__file__).resolve().parents[1];G=R/'certificates/geometry';results=[]
with tempfile.TemporaryDirectory(prefix='negative_',dir=R/'logs') as td:
 t=Path(td)
 # A nonzero full augmented minor's recorded determinant is changed.
 pp=next(x for x in json.loads((G/'profiles.json').read_text()) if (G/f'g{x["index"]:02}.p32749.minors').stat().st_size)
 i=pp['index'];orig=G/f'g{i:02}.p32749.minors';lines=orig.read_text().splitlines();z=list(map(int,lines[0].split()));z[2]=z[2]%32748+1;lines[0]=' '.join(map(str,z));bad=t/'bad.minors';bad.write_text('\n'.join(lines)+'\n')
 cases=[('altered_full_augmented_minor',[str(R/'code/receive_geometry_r2'),str(pp['q']),'32749',str(G/f'g{i:02}.txt'),str(bad),str(G/f'g{i:02}.p32749.exceptions')])]
 # Claimed rank of a routed exception is not blindly trusted.
 orig=G/'g05.p32749.exceptions';lines=orig.read_text().splitlines();z=list(map(int,lines[0].split()));z[1]-=1;lines[0]=' '.join(map(str,z));bad2=t/'bad.exceptions';bad2.write_text('\n'.join(lines)+'\n')
 cases.append(('altered_exception_rank',[str(R/'code/receive_geometry_r2'),'4','32749',str(G/'g05.txt'),str(G/'g05.p32749.minors'),str(bad2)]))
 # A supplied module pivot's discrepancy is not trusted.
 tr=R/'certificates/s1874_S5quot_p257_m0.trace.tsv';lines=tr.read_text().splitlines();z=lines[1].split('\t');z[5]=str((int(z[5])+1)%257);lines[1]='\t'.join(z);bt=t/'bad.trace.tsv';bt.write_text('\n'.join(lines)+'\n')
 cases.append(('altered_module_pivot',[str(R/'code/check_trace'),str(R/'certificates/s1874_S5quot_p257_m0.input'),str(bt)]))
 # One capacity-DP entry differs from the exact-used-capacity receiver.
 pre=R/'certificates/ledger/s1874_T12';b=bytearray(pre.with_suffix('.bin').read_bytes());b[:8]=struct.pack('<q',struct.unpack('<q',b[:8])[0]+1);bb=t/'bad.bin';bb.write_bytes(b)
 cases.append(('altered_capacity_grid_cell',[str(R/'code/ledger_exact_receiver'),str(pre.with_suffix('.input')),str(R/'sources/global649.txt'),str(bb),str(t/'unused.low.tsv'),str(t/'unused.receipt.json')]))
 for name,cmd in cases:
  ans=subprocess.run(cmd,capture_output=True,text=True);assert ans.returncode!=0 and 'REJECT' in ans.stderr,(name,ans.returncode,ans.stdout,ans.stderr)
  results.append({'control':name,'rejected':True,'exit_code':ans.returncode,'stderr':ans.stderr.strip(),'stdout':ans.stdout.strip(),'command_template':[x.replace(str(t),'<tamper-temp>').replace(str(R),'.') for x in cmd]})
  print(name,ans.returncode,ans.stderr.strip(),flush=True)
(R/'certificates/negative_controls.json').write_text(json.dumps({'all_rejected':True,'controls':results},indent=2)+'\n')
