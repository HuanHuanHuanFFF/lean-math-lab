
"""Optional early diagnostics. Not part of the accepted infinite-quantifier proof."""
import json,math,sys,subprocess,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def content3(n,j):
    k=n-j
    h=math.gcd(math.gcd(math.comb(k,3),j*math.comb(k,2)),math.gcd(k*math.comb(j,2),math.comb(j,3)))
    return math.comb(n,3)//h
def main():
    pure=[]
    for n in range(8,1801):
        for j in range(4,n//2+1):
            l=content3(n,j)
            if l>0 and l&(l-1)==0:pure.append([n,j])
    assert not pure
    with tempfile.TemporaryDirectory(prefix="b699-split-probe-") as td:
        td=Path(td)
        subprocess.run(["g++","-O3","-std=c++17",str(ROOT/"code/enumerate_e.cpp"),"-o",str(td/"a")],check=True)
        for e in (1,3):
            subprocess.run([str(td/"a"),str(e),"0",str(td/f"e{e}.json")],check=True)
            old=json.loads((ROOT/f"exploration/probe_all_e{e}.json").read_text())
            new=json.loads((td/f"e{e}.json").read_text())
            # New frozen producer adds a raw array; the early diagnostic predates that field.
            for k,v in old.items():assert new[k]==v,(e,k)
    print("PASS optional finite diagnostics; no infinite conclusion inferred")
if __name__=="__main__":main()
