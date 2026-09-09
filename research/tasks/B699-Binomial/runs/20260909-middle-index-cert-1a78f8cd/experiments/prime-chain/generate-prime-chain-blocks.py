#!/usr/bin/env python3
"""Generate kernel-checkable prime chain source; never verifies primality externally.

Default command generates only the actual last 256 edges. Full source generation
requires --all and remains gated by the primary task's measured cost decision.
"""
from __future__ import annotations
import argparse, hashlib, json
from datetime import datetime, timezone
from pathlib import Path

RUN = Path(__file__).resolve().parents[2]
LEAN_DIR = RUN / 'lean/primeChain'
INPUT = RUN / 'inputs/compact/outputs/prime_chain_2m_gap322.txt'
EXPECTED_INPUT_SHA = '3f1beae9cab6c6621e5c0d976586e78da12724bad0ee52e358d281784f053f0d'
PREFIX = 'research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean'
GAP = 322
FILES = []

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def write(path, lines):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text('\n'.join(lines) + '\n', encoding='utf8', newline='\n')
    FILES.append({'path': str(path.relative_to(RUN)), 'sha256': sha(path), 'bytes': path.stat().st_size})

def balanced_joins(lines, parts):
    level = 0
    while len(parts) > 1:
        following = []
        for position in range(0, len(parts), 2):
            left = parts[position]
            if position + 1 == len(parts):
                following.append(left)
                continue
            right = parts[position + 1]
            if left[1] != right[0]:
                raise ValueError('Source endpoint mismatch during generation')
            name = f'joinLevel{level}_{position // 2}'
            lines += [f'theorem {name} : PrimeChain {GAP} {left[0]} {right[1]} :=',
                      f'  {left[2]}.trans {right[2]}', '']
            following.append((left[0], right[1], name))
        parts = following
        level += 1
    return parts[0]

def norm_block(path, namespace, nodes):
    lines = [f'import {PREFIX}.primeChain.Core', 'import Mathlib.Tactic.NormNum.Prime', '',
             'set_option autoImplicit false', 'set_option relaxedAutoImplicit false',
             'set_option maxRecDepth 8192', 'set_option maxHeartbeats 4000000', '',
             '/-! Actual consecutive nodes from the fixed supplied positive prime chain.',
             'Generation performs no external primality validation. Every node, edge,',
             'and balanced composition below must be checked by Lean. -/',
             f'namespace {namespace}', '']
    for index, value in enumerate(nodes):
        lines.append(f'theorem nodePrime{index} : Nat.Prime {value} := by norm_num')
    lines.append('')
    parts = []
    for block, start in enumerate(range(0, len(nodes) - 1, 32)):
        stop = min(start + 32, len(nodes) - 1)
        name = f'segment{block}'
        lines.append(f'theorem {name} : PrimeChain {GAP} {nodes[start]} {nodes[stop]} := by')
        for index in range(start, stop):
            lines.append(f'  refine PrimeChain.step (q := {nodes[index + 1]}) nodePrime{index} (by decide) (by decide) ?_')
        lines += [f'  exact .singleton nodePrime{stop}', '']
        parts.append((nodes[start], nodes[stop], name))
    combined = balanced_joins(lines, parts)
    lines += [f'theorem joined : PrimeChain {GAP} {nodes[0]} {nodes[-1]} := {combined[2]}', '',
              f'end {namespace}', '', f'#print axioms {namespace}.joined']
    write(path, lines)

def consumer(path, imported_module, namespace, theorem_name, lower, chain):
    lines = [f'import {PREFIX}.PrimeChain', f'import {PREFIX}.primeChain.{imported_module}', '',
             'set_option autoImplicit false', 'set_option relaxedAutoImplicit false', '',
             f'namespace {namespace}', '',
             '/-- The concrete finite row interval, with all original legal second indices. -/',
             f'theorem {theorem_name} {{n i j : Nat}}',
             '    (hi : 323 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)',
             f'    (hnlo : {lower} ≤ n) (hnhi : n ≤ 2000000) :',
             '    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by',
             f'  exact common_of_prime_chain {chain} (by omega) hnlo (by omega)',
             '    (by omega) hij hjn', '', f'end {namespace}', '',
             f'#print axioms {namespace}.{theorem_name}']
    write(path, lines)

def grouping_module(path, namespace, imports, parts):
    lines = [f'import {PREFIX}.primeChain.{module}' for module in imports]
    lines += ['', 'set_option autoImplicit false', 'set_option relaxedAutoImplicit false', '',
              f'namespace {namespace}', '']
    combined = balanced_joins(lines, parts)
    lines += [f'theorem joined : PrimeChain {GAP} {combined[0]} {combined[1]} := {combined[2]}', '',
              f'end {namespace}', '', f'#print axioms {namespace}.joined']
    write(path, lines)
    return combined[0], combined[1], namespace + '.joined'

