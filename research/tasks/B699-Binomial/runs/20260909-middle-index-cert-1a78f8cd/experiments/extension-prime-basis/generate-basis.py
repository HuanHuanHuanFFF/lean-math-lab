#!/usr/bin/env python3
"""Bounded source generation: a candidate basis below 4473 and original last 16/32 nodes.
No primality recheck of the original 116667-node chain is performed.
"""
from __future__ import annotations
import hashlib, json, math
from datetime import datetime, timezone
from pathlib import Path
RUN = Path(__file__).resolve().parents[2]
OUT = RUN / 'lean/extension'
PREFIX = 'research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean'
CHAIN = RUN / 'inputs/original20m/outputs/prime_chain_20m.txt'
EXPECTED_CHAIN_SHA = 'a4954fc348879a5bff3bb91e8448f91437bd5220e80a1f1bc4cfb86ca8190414'
B = 4473
FILES = []

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
def write(path, lines):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text('\n'.join(lines) + '\n', encoding='utf8', newline='\n')
    FILES.append({'path': str(path.relative_to(RUN)), 'sha256': sha(path), 'bytes': path.stat().st_size})
def prelude(imports, namespace):
    return [*['import ' + item for item in imports], '', 'set_option Elab.async false',
            'set_option autoImplicit false', 'set_option relaxedAutoImplicit false',
            'set_option maxRecDepth 8192', 'set_option maxHeartbeats 4000000', '',
            'namespace ' + namespace, '']
def join_coverage(lines, parts):
    level = 0
    while len(parts) > 1:
        next_parts = []
        for idx in range(0, len(parts), 2):
            left = parts[idx]
            if idx + 1 == len(parts):
                next_parts.append(left)
                continue
            right = parts[idx + 1]
            if left[1] != right[0]:
                raise ValueError('Coverage endpoints differ')
            name = f'joinLevel{level}_{idx // 2}'
            lines += [f'theorem {name} : BasisCompleteOn basis4473 {left[0]} {right[1]} :=',
                      f'  BasisCompleteOn.trans (ps := basis4473) (lo := {left[0]}) (mid := {left[1]}) (hi := {right[1]})',
                      f'    {left[2]} {right[2]}', '']
            next_parts.append((left[0], right[1], name))
        parts = next_parts
        level += 1
    return parts[0]

# Candidate-data construction only; complete Lean coverage remains an obligation.
flags = bytearray([1]) * B
flags[0] = flags[1] = 0
for divisor in range(2, math.isqrt(B - 1) + 1):
    if flags[divisor]:
        for composite in range(divisor * divisor, B, divisor):
            flags[composite] = 0
basis = [n for n in range(B) if flags[n]]
if len(basis) != 607:
    raise ValueError('Unexpected candidate basis count')
lines = prelude([PREFIX + '.extension.PrimeBasis'], 'B699MiddleExtension')
lines += ['/-! Candidate literal basis. Its completeness is proved separately by checking every',
          'integer below 4473; this definition alone is not a primality certificate. -/',
          'def basis4473 : List Nat := [']
for start in range(0, len(basis), 12):
    last = start + 12 >= len(basis)
    lines.append('  ' + ', '.join(map(str, basis[start:start + 12])) + (']' if last else ','))
lines += ['', 'theorem basis4473_length : basis4473.length = 607 := by decide +kernel',
          'theorem basis4473_square : (4473 : Nat) * 4473 = 20007729 := by decide +kernel', '',
          'end B699MiddleExtension', '', '#print axioms B699MiddleExtension.basis4473_length']
write(OUT / 'basis/BasisData.lean', lines)

coverage_files, coverages = [], []
segments = [(lo, min(64, B - lo)) for lo in range(0, B, 64)]
for group, start in enumerate(range(0, len(segments), 7)):
    chosen = segments[start:start + 7]
    namespace = f'B699MiddleExtension.BasisCoverage{group:02d}'
    lines = prelude([PREFIX + '.extension.PrimeBasisCoverage', PREFIX + '.extension.basis.BasisData'], namespace)
    parts = []
    for ordinal, (lo, length) in enumerate(chosen):
        lines += [f'theorem check{ordinal} : basisRangeCheck basis4473 {lo} {length} = true := by',
                  '  decide +kernel',
                  f'theorem part{ordinal} : BasisCompleteOn basis4473 {lo} {lo + length} :=',
                  f'  basisRangeCheck_sound (ps := basis4473) (lo := {lo}) (len := {length}) check{ordinal}', '']
        parts.append((lo, lo + length, f'part{ordinal}'))
    combined = join_coverage(lines, parts)
    lines += [f'theorem covered : BasisCompleteOn basis4473 {combined[0]} {combined[1]} := {combined[2]}', '',
              f'end {namespace}', '', f'#print axioms {namespace}.covered']
    relative = f'basis/Coverage{group:02d}.lean'
    write(OUT / relative, lines)
    coverage_files.append(PREFIX + f'.extension.basis.Coverage{group:02d}')
    coverages.append((combined[0], combined[1], namespace + '.covered'))

