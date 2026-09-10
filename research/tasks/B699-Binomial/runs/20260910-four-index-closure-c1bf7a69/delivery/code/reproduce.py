#!/usr/bin/env python3
"""Replay only this round's acceptance chain; preserve real logs and hashes."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,subprocess,sys,time,platform
ROOT=Path(__file__).resolve().parents[1]
REPLAY=ROOT/'replay'
SCRIPTS=['seed_certify.py','check_seed_powers.py','graph_select.py',
 'check_graph_heights.py','block_compress.py','check_blocks.py',
 'generate_four_certificate.py','check_four_certificate.py','test_new_lemmas.py']
MATH=['outputs/seed_constants.json','outputs/seed_power_check.json','outputs/graph_select.json',
 'outputs/absolute_heights.json','outputs/block_certificate.json','outputs/block_check.json',
 'input/cofactor_edges.json','input/compressed_heights.json','outputs/four_index_certificate.json',
 'outputs/new_lemma_tests.json']

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def clock():return datetime.now(timezone.utc).isoformat()
def snapshot(paths):return {str(p.relative_to(ROOT)):sha(p) for p in sorted(paths)}

def main():
    REPLAY.mkdir(exist_ok=True)
    sources=list((ROOT/'code').glob('*.py'))+list((ROOT/'input/original').glob('*.zip'))+[ROOT/'input/provenance.json']
    before_source=snapshot(sources);before_math=snapshot([ROOT/p for p in MATH]);runs=[];start=clock();t=time.monotonic()
    for k,name in enumerate(SCRIPTS,1):
        command=[sys.executable,str(ROOT/'code'/name)]
        stdout=REPLAY/f'{k:02d}-{Path(name).stem}.stdout.txt';stderr=REPLAY/f'{k:02d}-{Path(name).stem}.stderr.txt'
        t0=time.monotonic();beg=clock()
        with stdout.open('wb') as out,stderr.open('wb') as err:
            try:r=subprocess.run(command,cwd=ROOT,stdout=out,stderr=err,timeout=150)
            except subprocess.TimeoutExpired:
                raise RuntimeError(f'Timeout in {name}; logs preserved')
        record=dict(script=name,argv=command,start_utc=beg,end_utc=clock(),seconds=time.monotonic()-t0,
          returncode=r.returncode,stdout=str(stdout.relative_to(ROOT)),stderr=str(stderr.relative_to(ROOT)),
          stdout_sha256=sha(stdout),stderr_sha256=sha(stderr))
        runs.append(record)
        print(json.dumps({k:v for k,v in record.items() if k in ['script','seconds','returncode']}),flush=True)
        if r.returncode:
            (REPLAY/'reproduction.json').write_text(json.dumps(dict(status='FAIL',runs=runs),indent=2))
            raise RuntimeError(f'{name} failed; see preserved logs')
    after_source=snapshot(sources);after_math=snapshot([ROOT/p for p in MATH])
    assert before_source==after_source,'Source/input changed during replay'
    assert before_math==after_math,'Regenerated mathematical data differ from frozen release candidates'
    out=dict(status='PASS',start_utc=start,end_utc=clock(),total_seconds=time.monotonic()-t,
       python=sys.version,platform=platform.platform(),runs=runs,
       source_input_hashes_before=before_source,source_input_hashes_after=after_source,
       mathematical_hashes_before=before_math,mathematical_hashes_after=after_math,
       mathematical_outputs_byte_identical=True,source_inputs_unchanged=True,
       lean_run=False,external_theorem_proofs_rechecked=False,
       scope='This round only. BFT and infinite symbolic deductions remain paper mathematics, not a theorem-prover check.')
    (REPLAY/'reproduction.json').write_text(json.dumps(out,indent=2))
    print(json.dumps(dict(status='PASS',total_seconds=out['total_seconds'],commands=len(runs),mathematical_files=len(MATH))),flush=True)
if __name__=='__main__':main()
