"""Pure harness tests with fake Docker and process responses; no Lean or Docker."""
import ast
import hashlib
import json
from pathlib import Path
import re
import shutil
import sys
from types import SimpleNamespace
import uuid

directory = Path(__file__).resolve().parent
root = Path(sys.argv[1]).resolve()
root.mkdir(parents=True,exist_ok=True)
work,evidence = root/'work',root/'evidence'
work.mkdir(exist_ok=True)
evidence.mkdir(exist_ok=True)
core = SimpleNamespace(WORK=work,EVIDENCE=evidence,SCRIPT=directory,REPO=Path.cwd(),
                       environment={'B699_HARD_DEADLINE_UTC':'2026-10-06T23:40:25+00:00','B699_HARD_DEADLINE_EPOCH':'1791330025'},stages=[],shutil=shutil)
ctx = {'Path':Path,'re':re,'uuid':uuid,'WORK':work,'EVIDENCE':evidence,'SCRIPT':directory,
       'shutil':shutil,'json':json,'hashlib':hashlib,'REPO':Path.cwd(),'stages':core.stages,
       'environment':core.environment,'request':{'diagnosisOnly':True}}
regular_source=(directory/'linux-platform-replay.py').read_text()
regular = ast.parse(regular_source)
nodes = [node for node in regular.body if isinstance(node,ast.FunctionDef) and node.name in ('sandbox_adapter','digest','preserve_objects')]
exec(compile(ast.Module(body=nodes,type_ignores=[]),'regular-pure-functions','exec'),ctx)
core.sandbox_adapter=ctx['sandbox_adapter']
core.digest=ctx['digest']
core.preserve_objects=ctx['preserve_objects']
core.resources=lambda label: {'availableBudgetBytes':3*1024**3}
source=(directory/'linux-profiling-replay.py').read_text()
tree=ast.parse(source)
funcs=[node for node in tree.body if isinstance(node,ast.FunctionDef) and node.name in
       ('profiling_adapter','snapshot_state','inspect_owned','execute_probe','owned_containers','trusted_cid','query_timeout')]
real_datetime=__import__('datetime').datetime
fake_datetime=SimpleNamespace(now=lambda tz:real_datetime.fromisoformat('2026-10-06T19:00:00+00:00'),fromisoformat=real_datetime.fromisoformat)
test_context={'core':core,'SCRIPT':directory,'json':json,'subprocess':None,
              'math':__import__('math'),'datetime':fake_datetime,
              'timezone':__import__('datetime').timezone,'re':re,'KNOWN_OWNED_IDS':{},'CURRENT_DEADLINE':None,'Path':Path,
              'time':SimpleNamespace(monotonic=lambda:2.0,sleep=lambda _:None)}
exec(compile(ast.Module(body=funcs,type_ignores=[]),'profiling-pure-functions','exec'),test_context)
official=Path(sys.argv[2]).read_text()
adapter,ownership=test_context['profiling_adapter'](official,'Frozen.Diag_Test',work/'adapter',2048)
text=adapter.read_text()
assert 'run --rm' not in text
assert 'docker rm -f "$(<"$cidfile")"' not in text
assert '--name "'+ownership['name']+'"' in text
for protection in ('--network none','--read-only','--cap-drop ALL','--pids-limit "$pids_limit"',
                   '--memory "${memory_mb}m"','--memory-swap "${memory_mb}m"',
                   '/bin/sh /contrib-resource/guard.sh "$memory_mb"'):
    assert protection in text
assert '/contrib-resource/metrics.sh,readonly' in text
assert '/bin/sh /contrib-resource/entry.sh "$timeout_seconds" "$lean_binary" --json' in text
entry=(directory/'container-probe-entry.sh').read_text()
assert 'exec /usr/bin/timeout --kill-after=15 "$seconds" "$@"' in entry
assert 'if [ ! -x /usr/bin/timeout ]' in entry and 'unexpected timeout implementation' in entry
assert ownership['adapterSha256']==core.digest(adapter)
assert (evidence/adapter.name).read_bytes()==adapter.read_bytes()
assert (evidence/(adapter.name+'.diff')).exists()
main=next(node for node in regular.body if isinstance(node,ast.FunctionDef) and node.name=='main')
start=next(i for i,node in enumerate(main.body) if isinstance(node,ast.Assign)
           and any(isinstance(target,ast.Name) and target.id=='before' for target in node.targets))
