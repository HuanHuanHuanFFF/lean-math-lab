"""Deliberate corruptions must be rejected; never manufacture PASS on environment errors."""
from common import *
import tempfile,subprocess,shutil
D=Path(tempfile.mkdtemp(prefix='negative-',dir=ROOT/'work'));results=[]
def reject(name,cmd,needle):
 rr=subprocess.run(list(map(str,cmd)),capture_output=True,text=True)
 assert rr.returncode!=0 and needle in rr.stderr,(name,rr.returncode,rr.stdout,rr.stderr)
 results.append({'test':name,'rejected':True,'returncode':rr.returncode,'reason':rr.stderr.strip()})
G=ROOT/'certificates/geometry/g00';p=32749
lines=Path(str(G)+f'.p{p}.minors').read_text().splitlines();fields=lines[0].split();fields[2]=str((int(fields[2])+1)%p or 1);lines[0]=' '.join(fields);bad=D/'minor.txt';bad.write_text('\n'.join(lines)+'\n')
reject('geometry_nonzero_minor_changed',[ROOT/f'work/receive_geometry_p{p}',11,p,str(G)+'.txt',bad,str(G)+f'.p{p}.exceptions'],'determinant')
lines=Path(str(G)+'.txt').read_text().splitlines();fields=lines[0].split();fields[25]=str(int(fields[25])+1);lines[0]=' '.join(fields);bad=D/'roots.txt';bad.write_text('\n'.join(lines)+'\n')
reject('geometry_root_multiplicity_changed',[ROOT/f'work/receive_geometry_p{p}',11,p,bad,str(G)+f'.p{p}.minors',str(G)+f'.p{p}.exceptions'],'row sum')
K=ROOT/'certificates/kernels/s1964_S5_p257_m0';lines=Path(str(K)+'.trace.tsv').read_text().splitlines();a=lines[1].split('\t');a[4]='1';lines[1]='\t'.join(a);bad=D/'trace.tsv';bad.write_text('\n'.join(lines)+'\n')
reject('same_state_quotient_pivot_changed',[ROOT/'work/check_trace',str(K)+'.input',bad],'pivot mismatch')
base=ROOT/'certificates/exact_s1964_nonquartic104';lines=Path(str(base)+'.multisets.tsv').read_text().splitlines();bad=D/'tuples.tsv';bad.write_text('\n'.join(lines[:-1])+'\n')
reject('nonquartic_multiset_omitted',[ROOT/'work/enumeration_receiver',ROOT/'sources/global649.txt',ROOT/'certificates/catalog104_receiver.tsv',5,0,str(base)+'.types.tsv',bad,D/'receive.json',1964],'incomplete multiset enumeration')
source=ROOT/'certificates/ledger/s1964';target=D/'ledger';shutil.copytree(source,target);bad=target/'new.i32';a=bytearray(bad.read_bytes());a[0]^=1;bad.write_bytes(a)
reject('integer_DP_single_cell_changed',[ROOT/'work/ledger_receiver',ROOT/'sources/global649.txt',ROOT/'certificates/ledger/catalog106.tsv',source/'job.txt',target],'DP cell mismatch')
(ROOT/'certificates/NEGATIVE_CONTROLS_RECEIPT.json').write_text(json.dumps({'passed':True,'tests':results,'test_count':len(results)},indent=2)+'\n');print(json.dumps(results,indent=2))
shutil.rmtree(D)