lines = prelude(coverage_files, 'B699MiddleExtension')
combined = join_coverage(lines, coverages)
lines += ['theorem basis4473_complete : BasisComplete 4473 basis4473 :=',
          f'  BasisCompleteOn.to_complete (ps := basis4473) (B := 4473) {combined[2]}', '',
          'end B699MiddleExtension', '', '#print axioms B699MiddleExtension.basis4473_complete']
write(OUT / 'PrimeBasis4473.lean', lines)

if sha(CHAIN) != EXPECTED_CHAIN_SHA:
    raise ValueError('Original 20m chain hash mismatch')
chain = [int(line) for line in CHAIN.read_text(encoding='utf8').splitlines() if line.strip()]
if len(chain) != 116667 or chain[0] != 2 or chain[-1] != 20000093:
    raise ValueError('Original chain shape mismatch')
tails = []
for node_count in [16, 32]:
    nodes = chain[-node_count:]
    # The 32-node probe shares one endpoint between two short checks (16 and 17 nodes).
    # Both backends use exactly these same segments.
    segment_ranges = [(0, 15)] if node_count == 16 else [(0, 15), (15, 31)]
    tails.append({'node_count': node_count, 'edge_count': node_count - 1,
                  'first': nodes[0], 'last': nodes[-1],
                  'checked_nodes_including_shared_endpoint': sum(stop - start + 1 for start, stop in segment_ranges),
                  'segments': [[nodes[start], nodes[stop]] for start, stop in segment_ranges], 'nodes': nodes})
    for backend in ['Basis', 'TrialReference']:
        module = f'End{node_count}{backend}'
        namespace = 'B699MiddleExtension.' + module
        if backend == 'Basis':
            imports = [PREFIX + '.extension.PrimeBasis4473', PREFIX + '.extension.PrimeBasisChain']
        else:
            imports = [PREFIX + '.primeChain.Core']
        lines = prelude(imports, namespace)
        part_names = []
        for index, (start, stop) in enumerate(segment_ranges):
            tail = ', '.join(map(str, nodes[start + 1:stop + 1]))
            lines += [f'def tail{index} : List Nat := [{tail}]']
            if backend == 'Basis':
                lines += [f'theorem check{index} : basisChainCheck 4473 basis4473 184 {nodes[start]} tail{index} = true := by',
                          '  decide +kernel',
                          f'theorem part{index} : B699MiddleIndex.PrimeChain 184 {nodes[start]} {nodes[stop]} :=',
                          f'  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)',
                          f'    (p := {nodes[start]}) (qs := tail{index}) basis4473_complete check{index}', '']
            else:
                lines += [f'theorem check{index} : B699MiddleIndex.trialChainCheck 184 {nodes[start]} tail{index} = true := by',
                          '  decide +kernel',
                          f'theorem part{index} : B699MiddleIndex.PrimeChain 184 {nodes[start]} {nodes[stop]} :=',
                          f'  B699MiddleIndex.trialChainCheck_sound (gap := 184) (p := {nodes[start]}) (qs := tail{index}) check{index}', '']
            part_names.append(f'part{index}')
        proof = part_names[0] if len(part_names) == 1 else 'part0.trans part1'
        lines += [f'theorem joined : B699MiddleIndex.PrimeChain 184 {nodes[0]} {nodes[-1]} := {proof}', '',
                  f'end {namespace}', '', f'#print axioms {namespace}.joined']
        write(OUT / f'basis/{module}.lean', lines)
        if backend == 'Basis':
            lines = prelude([PREFIX + '.extension.basis.' + module], 'B699MiddleExtension')
            lines += [f'theorem common_of_last{node_count}_basis_nodes {{n i j : Nat}}',
                      '    (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)',
                      f'    (hnlo : {nodes[0]} ≤ n) (hnhi : n ≤ 20000000) :',
                      '    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by',
                      f'  exact B699MiddleIndex.common_of_prime_chain {module}.joined (by omega) hnlo (by omega)',
                      '    (by omega) hij hjn', '', 'end B699MiddleExtension', '',
                      f'#print axioms B699MiddleExtension.common_of_last{node_count}_basis_nodes']
            write(OUT / f'basis/{module}Consumer.lean', lines)

manifest = {'generated_utc': datetime.now(timezone.utc).isoformat(), 'generation_only': True, 'lean_run': False,
            'external_full_chain_primality_check_run': False, 'generator_sha256': sha(Path(__file__)),
            'chain_input': str(CHAIN.relative_to(RUN)), 'chain_sha256': sha(CHAIN),
            'basis_bound': B, 'basis_count': len(basis), 'basis_last': basis[-1], 'basis_square': B * B,
            'basis_generation_range': [0, B], 'basis_generation_method': 'Small candidate sieve only; not substituted for Lean completeness',
            'coverage_integer_count': B, 'coverage_segment_max_length': 64, 'coverage_segment_count': len(segments),
            'coverage_module_count': len(coverage_files), 'tails': tails, 'files': FILES}
manifest_path = Path(__file__).parent / 'basis-generation.json'
manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n', encoding='utf8')
print(json.dumps({key: value for key, value in manifest.items() if key != 'files'}, indent=2, ensure_ascii=False))
print('FILES', len(FILES))
print('MANIFEST', manifest_path)
