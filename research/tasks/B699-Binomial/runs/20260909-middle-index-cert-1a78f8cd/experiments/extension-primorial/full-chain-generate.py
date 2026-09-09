#!/usr/bin/env python3
"""Generate the complete original 20m primorial chain as pending Lean source.
No primality computation, Lean invocation, or source overwrite is performed.
"""
from __future__ import annotations
import hashlib, json
from datetime import datetime, timezone
from pathlib import Path
RUN = Path(__file__).resolve().parents[2]
ROOT = Path(__file__).resolve().parents[7]
PREFIX = 'research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean'
OUT = RUN / 'lean/extension/primeChain'
INPUT = RUN / 'inputs/original20m/outputs/prime_chain_20m.txt'
EXPECTED = 'a4954fc348879a5bff3bb91e8448f91437bd5220e80a1f1bc4cfb86ca8190414'
FILES, BLOCKS = [], []

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
def write(path, lines):
    if path.exists():
        raise RuntimeError('Refusing to overwrite source: ' + str(path))
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text('\n'.join(lines) + '\n', encoding='utf8', newline='\n')
    relative = path.relative_to(ROOT).with_suffix('')
    parts = relative.parts
    lean_import = '.'.join(part if part.replace('_', '').isalnum() and not part[0].isdigit()
                           else '«' + part + '»' for part in parts)
    FILES.append({'path': str(path.relative_to(RUN)), 'module': '.'.join(parts), 'lean_import': lean_import,
                  'sha256': sha(path), 'bytes': path.stat().st_size})
def header(imports, namespace, data=False):
    lines = [*['import ' + name for name in imports], '', 'set_option Elab.async false',
             'set_option autoImplicit false', 'set_option relaxedAutoImplicit false']
    if data:
        lines += ['set_option maxRecDepth 8192', 'set_option maxHeartbeats 4000000']
    return lines + ['', 'namespace ' + namespace, '']
def joins(lines, parts):
    level = 0
    while len(parts) > 1:
        following = []
        for index in range(0, len(parts), 2):
            left = parts[index]
            if index + 1 == len(parts):
                following.append(left)
                continue
            right = parts[index + 1]
            if left[1] != right[0]:
                raise ValueError('Join middle endpoint mismatch')
            name = f'joinLevel{level}_{index // 2}'
            lines += [f'theorem {name} : B699MiddleIndex.PrimeChain 184 {left[0]} {right[1]} :=',
                      f'  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := {left[0]})',
                      f'    (mid := {left[1]}) (hi := {right[1]}) {left[2]} {right[2]}', '']
            following.append((left[0], right[1], name))
        parts = following
        level += 1
    return parts[0]

if sha(INPUT) != EXPECTED:
    raise ValueError('Original input SHA mismatch')
nodes = [int(line) for line in INPUT.read_text(encoding='utf8').splitlines() if line.strip()]
if len(nodes) != 116667 or nodes[0] != 2 or nodes[-1] != 20000093:
    raise ValueError('Original input shape mismatch')
if any(not (a < b and b - a <= 184) for a, b in zip(nodes, nodes[1:])):
    raise ValueError('Static ordering/gap check failed')
if any(OUT.rglob('*.lean')):
    raise RuntimeError('Full chain output must be empty before first generation')
