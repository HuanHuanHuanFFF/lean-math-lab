#!/usr/bin/env python3
"""Independent static reconstruction of generated 20m chain source. No primality check or Lean."""
from __future__ import annotations
import hashlib, json, re
from datetime import datetime, timezone
from pathlib import Path
RUN = Path(__file__).resolve().parents[2]
ROOT = Path(__file__).resolve().parents[7]
BASE = Path(__file__).parent
MANIFEST = BASE / 'full-chain-generation.json'
manifest = json.loads(MANIFEST.read_text(encoding='utf8'))
protected = json.loads((BASE / 'full-chain-protected.json').read_text(encoding='utf-8-sig'))

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
def require(condition, reason):
    if not condition:
        raise RuntimeError(reason)
INPUT = RUN / manifest['input']
require(sha(INPUT) == manifest['input_sha256'] == protected['inputSha256'], 'Original input SHA changed')
original = [int(line) for line in INPUT.read_text(encoding='utf8').splitlines() if line.strip()]
require(len(original) == 116667 and original[0] == 2 and original[-1] == 20000093, 'Original input shape mismatch')
protected_rows = []
for entry in protected['sources']:
    current = sha(Path(entry['path']))
    require(current == entry['sha256'], 'Protected old source changed: ' + entry['path'])
    protected_rows.append({**entry, 'unchanged': True})
texts = {}
for entry in manifest['files']:
    path = RUN / entry['path']
    require(sha(path) == entry['sha256'], 'Generated source SHA differs from manifest')
    source = path.read_text(encoding='utf8')
    require(source.count('set_option Elab.async false') == 1, 'Missing or repeated synchronous setting')
    require(not re.search(r'\b(sorry|admit|sorryAx|native_decide)\b|\bdecide\s+\+native\b|^\s*(?:unsafe\s+)?axiom\s', source, re.M), 'Forbidden source proof token')
    texts[path] = source
require(len(texts) == 245, 'Expected exactly 245 generated modules')

known = {}
join_pattern = re.compile(
    r'theorem (joinLevel\w+) : B699MiddleIndex\.PrimeChain 184 (\d+) (\d+) :=\s*'
    r'B699MiddleIndex\.PrimeChain\.trans \(gap := 184\) \(lo := (\d+)\)\s*'
    r'\(mid := (\d+)\) \(hi := (\d+)\) ([\w.]+) ([\w.]+)')
def check_joins(source, local):
    for match in join_pattern.finditer(source):
        name, decl_lo, decl_hi, arg_lo, arg_mid, arg_hi, left_name, right_name = match.groups()
        left = local.get(left_name, known.get(left_name))
        right = local.get(right_name, known.get(right_name))
        require(left is not None and right is not None, 'Unknown join input')
        require(left[1] == right[0] == int(arg_mid), 'Join middle endpoint mismatch')
        require(left[0] == int(decl_lo) == int(arg_lo), 'Join lower endpoint mismatch')
        require(right[1] == int(decl_hi) == int(arg_hi), 'Join upper endpoint mismatch')
        local[name] = (left[0], right[1])
    alias = re.search(r'theorem joined : B699MiddleIndex\.PrimeChain 184 (\d+) (\d+) := ([\w.]+)', source)
    require(alias is not None, 'Missing final joined alias')
    reference = local.get(alias.group(3), known.get(alias.group(3)))
    require(reference == (int(alias.group(1)), int(alias.group(2))), 'Final joined alias endpoint mismatch')
    return reference

reconstructed, blocks, certificate_total = [], [], 0
for block in range(228):
    path = RUN / f'lean/extension/primeChain/blocks/Block{block:03d}.lean'
    source = texts[path]
    namespace = re.search(r'^namespace (\S+)', source, re.M).group(1)
    checks = list(re.finditer(
        r'def tail(\d+) : List Nat := \[([^\]]*)\]\s*'
        r'theorem check\1 : primorialChainCheck 4473 primorial4473 184 (\d+) tail\1 = true := by\s*decide \+kernel', source))
    require(len(checks) == (32 if block < 227 else 28), 'Unexpected short-certificate count')
    block_nodes, local = [], {}
    for number, match in enumerate(checks):
        require(int(match.group(1)) == number, 'Certificate numbering gap')
        nodes = [int(match.group(3))] + [int(n) for n in re.findall(r'\d+', match.group(2))]
        require(1 <= len(nodes) - 1 <= 16, 'Certificate edge limit exceeded')
        require(all(a < b and b-a <= 184 for a,b in zip(nodes,nodes[1:])), 'Static ordering/gap mismatch')
        require(max(nodes) < 4473 * 4473, 'Node outside proved square bound')
        statement = (f'theorem part{number} : B699MiddleIndex.PrimeChain 184 {nodes[0]} {nodes[-1]} :=\n'
                     '  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)\n'
                     f'    (p := {nodes[0]}) (qs := tail{number}) basis4473_complete basis4473_prod_eq check{number}')
        require(statement in source, 'Soundness consumer arguments differ from checked data')
        if block_nodes:
            require(block_nodes[-1] == nodes[0], 'Within-leaf shared endpoint mismatch')
            block_nodes += nodes[1:]
        else:
            block_nodes = nodes
        local[f'part{number}'] = (nodes[0], nodes[-1])
    endpoint = check_joins(source, local)
    require(endpoint == (block_nodes[0], block_nodes[-1]), 'Leaf joined endpoint differs from data')
    start, end = block * 512, min((block + 1) * 512, len(original) - 1)
    require(block_nodes == original[start:end + 1], 'Leaf data differs from original input slice')
    if reconstructed:
        require(reconstructed[-1] == block_nodes[0], 'Between-leaf shared endpoint mismatch')
        reconstructed += block_nodes[1:]
    else:
        reconstructed = block_nodes
    known[namespace + '.joined'] = endpoint
    blocks.append({'block':block, 'input_start':start, 'input_end':end, 'first':endpoint[0], 'last':endpoint[1],
                   'edge_count':len(block_nodes)-1, 'certificate_count':len(checks), 'sha256':sha(path)})
    certificate_total += len(checks)
