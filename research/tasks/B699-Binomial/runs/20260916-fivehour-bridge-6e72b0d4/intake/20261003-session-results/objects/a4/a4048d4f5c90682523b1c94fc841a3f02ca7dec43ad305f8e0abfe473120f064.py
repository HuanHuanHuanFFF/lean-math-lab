"""Six corruption tests of newly used receivers. Does not mutate frozen evidence."""
from common import *
import subprocess,tempfile,shutil,struct
records=[]
def reject(label,cmd):
 r=subprocess.run(list(map(str,cmd)),capture_output=True,text=True)
 assert r.returncode!=0,(label,'invalid input accepted')
 records.append({'test':label,'rejected':True,'exit_code':r.returncode,'diagnostic':r.stderr.strip()[:400]})
with tempfile.TemporaryDirectory(prefix='negative-',dir=ROOT/'work') as tmp:
 T=Path(tmp);G=ROOT/'certificates/geometry';m=T/'bad.minors';lines=(G/'g02.p32749.minors').read_text().splitlines();a=lines[0].split();a[2]=str(int(a[2])%32748+1);lines[0]=' '.join(a);m.write_text('\n'.join(lines)+'\n')
 reject('changed_nonzero_minor',[ROOT/'work/receive_geometry_p32749',5,32749,G/'g02.txt',m,G/'g02.p32749.exceptions'])
 root=T/'bad.roots';rs=(G/'g02.txt').read_text().splitlines();rs.pop();root.write_text('\n'.join(rs)+'\n')
 reject('omitted_root_configuration',[ROOT/'work/receive_geometry_p32749',5,32749,root,G/'g02.p32749.minors',G/'g02.p32749.exceptions'])
 src=ROOT/'certificates/exact_s1972_106';typ=T/'bad.types';ts=Path(str(src)+'.types.tsv').read_text().splitlines();ts.pop();typ.write_text('\n'.join(ts)+'\n')
 basecmd=[ROOT/'work/enumeration_receiver',ROOT/'sources/global649.txt',ROOT/'certificates/ledger/catalog106.tsv',4,0,typ,Path(str(src)+'.multisets.tsv'),T/'enum.receipt',1972]
 reject('omitted_actual_degree_type',basecmd)
 cmd=basecmd[:];cmd[4]=1;cmd[5]=Path(str(src)+'.types.tsv');reject('ungranted_family_licence',cmd)
 pre=T/'bad.preimages';ps=(ROOT/'certificates/preimages1972_A.tsv').read_text().splitlines();ps.pop();pre.write_text('\n'.join(ps)+'\n')
 reject('omitted_fee_growth_preimage',[ROOT/'work/preimage_receiver',ROOT/'sources/global649.txt',pre,1972,'A'])
 d=T/'dp';shutil.copytree(ROOT/'certificates/ledger/s1972',d)
 b=bytearray((d/'new.i32').read_bytes());n=struct.unpack_from('<i',b,0)[0];struct.pack_into('<i',b,0,n+1);(d/'new.i32').write_bytes(b)
 reject('changed_DP_cell',[ROOT/'work/ledger_receiver',ROOT/'sources/global649.txt',ROOT/'certificates/ledger/catalog112.tsv',d/'job.txt',d])
r={'all_rejected':True,'tests':records,'corruption_tests_are_not_independent_mathematical_review':True}
(ROOT/'certificates/NEGATIVE_CONTROLS_RECEIPT.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
