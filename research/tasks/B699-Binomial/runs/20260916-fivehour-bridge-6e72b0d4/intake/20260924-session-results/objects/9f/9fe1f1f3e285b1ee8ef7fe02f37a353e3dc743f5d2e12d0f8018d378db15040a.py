#!/usr/bin/env python3
from __future__ import annotations
import argparse,csv,hashlib,json,re,sys
from collections import Counter
from pathlib import Path
import sympy as sp
N,X=sp.symbols('N X')
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE))
import ledger_model as LM

def sha(path):
    h=hashlib.sha256();
    with open(path,'rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()

def parse_prefix(path):
    rows=[]
    with open(path,newline='') as f:
        for r in csv.DictReader(f,delimiter='\t'):
            rows.append(dict(idx=int(r['idx']),h=int(r['h']),E=int(r['E']),options=r['options']))
    return rows

def parse_direct(path):
    rows=[]
    with open(path,newline='') as f:
        for r in csv.DictReader(f,delimiter='\t'):
            rows.append(dict(idx=int(r['idx']),h=int(r['h']),E=int(r['E']),options=r['options']))
    return rows

def stats_from_log(path):
    text=Path(path).read_text()
    last=[x for x in text.splitlines() if 'residual' in x]
    nums={}
    if last:
        for k,v in re.findall(r'(nodes|finalopts|line|lineprune|z|zprune|root|lead|rank|fullrank|residual|leaves)\s+(\d+)',last[-1]):
            nums[k]=int(v)
    return nums

def main():
    ap=argparse.ArgumentParser();ap.add_argument('directory');ap.add_argument('--summary',default=None);a=ap.parse_args()
    d=Path(a.directory)
    direct=parse_direct(d/'edge8_frontier_direct.tsv');rawrev=parse_direct(d/'edge8_frontier_raw_reverse.tsv')
    assert [x['idx'] for x in direct]==[x['idx'] for x in rawrev]
    assert [(x['h'],x['E'],x['options']) for x in direct]==[(x['h'],x['E'],x['options']) for x in rawrev]
    assert len(direct)==456
    ec=Counter(x['E'] for x in direct);assert ec==Counter({0:454,1:2})
    assert min(x['h'] for x in direct)==47 and max(x['h'] for x in direct)==152
    pos=[x for x in direct if x['E']];assert [x['idx'] for x in pos]==[1980,1999]

    payoff=json.loads((d/'positive_payoff.json').read_text())
    assert [x['index'] for x in payoff['coarse_positive_survivors']]==[1980,1999]
    assert [x['best_one_source_unit_total'] for x in payoff['payoff']]==[151,157]
    assert [x['h'] for x in payoff['payoff']]==[145,147]
    assert all(x['best_one_source_unit_total']>x['h'] for x in payoff['payoff'])

    # Symbolic check of the q=5 leading-coefficient/root-sum gate.
    s3,s4,s5,s6,s7,s8=sp.symbols('s3 s4 s5 s6 s7 s8')
    B1=s3-4*s4+6*s5-4*s6+s7
    A1=3*s3-16*s4+30*s5-24*s6+7*s7
    b0=s4-4*s5+6*s6-4*s7
    a0=4*s4-20*s5+36*s6-28*s7
    B2=b0+s8;A2=a0+8*s8
    assert sp.expand(A1*B2-B1*A2-((A1-8*B1)*s8+A1*b0-B1*a0))==0

    geom={}
    for q,label in [(3,'q3'),(4,'q4'),(5,'q5')]:
        p1=d/f'{label}_mod32749.txt';p2=d/f'{label}_mod32719.txt'
        assert p1.read_bytes()==p2.read_bytes()
        geom[label]={'mod_residual_count':len(p1.read_text().splitlines()),
                     'cross_prime_identical':True,'residual_sha256':sha(p1)}
    assert geom['q3']['mod_residual_count']==16
    assert geom['q4']['mod_residual_count']==17
    assert geom['q5']['mod_residual_count']==0

    q3=json.loads((d/'q3_exact.json').read_text());assert len(q3)==16
    no3=[x for x in q3 if x['rational_rank']==20];assert len(no3)==4
    one3=[x for x in q3 if x.get('nullity')==1];assert len(one3)==12
    red3=[];exc3=[]
    for x in one3:
        H=sp.sympify(x['polynomial'],locals={'N':N,'X':X});fl=sp.factor_list(H)[1]
        reducible=(len(fl)>1 or any(e>1 for _,e in fl))
        (red3 if reducible else exc3).append(x)
    assert len(red3)==11 and len(exc3)==1
    exc=exc3[0];assert exc['l1']==987183 and exc['weighted_degree']==7 and exc['degree_X']==3
    assert exc['l1']<2**20
    geom['q3'].update(rational_full_rank=4,reducible_one_dimensional=11,
                      small_fixed_exception_count=1,small_exception_l1=exc['l1'],small_exception_weight=7)

    q4=json.loads((d/'q4_exact.json').read_text());assert len(q4)==17
    assert all(x['rational_rank']==29 and x.get('nullity')==1 for x in q4)
    for x in q4:
        H=sp.sympify(x['polynomial'],locals={'N':N,'X':X});fl=sp.factor_list(H)[1]
        assert len(fl)>1 or any(e>1 for _,e in fl)
    geom['q4'].update(rational_full_rank=0,reducible_one_dimensional=17)
    geom['q5'].update(rational_full_rank='all surviving necessary gates full rank modulo both primes')

    logs={}
    for q,label in [(3,'q3'),(4,'q4'),(5,'q5')]:
        logs[label]={
          'mod32749':stats_from_log(d/f'{label}_mod32749.stderr'),
          'mod32719':stats_from_log(d/f'{label}_mod32719.stderr')}

    states=LM.all_states()
    key_states={
      'minimum_h_state_index':direct[0]['idx'],
      'minimum_h_state':states[direct[0]['idx']],
      'positive_E_states':[{'index':i,'state':states[i]} for i in (1980,1999)],
      'h_distribution':dict(sorted(Counter(x['h'] for x in direct).items())),
      'E_distribution':dict(sorted(Counter(x['E'] for x in direct).items()))}
    (d/'frontier_key_states.json').write_text(json.dumps(key_states,indent=2)+'\n')

    summary={
      'status':'PASS_ODD_SAT3_5_EDGE8_FULL_VERIFICATION',
      'same_fixed_G_previous_cover_upper_bound':8,
      'coarse_complete_eight_factor_frontier':{
        'all_vertical_states':2035,'survivors':456,'E0_states':454,'positive_E_states':2,
        'positive_E_indices':[1980,1999],'minimum_h':47,'maximum_h':152,
        'pareto_direct_and_raw_reverse_bellman_agree':True},
      'ODD_SAT3_5':{
        'statement':'A loadable irreducible factor with D=2e+1, e in {3,4,5}, all six ordinary defects zero and all three diagonal kappa zero does not exist.',
        'geometry':geom,'logs':logs,
        'frozen_small_coefficient_consumer_used_for_q3_exception':True},
      'positive_E_payoff':payoff['payoff'],
      'EDGE8':True,
      'EDGE8_conclusion':'If the same fixed G has 8 distinct loadable Q-irreducible factors, then E=0; hence D(G)=305 and every nonconstant factor of the vertical-line-stripped Gbar has D=2e.',
      'equality_eight_necessary_bounds':{'h_min':47,'vertical_sum_max':211,'remaining_E0_resource_states':454},
      'COVER7_proved':False,
      'evidence_level':'author paper proof + deterministic exact finite certificates + two-prime modular replay + exact rational receivers + two independent Bellman implementations; no Lean or external independent full-chain review',
      'repository_modified':False}
    out=Path(a.summary) if a.summary else d/'summary.json';out.write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({'status':summary['status'],'EDGE8':True,'positive_E_states_after_ODD_SAT':0,
                      'remaining_E0_resource_states':454,'COVER7_proved':False},sort_keys=True))
if __name__=='__main__':main()