require(reconstructed == original, 'Full reconstructed sequence differs from original')
require(certificate_total == 7292, 'Unexpected complete certificate count')
for relative in [*(f'lean/extension/primeChain/groups/Group{index:03d}.lean' for index in range(15)),
                 'lean/extension/primeChain/AllBlocks.lean']:
    path = RUN / relative
    source = texts[path]
    namespace = re.search(r'^namespace (\S+)', source, re.M).group(1)
    known[namespace + '.joined'] = check_joins(source, {})
require(known['B699MiddleExtension.PrimorialAllBlocks.joined'] == (2,20000093), 'Global endpoints differ')
complete = texts[RUN / 'lean/extension/primeChain/Complete.lean']
require('theorem twenty_million_prime_chain : B699MiddleIndex.PrimeChain 184 2 20000093 :=\n  PrimorialAllBlocks.joined' in complete,
        'Missing unconditional concrete-chain theorem')
signature = '''theorem common_le_twenty_million {n i j : Nat}
    (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hn : n ≤ 20000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  exact B699MiddleIndex.common_of_prime_chain twenty_million_prime_chain (by omega)
    (by omega) (by omega) (by omega) hij hjn'''
require(signature in complete, 'Final raw original-target signature changed')

closure, seen, external = [], set(), set()
def visit(path):
    if path in seen:
        return
    seen.add(path)
    source = path.read_text(encoding='utf-8-sig')
    imports = re.findall(r'^import\s+(.+)$', source, re.M)
    for raw in imports:
        module = raw.strip().replace('«','').replace('»','')
        if module.startswith(('Math.','research.')):
            dep = ROOT / (module.replace('.','/') + '.lean')
            require(dep.is_file(), 'Missing project import: ' + module)
            visit(dep)
        else:
            external.add(raw.strip())
    closure.append({'path':str(path.relative_to(ROOT)), 'module':'.'.join(path.relative_to(ROOT).with_suffix('').parts),
                    'sha256':sha(path), 'imports':imports})
visit(RUN / 'lean/extension/primeChain/Complete.lean')
require(len(closure) == 270, 'Unexpected project dependency closure size')
# The accepted Basis and GCD 512 samples must still reference the same original values.
def sample_lists(path):
    source = path.read_text(encoding='utf8')
    return [tuple(map(int,re.findall(r'\d+',m.group(1)))) for m in re.finditer(r'def tail\d+ : List Nat := \[([^\]]*)\]',source)]
require(sample_lists(RUN/'lean/extension/basis/End512Basis.lean') == sample_lists(RUN/'lean/extension/primorial/End512Primorial.lean'),
        'Accepted Basis/GCD sample data differs')
report = {'checked_utc':datetime.now(timezone.utc).isoformat(), 'success':True, 'static_only':True, 'lean_run':False,
          'external_primality_check_run':False, 'input_sha256':sha(INPUT), 'generation_manifest_sha256':sha(MANIFEST),
          'node_count':len(reconstructed), 'edge_count':len(reconstructed)-1, 'maximum_gap_static':184,
          'global_endpoints':[2,20000093], 'reconstructed_exactly':True, 'all_shared_endpoints_verified':True,
          'all_leaf_and_group_joins_verified':True, 'source_policy_passed':True, 'all_generated_modules_synchronous':True,
          'leaf_count':228, 'group_count':15, 'generated_module_count':245, 'kernel_certificate_count':certificate_total,
          'maximum_edges_per_kernel_certificate':16, 'checker_uses_proved_literal_not_product_expression':True,
          'accepted_512_comparison_inputs_equal':True, 'protected_sources':protected_rows,
          'blocks':blocks, 'generated_modules':manifest['files'], 'complete_project_closure':closure,
          'external_imports':sorted(external), 'final_signature':signature}
output = BASE / 'full-chain-static-audit.json'
output.write_text(json.dumps(report,indent=2,ensure_ascii=False)+'\n',encoding='utf8')
print(json.dumps({key:report[key] for key in ['success','static_only','lean_run','node_count','edge_count','maximum_gap_static',
 'global_endpoints','reconstructed_exactly','all_shared_endpoints_verified','all_leaf_and_group_joins_verified',
 'source_policy_passed','all_generated_modules_synchronous','generated_module_count','kernel_certificate_count',
 'accepted_512_comparison_inputs_equal']},indent=2))
print('PROJECT_CLOSURE',len(closure))
print('PROTECTED_UNCHANGED',len(protected_rows))
print('AUDIT',output)
