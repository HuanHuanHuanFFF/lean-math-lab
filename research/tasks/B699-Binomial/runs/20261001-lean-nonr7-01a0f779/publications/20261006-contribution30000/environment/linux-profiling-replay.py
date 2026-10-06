"""Bounded Linux diagnostics only; no S, literal, axiom or contribution acceptance.

Uses the separately frozen probe manifest and the already reviewed official
bootstrap/sandbox. Containers remain until State is captured, then only their
fresh UUID identities are removed, with cleanup checked before the next probe.
"""
from datetime import datetime, timezone
import ast
import importlib.util
import json
import math
from pathlib import Path
import re
import signal
import subprocess
import sys
import time

SCRIPT = Path(__file__).resolve().parent
KNOWN_OWNED_IDS = {}
CURRENT_DEADLINE = None
spec = importlib.util.spec_from_file_location('fixed_replay', SCRIPT/'linux-platform-replay.py')
core = importlib.util.module_from_spec(spec)
spec.loader.exec_module(core)


def prepare_fixed_workspace(sources):
    """Execute only the exact reviewed bootstrap statement range, never its seven-leaf loop.

    This is a trusted, hash-bound harness source (not supplied Lean code). The
    boundary requires the original measured admission through official sandbox
    SHA validation; all bootstrap stages and guards remain byte-identical.
    """
    source = (SCRIPT/'linux-platform-replay.py').read_text()
    if core.digest(SCRIPT/'linux-platform-replay.py') != core.request['fixedReplaySha256']:
        raise RuntimeError('fixed reviewed replay source changed')
    main = next(node for node in ast.parse(source).body if isinstance(node, ast.FunctionDef) and node.name=='main')
    start = next(i for i,node in enumerate(main.body) if isinstance(node,ast.Assign)
                 and any(isinstance(target,ast.Name) and target.id=='before' for target in node.targets))
    end = next(i for i,node in enumerate(main.body) if isinstance(node,ast.Assign)
               and any(isinstance(target,ast.Name) and target.id=='object_imports' for target in node.targets))
    statements = main.body[start:end]
    if not any('official-workspace-validate' in ast.unparse(node) for node in statements):
        raise RuntimeError('trusted bootstrap boundary missing workspace validation')
    if not any('official sandbox source changed' in ast.unparse(node) for node in statements):
        raise RuntimeError('trusted bootstrap boundary missing sandbox digest validation')
    core.raw_sources = sources
    exec(compile(ast.Module(body=statements,type_ignores=[]), 'hash-bound-bootstrap', 'exec'), core.__dict__)
    return core.fc, core.base


def query_timeout():
    if CURRENT_DEADLINE is None:
        return 3
    remaining=CURRENT_DEADLINE-time.monotonic()
    if remaining<=0:
        raise RuntimeError('profiling Host supervisor reached independent 180+15 deadline')
    return min(3,remaining)


def owned_containers(name):
    if not re.fullmatch(r'b699-[0-9a-f]{32}',name):
        raise RuntimeError('invalid owned profiling UUID')
    identifiers = subprocess.check_output(['docker','container','ls','--all','--no-trunc',
        '--filter','name=^/'+name+'$','--format','{{.ID}}'],text=True,env=core.environment,timeout=query_timeout()).splitlines()
    if len(identifiers)>1 or any(not re.fullmatch(r'[0-9a-f]{64}',cid) for cid in identifiers):
        raise RuntimeError('ambiguous owned profiling identity')
    if identifiers:
        KNOWN_OWNED_IDS[name]=identifiers[0]
    return identifiers


def inspect_owned(name):
    ids = owned_containers(name)
    if not ids:
        return None
    value = json.loads(subprocess.check_output(['docker','container','inspect',ids[0]],
                                             text=True,env=core.environment,timeout=query_timeout()))[0]
    if value['Id'] != ids[0] or value['Name'] != '/'+name:
        raise RuntimeError('owned container inspection identity mismatch')
    return value


