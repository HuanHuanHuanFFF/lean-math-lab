from pathlib import Path
import hashlib,json,argparse
ROOT=Path(__file__).resolve().parents[1]
def run():
    entries=json.loads((ROOT/'sources/SOURCE_MAP.json').read_text())
    for e in entries:
        b=(ROOT/e['copy']).read_bytes()
        if len(b)!=e['bytes'] or hashlib.sha256(b).hexdigest()!=e['sha256']:
            raise ValueError('source copy altered: '+e['copy'])
    return {'status':'PASS','source_files':len(entries),'sha256':[e['sha256'] for e in entries],
            'original_sources_reexecuted':False}
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    ans=run();a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(ans,indent=2)+'\n');print(json.dumps({'status':'PASS','source_files':ans['source_files']}))
