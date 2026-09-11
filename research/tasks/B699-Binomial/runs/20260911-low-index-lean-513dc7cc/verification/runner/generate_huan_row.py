"""Portable file output wrapper for the unchanged phase-A mathematical generator."""
from pathlib import Path
import argparse, contextlib, hashlib, importlib.util, io, json, sys

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--i',type=int,required=True)
    p.add_argument('--plan',type=Path,required=True)
    args=p.parse_args()
    if args.plan.exists():raise RuntimeError('Preserve existing generation plan')
    original=Path(__file__).with_name('generate_row.py')
    spec=importlib.util.spec_from_file_location('huan_frozen_generator',original)
    module=importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    def save(path,text):
        path.parent.mkdir(parents=True,exist_ok=True)
        if path.exists():
            if path.read_text(encoding='utf-8')!=text:
                raise RuntimeError('Preserve existing differing source: '+str(path))
        else:path.write_text(text,encoding='utf-8',newline='\n')
    module.save=save
    saved=sys.argv
    sys.argv=[str(original),'--i',str(args.i),'--plan',str(args.plan)]
    try:
        with contextlib.redirect_stdout(io.StringIO()):module.main()
    finally:sys.argv=saved
    data=json.loads(args.plan.read_text(encoding='utf-8'))
    for name in ['root','frozen_source']:data[name]=data[name].replace('\\','/')
    data['roots']=[x.replace('\\','/') for x in data['roots']]
    for row in data['outputs']:row['path']=row['path'].replace('\\','/')
    data['portable_wrapper_sha256']=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    data['mathematical_generator_sha256']=hashlib.sha256(original.read_bytes()).hexdigest()
    args.plan.write_text(json.dumps(data,indent=2)+'\n',encoding='utf-8',newline='\n')
    print(json.dumps({'i':args.i,'modules':len(data['outputs']),'goods':data['goods'],'layers':data['layers'],'root':data['root']}))
if __name__=='__main__':main()