parser = argparse.ArgumentParser()
parser.add_argument('--all', action='store_true', help='Generate the entire source chain only after the primary task approves measured block cost.')
parser.add_argument('--block-edges', type=int, default=256)
args = parser.parse_args()
if args.block_edges not in [32, 64, 128, 256, 512]:
    parser.error('block-edges must be one of 32, 64, 128, 256, 512')
if sha(INPUT) != EXPECTED_INPUT_SHA:
    raise ValueError('The supplied input SHA differs from this run fixed source')
all_nodes = [int(line) for line in INPUT.read_text(encoding='utf8').splitlines() if line.strip()]
if len(all_nodes) != 10992 or all_nodes[0] != 2 or all_nodes[-1] != 2000003:
    raise ValueError('The input source shape differs from the fixed task packet')

if not args.all:
    nodes = all_nodes[-257:]
    norm_block(LEAN_DIR / 'End256NormNum.lean', 'B699MiddleIndex.End256NormNum', nodes)
    consumer(LEAN_DIR / 'End256Consumer.lean', 'End256NormNum', 'B699MiddleIndex',
             'common_of_last256_prime_edges', nodes[0], 'End256NormNum.joined')
    scope = {'kind': 'last256', 'node_count': len(nodes), 'edge_count': len(nodes) - 1,
             'first': nodes[0], 'last': nodes[-1], 'internal_segment_edges': 32,
             'internal_segment_endpoints': [nodes[index] for index in range(0, 257, 32)]}
else:
    leaves = []
    for block, start in enumerate(range(0, len(all_nodes) - 1, args.block_edges)):
        nodes = all_nodes[start:min(start + args.block_edges, len(all_nodes) - 1) + 1]
        name = f'Block{block:03d}'
        namespace = 'B699MiddleIndex.PrimeBlocks.' + name
        norm_block(LEAN_DIR / 'blocks' / (name + '.lean'), namespace, nodes)
        leaves.append((nodes[0], nodes[-1], namespace + '.joined', 'blocks.' + name))
    groups = []
    for group, start in enumerate(range(0, len(leaves), 16)):
        chosen = leaves[start:start + 16]
        name = f'Group{group:03d}'
        combined = grouping_module(LEAN_DIR / 'groups' / (name + '.lean'),
                                   'B699MiddleIndex.PrimeGroups.' + name,
                                   [part[3] for part in chosen], [part[:3] for part in chosen])
        groups.append((*combined, 'groups.' + name))
    grouping_module(LEAN_DIR / 'AllBlocks.lean', 'B699MiddleIndex.AllPrimeBlocks',
                    [part[3] for part in groups], [part[:3] for part in groups])
    lines = [f'import {PREFIX}.PrimeChain', f'import {PREFIX}.primeChain.AllBlocks', '',
             'set_option autoImplicit false', 'set_option relaxedAutoImplicit false', '',
             'namespace B699MiddleIndex', '',
             'theorem two_million_prime_chain : PrimeChain 322 2 2000003 := AllPrimeBlocks.joined', '',
             '/-- The entire finite-n piece, with no certificate truth assumptions. -/',
             'theorem common_le_two_million {n i j : Nat}',
             '    (hi : 323 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hn : n ≤ 2000000) :',
             '    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by',
             '  exact common_le_two_million_of_chain two_million_prime_chain hi hij hjn hn', '',
             'end B699MiddleIndex', '',
             '#print axioms B699MiddleIndex.two_million_prime_chain',
             '#print axioms B699MiddleIndex.common_le_two_million']
    write(LEAN_DIR / 'Complete.lean', lines)
    scope = {'kind': 'all_sources', 'node_count': len(all_nodes), 'edge_count': len(all_nodes) - 1,
             'first': all_nodes[0], 'last': all_nodes[-1], 'leaf_block_edges': args.block_edges,
             'leaf_block_count': len(leaves), 'group_count': len(groups),
             'internal_segment_edges': 32, 'compiled': False}
manifest = {'generated_utc': datetime.now(timezone.utc).isoformat(), 'generation_only': True,
            'external_primality_check_run': False, 'lean_run': False,
            'input': str(INPUT.relative_to(RUN)), 'input_sha256': sha(INPUT),
            'scope': scope, 'files': FILES}
manifest_path = Path(__file__).parent / ('all-generation.json' if args.all else 'end256-generation.json')
manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n', encoding='utf8')
print(json.dumps(manifest, indent=2, ensure_ascii=False))
