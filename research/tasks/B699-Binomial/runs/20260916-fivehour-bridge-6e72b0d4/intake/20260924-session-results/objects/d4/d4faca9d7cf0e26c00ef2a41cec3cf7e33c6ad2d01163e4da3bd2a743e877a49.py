#!/usr/bin/env python3
"""Offline full regeneration, dual-prime ranks, alternate minors and frontier replay."""
from pathlib import Path
from datetime import datetime,timezone
import argparse,subprocess,sys,json,time,hashlib,platform,os
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'code'))
from verify_geometry import BATCHES,verify

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def make_summary(dst):
    g=json.loads((dst/'certificates/geometry/verification.json').read_text())
    l=json.loads((dst/'certificates/ledger/refinement_summary.json').read_text())
    s=dict(status='PASS_RATIONAL58_R3K_PARTIALTRACE_H63',date='2026-09-24',
        fixed_G_cover=8,EDGE8='adopted frozen theorem',minimum_equality_h=63,maximum_vertical_sum=179,
        input_E0_states=381,remaining_E0_states=347,geometry_state_deletions=29,trace_lattice_state_deletions=5,
        complete_geometry_systems=g['total_systems'],two_prime_full_rank_checks=g['two_prime_full_rank_checks'],
        independently_reconstructed_minor_count=g['total_systems'],
        repaired_q6_q7_gate_counts=[321,1302],new_q8_q9_gate_counts=[4264,12536],
        near_r3_q13_q14_q15_gate_counts=[147,232,354],
        state666_complete_multisets=5,remaining_lowest_state=875,
        necessary_states_not_actual_curves=True,COVER7_proved=False,original_NC9_finite_bound=False,
        Lean=False,external_independent_full_chain_review=False,repository_writes=False,
        scope='Author mathematics conditional on frozen inputs; exact computations, not formal proof objects.')
    assert l['final_E0_states']==s['remaining_E0_states'] and l['minimum_equality_h']==63
    (dst/'certificates/summary.json').write_text(json.dumps(s,indent=2)+'\n')
    return s

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);ap.add_argument('--no-compare',action='store_true')
    args=ap.parse_args();dst=Path(args.out).resolve()
    if dst.exists():raise SystemExit('Output directory must not already exist.')
    dst.mkdir(parents=True);(dst/'bin').mkdir();(dst/'logs').mkdir();(dst/'certificates/geometry').mkdir(parents=True);(dst/'certificates/ledger').mkdir(parents=True)
    begun=datetime.now(timezone.utc).isoformat();started=time.monotonic();commands=[]
    env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
    def run(cmd,label,expect=0):
        t=time.monotonic();p=subprocess.run([str(x) for x in cmd],stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True,env=env,cwd=dst)
        (dst/'logs'/f'{label}.log').write_text(p.stdout)
        commands.append(dict(label=label,command=[str(x) for x in cmd],returncode=p.returncode,elapsed_seconds=time.monotonic()-t))
        if expect==0 and p.returncode!=0:raise RuntimeError(f'{label} failed: {p.stdout[-2000:]}')
        if expect!=0 and p.returncode==0:raise RuntimeError(f'{label}: corrupted certificate was accepted')
        print('PASS',label,flush=True)
    def compile(src,name,extra=()):
        out=dst/'bin'/name
        run(['g++','-O2','-std=c++17',*extra,ROOT/'code'/src,'-o',out],f'compile_{name}')
        return out
    fg=compile('rational58_gates.cpp','f58_gates');ng=compile('near3_gates.cpp','r3_gates')
    jets={}
    for kind,src in [('f58','rational58_jets.cpp'),('r3','near3_jets.cpp')]:
        for p in (32749,32719):jets[kind,p]=compile(src,f'{kind}_p{p}',[f'-DMODULUS={p}'])
    minor=compile('verify_minors.cpp','verify_minors')
    for kind,q,n in BATCHES:
        stem=f'{kind}_q{q}';gate=dst/'certificates/geometry'/f'{stem}_gates.txt'
        run([fg if kind=='f58' else ng,q,gate],stem+'_generate')
        assert len(gate.read_text().splitlines())==n
        for p in (32749,32719):run([jets[kind,p],gate,dst/'certificates/geometry'/f'{stem}_p{p}.txt',q],f'{stem}_rank_{p}')
        run([minor,gate,dst/'certificates/geometry'/f'{stem}_p32719.txt',q,58 if kind=='f58' else 3],stem+'_alternate_minor')
    verify(dst)
    # A saved determinant header corrupted to zero must be rejected by the alternate checker.
    one=(dst/'certificates/geometry/f58_q6_gates.txt').read_text().splitlines()[0]
    rr=(dst/'certificates/geometry/f58_q6_p32719.txt').read_text().splitlines()[0].split();rr[2]='0'
    (dst/'logs/tamper_gate.txt').write_text(one+'\n');(dst/'logs/tamper_rank.txt').write_text(' '.join(rr)+'\n')
    run([minor,dst/'logs/tamper_gate.txt',dst/'logs/tamper_rank.txt',6,58],'reject_zero_determinant',expect=1)
    for mode,src in [('direct','eight_frontier_direct.cpp'),('raw_reverse','eight_frontier_raw_reverse.cpp')]:
        exe=compile(src,'ledger_'+mode);run([exe,dst/'certificates/ledger'/f'coarse_{mode}.tsv'],'ledger_'+mode)
    run([sys.executable,'-B',ROOT/'code/frontier_refine.py',dst],'trace_lattice_refinement')
    summary=make_summary(dst)
    files=sorted(x for x in (dst/'certificates').rglob('*') if x.is_file());comparisons=[]
    for p in files:
        rel=p.relative_to(dst);old=ROOT/rel
        ok=old.exists() and old.read_bytes()==p.read_bytes()
        comparisons.append(dict(path=str(rel),sha256=sha(p),byte_identical=ok))
        if not args.no_compare and not ok:raise RuntimeError('Certificate differs: '+str(rel))
    receipt=dict(status='PASS_FULL_CLEAN_REPLAY_H63',begun_utc=begun,finished_utc=datetime.now(timezone.utc).isoformat(),
        elapsed_seconds=time.monotonic()-started,python=sys.version,gpp=subprocess.check_output(['g++','--version'],text=True).splitlines()[0],
        platform=platform.platform(),commands=commands,certificates= comparisons,files_compared=len(files),
        all_byte_identical=all(x['byte_identical'] for x in comparisons),
        geometry_systems=19156,two_prime_checks=38312,alternate_minors=19156,
        final_E0_states=347,minimum_equality_h=63,network_used_by_replay=False,
        original_frozen_geometry_not_rerun=True,Lean=False,repository_writes=False)
    (dst/'REPLAY_RECEIPT.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(receipt['status'], 'files',len(files),'byte_identical',receipt['all_byte_identical'],flush=True)
if __name__=='__main__':main()
