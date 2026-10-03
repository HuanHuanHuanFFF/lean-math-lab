#!/usr/bin/env python3
"""Use an EXISTING native Lean executable and built pinned packages, read-only.
No elan/lake invocation, downloads, package installation, builds of dependencies,
checker guessing, or writes into the project. All new files go to --out.
This launcher has NOT been tested with Lean in the delivery environment.
"""
from __future__ import annotations
import argparse, hashlib, json, os, re, shutil, sys
from pathlib import Path
from record_command import record

ROOT = Path(__file__).resolve().parents[1]
FILES = ['CoreNumerals.lean','ImportOnly.lean','SignatureAudit.lean','NonprimeDefsOnly.lean','TypeAudit.lean','AxiomAudit.lean']

def digest(path):
    h=hashlib.sha256()
    with path.open('rb') as f:
        for block in iter(lambda:f.read(1024*1024),b''):h.update(block)
    return h.hexdigest()

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--lean',type=Path,required=True,help='Absolute existing native executable, NOT an elan shim')
    p.add_argument('--project',type=Path,required=True,help='Read-only existing project with built dependencies')
    p.add_argument('--out',type=Path,required=True,help='New directory outside the project and delivery')
    p.add_argument('--timeout',type=int,default=120)
    a=p.parse_args();project=a.project.resolve();out=a.out.resolve()
    if out.exists() or out.is_relative_to(project) or out.is_relative_to(ROOT):
        p.error('--out must be NEW and outside both --project and the delivery directory')
    out.mkdir(parents=True)
    state={'status':'preflight','install_attempted':False,'checker_command':None,
      'checker_status':'not_run_unknown_project_entry','commands':[],
      'cache_state':'pre-existing dependency objects; not rebuilt; not independently certified',
      'peak_memory_bytes':None}
    env=dict(os.environ);env['GIT_OPTIONAL_LOCKS']='0';env.pop('LEAN_PATH',None)
    def run(name,cmd):
        r=record(cmd,out,out/'logs'/name,env=env,timeout=a.timeout);state['commands'].append(r)
        if not r['child_started'] or r['exit_code']!=0 or r['status']!='exited':
            raise RuntimeError(f'{name} failed; see logs/{name}')
        return (out/'logs'/name/'stdout.log').read_text(errors='replace')
    try:
        if not a.lean.is_absolute():raise ValueError('--lean must be absolute')
        lean=a.lean.resolve(strict=True)
        with lean.open('rb') as f:magic=f.read(4)
        if lean.name.lower() not in ('lean','lean.exe') or magic not in [b'\x7fELF',b'\xcf\xfa\xed\xfe',b'\xfe\xed\xfa\xcf',b'\xca\xfe\xba\xbe'] and magic[:2]!=b'MZ':
            raise ValueError('Use the existing native lean binary, not an installer, shell wrapper, or elan shim')
        version=run('version',[str(lean),'--version']);state['actual_version_stdout']=version
        if not re.search(r'\bversion 4\.33\.1(?:,|\s|\))',version):raise ValueError('Not the requested Lean v4.33.1')
        if '819816b2e0a3' not in version:raise ValueError('Lean version output lacks the locked commit identifier')
        state['lean_binary_sha256']=digest(lean)
        expected=json.loads((ROOT/'input/original/environment/lake-manifest.json').read_text())
        manifest=json.loads((project/'lake-manifest.json').read_text())
        wanted={x['name']:x['rev'] for x in expected['packages']}
        got={x['name']:x.get('rev') for x in manifest['packages']}
        if got!=wanted:raise ValueError('Dependency revision map differs from the supplied frozen manifest')
        if (project/'lean-toolchain').read_text().strip()!='leanprover/lean4:v4.33.1':raise ValueError('Project toolchain mismatch')
        package_base=project/manifest.get('packagesDir','.lake/packages')
        libs=[];state['dependency_heads']={}
        for pkg in manifest['packages']:
            if pkg.get('type')!='git' or pkg.get('subDir'):raise ValueError('This launcher supports only the supplied git/root package layout')
            directory=(package_base/pkg['name']).resolve(strict=True)
            head=run('git-'+pkg['name'],['git','-C',str(directory),'rev-parse','HEAD']).strip()
            if head!=wanted[pkg['name']]:raise ValueError('Wrong checkout for '+pkg['name'])
            state['dependency_heads'][pkg['name']]=head
            lib=directory/'.lake/build/lib/lean'
            if not lib.is_dir():raise ValueError('Built dependency directory missing: '+str(lib))
            libs.append(lib)
        mb=package_base/'mathlib/Mathlib/Data/Nat/Prime/Defs.lean'
        normalized=mb.read_bytes().replace(b'\r\n',b'\n')
        if hashlib.sha256(normalized).hexdigest()!='617c1a2a927a2a282092f11c8d254036454e7ffa2eab12f8dd16880cf83d0d61':
            raise ValueError('mathlib source bytes differ after documented line-ending normalization')
        mo=package_base/'mathlib/.lake/build/lib/lean/Mathlib/Data/Nat/Prime/Defs.olean'
        state['imported_defs_olean_sha256']=digest(mo)
        locked=json.loads((ROOT/'sources/SOURCE_LOCK.json').read_text())
        for item in locked['records']:
            if item.get('full_blob_match') is True and item['repository']=='leanprover-community/mathlib4':
                raw=(package_base/'mathlib'/item['upstream_path']).read_bytes().replace(b'\r\n',b'\n')
                if hashlib.sha256(raw).hexdigest()!=item['sha256']:
                    raise ValueError('Frozen source mismatch: '+item['upstream_path'])
        for file in FILES:shutil.copyfile(ROOT/file,out/file)
        state['source_sha256']={f:digest(out/f) for f in FILES}
        # Only fresh output comes first; no old root project object directory is imported.
        env['LEAN_PATH']=os.pathsep.join([str(out)]+list(map(str,libs)))
        state['effective_LEAN_PATH']=env['LEAN_PATH']
        flags=['-j1','-DautoImplicit=false','-DrelaxedAutoImplicit=false','-DElab.async=false','-R',str(out)]
        for file in FILES:
            module=Path(file).stem
            run(module,[str(lean),*flags,'-o',str(out/(module+'.olean')),str(out/file)])
        state['output_olean_sha256']={p.name:digest(p) for p in out.glob('*.olean')}
        text=(out/'logs/AxiomAudit/stdout.log').read_text(errors='replace')+'\n'+(out/'logs/AxiomAudit/stderr.log').read_text(errors='replace')
        suspicious=[s for s in ['sorryAx','Lean.ofReduceBool','Lean.ofReduceNat'] if s in text]
        state['suspicious_axiom_tokens']=suspicious
        if suspicious:raise RuntimeError('Non-accepted trust tokens in axiom output; manual review required')
        state['status']='compile_sequence_exited_zero_axiom_output_requires_review_checker_not_run'
    except Exception as exc:
        state.update(status='blocked_or_failed',error_type=type(exc).__name__,error=str(exc))
    finally:
        (out/'SESSION-RECEIPT.json').write_text(json.dumps(state,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(state,ensure_ascii=False,indent=2))
    return 0 if state['status'].startswith('compile_sequence') else 1
if __name__=='__main__':raise SystemExit(main())
