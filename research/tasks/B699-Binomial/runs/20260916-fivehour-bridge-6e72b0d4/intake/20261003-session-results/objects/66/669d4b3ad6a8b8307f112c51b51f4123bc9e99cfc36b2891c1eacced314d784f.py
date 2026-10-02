"""Four deliberate corruptions, all must be rejected by mathematical receivers."""
from pathlib import Path
import json,subprocess,tempfile,shutil
ROOT=Path(__file__).resolve().parents[1]
records=[]
def reject(name,cmd,needle):
 p=subprocess.run(list(map(str,cmd)),capture_output=True,text=True)
 assert p.returncode!=0 and needle in p.stderr, (name,p.returncode,p.stdout,p.stderr)
 records.append({'test':name,'returncode':p.returncode,'rejection':p.stderr.strip()});print('REJECTED',name,flush=True)
with tempfile.TemporaryDirectory(prefix='negative-',dir=ROOT/'scratch') as tmp:
 d=Path(tmp);pre=ROOT/'certificates/geometry/g01';bad=d/'bad.minors';lines=Path(str(pre)+'.p32749.minors').read_text().splitlines();a=lines[0].split();a[2]=str(int(a[2])%32748+1);lines[0]=' '.join(a);bad.write_text('\n'.join(lines)+'\n')
 reject('nonzero_minor_corruption',[ROOT/'code/receive_geometry_fast_32749',10,32749,str(pre)+'.txt',bad,str(pre)+'.p32749.exceptions'],'determinant')
 pre=ROOT/'certificates/kernels/s1907_S5_p257_m0';bad=d/'bad.trace.tsv';lines=Path(str(pre)+'.trace.tsv').read_text().splitlines();a=lines[1].split('\t');a[5]=str((int(a[5])+1)%257);lines[1]='\t'.join(a);bad.write_text('\n'.join(lines)+'\n')
 reject('module_pivot_corruption',[ROOT/'code/check_trace',str(pre)+'.input',bad],'pivot value/weight mismatch')
 src=ROOT/'certificates/ledger/s1907';copy=d/'s1907';shutil.copytree(src,copy);buf=bytearray((copy/'new.i32').read_bytes());v=int.from_bytes(buf[-4:],'little');buf[-4:]=(v+1).to_bytes(4,'little');(copy/'new.i32').write_bytes(buf)
 reject('integer_DP_cell_corruption',[ROOT/'code/ledger_receiver',ROOT/'sources/global649.txt',ROOT/'certificates/ledger/catalog102.tsv',copy/'job.txt',copy],'DP cell mismatch')
 job=d/'unlicensed_job.txt';a=(src/'job.txt').read_text().split();a[2]='0';job.write_text(' '.join(a)+'\n')
 reject('missing_own_state_S5_license',[ROOT/'code/ledger_receiver',ROOT/'sources/global649.txt',ROOT/'certificates/ledger/catalog102.tsv',job,src],'exact fee floor mismatch')
(ROOT/'certificates/NEGATIVE_CONTROLS.json').write_text(json.dumps({'all_rejected':True,'tests':records},indent=2)+'\n')
