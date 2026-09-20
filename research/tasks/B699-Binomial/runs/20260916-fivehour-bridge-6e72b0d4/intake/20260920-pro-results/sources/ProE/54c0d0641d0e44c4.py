"""Actually invoke BOTH checkers on each corrupted certificate."""
from __future__ import annotations
import copy
import json
import subprocess
import sys
import tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def corruptions(base):
    out=[]
    def add(label,fn):
        x=copy.deepcopy(base);fn(x);out.append((label,x))
    add('drop_c2',lambda x:x['metadata']['core'].__setitem__('c_branches',[0,1]))
    add('allow_even_P',lambda x:x['metadata']['core'].__setitem__('P_parity','any'))
    add('drop_half_row',lambda x:x['metadata']['core'].__setitem__('j_max','n'))
    add('allow_t3',lambda x:x['metadata']['core'].__setitem__('c2_t',[1,2,3]))
    add('aggregate_row_without_primality',lambda x:x['metadata']['row'].__setitem__('p','odd integer'))
    add('modify_c0_coefficient',lambda x:x['polynomials']['c0_recovery']['terms'][0].__setitem__(1,999))
    add('omit_positive_gap',lambda x:x['polynomials'].pop('c2_positive_gap'))
    add('lower_degree_bound',lambda x:x['polynomials']['c2_square'].__setitem__('degree_bounds',[2,2,1]))
    add('wrong_mod8',lambda x:x['mod8'][0].__setitem__('t1',4))
    add('omit_residue_class',lambda x:x['mod8'].pop())
    add('wrong_mod3',lambda x:x.__setitem__('mod3_c0',[0,1,2]))
    add('truncate_source_power_identity',lambda x:x['polynomials']['complete_source']['terms'][0].__setitem__(1,-2))
    add('isolated3_as_witness',lambda x:x['endpoint'].__setitem__('odd_witness',3))
    add('replace_slot_with_product',lambda x:x['metadata']['slot'].__setitem__('condition','(X+1) divides j*(j-1)*(j-2)'))
    add('fake_diagnostic',lambda x:x['diagnostics'][0].__setitem__('witness_verified',False))
    add('fake_regression_witness',lambda x:x['regression_rows'][0]['witnesses'].__setitem__(0,3))
    add('claim_full_i3',lambda x:x['metadata']['claims'].__setitem__('full_i3',True))
    return out

def main():
    base=json.loads((ROOT/'certificates/certificate.json').read_text())
    rows=[]
    with tempfile.TemporaryDirectory(prefix='b699-minus-bad-') as tmp:
        for label,data in corruptions(base):
            path=Path(tmp)/(label+'.json');path.write_text(json.dumps(data))
            rec={'case':label,'rejected':{}}
            for name in ['primary','independent']:
                run=subprocess.run([sys.executable,'-B',str(ROOT/'checks'/f'{name}.py'),str(path)],capture_output=True,text=True)
                if run.returncode==0:
                    raise AssertionError('bad certificate accepted: '+label+' by '+name)
                rec['rejected'][name]=True
            rows.append(rec)
    print(json.dumps(rows,ensure_ascii=False,sort_keys=True))
    print('PASS_BAD_CERTIFICATE_REJECTION cases='+str(len(rows)))
if __name__=='__main__':main()
