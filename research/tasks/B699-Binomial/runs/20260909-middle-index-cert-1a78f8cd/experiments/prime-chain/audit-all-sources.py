#!/usr/bin/env python3
"""Static source and coverage audit only; performs no primality computation or Lean run."""
from __future__ import annotations
import hashlib, json, math, re
from datetime import datetime, timezone
from pathlib import Path
RUN = Path(__file__).resolve().parents[2]
ROOT = Path(__file__).resolve().parents[7]
BASE = Path(__file__).parent
manifest_path = BASE / 'all-generation.json'
manifest = json.loads(manifest_path.read_text(encoding='utf8'))
protected = json.loads((BASE / 'pre-all-protected-source-manifest.json').read_text(encoding='utf-8-sig'))
def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
def require(condition, message):
    if not condition:
        raise RuntimeError(message)
input_path = RUN / manifest['input']
input_nodes = [int(line) for line in input_path.read_text(encoding='utf8').splitlines() if line.strip()]
require(sha(input_path) == manifest['input_sha256'], 'Input SHA mismatch')
require(len(input_nodes) == 10992 and input_nodes[0] == 2 and input_nodes[-1] == 2000003, 'Fixed input shape mismatch')
protected_rows = []
for row in protected['sources']:
    current = sha(Path(row['path']))
    require(current == row['sha256'], 'Previously owned source changed: ' + row['path'])
    protected_rows.append({'path': row['path'], 'sha256': current, 'unchanged': True})

all_texts = {}
module_rows = []
for row in manifest['files']:
    path = RUN / row['path']
    source = path.read_text(encoding='utf8')
    require(sha(path) == row['sha256'], 'Generated source SHA mismatch: ' + str(path))
    require(source.count('set_option Elab.async false') == 1, 'Global synchronous setting missing/duplicated')
    require(not re.search(r'\b(sorry|admit|sorryAx|native_decide)\b|\bdecide\s+\+native\b|^\s*(?:unsafe\s+)?axiom\s', source, re.M), 'Forbidden proof token: ' + str(path))
    all_texts[path] = source
    relative = path.relative_to(ROOT)
    canonical_module = '.'.join(relative.with_suffix('').parts)
    lean_module = '.'.join(part if re.fullmatch(r'[A-Za-z_][A-Za-z_0-9]*', part) else '«' + part + '»' for part in relative.with_suffix('').parts)
    module_rows.append({'path': str(relative), 'module': canonical_module, 'lean_import': lean_module,
                        'sha256': sha(path), 'bytes': path.stat().st_size,
                        'imports': re.findall(r'^import\s+(.+)$', source, re.M), 'synchronous': True})
require(len(module_rows) == 48, 'Expected 48 generated Lean modules')

reconstructed = []
block_rows = []
segment_total = 0
known = {}
for block in range(43):
    path = RUN / f'lean/primeChain/blocks/Block{block:03d}.lean'
    source = all_texts[path]
    namespace = re.search(r'^namespace\s+(\S+)', source, re.M).group(1)
    segments = list(re.finditer(
        r'def (segment\d+)Nodes : List Nat := \[([^\]]*)\]\s*'
        r'theorem \1Check : trialChainCheck 322 (\d+) \1Nodes = true := by\s*decide \+kernel', source))
    require(len(segments) == (16 if block < 42 else 15), 'Unexpected number of reflected checks')
    local = {}
    block_nodes = []
    for position, match in enumerate(segments):
        name, tail, first = match.group(1), match.group(2), int(match.group(3))
        require(name == f'segment{position}', 'Segment numbering gap')
        nodes = [first] + [int(value.strip()) for value in tail.split(',') if value.strip()]
        require(1 <= len(nodes) - 1 <= 16, 'Certificate longer than 16 edges')
        statement = rf'theorem {name} : PrimeChain 322 {nodes[0]} {nodes[-1]} :=\s*trialChainCheck_sound {name}Check'
        require(re.search(statement, source) is not None, 'Segment consumer has mismatched endpoints')
        if block_nodes:
            require(block_nodes[-1] == nodes[0], 'Internal shared endpoint mismatch')
            block_nodes += nodes[1:]
        else:
            block_nodes = nodes
        local[name] = (nodes[0], nodes[-1])
    for match in re.finditer(r'theorem (joinLevel\w+) : PrimeChain 322 (\d+) (\d+) :=\s*([\w.]+)\.trans ([\w.]+)', source):
        name, lo, hi, left, right = match.groups()
        require(left in local and right in local, 'Unknown local join input')
        require(local[left][1] == local[right][0], 'Local join middle endpoint mismatch')
        require((int(lo), int(hi)) == (local[left][0], local[right][1]), 'Local join output endpoint mismatch')
        local[name] = (int(lo), int(hi))
    joined = re.search(r'theorem joined : PrimeChain 322 (\d+) (\d+) := (\w+)', source)
    require(joined is not None and local[joined.group(3)] == (int(joined.group(1)), int(joined.group(2))), 'Final local alias mismatch')
    require((int(joined.group(1)), int(joined.group(2))) == (block_nodes[0], block_nodes[-1]), 'Block endpoints differ from node data')
    start_index = block * 256
    expected = input_nodes[start_index:min(start_index + 256, len(input_nodes) - 1) + 1]
    require(block_nodes == expected, 'Generated block differs from exact original input slice')
    if reconstructed:
        require(reconstructed[-1] == block_nodes[0], 'Leaf shared endpoint mismatch')
        reconstructed += block_nodes[1:]
    else:
        reconstructed = block_nodes
    known[namespace + '.joined'] = (block_nodes[0], block_nodes[-1])
    block_rows.append({'block': block, 'module': namespace, 'input_start_index': start_index,
                       'input_end_index': start_index + len(block_nodes) - 1,
                       'first': block_nodes[0], 'last': block_nodes[-1], 'edges': len(block_nodes) - 1,
                       'segment_count': len(segments), 'sha256': sha(path)})
    segment_total += len(segments)
