#!/usr/bin/env python3
import argparse,hashlib,json,zipfile
from pathlib import Path

def run(root):
    intake=json.loads((root/'sources/INTAKE.json').read_text())
    results=[];member_count=0
    for key,source in zip(['b','d'],intake['adopted']):
        arc=root/'sources'/f'{key}-original.zip'
        data=arc.read_bytes();hh=hashlib.sha256(data).hexdigest()
        assert len(data)==source['bytes'] and hh==source['sha256']
        checked=[]
        with zipfile.ZipFile(arc) as z:
            assert z.testzip() is None
            for p in sorted((root/'sources'/key).rglob('*')):
                if not p.is_file():continue
                name=p.relative_to(root/'sources'/key).as_posix()
                original=z.read(name);assert p.read_bytes()==original
                checked.append({'member':name,'bytes':len(original),'sha256':hashlib.sha256(original).hexdigest()})
        member_count+=len(checked)
        results.append({'archive':arc.relative_to(root).as_posix(),'bytes':len(data),'sha256':hh,'crc':'PASS','checked_text_members':checked})
    return {'status':'PASS','archives':results,'text_members':member_count,
            'historical_experiments_reexecuted':False,
            'context_sha256':intake['context']['sha256']}

def main():
    p=argparse.ArgumentParser();p.add_argument('--output',required=True);a=p.parse_args();root=Path(__file__).resolve().parents[1]
    out=run(root);Path(a.output).write_text(json.dumps(out,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'archives':len(out['archives']),'text_members':out['text_members']},sort_keys=True))
if __name__=='__main__':
    if not __debug__:raise SystemExit('Do not run this checker with Python -O.')
    main()
