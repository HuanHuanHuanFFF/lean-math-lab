"""Reproduce the frozen candidate bytes from the frozen ordinary source inputs.

Run only when reproducing or revising this delivery is intended. This script
does not execute Lean, install anything, contact a network, or edit repo pins.
"""
from pathlib import Path
import hashlib,json,sys,runpy
sys.dont_write_bytecode=True
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE))
from inventory import ROOT,OUT
binding=json.loads((OUT/'SOURCE-CLOSURES.json').read_text(encoding='utf-8'))
for scope in binding.values():
 for entry in scope['entries']:
  source=ROOT/entry['path']
  actual=hashlib.sha256(source.read_bytes()).hexdigest()
  if actual!=entry['sha256']:raise RuntimeError('fixed source drift: '+entry['path'])
from slice_core import slice_for
slice_for('middle',[
 'B699Middle.common_of_valid_height','B699Middle.heightValid_of_raw',
 'B699MiddleIndex.common_of_prime_chain','B699MiddleExtension.primorialChainCheck_sound',
 'B699MiddleExtension.basisRangeCheck_sound','B699MiddleExtension.BasisCompleteOn.trans',
 'B699MiddleExtension.BasisCompleteOn.to_complete','B699Middle.fastSmallPrimeCount_eq'])
slice_for('tail',[
 'B699ContinuationIC.row_common','B699TailGap.common_of_top_prime',
 'B699ModernSieve.primeCounting_sieve_upper','B699ModernSieve.survivors_card_floor_formula',
 'B699ModernPrunedSieve.count_eq_floorSum'])
for name in ['build_middle_candidates.py','build_high_candidate.py']:
 runpy.run_path(str(HERE/name),run_name='__main__')
frozenPath=OUT/'FROZEN-DELIVERY-STRUCTURAL.json'
if not frozenPath.is_file():frozenPath=OUT/'FROZEN-DELIVERY.json'
frozen=json.loads(frozenPath.read_text(encoding='utf-8'))
for entry in frozen['artifactFiles']:
 actual=hashlib.sha256((ROOT/entry['path']).read_bytes()).hexdigest()
 if actual!=entry['sha256']:raise RuntimeError('candidate differs from frozen leaf: '+entry['path'])
print('All three candidate source byte hashes match frozen delivery; this is not Lean acceptance.')