def profiling_adapter(base, module, output, memory_mb):
    adapter = core.sandbox_adapter(base,module,output)
    text = adapter.read_text()
    assert text.count('run --rm --pull never')==1
    text = text.replace('run --rm --pull never','run --pull never')
    cleanup = '    docker rm -f "$(<"$cidfile")" >/dev/null 2>&1 || true'
    assert text.count(cleanup)==1
    text = text.replace(cleanup,'    : # Host UUID supervisor captures state before strict cleanup')
    command = '/bin/sh /contrib-resource/guard.sh "$memory_mb" "$lean_binary"'
    assert text.count(command)==1
    text = text.replace(command,'/bin/sh /contrib-resource/guard.sh "$memory_mb" /bin/sh /contrib-resource/entry.sh "$timeout_seconds" "$lean_binary"')
    anchor = '  --mount "type=bind,src='+str(SCRIPT/'container-resource-guard.sh')+',dst=/contrib-resource/guard.sh,readonly"'
    assert text.count(anchor)==1
    text = text.replace(anchor,anchor+'\n  --mount "type=bind,src='+str(SCRIPT/'container-probe-metrics.sh')+',dst=/contrib-resource/metrics.sh,readonly"')
    text = text.replace(anchor,anchor+'\n  --mount "type=bind,src='+str(SCRIPT/'container-probe-entry.sh')+',dst=/contrib-resource/entry.sh,readonly"')
    ownership = json.loads((core.EVIDENCE/(adapter.name+'.container.json')).read_text())
    cidfile=core.WORK/(ownership['name']+'.cid')
    assert text.count('cidfile="$runtime_dir/container-id"')==1
    text=text.replace('cidfile="$runtime_dir/container-id"','cidfile="'+str(cidfile)+'"')
    assert text.count('  rm -f "$cidfile"')==1
    text=text.replace('  rm -f "$cidfile"','  : # Host retains trusted --cidfile until checked ID cleanup')
    adapter.write_text(text)
    core.shutil.copy2(adapter,core.EVIDENCE/adapter.name)
    (core.EVIDENCE/(adapter.name+'.diff')).write_text(''.join(__import__('difflib').unified_diff(
        base.splitlines(True),text.splitlines(True),fromfile='official-pinned-sandbox',tofile=adapter.name)))
    ownership['adapterSha256'] = core.digest(adapter)
    ownership['cidFilePath']=str(cidfile)
    (core.EVIDENCE/(adapter.name+'.container.json')).write_text(json.dumps(ownership,indent=2)+'\n')
    return adapter,ownership


def trusted_cid(ownership):
    path=Path(ownership['cidFilePath'])
    if path.parent!=core.WORK or path.name!=ownership['name']+'.cid':
        raise RuntimeError('untrusted profiling cidfile path')
    if not path.is_file():
        return
    identifier=path.read_text().strip()
    if not identifier:
        return
    if not re.fullmatch('[0-9a-f]{64}',identifier):
        raise RuntimeError('invalid trusted Docker cidfile identity')
    previous=KNOWN_OWNED_IDS.get(ownership['name'])
    if previous is not None and previous!=identifier:
        raise RuntimeError('owned Docker identity changed')
    # Written only by the trusted, hash-bound Docker launch outside every guest
    # writable mount. The nonce was absent before that one launch.
    KNOWN_OWNED_IDS[ownership['name']]=identifier


def snapshot_state(value):
    state = value['State']
    config = value['HostConfig']
    return {'Id':value['Id'],'Name':value['Name'],
            'State':{key:state.get(key) for key in ('Running','OOMKilled','ExitCode','Error','Pid','StartedAt','FinishedAt')},
            'HostConfig':{key:config.get(key) for key in ('Memory','MemorySwap','PidsLimit','ReadonlyRootfs','NetworkMode','CapDrop','SecurityOpt')}}


