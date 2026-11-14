"""Read-only resource sample and bounded ordinary CI intake; no Lean."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import importlib.util
import json
import os
import shutil

here = Path(__file__).resolve().parent
publication = here.parents[3]
spec = importlib.util.spec_from_file_location('observed', publication/'environment/run-observed.py')
observed = importlib.util.module_from_spec(spec)
spec.loader.exec_module(observed)
_, available = observed.sample(-1)
snapshot = observed.kernel.CreateToolhelp32Snapshot(2, 0)
entry = observed.ProcessEntry()
entry.dwSize = observed.ctypes.sizeof(entry)
jobs = []
ok = observed.kernel.Process32FirstW(snapshot, observed.ctypes.byref(entry))
while ok:
    if entry.szExeFile.lower() in ('lean.exe', 'lake.exe', 'leantar.exe'):
        jobs.append({'pid': entry.th32ProcessID, 'name': entry.szExeFile})
    ok = observed.kernel.Process32NextW(snapshot, observed.ctypes.byref(entry))
observed.kernel.CloseHandle(snapshot)
resource = {'observedAt': datetime.now(timezone.utc).isoformat(), 'availablePhysicalBytes': available,
    'memorySource': 'Windows GlobalMemoryStatusEx', 'hostLogicalCpuCount': os.cpu_count(),
    'taskCpuQuota': 'unavailable on native Windows', 'taskMemoryCgroup': 'unavailable on native Windows',
    'freeDiskBytesD': shutil.disk_usage(here).free, 'relevantJobs': jobs,
    'nativeLeanEnabled': False, 'plannedWork': 'static diagnostics/source generation only'}
(here/'RESOURCE-PRECHECK.json').write_text(json.dumps(resource,indent=2)+'\n',encoding='utf-8',newline='\n')
source = Path('D:/ResearchArtifacts/b699-contribution-validation-20261006/37488807936')
stages = json.loads((source/'STAGES.json').read_text())
def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
reports = []
for identifier in ('Middle185_322', 'Middle323_999', 'High1000_30000'):
    label = 'raw-'+identifier
    log = source/(label+'.log')
    errors = []
    text = log.read_text(errors='replace')
    for line in text.splitlines():
        try:
            message = json.loads(line)
        except json.JSONDecodeError:
            continue
        if message.get('severity') == 'error':
            errors.append({'pos': message.get('pos'), 'data': message.get('data','')[:600]})
    stage = next(item for item in stages if item['label']==label)
    resource_before = json.loads((source/('resource-before-'+identifier+'.json')).read_text())
    lifecycle = json.loads((source/(label+'-CONTAINER-LIFECYCLE.json')).read_text())
    reports.append({'id':identifier,'logPath':str(log),'logBytes':log.stat().st_size,'logSha256':sha(log),
        'stage':stage,'completeErrorMessages':errors,'tail':text[-800:], 'lifecycle':lifecycle,
        'availableBudgetBeforeBytes':resource_before.get('availableBudgetBytes'),
        'physicalOOM': 'not established: no OOMKilled/memory.events/peak fields',
        'highExit137Cause': 'unknown' if identifier.startswith('High') else None})
report={'runId':37488807936,'owner':'/root/b699_contribution_environment','reports':reports,
        'oldFrozenSourcesModified':False,'nativeLeanExecuted':False}
(here/'CI7-DIAGNOSTIC.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps(resource))
for report in reports:
    print(json.dumps({'id':report['id'],'exit':report['stage']['exitCode'],
        'errors':[(m['pos'],m['data'][:180]) for m in report['completeErrorMessages']],
        'cleanup':report['lifecycle']['cleanupConfirmed'],'tail':report['tail'][-180:]}))
