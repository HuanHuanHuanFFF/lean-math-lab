from pathlib import Path
import subprocess,json,hashlib
root=Path(__file__).resolve().parents[1];tmp=root/'_negative';tmp.mkdir(exist_ok=True);out=[]
name='s1825_S5quot_p257_m0';lines=(root/'certificates'/f'{name}.trace.tsv').read_text().splitlines();a=lines[1].split('\t');a[5]=str((int(a[5])+1)%257);lines[1]='\t'.join(a);bad=tmp/'bad.trace.tsv';bad.write_text('\n'.join(lines)+'\n')
r=subprocess.run([str(root/'code/check_trace'),str(root/'certificates'/f'{name}.input'),str(bad)],capture_output=True,text=True)
assert r.returncode!=0;out.append({'test':'changed module pivot value','rejected':True,'message':r.stderr.strip()})
src=root/'certificates/geometry/g01.minors';lines=src.read_text().splitlines();a=lines[0].split();a[2]=str(int(a[2])%32748+1);lines[0]=' '.join(a);bad=tmp/'bad.minors';bad.write_text('\n'.join(lines)+'\n')
r=subprocess.run([str(root/'code/receive_geometry'),'5','32749',str(root/'certificates/geometry/g01.txt'),str(bad),'1'],capture_output=True,text=True)
assert r.returncode!=0;out.append({'test':'changed determinant','rejected':True,'message':r.stderr.strip()})
b=bytearray((root/'sources/global649.txt').read_bytes());b[0]=ord('5')
assert hashlib.sha256(b).hexdigest()!='cfdbdcff9aa376b12c7ae57e27534a4b635b5b966b247e3157c4a18c67e4e553'
out.append({'test':'changed source byte fails frozen SHA-256','rejected':True})
(root/'certificates/negative_controls.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
