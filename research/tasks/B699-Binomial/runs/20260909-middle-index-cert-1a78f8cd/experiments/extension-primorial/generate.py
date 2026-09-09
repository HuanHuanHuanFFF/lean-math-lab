#!/usr/bin/env python3
"""Candidate primorial literal and exactly the accepted 512-edge sample; no external prime test."""
from __future__ import annotations
import hashlib, json, math, re
from datetime import datetime, timezone
from pathlib import Path
RUN = Path(__file__).resolve().parents[2]
PREFIX = 'research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean'
OUT = RUN / 'lean/extension/primorial'
BASIS = RUN / 'lean/extension/basis/BasisData.lean'
SAMPLE = RUN / 'lean/extension/basis/End512Basis.lean'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
def prelude(imports):
    return '\n'.join(['import ' + value for value in imports]) + '''

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

'''

basis_match = re.search(r'def basis4473 : List Nat := \[(.*?)\]', BASIS.read_text(encoding='utf-8-sig'), re.S)
ps = [int(n) for n in re.findall(r'\d+', basis_match.group(1))]
if len(ps) != 607:
    raise ValueError('Expected unchanged 607-entry basis')
P = math.prod(ps)
data = prelude([PREFIX + '.extension.PrimePrimorial', PREFIX + '.extension.PrimeBasis4473'])
data += f'''namespace B699MiddleExtension

/-- Candidate natural literal. The following kernel theorem verifies the entire product once. -/
def primorial4473 : Nat := {P}

theorem basis4473_prod_eq : basis4473.prod = primorial4473 := by
  decide +kernel

end B699MiddleExtension

#print axioms B699MiddleExtension.basis4473_prod_eq
'''
data_path = OUT / 'PrimorialData.lean'
data_path.write_text(data, encoding='utf8', newline='\n')
single = prelude([PREFIX + '.extension.primorial.PrimorialData']) + '''namespace B699MiddleExtension.PrimorialSingle

theorem last_check : primorialPrimeCheck 4473 primorial4473 20000093 = true := by
  decide +kernel

theorem last_prime : Nat.Prime 20000093 :=
  primorialPrimeCheck_sound (B := 4473) (P := primorial4473) (p := 20000093) (ps := basis4473)
    basis4473_complete basis4473_prod_eq last_check

end B699MiddleExtension.PrimorialSingle

#print axioms B699MiddleExtension.PrimorialSingle.last_check
#print axioms B699MiddleExtension.PrimorialSingle.last_prime
'''
single_path = OUT / 'SinglePrime.lean'
single_path.write_text(single, encoding='utf8', newline='\n')
sample = SAMPLE.read_text(encoding='utf8')
sample = sample.replace('import ' + PREFIX + '.extension.PrimeBasis4473\nimport ' + PREFIX + '.extension.PrimeBasisChain',
                        'import ' + PREFIX + '.extension.primorial.PrimorialData')
sample = sample.replace('End512Basis', 'End512Primorial')
sample = sample.replace('basisChainCheck 4473 basis4473 184', 'primorialChainCheck 4473 primorial4473 184')
sample = sample.replace('basisChainCheck_sound (B := 4473) (ps := basis4473)',
                        'primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473)')
sample = sample.replace('basis4473_complete check', 'basis4473_complete basis4473_prod_eq check')
sample += '''
namespace B699MiddleExtension

theorem common_of_last512_primorial_edges {n i j : Nat}
    (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnlo : 19912523 ≤ n) (hnhi : n ≤ 20000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  exact B699MiddleIndex.common_of_prime_chain End512Primorial.joined (by omega) hnlo (by omega)
    (by omega) hij hjn

end B699MiddleExtension

#print axioms B699MiddleExtension.common_of_last512_primorial_edges
'''
sample_path = OUT / 'End512Primorial.lean'
sample_path.write_text(sample, encoding='utf8', newline='\n')
manifest = {'generated_utc': datetime.now(timezone.utc).isoformat(), 'generation_only': True,
            'lean_run': False, 'external_primality_check_run': False,
            'basis_source': str(BASIS.relative_to(RUN)), 'basis_source_sha256': sha(BASIS),
            'basis_entries': len(ps), 'primorial_bits': P.bit_length(), 'primorial_decimal_digits': len(str(P)),
            'primorial_literal_sha256': hashlib.sha256(str(P).encode()).hexdigest(),
            'sample_source': str(SAMPLE.relative_to(RUN)), 'sample_source_sha256': sha(SAMPLE),
            'sample_edges': 512, 'sample_nodes': 513, 'first': 19912523, 'last': 20000093,
            'segment_edges': 16, 'segment_count': 32, 'checker_argument_is_literal_definition': True,
            'files': [{'path': str(path.relative_to(RUN)), 'sha256': sha(path), 'bytes': path.stat().st_size}
                      for path in [data_path, single_path, sample_path]]}
manifest_path = Path(__file__).parent / 'generation.json'
manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n', encoding='utf8')
print(json.dumps(manifest, indent=2, ensure_ascii=False))
