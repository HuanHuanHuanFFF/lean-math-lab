"""Tamper only isolated copies. Every control must actually exit nonzero."""
from pathlib import Path
import subprocess,json,tempfile,shutil
ROOT=Path(__file__).resolve().parents[1];tests=[]
def reject(name,cmd,cwd=None):
 r=subprocess.run(cmd,cwd=cwd,capture_output=True,text=True)
 assert r.returncode!=0,('accepted deliberate tampering',name)
 tests.append({'test':name,'exit_code':r.returncode,'rejected':True,'error':(r.stderr+r.stdout)[-900:]})
with tempfile.TemporaryDirectory(prefix='b699-r7-negative-') as td:
 t=Path(td);src=ROOT/'certificates/kernels/s2029_S5_p257_m0';inp=src.with_suffix('.input');tr=Path(str(src)+'.trace.tsv')
 lines=tr.read_text().splitlines();row=lines[1].split('\t');row[4]=str((int(row[4])+1)%149);lines[1]='\t'.join(row);bad=t/'bad.trace.tsv';bad.write_text('\n'.join(lines)+'\n')
 reject('complete_module_wrong_pivot',[str(ROOT/'work/check_trace'),str(inp),str(bad)])
 lines=inp.read_text().splitlines();q=lines[1].split();q[-1]=str(int(q[-1])-1);lines[1]=' '.join(q);badinp=t/'bad.input';badinp.write_text('\n'.join(lines)+'\n')
 reject('changed_first_source_order',[str(ROOT/'work/check_trace'),str(badinp),str(tr)])
 d=t/'ledger';shutil.copytree(ROOT/'certificates/ledger/s2029_actual',d)
 data=bytearray((d/'new.i32').read_bytes());data[-4]^=1;(d/'new.i32').write_bytes(data)
 base=[str(ROOT/'work/ledger_receiver'),str(ROOT/'sources/global649.txt'),str(ROOT/'sources/catalog112.tsv')]
 reject('wrong_DP_terminal_cell',base+[str(d/'job.txt'),str(d)])
 shutil.copy2(ROOT/'certificates/ledger/s2029_actual/new.i32',d/'new.i32')
 row=(d/'job.txt').read_text().split();row[2]='0';(d/'job.txt').write_text(' '.join(row)+'\n')
 reject('licence_removed_but_claimed_153_kept',base+[str(d/'job.txt'),str(d)])
 # Isolated roots so code derives its own ROOT without modifying actual sources.
 r=t/'scope';(r/'code').mkdir(parents=True);shutil.copy2(ROOT/'code/build_ledger.py',r/'code/build_ledger.py');shutil.copy2(ROOT/'code/common.py',r/'code/common.py')
 shutil.copytree(ROOT/'sources',r/'sources');(r/'certificates/kernels').mkdir(parents=True);shutil.copy2(ROOT/'certificates/S5_ALL_PARAMETER_AUDIT.json',r/'certificates/S5_ALL_PARAMETER_AUDIT.json')
 lic=json.loads((ROOT/'certificates/kernels/LICENCE_2029_S5.json').read_text());lic['state']=2000;(r/'certificates/kernels/LICENCE_2029_S5.json').write_text(json.dumps(lic))
 reject('state_2029_licence_cannot_be_relabelled_2000',['python',str(r/'code/build_ledger.py')])
 shutil.copy2(ROOT/'code/audit_s5.py',r/'code/audit_s5.py');j=json.loads((r/'sources/factor_source_bounds_adopted.json').read_text());j['S5']['points'][0]['upper_order']+=1;(r/'sources/factor_source_bounds_adopted.json').write_text(json.dumps(j))
 reject('wrong_all_parameter_source_bound',['python',str(r/'code/audit_s5.py')])
 # NEW geometry and final state2000 consumer controls.
 g=ROOT/'certificates/geometry/g01';mm=Path(str(g)+'.p32749.minors').read_text().splitlines();row=mm[0].split();row[2]=str((int(row[2])+1)%32749);mm[0]=' '.join(row);badm=t/'bad.minors';badm.write_text('\n'.join(mm)+'\n')
 reject('quintic_nonsingular_minor_tampering',[str(ROOT/'work/receive_geometry_p32749'),'5','32749',str(g)+'.txt',str(badm),str(g)+'.p32749.exceptions'])
 d2=t/'final2000';shutil.copytree(ROOT/'certificates/final_ledger/s2000_final',d2);row=(d2/'job.txt').read_text().split();row[2]='0';(d2/'job.txt').write_text(' '.join(row)+'\n')
 reject('quintic_alone_cannot_use_2000_S5_price',[str(ROOT/'work/ledger_receiver'),str(ROOT/'sources/global649.txt'),str(ROOT/'certificates/final_ledger/catalog113.tsv'),str(d2/'job.txt'),str(d2)])
 r2=t/'cross_state';(r2/'code').mkdir(parents=True)
 for nm in ['common.py','build_final_ledger.py']:shutil.copy2(ROOT/'code'/nm,r2/'code'/nm)
 shutil.copytree(ROOT/'sources',r2/'sources');shutil.copytree(ROOT/'certificates',r2/'certificates');(r2/'logs').mkdir()
 for fp in (ROOT/'logs').glob('*.receive.json'):shutil.copy2(fp,r2/'logs'/fp.name)
 shutil.copy2(r2/'certificates/kernels/LICENCE_2029_S5.json',r2/'certificates/kernels/LICENCE_2000_S5.json')
 reject('2029_kernel_cannot_license_2000',['python',str(r2/'code/build_final_ledger.py')])
# Temp paths normalized to keep deterministic test receipts.
for z in tests:z['error']=z['error'].replace(td,'<isolated-tamper-root>')
(ROOT/'certificates/NEGATIVE_CONTROLS_RECEIPT.json').write_text(json.dumps({'tests':tests,'all_nine_rejected':len(tests)==9 and all(t['rejected'] for t in tests)},indent=2)+'\n');print('PASS nine tamper controls rejected')
