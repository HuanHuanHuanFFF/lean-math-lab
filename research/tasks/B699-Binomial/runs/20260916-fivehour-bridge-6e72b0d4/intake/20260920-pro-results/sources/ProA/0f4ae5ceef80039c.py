#!/usr/bin/env python3
"""Replay limited diagnostics; they are NOT extra coverage theorems.
Prefix and graph experiments intentionally reuse their own discovery arithmetic.
The ten exclusions also receive independent Vandermonde checks in the main ledger.
"""
from pathlib import Path
import argparse,json,contextlib,io
from accept_core import need,save
from verify_trace_ledger import run,trace_check
from edge_slices import rows,exact_probe,check_relation
from graph_unloading import pool,unload
ROOT=Path(__file__).resolve().parents[1]

def verify(out,ledger_dir):
    base=json.loads((ledger_dir/'baseline_ledger_accepted.json').read_text())
    states=[{'h':h,'v':list(v)} for h,v in sorted({(r['h'],tuple(r['v'])) for r in base['records']})]
    old=json.loads((ROOT/'evidence/edge_slices_discovery.json').read_text())
    need([(r['h'],r['v']) for r in old]==[(r['h'],r['v']) for r in states],'prefix source-state coverage')
    prefix=[]
    for s,r in zip(states,old):
        expected=[]
        for test in r['tested']:
            L=test['L'];mons,labs,A=rows(s['h'],s['v'],L);calc=exact_probe(A)
            need(test=={'L':L,'equations':len(A),'variables':len(mons)-1,**calc},'prefix diagnostic mismatch')
            expected.append({'L':L,'equations':len(A),'inconsistent':calc['inconsistent']})
        if r['status']=='excluded':
            need(r['L']==1,'unexpected higher-slice exclusion');_,_,A=rows(s['h'],s['v'],1);check_relation(A,r['certificate'])
            need(not trace_check(s['h'],tuple(s['v']),(0,0,0),0)['allowed'],'first-root-sum independent discrepancy')
        else:need(not any(t['inconsistent'] for t in r['tested']),'missing prefix exclusion')
        prefix.append({**s,'status':r['status'],'tested':expected})
    need(sum(r['status']=='excluded' for r in prefix)==10,'prefix exclusion count')
    oldgraph=json.loads((ROOT/'evidence/graph_unloading_discovery.json').read_text())
    gs=pool();ans=[unload(s,gs) for s in states]
    need(json.loads(json.dumps({'graphs':gs,'states':ans}))==oldgraph,'finite graph diagnostic mismatch')
    need(len(gs)==644 and all(not r['trace'] and r['contradiction'] is None for r in ans),'finite graph boundary changed')
    conditional=[]
    for m,f in [(16,153),(19,33),(19,34)]:
        z=run(m,f,True)
        conditional.append({'middle':m,'free':f,'maximum':z['maximum'],'maximum_records':len(z['records']),
            'first_relaxation':z['records'][0], 'geometric_premises_proved':False})
    need(conditional[-1]['maximum']==9,'conditional next interface changed')
    save(out/'PREFIX_DIAGNOSTIC.json',{'status':'PASS_LIMITED_PREFIX_REPLAY','tested_old_equality_states':93,'excluded':10,'all_exclusions_at_L':1,
         'higher_prefix_test_levels':[2,3,4,6,8],'new_higher_prefix_exclusions':0,'independent_second_implementation':False,'states':prefix})
    save(out/'GRAPH_DIAGNOSTIC.json',{'status':'PASS_LIMITED_FINITE_GRAPH_POOL_REPLAY','graphs':644,'states':93,'forced_factors':0,'exclusions':0,'independent_second_implementation':False})
    save(out/'CONDITIONAL_NEXT_BUDGET.json',{'status':'PASS_CONDITIONAL_BUDGET_ONLY','geometry_not_adopted':True,'queries':conditional})
    print('ACCEPT_DIAGNOSTICS','prefix10; graph0; conditional',[(x['middle'],x['free'],x['maximum']) for x in conditional],flush=True)

def main():
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);p.add_argument('--ledger',type=Path,required=True);a=p.parse_args();need(a.out.is_absolute() and not a.out.exists(),'new diagnostic directory required');a.out.mkdir();verify(a.out,a.ledger)
if __name__=='__main__':main()
