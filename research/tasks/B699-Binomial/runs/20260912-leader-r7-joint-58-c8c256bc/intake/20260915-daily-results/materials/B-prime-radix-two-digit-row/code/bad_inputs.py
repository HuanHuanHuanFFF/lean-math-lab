"""Fail-closed mutations of the finite proof certificate."""
from copy import deepcopy
from pathlib import Path
import argparse,json
from check import validate

def run(path):
    original=json.loads(path.read_text())
    edits=[]
    def trial(name, edit):
        data=deepcopy(original);edit(data)
        try:validate(data)
        except (ValueError,TypeError,KeyError,IndexError):edits.append(name)
        else:raise ValueError('bad certificate was accepted: '+name)
    trial('wrong coefficient coverage',lambda d:d.__setitem__('coefficient_cap',9))
    trial('delete parameter row',lambda d:d['rows'].pop())
    trial('duplicate parameter row',lambda d:d['rows'].append(d['rows'][0]))
    trial('alter highest exponent',lambda d:d['rows'][0].__setitem__(3,d['rows'][0][3]+1))
    trial('delete complete digit frontier',lambda d:d['frontier'].pop())
    trial('zero first-window remainder',lambda d:d['frontier'][0].__setitem__(-1,0))
    trial('replace full g by radical surrogate',lambda d:d['frontier'][0].__setitem__(-2,1))
    trial('alter low prime power exponent',lambda d:d['frontier'][0].__setitem__(4,3))
    trial('delete small-base endpoint',lambda d:d['small_base'].pop())
    trial('use prime 2 as odd witness',lambda d:d['small_base'][0].__setitem__(2,2))
    trial('composite witness',lambda d:d['small_base'][0].__setitem__(2,9))
    trial('floating exponent',lambda d:d['rows'][0].__setitem__(3,float(d['rows'][0][3])))
    trial('false coverage count',lambda d:d['statistics'].__setitem__('legal_digit_pairs',0))
    return {'status':'PASS','rejected_mutations':edits,'count':len(edits)}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True);ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    ans=run(a.certificate);a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(ans,indent=2)+'\n');print(json.dumps(ans))
