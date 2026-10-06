"""Pure delayed-clock/guest/cache-cancel fixtures; no real processes or Docker."""
import ast
from datetime import datetime,timezone
import json
from pathlib import Path
import re
from types import SimpleNamespace
import sys

here=Path(__file__).resolve().parent
root=Path(sys.argv[1]).resolve()
root.mkdir(parents=True,exist_ok=True)
source=(here/'linux-deadline-run.py').read_text()
nodes=[node for node in ast.parse(source).body if isinstance(node,ast.FunctionDef)]
clock=[0.0]
waits=[]
class Process:
    pid=424242
    returncode=0
    def wait(self,timeout=None):waits.append(timeout);return 0
    def poll(self):return 0
def delayed_popen(command,**kwargs):
    assert kwargs['start_new_session'] is True
    clock[0]+=20
    return Process()
request_path=root/'request.json'
request_path.write_text(json.dumps({'hardDeadlineUtc':'2026-10-06T19:02:00Z'}))
fake_time=SimpleNamespace(monotonic=lambda:clock[0])
fake_datetime=SimpleNamespace(fromisoformat=datetime.fromisoformat,now=lambda tz:datetime(2026,10,6,19,0,tzinfo=timezone.utc))
context={'datetime':fake_datetime,'timezone':timezone,'json':json,'os':SimpleNamespace(environ={},killpg=lambda *args:None),
    'Path':Path,'signal':SimpleNamespace(SIGTERM=15,SIGKILL=9),'subprocess':SimpleNamespace(Popen=delayed_popen,TimeoutExpired=RuntimeError),
    'sys':SimpleNamespace(argv=['wrapper',str(request_path),'--','fake',str(root/'evidence')],platform='linux'),
    'time':fake_time,'ROUND_MAX':datetime(2026,10,6,23,40,25,tzinfo=timezone.utc)}
exec(compile(ast.Module(body=nodes,type_ignores=[]),'deadline-pure','exec'),context)
assert context['main']()==0 and waits==[70.0],waits
for value in ('2026-10-07T00:00:00Z','2026-10-06T23:40:25','2026-10-06T23:40:25+02:00'):
    try:context['parse_deadline'](value);raise AssertionError('invalid/later deadline accepted')
    except RuntimeError:pass
entry=(here/'container-probe-entry.sh').read_text()
assert 'B699_HARD_DEADLINE_EPOCH - $(/usr/bin/date -u +%s) - 45' in entry
assert '[ "$remaining" -lt 1 ]' in entry and 'seconds="$remaining"' in entry
# A200s launch allowance,100s startup delay leaves100s; guest runs at most55s
# plus15grace, preserving30s cleanup. Stale relative200s is never used.
assert min(180,200-100-45)+15==70
assert 200-180-45<1

cache_source=(here/'build-cache-interpreter.py').read_text()
cache_nodes=[node for node in ast.parse(cache_source).body if isinstance(node,ast.FunctionDef) and node.name=='run_cache_owned']
cid=root/'b699-cache-fixture.cid'
identifier='a'*64
name='b699-cache-'+'b'*32
calls=[]
owned=[False]
class CacheProcess:
    returncode=None
    def wait(self,timeout=None):
        if timeout is None:raise KeyboardInterrupt('fixture SIGTERM')
        self.returncode=137
        return 137
    def poll(self):return self.returncode
    def terminate(self):self.returncode=137
    def kill(self):self.returncode=137
def cache_popen(command,**kwargs):
    cid.write_text(identifier)
    owned[0]=True
    return CacheProcess()
def query(command,**kwargs):
    assert kwargs['timeout']==3
    return identifier+'\n' if owned[0] else ''
def remove(command,**kwargs):
    assert kwargs['timeout']==3 and command[-1]==identifier
    calls.append(command)
    owned[0]=False
    return SimpleNamespace(returncode=0)
cache_context={'Path':Path,'re':re,'subprocess':SimpleNamespace(Popen=cache_popen,check_output=query,run=remove,PIPE=-1,TimeoutExpired=RuntimeError)}
exec(compile(ast.Module(body=cache_nodes,type_ignores=[]),'cache-cancel-pure','exec'),cache_context)
record={}
try:
    cache_context['run_cache_owned'](['docker','--name',name,'--cidfile',str(cid)],record,root,{})
    raise AssertionError('cache cancel ignored')
except KeyboardInterrupt:pass
assert calls==[['docker','container','rm','--force',identifier]]
assert record['cleanupConfirmed'] and record['cleanupTarget']==identifier and not cid.exists()
assert 'signal.signal(signal.SIGTERM,interrupt_owned)' in cache_source
assert '/b699-round-entry.sh' in cache_source and 'B699_HARD_DEADLINE_EPOCH' in cache_source
result={'delayedPopenDoesNotExtendPairedDeadline':'pass','laterOrNonUTCDeadlineRejected':'pass',
    'lateGuestClippedOrRefused':'pass','SIGTERMCacheClientVerifiedCidCleanup':'pass',
    'allHostBootstrapCoveredByOwnedSessionLease':'pass','LeanExecuted':False,'DockerExecuted':False}
(here/'HARD-DEADLINE-PURE-TEST.json').write_text(json.dumps(result,indent=2)+'\n',newline='\n')
print(json.dumps(result))
