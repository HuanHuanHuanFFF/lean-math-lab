"""Fail-closed checks on supplied finite certificates, no mutation of frozen inputs."""
import argparse,json,copy
from pathlib import Path
from check_blocks import verify
from units_and_height import check_unit

def main():
    ap=argparse.ArgumentParser();ap.add_argument('outdir');ap.add_argument('output');a=ap.parse_args();root=Path(a.outdir)
    base=json.loads((root/'block_certificates.json').read_text());results=[]
    def reject(name,fn):
        obj=copy.deepcopy(base);fn(obj)
        try:verify(obj)
        except (AssertionError,KeyError,ValueError,IndexError,ZeroDivisionError):results.append(name)
        else:raise AssertionError('bad certificate accepted: '+name)
    reject('omit_one_high_state',lambda x:x['blocks'][0]['high'].pop())
    reject('duplicate_high_state',lambda x:x['blocks'][0]['high'].append(x['blocks'][0]['high'][0]))
    reject('wrong_period',lambda x:x['blocks'][0].__setitem__('period',204))
    reject('exponent_gap',lambda x:x['blocks'][0].__setitem__('high_v_min',10))
    reject('erase_low_state',lambda x:x['blocks'][0]['low']['states'].pop())
    reject('erase_low_square_exception',lambda x:x['blocks'][2]['low']['equations'].clear())
    reject('replace25_by_radical5',lambda x:x['blocks'][1].__setitem__('C',5))
    reject('nonperiodic_modulus',lambda x:x['blocks'][0]['high'][0].__setitem__(4,11))
    reject('root_exists_modulus',lambda x:x['blocks'][0]['high'][0].__setitem__(4,3))
    reject('omit_block',lambda x:x['blocks'].pop())
    reject('extra_unverified_oddpart',lambda x:x['blocks'][0]['model_high'].append([1,1,999]))
    unit=json.loads((root/'units_height.json').read_text())['units'][0]
    for name,change in [
        ('unit_norm_changed',lambda r:r.__setitem__('norm',r['norm']+1)),
        ('unit_coefficient_changed',lambda r:r['unit'].__setitem__(0,str(int(r['unit'][0])+1))),
        ('pigeonhole_count_changed',lambda r:r.__setitem__('pigeonhole_limit',0))]:
        r=copy.deepcopy(unit);change(r)
        try:check_unit(r)
        except (AssertionError,ValueError,ZeroDivisionError):results.append(name)
        else:raise AssertionError('bad unit accepted: '+name)
    data={'status':'PASS','rejected_count':len(results),'rejected':results}
    Path(a.output).write_text(json.dumps(data,indent=2)+'\n');print('PASS rejected',len(results),'bad certificates')
if __name__=='__main__':main()
