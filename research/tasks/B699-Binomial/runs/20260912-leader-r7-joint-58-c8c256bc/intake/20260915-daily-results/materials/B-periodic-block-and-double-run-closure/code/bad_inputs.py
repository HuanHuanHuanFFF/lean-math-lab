#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,json
from check_certificate import check
def main():
    ap=argparse.ArgumentParser();ap.add_argument("--out",type=Path,required=True)
    out=ap.parse_args().out
    orig=json.loads((out/"period_certificate.json").read_text())
    mutations=[
      ("drop cubic case",lambda d:d["cube"][1]["cases"].pop()),
      ("duplicate cubic case",lambda d:d["cube"][0]["cases"].append(d["cube"][0]["cases"][0])),
      ("false bound",lambda d:d["finite_bounds"].update(cube_base_max=100)),
      ("wrong resultant constant",lambda d:d["cube"][0].update(constant=100)),
      ("omit divisor",lambda d:d["cube"][1]["divisors"].pop()),
      ("alter residual",lambda d:d["cube"][0]["cases"][0].__setitem__(3,0)),
      ("drop quotient",lambda d:d["cube"].pop()),
      ("wrong case count",lambda d:d.update(cube_case_count=6)),
      ("omit legal exception",lambda d:d["double_single_run_exceptions"].pop()),
      ("zero exception residual",lambda d:d["double_single_run_exceptions"][0].__setitem__(2,0)),
      ("unknown schema",lambda d:d.update(schema="B699-periodic-relaxed")),
    ]
    accepted=[]
    for name,fn in mutations:
        item=copy.deepcopy(orig);fn(item)
        try:check(item)
        except (ValueError,KeyError,TypeError,IndexError):accepted.append(name)
        else:raise AssertionError("checker accepted corrupted certificate: "+name)
    ans={"rejected":len(accepted),"tests":accepted,
         "note":"rejection tests validate this certificate contract, not falsity of every altered theorem"}
    (out/"bad_inputs.json").write_text(json.dumps(ans,indent=2)+"\n")
    print(json.dumps({"rejected":len(accepted),"status":"passed"}))
if __name__=="__main__":main()
