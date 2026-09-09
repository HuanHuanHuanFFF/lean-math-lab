#!/usr/bin/env python3
"""Generate only the original 20m chain final 512 edges; no Lean or external primality run."""
from __future__ import annotations
import hashlib, json
from datetime import datetime, timezone
from pathlib import Path
RUN = Path(__file__).resolve().parents[2]
PREFIX = 'research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean'
INPUT = RUN / 'inputs/original20m/outputs/prime_chain_20m.txt'
EXPECTED_SHA = 'a4954fc348879a5bff3bb91e8448f91437bd5220e80a1f1bc4cfb86ca8190414'
OUT = RUN / 'lean/extension/basis'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
def prelude(imports, namespace):
    return [*['import ' + name for name in imports], '', 'set_option Elab.async false',
            'set_option autoImplicit false', 'set_option relaxedAutoImplicit false',
            'set_option maxRecDepth 8192', 'set_option maxHeartbeats 4000000', '',
            'namespace ' + namespace, '']

if sha(INPUT) != EXPECTED_SHA:
    raise ValueError('Original input SHA mismatch')
chain = [int(line) for line in INPUT.read_text(encoding='utf8').splitlines() if line.strip()]
if len(chain) != 116667 or chain[0] != 2 or chain[-1] != 20000093:
    raise ValueError('Original input shape mismatch')
nodes = chain[-513:]
namespace = 'B699MiddleExtension.End512Basis'
lines = prelude([PREFIX + '.extension.PrimeBasis4473', PREFIX + '.extension.PrimeBasisChain'], namespace)
lines += ['/-! Actual final 512 edges of the unchanged original 20m input.',
          'Every kernel truth certificate covers 16 edges; the 32 short certificates',
          'are combined by balanced trans. The accepted complete basis is reused. -/', '']
parts = []
for segment in range(32):
    start, stop = 16 * segment, 16 * (segment + 1)
    tail = ', '.join(map(str, nodes[start + 1:stop + 1]))
    lines += [f'def tail{segment} : List Nat := [{tail}]',
              f'theorem check{segment} : basisChainCheck 4473 basis4473 184 {nodes[start]} tail{segment} = true := by',
              '  decide +kernel',
              f'theorem part{segment} : B699MiddleIndex.PrimeChain 184 {nodes[start]} {nodes[stop]} :=',
              f'  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)',
              f'    (p := {nodes[start]}) (qs := tail{segment}) basis4473_complete check{segment}', '']
    parts.append((nodes[start], nodes[stop], f'part{segment}'))
level = 0
while len(parts) > 1:
    following = []
    for index in range(0, len(parts), 2):
        left, right = parts[index], parts[index + 1]
        if left[1] != right[0]:
            raise ValueError('Shared endpoint mismatch')
        name = f'joinLevel{level}_{index // 2}'
        lines += [f'theorem {name} : B699MiddleIndex.PrimeChain 184 {left[0]} {right[1]} :=',
                  f'  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := {left[0]})',
                  f'    (mid := {left[1]}) (hi := {right[1]}) {left[2]} {right[2]}', '']
        following.append((left[0], right[1], name))
    parts = following
    level += 1
lines += [f'theorem joined : B699MiddleIndex.PrimeChain 184 {nodes[0]} {nodes[-1]} := {parts[0][2]}', '',
          f'end {namespace}', '', f'#print axioms {namespace}.joined']
proof_path = OUT / 'End512Basis.lean'
if proof_path.exists():
    raise RuntimeError('End512Basis already exists; preserve its recorded source version')
proof_path.write_text('\n'.join(lines) + '\n', encoding='utf8', newline='\n')
consumer = prelude([PREFIX + '.extension.basis.End512Basis'], 'B699MiddleExtension')
consumer += ['theorem common_of_last512_basis_edges {n i j : Nat}',
             '    (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)',
             f'    (hnlo : {nodes[0]} ≤ n) (hnhi : n ≤ 20000000) :',
             '    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by',
             '  exact B699MiddleIndex.common_of_prime_chain End512Basis.joined (by omega) hnlo (by omega)',
             '    (by omega) hij hjn', '', 'end B699MiddleExtension', '',
             '#print axioms B699MiddleExtension.common_of_last512_basis_edges']
consumer_path = OUT / 'End512BasisConsumer.lean'
if consumer_path.exists():
    raise RuntimeError('End512BasisConsumer already exists; preserve its recorded source version')
consumer_path.write_text('\n'.join(consumer) + '\n', encoding='utf8', newline='\n')
manifest = {'generated_utc': datetime.now(timezone.utc).isoformat(), 'generation_only': True,
            'lean_run': False, 'external_primality_check_run': False,
            'generator_sha256': sha(Path(__file__)), 'input': str(INPUT.relative_to(RUN)),
            'input_sha256': sha(INPUT), 'input_nodes': len(chain),
            'selected_node_count': len(nodes), 'selected_edge_count': len(nodes) - 1,
            'input_start_index': len(chain) - len(nodes), 'input_end_index': len(chain) - 1,
            'first': nodes[0], 'last': nodes[-1], 'segment_edges': 16, 'segment_count': 32,
            'checked_nodes_including_shared_endpoints': 32 * 17,
            'segment_endpoints': [nodes[index] for index in range(0, 513, 16)],
            'basis': 'B699MiddleExtension.basis4473_complete', 'synchronous': True,
            'files': [{'path': str(path.relative_to(RUN)), 'sha256': sha(path), 'bytes': path.stat().st_size}
                      for path in [proof_path, consumer_path]]}
manifest_path = Path(__file__).parent / 'end512-generation.json'
manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n', encoding='utf8')
print(json.dumps(manifest, indent=2, ensure_ascii=False))