require(reconstructed == input_nodes, 'Complete reconstructed list differs from original input')
require(segment_total == 687, 'Unexpected complete reflected-certificate count')

for relative in [*(f'lean/primeChain/groups/Group{index:03d}.lean' for index in range(3)), 'lean/primeChain/AllBlocks.lean']:
    path = RUN / relative
    source = all_texts[path]
    namespace = re.search(r'^namespace\s+(\S+)', source, re.M).group(1)
    local = {}
    for match in re.finditer(r'theorem (joinLevel\w+) : PrimeChain 322 (\d+) (\d+) :=\s*([\w.]+)\.trans ([\w.]+)', source):
        name, lo, hi, left_name, right_name = match.groups()
        left, right = local.get(left_name, known.get(left_name)), local.get(right_name, known.get(right_name))
        require(left is not None and right is not None, 'Unknown imported join input')
        require(left[1] == right[0], 'Imported join middle endpoint mismatch')
        require((int(lo), int(hi)) == (left[0], right[1]), 'Imported join output endpoint mismatch')
        local[name] = (int(lo), int(hi))
    joined = re.search(r'theorem joined : PrimeChain 322 (\d+) (\d+) := ([\w.]+)', source)
    referenced = local.get(joined.group(3), known.get(joined.group(3)))
    require(referenced == (int(joined.group(1)), int(joined.group(2))), 'Imported joined alias mismatch')
    known[namespace + '.joined'] = referenced
require(known['B699MiddleIndex.AllPrimeBlocks.joined'] == (2, 2000003), 'Global assembled endpoints mismatch')
complete = all_texts[RUN / 'lean/primeChain/Complete.lean']
require('theorem two_million_prime_chain : PrimeChain 322 2 2000003 := AllPrimeBlocks.joined' in complete, 'Missing concrete total chain')
expected_signature = '''theorem common_le_two_million {n i j : Nat}
    (hi : 323 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hn : n ≤ 2000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  exact common_le_two_million_of_chain two_million_prime_chain hi hij hjn hn'''
require(expected_signature in complete, 'Final raw target signature/proof interface mismatch')

closure, visited, package_imports = [], set(), set()
def visit(path):
    if path in visited:
        return
    visited.add(path)
    source = path.read_text(encoding='utf-8-sig')
    imports = re.findall(r'^import\s+(.+)$', source, re.M)
    for raw in imports:
        module = raw.strip().replace('«', '').replace('»', '')
        dep = ROOT / (module.replace('.', '/') + '.lean')
        if module.startswith(('Math.', 'research.')):
            require(dep.is_file(), 'Missing project dependency source: ' + module)
            visit(dep)
        else:
            package_imports.add(raw.strip())
    closure.append({'path': str(path.relative_to(ROOT)), 'module': '.'.join(path.relative_to(ROOT).with_suffix('').parts),
                    'sha256': sha(path), 'imports': imports})
visit(RUN / 'lean/primeChain/Complete.lean')
require(len(closure) == 53, 'Unexpected total project source closure count')
report = {'checked_utc': datetime.now(timezone.utc).isoformat(), 'success': True,
          'static_only': True, 'lean_run': False, 'external_primality_check_run': False,
          'input_sha256': sha(input_path), 'generation_manifest_sha256': sha(manifest_path),
          'input_nodes': len(input_nodes), 'input_edges': len(input_nodes) - 1,
          'reconstructed_input_matches_exactly': True, 'shared_endpoints_match': True,
          'global_endpoints': [2, 2000003], 'leaf_count': 43, 'group_count': 3,
          'reflected_check_count': segment_total, 'maximum_edges_per_reflected_check': 16,
          'all_48_generated_modules_synchronous': True, 'source_policy_passed': True,
          'protected_sources': protected_rows, 'blocks': block_rows,
          'generated_modules': module_rows, 'complete_project_source_closure': closure,
          'external_imports': sorted(package_imports), 'final_theorem_signature': expected_signature}
report_path = BASE / 'all-source-static-audit.json'
report_path.write_text(json.dumps(report, indent=2, ensure_ascii=False) + '\n', encoding='utf8')
print(json.dumps({key: report[key] for key in ['success', 'static_only', 'lean_run', 'input_nodes', 'input_edges',
    'reconstructed_input_matches_exactly', 'shared_endpoints_match', 'global_endpoints', 'leaf_count',
    'group_count', 'reflected_check_count', 'all_48_generated_modules_synchronous', 'source_policy_passed']}, indent=2))
print('PROJECT_CLOSURE', len(closure))
print('PROTECTED_UNCHANGED', len(protected_rows))
print('AUDIT', report_path)
