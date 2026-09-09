#!/usr/bin/env python3
"""Generate kernel-checked original integer heights; input exact compact rows unchanged."""
from pathlib import Path
import argparse, json, hashlib
RUN=Path(__file__).resolve().parents[2]
PREFIX='research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def generate(first,last,size):
    inp=RUN/'inputs/compact/outputs/exact_height_certificate.json'
    data=json.loads(inp.read_text())
    assert data['N']==2000000 and [r['i'] for r in data['rows']]==list(range(323,1000))
    assert 323<=first<=last<=999 and size>0
    rows={r['i']:r for r in data['rows']}
    folder=RUN/'lean/heightBlocks';folder.mkdir(exist_ok=True)
    entries=[]
    for lo in range(first,last+1,size):
        hi=min(last,lo+size-1); namespace=f'B{lo}_{hi}'
        imports={f'{PREFIX}.RawHeight',f'{PREFIX}.TailRange',f'{PREFIX}.counts.Count{(hi//64)*64:04d}'}
        for i in [323,999]:
            if lo<=i<=hi:imports.add(f'{PREFIX}.heightRows.CertifiedHeight{i}')
        lines=[*(f'import {x}' for x in sorted(imports)),
            'set_option autoImplicit false','set_option relaxedAutoImplicit false',
            'set_option Elab.async false','set_option maxRecDepth 65536',
            'set_option maxHeartbeats 0','set_option exponentiation.threshold 1000000',
            f'-- Compact input SHA256: {sha(inp)}',f'namespace B699Middle.HeightBlocks.{namespace}']
        for i in range(lo,hi+1):
            d=rows[i];r,s,t=d['r'],d['s'],d['t']
            if i not in [323,999]:
                lines.append(f'theorem raw_{i} : RawHeightValid {i} {r} {s} 2000000 {t} := by\n  decide +kernel')
                lines.append(f'theorem height_{i} : HeightValid {i} {r} {s} 2000000 :=\n  heightValid_of_raw (i := {i}) (r := {r}) (s := {s}) (N := 2000000) (t := {t})\n    Counts.count_{i} raw_{i}')
                cert=f'height_{i}'
            else:cert=f'B699Middle.height_{i}_certified'
            lines.append(f'theorem row_{i} : TailRange {i} {i} 2000000 :=\n  tailRange_singleton (i := {i}) (r := {r}) (s := {s}) (N := 2000000) {cert}')
        def combine(a,b):
            if a==b:return f'row_{a}'
            m=(a+b)//2;left=combine(a,m);right=combine(m+1,b)
            name=f'rows_{a}_{b}'
            lines.append(f'theorem {name} : TailRange {a} {b} 2000000 :=\n  tailRange_combine (lo := {a}) (mid := {m}) (hi := {b}) (N := 2000000) {left} {right}')
            return name
        root=combine(lo,hi)
        lines+=[f'theorem coverage : TailRange {lo} {hi} 2000000 := {root}',
            f'end B699Middle.HeightBlocks.{namespace}',
            f'#print axioms B699Middle.HeightBlocks.{namespace}.coverage']
        p=folder/f'Height{lo:04d}_{hi:04d}.lean'
        p.write_text('\n\n'.join(lines)+'\n',encoding='utf-8',newline='\n')
        entries.append({'first':lo,'last':hi,'source':p.relative_to(RUN).as_posix(),'sha256':sha(p),
            'theorem':f'B699Middle.HeightBlocks.{namespace}.coverage'})
    result={'stage':'generated, not accepted until complete actual Lean verification','first':first,'last':last,
        'count':last-first+1,'block_size':size,'input_sha256':sha(inp),'blocks':entries,
        'reused_concrete_heights':[i for i in [323,999] if first<=i<=last],
        'math':'original exact integer certificate; full original smallPrimeCount supplied by proved count table'}
    output=RUN/f'experiments/height-blocks/manifest-{first}-{last}-{size}.json'
    output.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8',newline='\n')
    print(json.dumps({'manifest':output.relative_to(RUN).as_posix(),'blocks':len(entries),'indices':result['count']}))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--first',type=int,required=True);p.add_argument('--last',type=int,required=True);p.add_argument('--size',type=int,default=16)
    a=p.parse_args();generate(a.first,a.last,a.size)
