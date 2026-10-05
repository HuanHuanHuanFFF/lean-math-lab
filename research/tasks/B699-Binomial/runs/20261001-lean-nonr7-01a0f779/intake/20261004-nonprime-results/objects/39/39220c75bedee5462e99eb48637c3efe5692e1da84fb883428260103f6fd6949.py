#!/usr/bin/env python3
"""Run the staged audits with an ALREADY INSTALLED native Lean; never invoke Lake/elan/Git."""
from pathlib import Path
import argparse, datetime, hashlib, json, os, re, shutil, subprocess, sys, time
PIN='leanprover/lean4:v4.33.1'
REV='0df444a360eaa60ab8c11dca51a86af692955474'
ROOT=Path(__file__).resolve().parents[1]
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--lean-bin',required=True,type=Path)
    p.add_argument('--out',required=True,type=Path,help='Fresh directory outside the packet/project')
    p.add_argument('--project',type=Path,help='Prepared project with the fixed toolchain, lock and oleans; only read')
    a=p.parse_args(); out=a.out.resolve(); project=a.project.resolve() if a.project else None
    if out.exists() or out==ROOT or ROOT in out.parents or (project and (out==project or project in out.parents)):
        p.error('--out must be fresh and outside both the packet and project')
    out.mkdir(parents=True)
    state={'required_toolchain':PIN,'required_mathlib':REV,'installed_tools':False,'repository_modified':False,
           'lean_started':False,'version_output':None,'audit_runs':[],'checker_run':None,'axioms':None}
    def save(): (out/'REPLAY-STATUS.json').write_text(json.dumps(state,indent=2)+'\n')
    def fail(msg,code=2):
        state['status']='BLOCKED'; state['reason']=msg;save(); print(msg,file=sys.stderr);return code
    lean=a.lean_bin.resolve()
    if not lean.is_file() or not os.access(lean,os.X_OK): return fail('Native Lean binary not found; no installation attempted.')
    if lean.name.lower() in {'elan','elan.exe','lake','lake.exe'} or '.elan/bin' in str(lean):
        return fail('Refusing an elan/Lake shim. Pass the installed toolchain native binary.')
    with lean.open('rb') as f: magic=f.read(4)
    if not (magic==b'\x7fELF' or magic[:2]==b'MZ' or magic in (b'\xcf\xfa\xed\xfe',b'\xfe\xed\xfa\xcf',b'\xca\xfe\xba\xbe')):
        return fail('Refusing a script/wrapper instead of a native Lean executable.')
    clean=os.environ.copy()
    for key in ('LEAN_PATH','LEAN_SRC_PATH','LEAN_SYSROOT'): clean.pop(key,None)
    state['lean_sha256']=hashlib.sha256(lean.read_bytes()).hexdigest()
    version=subprocess.run([str(lean),'--version'],capture_output=True,env=clean)
    state['lean_started']=True
    (out/'version.stdout').write_bytes(version.stdout);(out/'version.stderr').write_bytes(version.stderr)
    state['version_output']=version.stdout.decode(errors='replace')
    if version.returncode or not re.search(r'\b4\.33\.1\b',state['version_output']): return fail('Lean version check failed.')
    stage=out/'sources';stage.mkdir()
    names=['AuditCoreOnly.lean','AuditNonprimeCertificates.lean','AuditDefsOnlyDirect.lean','AuditCoreBridge.lean']
    for name in names+['CoreOnlyDivisorCertificates.lean','CoreToNatPrimeBridge.lean']:
        shutil.copyfile(ROOT/name,stage/name)
    objects=out/'objects';objects.mkdir()
    def run(name,leanpath,object_name=None):
        env=clean.copy();env['LEAN_PATH']=leanpath
        argv=[str(lean),'-R',str(stage)]
        if object_name: argv+=['-o',str(objects/object_name)]
        argv+=[str(stage/name)]
        start=datetime.datetime.now(datetime.timezone.utc).isoformat();t=time.perf_counter()
        result=subprocess.run(argv,cwd=stage,capture_output=True,env=env)
        stem=Path(name).stem
        (out/(stem+'.stdout')).write_bytes(result.stdout);(out/(stem+'.stderr')).write_bytes(result.stderr)
        record={'file':name,'argv':argv,'cwd':str(stage),'LEAN_PATH':leanpath,'start_utc':start,
                'process_wall_seconds_including_startup_and_imports':time.perf_counter()-t,
                'source_sha256':hashlib.sha256((stage/name).read_bytes()).hexdigest(),'exit_code':result.returncode,
                'stdout_sha256':hashlib.sha256(result.stdout).hexdigest(),'stderr_sha256':hashlib.sha256(result.stderr).hexdigest(),
                'peak_memory':None,'checker_result':None}
        if object_name:
            obj=objects/object_name
            record['output_object']=str(obj)
            record['output_object_sha256']=hashlib.sha256(obj.read_bytes()).hexdigest() if obj.is_file() else None
        state['audit_runs'].append(record);save();return result.returncode
    if run('AuditCoreOnly.lean',''): return fail('Core audit failed. Inspect actual logs.',1)
    if not project:
        state['status']='CORE_AUDIT_FINISHED_MATHLIB_NOT_REQUESTED';save();return 0
    try:
        if (project/'lean-toolchain').read_text().strip()!=PIN: return fail('Project toolchain lock mismatch.')
        lock=json.loads((project/'lake-manifest.json').read_text())
        expected=json.loads((ROOT/'input/original/environment/lake-manifest.json').read_text())
        found={x['name']:x for x in lock['packages']}
        for x in expected['packages']:
            if x['name'] not in found or found[x['name']].get('rev')!=x['rev']:
                return fail('Package lock mismatch: '+x['name'])
        paths=[]; package_root=project/lock.get('packagesDir','.lake/packages')
        for x in expected['packages']:
            package=package_root/x['name']
            if found[x['name']].get('subDir'): package/=found[x['name']]['subDir']
            lib=package/'.lake/build/lib/lean'
            if not lib.is_dir(): return fail('Missing prebuilt dependency directory: '+str(lib))
            paths.append(str(lib))
        mathlib=package_root/'mathlib'/'.lake/build/lib/lean'
        for module in ('Mathlib/Data/Nat/Prime/Defs.olean','Mathlib/Data/Nat/Prime/Basic.olean'):
            obj=mathlib/module
            if not obj.is_file(): return fail('Missing prebuilt olean: '+str(obj))
            state.setdefault('primary_olean_sha256',{})[module]=hashlib.sha256(obj.read_bytes()).hexdigest()
    except (OSError,KeyError,ValueError) as e: return fail('Cannot read prepared fixed project: '+str(e))
    for name in names[1:3]:
        if run(name,os.pathsep.join(paths)): return fail('Audit failed: '+name,1)
    if run('CoreOnlyDivisorCertificates.lean','','CoreOnlyDivisorCertificates.olean'):
        return fail('Separate core module compilation failed.',1)
    bridge_path=os.pathsep.join([str(objects),*paths])
    if run('CoreToNatPrimeBridge.lean',bridge_path,'CoreToNatPrimeBridge.olean'):
        return fail('Actual core-to-Mathlib import bridge failed.',1)
    if run('AuditCoreBridge.lean',bridge_path): return fail('Imported bridge audit failed.',1)
    state['status']='AUDITS_FINISHED_CHECKER_NOT_RUN'
    state['note']='Raw #print axioms output is in stdout logs. No list is guessed or auto-whitelisted. This is not the project checker.'
    save();return 0
if __name__=='__main__': sys.exit(main())
