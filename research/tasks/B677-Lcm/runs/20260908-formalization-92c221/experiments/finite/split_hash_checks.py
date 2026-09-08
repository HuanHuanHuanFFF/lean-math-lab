#!/usr/bin/env python3
"""Split generated checks into independently recoverable module chunks.

The replacement only changes proof packaging: all original 256-start kernel
checks are retained inside 16384-start modules, with exact allTree joins.
"""
import argparse
import hashlib
import json
from pathlib import Path

from generate_mod_rows import module_name
from generate_witness_rows import combine


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('directory', type=Path)
    ap.add_argument('--part-depth', type=int, default=14)
    args = ap.parse_args()
    out = args.directory.resolve()
    repo = next(p for p in out.parents if (p / 'lake-manifest.json').is_file())
    generation = json.loads((out / 'generation.json').read_text())
    if (out / 'packaging.json').exists():
        raise RuntimeError('Refusing to repackage existing proof chunks')
    depth, small = generation['depth'], generation['chunk_depth']
    part = min(args.part_depth, depth)
    if part < small:
        raise ValueError('Part depth is below the existing checked block depth')
    records = []
    for k in range(1, generation['lengths'] + 1):
        check = out / f'Check{k:02d}.lean'
        lines = check.read_text().splitlines()
        imports = [l for l in lines if l.startswith('import ')]
        ns = next(l.split()[1] for l in lines if l.startswith('namespace '))
        opts = '\n'.join(l for l in lines if l.startswith('set_option ')) + '\n'
        defs = [l for l in lines if l.startswith('def ')]
        pred = out / f'Pred{k:02d}.lean'
        pred.write_text('\n'.join(imports) + '\n' + opts + f'namespace {ns}\n' +
                        '\n'.join(defs) + f'\nend {ns}\n')
        chunks = {}
        for line in lines:
            if line.startswith('theorem ') and ('_checked' not in line):
                name = line.split()[1]
                if name.startswith(('hash' + str(k) + '_', 'step' + str(k) + '_')):
                    chunks[name] = line
        parts = []
        for offset in range(0, 2**depth, 2**part):
            path = out / f'Part{k:02d}_{offset:06d}.lean'
            text = f'import {module_name(pred, repo)}\n' + opts + f'namespace {ns}\n'
            for kind in ('hash', 'step'):
                ident = f'{kind}{k}'
                if offset >= generation['limit']:
                    text += (f'theorem {ident}part_{offset} : B677Finite.allTree {part} {offset} {ident} = true := by\n'
                             '  apply B677Finite.allTree_outside\n  decide +kernel\n')
                else:
                    text += '\n'.join(chunks[f'{ident}_{i}']
                                      for i in range(offset, offset + 2**part, 2**small)) + '\n'
                    text += (f'theorem {ident}part_{offset} : B677Finite.allTree {part} {offset} {ident} = true :=\n  ' +
                             combine(ident, part, small, offset) + '\n')
            text += f'end {ns}\n'
            path.write_text(text)
            parts.append(path)
        text = ''.join(f'import {module_name(p, repo)}\n' for p in parts) + opts + f'namespace {ns}\n'
        for kind in ('hash', 'step'):
            ident = f'{kind}{k}'
            text += (f'theorem {ident}_checked : B677Finite.allTree {depth} 0 {ident} = true :=\n  ' +
                     combine(ident + 'part', depth, part) + '\n')
        # The final public checked equations are short and unchanged.
        i = next(i for i, l in enumerate(lines) if l.startswith(f'theorem hash_checked{k}'))
        text += '\n'.join(lines[i:]) + '\n'
        before = hashlib.sha256(check.read_bytes()).hexdigest()
        check.write_text(text)
        records.append({'k': k, 'before_check_sha256': before,
                        'after_check_sha256': hashlib.sha256(check.read_bytes()).hexdigest(),
                        'parts': [{'source': str(p.relative_to(out)),
                                   'sha256': hashlib.sha256(p.read_bytes()).hexdigest()} for p in parts],
                        'predicate_sha256': hashlib.sha256(pred.read_bytes()).hexdigest()})
    report = {'part_depth': part, 'original_block_depth': small,
              'full_depth': depth, 'limit': generation['limit'], 'lengths': generation['lengths'],
              'rows': records, 'script_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    (out / 'packaging.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps({k: v for k, v in report.items() if k != 'rows'}, indent=2))


if __name__ == '__main__':
    main()