end=next(i for i,node in enumerate(main.body) if isinstance(node,ast.Assign)
         and any(isinstance(target,ast.Name) and target.id=='object_imports' for target in node.targets))
bootstrap=ast.unparse(ast.Module(body=main.body[start:end],type_ignores=[]))
assert 'raw-' not in bootstrap and 'official sandbox source changed' in bootstrap
for stage in ('admission','source-policy','fixed-fc-source','toolchain-extract','lake-fixed-environment',
              'cache-tool-serial','focused-cache-download','focused-cache-plan','focused-cache-extract',
              'official-workspace-validate','official-cli-frozen','official-cli-version'):
    assert stage in bootstrap
assert "!= core.request['fixedReplaySha256']" in source
assert "str(seconds),str(memory_mb),str(probe['heartbeatLimit'])" in source and 'signal.SIGTERM' in source
assert 'selected!=[identifier for identifier in manifest' in source
assert 'clock_start+seconds+15' in source and 'timeout=3' in source

class FakeDocker:
    def __init__(self,code=0,cleanup_fail=False,still_running=False,telemetry_fault=False):
        self.code=code
        self.owned=False
        self.running=False
        self.polls=0
        self.cleanup_fail=cleanup_fail
        self.still_running=still_running
        self.telemetry_fault=telemetry_fault
        self.calls=[]
    def check_output(self,command,**kwargs):
        self.calls.append(command)
        if command[0]=='git':
            return 'fixture-git-head\n'
        if command[:3]==['docker','container','ls']:
            assert kwargs['timeout']==3
            return 'a'*64+'\n' if self.owned else ''
        assert command[:3]==['docker','container','inspect']
        name=json.loads((evidence/'sandbox-object-Frozen.Diag_Test.sh.container.json').read_text())['name']
        value={'Id':'a'*64,'Name':'/'+name,'State':{'Running':self.running,'OOMKilled':self.code==137 and not self.still_running,
            'ExitCode':self.code,'Pid':123,'Error':'','StartedAt':'fixture','FinishedAt':'fixture'},
            'HostConfig':{'Memory':2048*1024**2,'MemorySwap':2048*1024**2,'PidsLimit':1024,
                'ReadonlyRootfs':True,'NetworkMode':'none','CapDrop':['ALL'],'SecurityOpt':['no-new-privileges']}}
        return json.dumps([value])
    def run(self,command,**kwargs):
        self.calls.append(command)
        if command[:3]==['docker','container','rm']:
            assert command[-1]=='a'*64
            if not self.cleanup_fail:self.owned=False
            return SimpleNamespace(returncode=0,stderr='')
        if command[:3]==['docker','container','kill']:
            assert command[-1]=='a'*64
            self.running=False
            return SimpleNamespace(returncode=0,stderr='')
        assert command[:2]==['docker','exec']
        if self.telemetry_fault:
            raise RuntimeError('fixture telemetry timed out')
        return SimpleNamespace(returncode=0,stdout='B699_METRIC memory.peak 12345\nB699_METRIC cpu.stat usage_usec 67\n',stderr='')
    def Popen(self,command,**kwargs):
        self.owned=True
        self.running=True
        ownership=json.loads((evidence/'sandbox-object-Frozen.Diag_Test.sh.container.json').read_text())
        Path(ownership['cidFilePath']).write_text('a'*64)
        kwargs['stdout'].write(b'B699_RESOURCE_CONTRACT path=/sys/fs/cgroup memory.max=2147483648\n')
        target=work/'probe-Test/Frozen/Diag_Test.olean'
        target.parent.mkdir(parents=True,exist_ok=True)
        if self.code==0:target.write_text('fixture-object; no Lean execution')
        elif target.exists():target.unlink()
        driver=self
        class Process:
            returncode=None
            def poll(self):
                driver.polls+=1
                if driver.polls>1:
                    driver.running=driver.still_running
                    self.returncode=driver.code
                return self.returncode
            def wait(self,timeout=None):
                self.returncode=driver.code
                return self.returncode
        return Process()

