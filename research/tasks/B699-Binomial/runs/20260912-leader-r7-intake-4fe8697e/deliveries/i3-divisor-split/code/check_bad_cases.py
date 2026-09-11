
import copy,importlib.util,json,sys
from pathlib import Path
from math import gcd
here=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location("independent",here/"check_e.py")
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
def main(cert,out):
    good=json.loads(Path(cert).read_text())
    expected=m.rebuild(3,1048576)
    m.check_payload(good,expected)
    cases=[]
    def trial(name,fn):
        d=copy.deepcopy(good);fn(d)
        try:m.check_payload(d,expected)
        except (ValueError,KeyError,TypeError,IndexError):cases.append(name)
        else:raise AssertionError("accepted bad certificate "+name)
    trial("drop_a_raw_row",lambda d:d["raw"].pop())
    trial("duplicate_a_raw_row",lambda d:d["raw"].append(d["raw"][0]))
    trial("change_endpoint_n",lambda d:d["raw"][0].__setitem__(0,d["raw"][0][0]+1))
    trial("alter_prime_power_alpha",lambda d:d["raw"][0].__setitem__(4,d["raw"][0][4]+1))
    trial("alter_gcd_factor_d",lambda d:d["raw"][0].__setitem__(6,d["raw"][0][6]+2))
    trial("wrong_e",lambda d:d.__setitem__("e",5))
    trial("raise_old_coverage",lambda d:d.__setitem__("old_beta_bound",1048577))
    trial("false_first_candidate",lambda d:d["first"].append(d["raw"][0]))
    trial("false_final_candidate",lambda d:d["second"].append(d["raw"][0]))
    trial("omit_final_array",lambda d:d.pop("second"))
    trial("wrong_raw_count",lambda d:d.__setitem__("integral_d",8))
    trial("truncate_first_to_avoid_rejection",lambda d:d.__setitem__("first",None))
    for e,b in [(2,1048576),(9,1048576),(3,-1)]:
        try:m.rebuild(e,b)
        except ValueError:cases.append("invalid_domain_"+str(e)+"_"+str(b))
        else:raise AssertionError("invalid domain accepted")
    # Explicit non-vacuous counterexample to the cancellation without 4|n.
    n,j=146,30;g=gcd(n,j);beta=j//g;d=gcd(beta,n-1);e=beta//d;h=(n-1)//d
    assert 6*g*e*(g*e-h)*(g*e-2*h)%(n-2)==0
    assert 6*e*(g*e-h)*(g*e-2*h)%(n-2)!=0
    Path(out).write_text(json.dumps({"status":"PASS","rejected":cases,"count":len(cases)},indent=2,sort_keys=True)+"\n")
    print("PASS",len(cases),"rejection cases")
if __name__=="__main__":main(sys.argv[1],sys.argv[2])