def execute_probe(probe,source,fc,base):
    global CURRENT_DEADLINE
    label = 'probe-'+probe['id']
    module = 'Frozen.Diag_'+probe['id']
    measured = core.resources('before-'+label)
    memory_mb = min(16384,math.floor((measured['availableBudgetBytes']-1024**3)/(256*1024**2))*256)
    if memory_mb<1024:
        raise RuntimeError('no safe measured Docker profiling budget')
    output = core.WORK/label
    adapter,ownership = profiling_adapter(base,module,output,memory_mb)
    name = ownership['name']
    if Path(ownership['cidFilePath']).exists():
        raise RuntimeError('owned nonce cidfile already exists before launch')
    if owned_containers(name):
        raise RuntimeError('owned profiling UUID already exists before launch')
    command = ['bash',str(adapter),str(fc),str(source),'180',str(memory_mb),'400000']
    receipt = {**ownership,'probeId':probe['id'],'sourceSha256':core.digest(source),'command':command,
        'prelaunchAbsent':True,'cleanupConfirmed':False,'memoryMiB':memory_mb,'timeoutSeconds':180,
        'proofAccepted':False,'diagnosisOnly':True,'memoryPeakIsFinal':False,'samples':[],
        'innerTimeoutSeconds':180,'innerKillAfterSeconds':15,'hostSupervisorDeadlineSeconds':195}
    receipt_path = core.EVIDENCE/(label+'-CONTAINER-LIFECYCLE.json')
    receipt_path.write_text(json.dumps(receipt,indent=2)+'\n')
    log = core.EVIDENCE/(label+'.log')
    started = datetime.now(timezone.utc)
    clock_start = time.monotonic()
    CURRENT_DEADLINE=clock_start+195
    process = None
    try:
        with log.open('wb') as stream:
            process = subprocess.Popen(command,cwd=core.WORK,env=core.environment,stdout=stream,stderr=subprocess.STDOUT)
            while process.poll() is None:
                trusted_cid(ownership)
                if time.monotonic()>=clock_start+195:
                    raise RuntimeError('profiling Host supervisor reached independent 180+15 deadline')
                value = inspect_owned(name)
                if value and value['State']['Running']:
                    config = value['HostConfig']
                    if (config['Memory'] != memory_mb*1024**2 or config['MemorySwap'] != memory_mb*1024**2
                        or config['PidsLimit'] != 1024 or not config['ReadonlyRootfs'] or config['NetworkMode']!='none'):
                        raise RuntimeError('actual profiling Docker protection mismatch')
                    metrics = subprocess.run(['docker','exec',name,'/bin/sh','/contrib-resource/metrics.sh',str(memory_mb)],
                        env=core.environment,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True,check=False,timeout=query_timeout())
                    if metrics.returncode:
                        current = inspect_owned(name)
                        if current and current['State']['Running']:
                            raise RuntimeError('trusted profiling cgroup metric reader failed: '+metrics.stderr[:200])
                    else:
                        receipt['samples'].append({'elapsedSeconds':time.monotonic()-clock_start,
                            'metrics':metrics.stdout,'containerState':snapshot_state(value)})
                        receipt_path.write_text(json.dumps(receipt,indent=2)+'\n')
                time.sleep(1)
            code = process.wait()
        CURRENT_DEADLINE=None
        receipt['elapsedSeconds'] = time.monotonic()-clock_start
        receipt['exitCode'] = code
        final = inspect_owned(name)
        if final is None:
            raise RuntimeError('owned diagnostic container vanished before State capture')
        receipt['postScriptContainerState'] = snapshot_state(final)
        receipt['supervisorKilledStillRunningOwnedContainer'] = final['State']['Running']
        if final['State']['Running']:
            # The official timeout may kill the Docker client before its container.
            # Record that fact, stop only this checked UUID identity, then inspect
            # its stopped State before deleting it; never label this stop an OOM.
            subprocess.run(['docker','container','kill',final['Id']],env=core.environment,
                           stdout=subprocess.PIPE,stderr=subprocess.PIPE,check=True,timeout=3)
            final = inspect_owned(name)
            if final is None or final['State']['Running']:
                raise RuntimeError('owned profiling container did not stop after timeout')
        receipt['finalContainerState'] = snapshot_state(final)
    except BaseException as error:
        receipt['runException']=repr(error)
        raise
    finally:
        CURRENT_DEADLINE=None
        receipt_path.write_text(json.dumps(receipt,indent=2)+'\n')
        # Query failure must not skip termination. Prefer the previously checked
        # 64-hex ID from a checked Docker query or the trusted launch cidfile.
        # Never terminate by an unverified name if both identity sources fail.
        try:
            trusted_cid(ownership)
        except BaseException as error:
            receipt['trustedCidReadError']=repr(error)
        target=KNOWN_OWNED_IDS.get(name)
        receipt['cleanupTarget']=target
        receipt['cleanupActions']=[]
        for action in ((['kill',target],['rm','--force',target]) if target is not None else ()):
            try:
                result=subprocess.run(['docker','container',*action],env=core.environment,
                    stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True,check=False,timeout=3)
                receipt['cleanupActions'].append({'command':action,'exitCode':result.returncode,'stderr':result.stderr[:300]})
            except BaseException as error:
                receipt['cleanupActions'].append({'command':action,'error':repr(error)})
        try:
            receipt['cleanupConfirmed']=not owned_containers(name)
        except BaseException as error:
            receipt['absenceCheckError']=repr(error)
            receipt['cleanupConfirmed']=False
        if receipt['cleanupConfirmed']:
            Path(ownership['cidFilePath']).unlink(missing_ok=True)
        if process is not None and process.poll() is None:
            try:
                process.wait(timeout=5)
            except subprocess.TimeoutExpired:
                process.terminate()
                try:
                    process.wait(timeout=5)
                except subprocess.TimeoutExpired:
                    process.kill()
                    process.wait()
        receipt.setdefault('elapsedSeconds',time.monotonic()-clock_start)
        receipt.setdefault('exitCode',process.returncode if process is not None else None)
        receipt_path.write_text(json.dumps(receipt,indent=2)+'\n')
        core.stages.append({'label':label,'command':command,'cwd':str(core.WORK),'startedAt':started.isoformat(),
            'elapsedSeconds':receipt['elapsedSeconds'],'exitCode':receipt['exitCode'],'log':log.name,
            'logSha256':core.digest(log) if log.is_file() else None,
            'executedScriptSha256':{str(adapter):core.digest(adapter)}})
        (core.EVIDENCE/'STAGES.json').write_text(json.dumps(core.stages,indent=2)+'\n')
        core.preserve_objects(label,output,source,module)
        if not receipt['cleanupConfirmed']:
            raise RuntimeError('owned profiling cleanup could not be confirmed')
    guard_seen = False
    environment_error = False
    errors = []
    for line in log.read_text(errors='replace').splitlines():
        guard_seen |= line.startswith('B699_RESOURCE_CONTRACT path=')
        environment_error |= 'B699_RESOURCE_CONTRACT:' in line or 'B699_DIAGNOSTIC_ENVIRONMENT:' in line or any(marker in line.lower() for marker in (
            'could not execute external process','command not found','unknown module prefix','no such file or directory'))
        try:
            message = json.loads(line)
        except json.JSONDecodeError:
            continue
        if message.get('severity')=='error':
            errors.append(message)
    if code in (125,126,127) or not guard_seen or environment_error:
        raise RuntimeError(label+': global environment/protection failure')
    return {'id':probe['id'],'root':probe['root'],'sourceSha256':core.digest(source),'exitCode':code,
        'elapsedSeconds':receipt['elapsedSeconds'],'logSha256':core.digest(log),'completeJsonErrors':errors,
        'objectExists':(output/(module.replace('.','/')+'.olean')).is_file(),
        'finalContainerState':receipt['finalContainerState'],
        'supervisorKilledStillRunningOwnedContainer':receipt['supervisorKilledStillRunningOwnedContainer'],
        'cleanupConfirmed':True,'proofAccepted':False}


