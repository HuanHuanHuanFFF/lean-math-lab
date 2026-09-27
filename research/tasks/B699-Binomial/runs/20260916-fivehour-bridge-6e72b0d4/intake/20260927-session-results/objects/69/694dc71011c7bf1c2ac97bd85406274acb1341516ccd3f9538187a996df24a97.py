#!/usr/bin/env python3
"""Require the separated receiver to reject both arithmetic and scope corruptions."""
from __future__ import annotations
import argparse, importlib.util, json, shutil, tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def main()->None:
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path);a=p.parse_args()
    spec=importlib.util.spec_from_file_location('r10_receiver',ROOT/'scripts'/'accept.py')
    assert spec and spec.loader
    mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)
    mod.validate(ROOT/'certificates',False)
    def seed(d):d[0]['all_reduced_seeds'][0][0]=4
    def missing(d):d[0]['all_reduced_seeds']=[]
    def unit(d):d[2]['unit_u']+=1
    def parity(d):d[0]['even_core_mod16']=6
    def m2(d):d['M2_is_retained']=False
    def net(d):d['historical_net_certified']=1
    def pseudo(d):d[0]['current_model']=True
    def odd_g(d):d[-1]['g']=2
    def nonfree(d):d['non_squarefree_guard']['ordinary_w_exists']=True
    def extra(d):d['excluded_unordered_effective_core_pairs'].append([10,31])
    cases=[('wrong_reduced_seed','finite_norm_orbits.json',seed),
           ('missing_finite_seed','finite_norm_orbits.json',missing),
           ('unit_not_norm_one','finite_norm_orbits.json',unit),
           ('reversed_z_parity','parity_bridge.json',parity),
           ('drop_M2','scope.json',m2),('invent_net_deletion','scope.json',net),
           ('norm_point_called_current_model','auxiliary_survivors.json',pseudo),
           ('fake_true_gcd','ordinary_regressions.json',odd_g),
           ('rational_square_as_integer_square','parametric_unit.json',nonfree),
           ('unproved_extra_pair','scope.json',extra)]
    results=[]
    with tempfile.TemporaryDirectory(prefix='r10_mutations_') as td:
        for label,name,change in cases:
            dst=Path(td)/label;shutil.copytree(ROOT/'certificates',dst)
            obj=json.loads((dst/name).read_text());change(obj)
            (dst/name).write_text(json.dumps(obj))
            try:mod.validate(dst,False)
            except (AssertionError,ValueError,KeyError,TypeError,IndexError) as exc:
                results.append({'case':label,'rejected':True,'exception':type(exc).__name__})
            else:raise RuntimeError('Receiver accepted corruption: '+label)
    out={'status':'PASS','cases':results,'rejected':len(results)}
    text=json.dumps(out,indent=2,sort_keys=True)+'\n'
    if a.out:a.out.write_text(text)
    print(text,end='')
if __name__=='__main__':main()
