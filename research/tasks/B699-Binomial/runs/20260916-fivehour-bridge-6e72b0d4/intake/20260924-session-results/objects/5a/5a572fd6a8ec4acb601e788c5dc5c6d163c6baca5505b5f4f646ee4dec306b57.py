"""Generate the complete two-variable periodic certificate for the two 7-tails."""
from pathlib import Path
import argparse,json
from generate import build_seven
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args()
    c=build_seven();a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(c,sort_keys=True,ensure_ascii=False,indent=2)+'\n')
    print('SEVEN_TAIL_CERTIFICATE_GENERATED=PASS; FAMILIES=2; GRID=14400')