leaves = []
for block, start in enumerate(range(0, len(nodes) - 1, 512)):
    stop = min(start + 512, len(nodes) - 1)
    chunk = nodes[start:stop + 1]
    name = f'Block{block:03d}'
    namespace = 'B699MiddleExtension.PrimorialBlocks.' + name
    lines = header([PREFIX + '.extension.primorial.PrimorialData'], namespace, data=True)
    lines += ['/-! Original input slice. Kernel checks use the proved primorial literal,',
              'never an unevaluated product; each truth certificate has at most 16 edges. -/', '']
    parts = []
    for segment, local_start in enumerate(range(0, len(chunk) - 1, 16)):
        local_stop = min(local_start + 16, len(chunk) - 1)
        tail = ', '.join(map(str, chunk[local_start + 1:local_stop + 1]))
        lines += [f'def tail{segment} : List Nat := [{tail}]',
                  f'theorem check{segment} : primorialChainCheck 4473 primorial4473 184 {chunk[local_start]} tail{segment} = true := by',
                  '  decide +kernel',
                  f'theorem part{segment} : B699MiddleIndex.PrimeChain 184 {chunk[local_start]} {chunk[local_stop]} :=',
                  '  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)',
                  f'    (p := {chunk[local_start]}) (qs := tail{segment}) basis4473_complete basis4473_prod_eq check{segment}', '']
        parts.append((chunk[local_start], chunk[local_stop], f'part{segment}'))
    root = joins(lines, parts)
    lines += [f'theorem joined : B699MiddleIndex.PrimeChain 184 {chunk[0]} {chunk[-1]} := {root[2]}', '',
              f'end {namespace}', '', f'#print axioms {namespace}.joined']
    write(OUT / 'blocks' / (name + '.lean'), lines)
    leaves.append((chunk[0], chunk[-1], namespace + '.joined', 'blocks.' + name))
    BLOCKS.append({'block': block, 'input_start': start, 'input_end': stop,
                   'first': chunk[0], 'last': chunk[-1], 'edges': stop - start,
                   'certificate_count': (stop - start + 15) // 16})

groups = []
for group, start in enumerate(range(0, len(leaves), 16)):
    chosen = leaves[start:start + 16]
    name = f'Group{group:03d}'
    namespace = 'B699MiddleExtension.PrimorialGroups.' + name
    lines = header([PREFIX + '.extension.primeChain.' + leaf[3] for leaf in chosen], namespace)
    root = joins(lines, [leaf[:3] for leaf in chosen])
    lines += [f'theorem joined : B699MiddleIndex.PrimeChain 184 {root[0]} {root[1]} := {root[2]}', '',
              f'end {namespace}', '', f'#print axioms {namespace}.joined']
    write(OUT / 'groups' / (name + '.lean'), lines)
    groups.append((root[0], root[1], namespace + '.joined', 'groups.' + name))
namespace = 'B699MiddleExtension.PrimorialAllBlocks'
lines = header([PREFIX + '.extension.primeChain.' + group[3] for group in groups], namespace)
root = joins(lines, [group[:3] for group in groups])
lines += [f'theorem joined : B699MiddleIndex.PrimeChain 184 {root[0]} {root[1]} := {root[2]}', '',
          f'end {namespace}', '', f'#print axioms {namespace}.joined']
write(OUT / 'AllBlocks.lean', lines)
lines = header([PREFIX + '.extension.primeChain.AllBlocks'], 'B699MiddleExtension')
lines += ['theorem twenty_million_prime_chain : B699MiddleIndex.PrimeChain 184 2 20000093 :=',
          '  PrimorialAllBlocks.joined', '',
          '/-- Full finite-n part of the original B699 target, with no certificate premises. -/',
          'theorem common_le_twenty_million {n i j : Nat}',
          '    (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hn : n ≤ 20000000) :',
          '    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by',
          '  exact B699MiddleIndex.common_of_prime_chain twenty_million_prime_chain (by omega)',
          '    (by omega) (by omega) (by omega) hij hjn', '',
          'end B699MiddleExtension', '',
          '#print axioms B699MiddleExtension.twenty_million_prime_chain',
          '#print axioms B699MiddleExtension.common_le_twenty_million']
write(OUT / 'Complete.lean', lines)
manifest = {'generated_utc': datetime.now(timezone.utc).isoformat(), 'generation_only': True,
            'lean_run': False, 'external_primality_check_run': False,
            'generator_sha256': sha(Path(__file__)), 'input': str(INPUT.relative_to(RUN)),
            'input_sha256': sha(INPUT), 'node_count': len(nodes), 'edge_count': len(nodes) - 1,
            'first': nodes[0], 'last': nodes[-1], 'maximum_gap_static': max(b-a for a,b in zip(nodes,nodes[1:])),
            'leaf_edges_limit': 512, 'certificate_edges_limit': 16,
            'leaf_count': len(leaves), 'group_count': len(groups), 'module_count': len(FILES),
            'certificate_count': sum(block['certificate_count'] for block in BLOCKS),
            'synchronous_elaboration': True, 'checker': 'primorialChainCheck 4473 primorial4473 184',
            'blocks': BLOCKS, 'files': FILES}
manifest_path = Path(__file__).parent / 'full-chain-generation.json'
manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n', encoding='utf8')
print(json.dumps({key:value for key,value in manifest.items() if key not in ['blocks','files']}, indent=2))
print('MANIFEST', manifest_path)