def main():
    if sys.platform!='linux' or core.os.environ.get('GITHUB_REF')!='refs/heads/'+core.BRANCH:
        raise RuntimeError('Linux and authorized branch required')
    request = core.request
    if request.get('enabled') is not True or request.get('diagnosisOnly') is not True or request.get('branch')!=core.BRANCH:
        raise RuntimeError('profiling request disabled or wrong purpose/branch')
    if request.get('fileTimeoutSeconds')!=180 or request.get('maxMemoryMiB')!=16384:
        raise RuntimeError('180 second / maximum16GiB profiling contract required')
    manifest_path = core.bound(request['probeManifestPath'],request['probeManifestSha256'])
    manifest = json.loads(manifest_path.read_text())
    if manifest.get('proofAccepted') is not False or manifest.get('officialProductionCommit')!=core.DERIVED:
        raise RuntimeError('probe manifest purpose or production pin mismatch')
    probes = manifest['probes']
    if not 1<=len(probes)<=32 or [probe['id'] for probe in probes]!=manifest['executionOrder']:
        raise RuntimeError('fixed explicit probe order required')
    selected = request['selectedProbeIds']
    if not selected or len(set(selected))!=len(selected) or selected!=[identifier for identifier in manifest['executionOrder'] if identifier in selected]:
        raise RuntimeError('explicit selected probe order differs from frozen manifest')
    probes = [probe for probe in probes if probe['id'] in selected]
    sources = []
    for probe in probes:
        if not re.fullmatch('[A-Za-z][A-Za-z0-9_]*',probe['id']):
            raise RuntimeError('unsafe probe id')
        if (probe['wallTimeoutSeconds'],probe['heartbeatLimit'],probe['threads'])!=(180,400000,1):
            raise RuntimeError('probe execution limits changed')
        source = core.bound(probe['path'],probe['sha256'])
        if source.stat().st_size != probe['bytes']:
            raise RuntimeError('probe source byte count changed')
        sources.append(source)
    (core.EVIDENCE/'PROFILING-INPUT-BINDING.json').write_text(json.dumps({
        'requestSha256':core.digest(core.REQUEST_PATH),'probeManifestSha256':core.digest(manifest_path),
        'sourceCommit':subprocess.check_output(['git','-C',str(core.REPO),'rev-parse','HEAD'],text=True).strip(),
        'diagnosisOnly':True,'proofAccepted':False,'probes':probes,
        'helpers':{name:core.digest(SCRIPT/name) for name in ('linux-profiling-replay.py','linux-platform-replay.py',
            'container-resource-guard.sh','container-probe-metrics.sh','container-probe-entry.sh','cgroup-budget.py','build-cache-interpreter.py')}
    },indent=2)+'\n')
    fc,base = prepare_fixed_workspace(sources)
    results = []
    for probe,source in zip(probes,sources):
        results.append(execute_probe(probe,source,fc,base))
        (core.EVIDENCE/'PROFILING-RESULTS.json').write_text(json.dumps(results,indent=2)+'\n')
    failed = [result['id'] for result in results if result['exitCode'] or result['completeJsonErrors'] or not result['objectExists']]
    (core.EVIDENCE/'DIAGNOSIS.json').write_text(json.dumps({'collectionCompleted':True,
        'failedProbes':failed,'allProbeCompilesPass':not failed,'diagnosisOnly':True,'proofAccepted':False},indent=2)+'\n')
    return 1 if failed else 0


if __name__=='__main__':
    def stop_owned(signum,frame):
        raise KeyboardInterrupt('profiling interrupted')
    signal.signal(signal.SIGTERM,stop_owned)
    try:
        sys.exit(main())
    except BaseException as error:
        if isinstance(error,SystemExit):
            raise
        (core.EVIDENCE/'FAILURE.json').write_text(json.dumps({'error':str(error),'diagnosisOnly':True,
            'proofAccepted':False,'stagesCompleted':len(core.stages)},indent=2)+'\n')
        print(json.dumps({'status':'failed','error':str(error),'proofAccepted':False}),flush=True)
        sys.exit(1)
