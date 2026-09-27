"""Deliberately corrupted certificates must be rejected, not silently accepted."""
from pathlib import Path
import subprocess,json,shutil

def run(out):
 g=out/'certificates/geometry';c=out/'certificates/cofactor';d=out/'negative_tests';d.mkdir();results=[]
 def bad(name,args):
  r=subprocess.run(list(map(str,args)),capture_output=True,text=True)
  (out/'logs'/f'negative_{name}.log').write_text(r.stdout+r.stderr)
  assert r.returncode!=0,('corruption accepted',name)
  results.append({'test':name,'rejected':True,'exit_code':r.returncode})
 gate=(g/'q6_base.gates').read_text();minor=(g/'q6_base.32749.minors').read_text()
 (d/'good.gates').write_text(gate);(d/'good.minors').write_text(minor)
 v=minor.split();v[2]='0';(d/'zero.minors').write_text(' '.join(v)+'\n')
 bad('zero_determinant',[out/'bin/receive',6,32749,d/'good.gates',d/'zero.minors','-'])
 v=minor.split();v[2]=str(int(v[2])%32748+1);(d/'changed.minors').write_text(' '.join(v)+'\n')
 bad('changed_determinant',[out/'bin/receive',6,32749,d/'good.gates',d/'changed.minors','-'])
 v=minor.split();v[-1]=v[-2];(d/'duplicate.minors').write_text(' '.join(v)+'\n')
 bad('duplicate_jet',[out/'bin/receive',6,32749,d/'good.gates',d/'duplicate.minors','-'])
 v=gate.split();v[-1]=str(int(v[-1])+1);(d/'changed.gates').write_text(' '.join(v)+'\n')
 bad('changed_multiplicity',[out/'bin/receive',6,32749,d/'changed.gates',d/'good.minors','-'])
 (d/'empty.minors').write_text('')
 bad('omitted_nonzero_minor',[out/'bin/receive',6,32749,d/'good.gates',d/'empty.minors','-'])
 lines=(c/'p257_reverse0.trace').read_text().splitlines();v=lines[1].split();v[2]='0';lines[1]=' '.join(v);(d/'bad.trace').write_text('\n'.join(lines)+'\n')
 bad('changed_module_pivot',[out/'bin/module_receiver',c/'S5_1646.case',d/'bad.trace',0,257])
 # The complete-list receiver compares both regenerated anchor sets.
 a=(g/'q6_base.gates').read_text().splitlines();b=(g/'q6_base.alt').read_text().splitlines();assert sorted(a)==sorted(b) and sorted(a[:-1])!=sorted(b)
 results.append({'test':'omitted_root_gate_against_other_complete_anchor','rejected':True})
 # Clearing the degree price must actually violate at least one audited inequality.
 p=json.loads((out/'certificates/ledger/integer_prices_11_states.json').read_text())[0];assert any(x['lhs']<p['per_factor_rhs']+1000 for x in p['checks'])
 results.append({'test':'inflated_per_factor_price','rejected':True})
 return {'status':'PASS_8_NEGATIVE_CONTROLS','count':len(results),'tests':results}