dummy=work/'probe.lean'
dummy.write_text('-- pure fixture\n')
probe={'id':'Test','root':'Fixture.True','heartbeatLimit':400000}
for code,still_running in ((0,False),(137,False),(137,True)):
    fake=FakeDocker(code,still_running=still_running)
    core.owned_containers=lambda name: ['a'*64] if fake.owned else []
    test_context['subprocess']=SimpleNamespace(check_output=fake.check_output,run=fake.run,
        Popen=fake.Popen,PIPE=-1,STDOUT=-2,TimeoutExpired=RuntimeError)
    ctx['subprocess']=test_context['subprocess']
    result=test_context['execute_probe'](probe,dummy,work,official)
    assert result['exitCode']==code and result['proofAccepted'] is False
    assert result['finalContainerState']['State']['OOMKilled']==(code==137 and not still_running)
    assert result['finalContainerState']['State']['Running'] is False
    assert result['supervisorKilledStillRunningOwnedContainer']==still_running
    assert result['objectExists']==(code==0)
    receipt=json.loads((evidence/'probe-Test-CONTAINER-LIFECYCLE.json').read_text())
    assert receipt['cleanupConfirmed'] is True and receipt['memoryPeakIsFinal'] is False
    assert len(receipt['samples'])==1 and 'memory.peak 12345' in receipt['samples'][0]['metrics']
    binding=json.loads((evidence/'probe-Test-OBJECT-BINDING.json').read_text())
    assert binding['compileExitCode']==code and binding['proofAccepted'] is False
    assert not fake.owned
fake=FakeDocker(137,True)
core.owned_containers=lambda name: ['a'*64] if fake.owned else []
test_context['subprocess']=SimpleNamespace(check_output=fake.check_output,run=fake.run,Popen=fake.Popen,
    PIPE=-1,STDOUT=-2,TimeoutExpired=RuntimeError)
try:
    test_context['execute_probe'](probe,dummy,work,official)
    raise AssertionError('cleanup failure was accepted')
except RuntimeError as error:
    assert 'cleanup could not be confirmed' in str(error)
fake=FakeDocker(0,telemetry_fault=True)
test_context['subprocess']=SimpleNamespace(check_output=fake.check_output,run=fake.run,Popen=fake.Popen,
    PIPE=-1,STDOUT=-2,TimeoutExpired=RuntimeError)
try:
    test_context['execute_probe'](probe,dummy,work,official)
    raise AssertionError('telemetry fault was accepted')
except RuntimeError as error:
    assert 'fixture telemetry timed out' in str(error)
assert ['docker','container','kill','a'*64] in fake.calls
assert ['docker','container','rm','--force','a'*64] in fake.calls and not fake.owned
assert json.loads((evidence/'probe-Test-CONTAINER-LIFECYCLE.json').read_text())['cleanupConfirmed'] is True
result={'officialBootstrapExactStatementBoundary':'pass','guardAndHardProtectionsUnchanged':'pass',
        'containerStateAndSampledCgroupPeakRecorded':'pass','ownedCleanupOnExit0And137':'pass',
        'cleanupFailureStops':'pass','boundedTelemetryAndInnerTimer':'pass','telemetryFaultStillCleansVerifiedId':'pass',
        'diagnosisNeverAcceptsS':'pass',
        'LeanExecuted':False,'DockerExecuted':False}
(directory/'PROFILING-PURE-TEST.json').write_text(json.dumps(result,indent=2)+'\n',newline='\n')
print(json.dumps(result))
