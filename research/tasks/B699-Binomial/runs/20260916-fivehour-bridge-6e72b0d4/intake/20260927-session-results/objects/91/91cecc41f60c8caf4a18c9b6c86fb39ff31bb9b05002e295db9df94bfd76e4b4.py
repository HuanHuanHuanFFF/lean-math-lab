#!/usr/bin/env python3
"""Five deliberate bad claims must be rejected by the separated receiver."""
import argparse,json,subprocess,sys,tempfile,shutil
from pathlib import Path
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def main():
    p=argparse.ArgumentParser();p.add_argument('--cert-dir',type=Path,required=True);a=p.parse_args()
    receiver=Path(__file__).with_name('accept.py')
    cases=[('drop_square_overflow','canonical_partitions.json'),
           ('phantom_negative_odd','canonical_partitions.json'),
           ('unclipped_fifth_valuation','local_nonforcing.json'),
           ('pretend_full_near','canonical_partitions.json'),
           ('pretend_global_norm','local_nonforcing.json')]
    receipts=[]
    for name,fn in cases:
        with tempfile.TemporaryDirectory(prefix='b699-c-r4-mutation-') as td:
            d=Path(td)/'certificates';shutil.copytree(a.cert_dir,d)
            f=d/fn;v=json.loads(f.read_text())
            if name=='drop_square_overflow':v['rows'][1]['I']=17
            elif name=='phantom_negative_odd':v['rows'][0]['p_is_negative_odd_T']=True
            elif name=='unclipped_fifth_valuation':
                r=next(x for x in v['rows'] if x['e']==1 and x['f']==3);r['u']=3
            elif name=='pretend_full_near':v['rows'][2]['contracts']['all_q5_near']=True
            else:v['rows'][0]['global_norm_asserted']=True
            f.write_text(json.dumps(v,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
            r=subprocess.run([sys.executable,str(receiver),'--cert-dir',str(d)],text=True,capture_output=True,timeout=60)
            assert r.returncode!=0, f'mutation accepted: {name}'
            receipts.append({'mutation':name,'result':'REJECTED','exit_code':r.returncode,
                             'error_tail':r.stderr.splitlines()[-3:]})
    print(json.dumps({'status':'PASS','mutations_rejected':len(receipts),'cases':receipts},ensure_ascii=False,sort_keys=True))
if __name__=='__main__':
    if not __debug__:raise RuntimeError('Do not run proof checks with Python -O or -OO.')
    main()
