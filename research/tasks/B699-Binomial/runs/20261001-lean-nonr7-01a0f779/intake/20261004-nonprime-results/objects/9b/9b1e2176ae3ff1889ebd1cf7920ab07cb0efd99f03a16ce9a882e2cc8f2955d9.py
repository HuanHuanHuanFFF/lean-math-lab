#!/usr/bin/env python3
"""Run the standalone files with an ALREADY INSTALLED pinned Lean and prebuilt dependencies.
Reads a prepared project only. Writes fresh command evidence and objects outside that project.
Does not invoke Lake/elan, build dependencies, download files, install tools or infer a checker.
"""
from pathlib import Path
import argparse, hashlib, json, os, subprocess, sys
sys.dont_write_bytecode = True
from run_command import capture, digest

EXPECTED_LEAN = 'leanprover/lean4:v4.33.1'
EXPECTED_REV = '0df444a360eaa60ab8c11dca51a86af692955474'


def main() -> int:
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--project',type=Path,required=True,help='Existing, fully prepared pinned project')
    p.add_argument('--lean-bin',type=Path,required=True,help='Absolute native bin/lean, NOT an elan shim')
    p.add_argument('--out',type=Path,required=True,help='New evidence directory outside project and packet')
    p.add_argument('--timeout',type=float,default=120)
    a=p.parse_args()
    packet=Path(__file__).resolve().parent.parent
    project=a.project.resolve(strict=True)
    lean=a.lean_bin.resolve(strict=True)
    out=a.out.resolve()
    if not a.lean_bin.is_absolute() or not lean.is_file() or not os.access(lean,os.X_OK):
        raise ValueError('Supply an existing absolute native Lean executable')
    if lean.name != 'lean' or lean.parent.name != 'bin' or not (lean.parent.parent/'lib/lean/Init.olean').is_file():
        raise ValueError('Expected a native Lean distribution; refusing to invoke a shim or installer')
    if out.exists() or out.is_relative_to(project) or out.is_relative_to(packet):
        raise ValueError('Output must be a new directory outside both project and packet')
    if (project/'lean-toolchain').read_text().strip()!=EXPECTED_LEAN:
        raise ValueError('Project lean-toolchain does not match the requested pin')
    expected=json.loads((packet/'input/original/environment/lake-manifest.json').read_text())
    actual=json.loads((project/'lake-manifest.json').read_text())
    pin=lambda d:{x['name']:x.get('rev') for x in d['packages']}
    if pin(expected)!=pin(actual):
        raise ValueError('Dependency name/revision set differs from the supplied lock')
    packages_dir=Path(actual['packagesDir'])
    if not packages_dir.is_absolute():packages_dir=project/packages_dir
    lib_dirs=[]
    mathlib=None
    for dep in actual['packages']:
        base=packages_dir/dep['name']
        if dep.get('subDir'):base/=dep['subDir']
        lib=(base/'.lake/build/lib/lean').resolve()
        if not lib.is_dir():raise FileNotFoundError(f'Missing prebuilt object directory: {lib}')
        lib_dirs.append(lib)
        if dep['name']=='mathlib':mathlib=base.resolve()
    if mathlib is None:raise ValueError('No mathlib package in lock')
    if not (mathlib/'.lake/build/lib/lean/Mathlib/Data/Nat/Prime/Basic.olean').is_file():
        raise FileNotFoundError('Missing prebuilt Prime.Basic.olean; no build will be attempted')
    for stem in ['Basic','Defs']:
        original=(packet/f'input/original/reference/Prime-{stem}.lean').read_bytes()
        live=(mathlib/f'Mathlib/Data/Nat/Prime/{stem}.lean').read_bytes()
        if original!=live:raise ValueError(f'Prepared mathlib Prime.{stem} differs from attachment')
    out.mkdir(parents=True)
    env=os.environ.copy()
    env.pop('LEAN_SYSROOT', None)
    # Explicit absolute dependency object paths; do not inherit an unrelated LEAN_PATH.
    env['LEAN_PATH']=os.pathsep.join(str(x) for x in lib_dirs)
    version=capture([str(lean),'--version'],packet,out,'lean-version',[],a.timeout,env)
    if version['exit_code']!=0 or version['timed_out']:
        raise RuntimeError('Lean --version failed; inspect the real receipt')
    version_text=(out/version['stdout_file']).read_text()
    import re
    if not re.search(r'Lean \(version 4\.33\.1(?:,|\s|\))',version_text):
        raise RuntimeError('Effective native Lean version differs from v4.33.1')
    head=capture(['git','-C',str(mathlib),'rev-parse','HEAD'],packet,out,'mathlib-head',[],a.timeout,env)
    if head['exit_code']!=0 or (out/head['stdout_file']).read_text().strip()!=EXPECTED_REV:
        raise RuntimeError('Effective mathlib HEAD does not match')
    (out/'environment.json').write_text(json.dumps({
        'lean_bin':str(lean),'lean_bin_sha256':digest(lean.read_bytes()),
        'project':str(project),'lean_path':env['LEAN_PATH'],
        'manifest_name_revision_set':pin(actual),'mathlib':str(mathlib),
        'dependency_cache_state':'required prebuilt directories and target olean exist',
        'cache_provenance':'not independently established: operator must attest source/object consistency',
        'os_page_cache_state':'not controlled or measured',
        'repository_source_writes':False,'installs_or_downloads':False,
        'checker_run':False,'checker_reason':'accurate project-specific entry point absent',
    },ensure_ascii=False,indent=2)+'\n')
    tests=[
        ('import-only','ImportOnly.lean',None),
        ('product','NonprimeCertificates.lean','NonprimeCertificates.olean'),
        ('product-audit','AuditNonprimeCertificates.lean',None),
        ('divisor','comparison/DivisorCertificates.lean','DivisorCertificates.olean'),
        ('comparison-audit','AuditComparison.lean',None),
    ]
    for label,source_name,object_name in tests:
        source=packet/source_name
        argv=[str(lean),'-j1','-DElab.async=false','-R',str(packet)]
        if object_name:argv+=['-o',str(out/object_name)]
        argv.append(str(source))
        result=capture(argv,packet,out,label,[source],a.timeout,env)
        if not result['process_started'] or result['timed_out'] or result['exit_code']!=0:
            print(f'{label} did not complete successfully; inspect {out}',file=sys.stderr)
            return 1
        if object_name:
            obj=out/object_name
            if not obj.is_file():raise FileNotFoundError('Successful command did not leave the requested object')
            (out/f'{label}.object.json').write_text(json.dumps({
                'file':obj.name,'bytes':obj.stat().st_size,'sha256':digest(obj.read_bytes()),
                'source_sha256':digest(source.read_bytes()),'checker_status':'NOT_RUN'
            },indent=2)+'\n')
    print('Commands exited 0. Review actual axiom logs and run the independently specified project checker.')
    return 0


if __name__=='__main__':
    try:
        raise SystemExit(main())
    except (ValueError, OSError, RuntimeError, KeyError) as exc:
        print(f'REPLAY STOPPED: {exc}',file=sys.stderr)
        raise SystemExit(2)
