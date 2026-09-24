#!/usr/bin/env python3
"""Adversarial checks of the exact receivers; only writes the requested new directory."""
from __future__ import annotations
import argparse,json,subprocess
try:
    import resource
except ImportError:
    resource=None
from pathlib import Path
import certify as C
ROOT=Path(__file__).resolve().parents[1]

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);ap.add_argument('--minor-bin',required=True)
    a=ap.parse_args();out=Path(a.out).resolve();out.mkdir(parents=True,exist_ok=False)
    if resource is not None:resource.setrlimit(resource.RLIMIT_CORE,(0,0))
    gates=(ROOT/'certificates/geometry/q16r4.gates').read_text().splitlines()
    ranks=(ROOT/'certificates/geometry/q16r4.cross.ranks').read_text().splitlines()
    results=[]
    def gate_test(name,ls):
        p=out/(name+'.gates');p.write_text('\n'.join(ls)+'\n')
        try:C.validate_gates(p,16,4)
        except (AssertionError,ValueError) as e:results.append(dict(test=name,rejected=True,message=str(e)));return
        raise AssertionError(('corruption accepted',name))
    C.validate_gates(ROOT/'certificates/geometry/q16r4.gates',16,4)
    gate_test('duplicate_gate',gates+[gates[0]])
    gate_test('omitted_gate',gates[:-1])
    v=list(map(int,gates[0].split()));v[5]+=1
    gate_test('changed_multiplicity',[' '.join(map(str,v))]+gates[1:])
    v=list(map(int,gates[0].split()));v[3]+=1
    gate_test('changed_extra_root',[' '.join(map(str,v))]+gates[1:])
    smallg=out/'one_valid.gates';smallg.write_text(gates[0]+'\n')
    def minor_test(name,line,expect_reject):
        p=out/(name+'.ranks');p.write_text(line+'\n')
        r=subprocess.run([str(Path(a.minor_bin).resolve()),str(smallg),str(p),'16','4'],capture_output=True,text=True)
        (out/(name+'.log')).write_text(r.stdout+r.stderr)
        if expect_reject:
            assert r.returncode!=0,('minor corruption accepted',name)
            results.append(dict(test=name,rejected=True,returncode=r.returncode,message=(r.stdout+r.stderr).strip()))
        else:assert r.returncode==0, r.stdout+r.stderr
    minor_test('valid_minor_control',ranks[0],False)
    v=list(map(int,ranks[0].split()));old=v[2];new=1
    while new in (old,(-old)%32719):new+=1
    v[2]=new;minor_test('changed_determinant',' '.join(map(str,v)),True)
    v=list(map(int,ranks[0].split()));v[3]=300000
    minor_test('nonnecessary_jet',' '.join(map(str,v)),True)
    assert len(results)==6 and all(x['rejected']for x in results)
    C.dump(out/'negative_tests.json',dict(status='PASS_SIX_NEGATIVE_TESTS',rejected_tests=6,positive_full_gate_control=True,positive_minor_control=True,results=results))
    print('PASS_SIX_NEGATIVE_TESTS')
if __name__=='__main__':main()
