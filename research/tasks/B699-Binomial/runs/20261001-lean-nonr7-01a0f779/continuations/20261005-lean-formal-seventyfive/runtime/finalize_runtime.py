"""Administrative final packet; named S signatures own mathematical acceptance."""
import ast
import ctypes
import datetime as dt
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
HERE=Path(__file__).resolve().parent
ROOT=Path.cwd()
REVIEW=HERE.parent/'reviews'
def sha(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        while block:=f.read(1024*1024):h.update(block)
    return h.hexdigest()
def load(p):return json.loads(p.read_text())
def write(p,d):p.write_text(json.dumps(d,indent=2)+'\n')
now=dt.datetime.now(dt.timezone.utc).isoformat()
head=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
packets=[]
for name in ['37207871560-upperinitial','37210857364-tinytail30000','37218764276-bridgelocal','37219682143-cutoff']:
    rawfile=HERE/'ci'/name/'RAW_INTAKE.json';raw=load(rawfile)
    for row in raw['members']:
        if not Path(row['storedPath']).is_file() or Path(row['storedPath']).stat().st_size!=row['bytes']:
            raise RuntimeError('Retained member absent or size changed:'+row['member'])
    archive=Path(raw['archivePath'])
    if not archive.is_file() or archive.stat().st_size!=raw['zipBytes']:raise RuntimeError('Full original archive absent or resized')
    packets.append({k:v for k,v in raw.items() if k!='members'} | {
        'RAW_INTAKE':rawfile.relative_to(ROOT).as_posix(),'RAW_INTAKE_SHA256':sha(rawfile),
        'resourceSummary':(rawfile.parent/'RESOURCE_SUMMARY.json').relative_to(ROOT).as_posix(),
        'actualNativeMemberCount':len(raw['members']),'retainedPresenceAndSize':'pass',
        'fullOriginalSHAGate':'prior COMPLETE packet and independently named S full archive binding; not rehashed for administration'})
signatures=[]
for name in ['UPPER-RANGES','TINY-ALL','THETA-INITIAL','TAIL30000','THETA-BRIDGES','GENERIC-CUTOFF']:
    path=REVIEW/(name+'-INDEPENDENT-ACCEPTED.json');d=load(path)
    signatures.append({'path':path.relative_to(ROOT).as_posix(),'bytes':path.stat().st_size,'sha256':sha(path),
        'status':d['status'],'verifier':d['verifier'],'signedUtc':d['signedUtc'],
        'fixedSourceCommit':d.get('fixedSourceCommit'),'actualRunId':d.get('actualRunId'),
        'artifactId':d.get('artifactId'),'archiveSha256':d.get('archiveSha256')})
class MemoryStatus(ctypes.Structure):
    _fields_=[('length',ctypes.c_ulong),('load',ctypes.c_ulong),('totalPhysical',ctypes.c_ulonglong),
      ('availablePhysical',ctypes.c_ulonglong),('totalPagefile',ctypes.c_ulonglong),('availablePagefile',ctypes.c_ulonglong),
      ('totalVirtual',ctypes.c_ulonglong),('availableVirtual',ctypes.c_ulonglong),('availableExtendedVirtual',ctypes.c_ulonglong)]
memory=MemoryStatus();memory.length=ctypes.sizeof(memory)
ok=ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(memory))
resource={'observedUtc':now,'DfreeBytes':shutil.disk_usage('D:/').free,'minimumDiskReserveBytes':10*1024**3,
    'localLeanLaunchedThisRound':0,'ownedCIActiveCount':0,'ownedTransferActiveCount':0,
    'activeCountEvidence':'All C-invoked transfer/intake sessions exited; latest safe GitHub snapshot records owned proof runs completed; third never published',
    'localProcessInventoryLimitation':'CIM command-line ownership unavailable; three unrelated/unidentified Python processes were observed and not touched; no claim of all-system process count zero',
    'physicalMemoryAvailableBytes':memory.availablePhysical if ok else None,
    'localMemoryLimitAndCPUQuota':'Windows workstation; no cgroup task limit asserted',
    'heavyExecutionLocation':'GitHub CI only; actual receipts pin2CPU nice19 -j1 asyncfalse',
    'actualCompositeProfile':'Lean-M6144 startup6144MiB tree5120MiB',
    'plannedVsActualProfileDiscrepancy':'Earlier phase passed10240/8192, terminal wrapper overwrote6144/5120; receipts authoritative, raw historical driver unchanged; second explicitly uses6/5',
    'systemJobsKilled':0,'filesDeleted':0,'authChanges':False,'tokensOrCapabilitiesStored':False}
if resource['DfreeBytes']<resource['minimumDiskReserveBytes']:raise RuntimeError('D disk reserve below10GiB')
write(HERE/'FINAL-RESOURCE.json',resource)
workflow=ROOT/'.github/workflows/b699-finite-onehour.yml'
if '\n  push:' in workflow.read_text():raise RuntimeError('Automatic proof push still enabled')
ast_count=0
for path in HERE.glob('*.py'):ast.parse(path.read_text());ast_count+=1
final={'schema':'b699-formal75-runtime-final-v1','status':'completed-authorized-accepted-units-and-preserved-pending-candidate',
    'recordedUtc':now,'executor':'/root/tail2h_runtime','taskClass':'Complex established recovery and CI execution',
    'model':'gpt-6.1-sol','reasoningEffort':'xhigh','ownership':['NEW/runtime/**','NEW/lean/**','.github/workflows/b699-finite-onehour.yml'],
    'roundStartUtc':'2026-10-04T16:35:50Z','originalHardDeadlineUtc':'2026-10-04T17:50:50Z',
    'stopNewProofUtc':'2026-10-04T17:35:00Z','workerHandoffUtc':'2026-10-04T17:43:00Z','extensionUsed':False,
    'administrativeHeadObserved':head,'packets':packets,'namedVerifierSignatures':signatures,
    'acceptedCompleteOriginalSet':'{1,2,11,29} union [35,30000]','newCompleteOriginalIndices':'15001 through30000; allNat n/j legal, same actual Prime p>=i divides both complete chooses',
    'acceptedFiniteGap':'4095*(p-y)<=y for allNat10M<=y<122568684, p>y actual Prime, extraMath=[]',
    'conditionalBridges':'first global/local theta and second generic/cutoff accepted conditional on explicit unbounded theta inputs; no unconditional original-index increment',
    'aggregateAcceptedSourceObjectCount':345,'newKernelModulesThisRound':8,'newKernelAXRootsThisRound':20,
    'old104Plus4RecompiledThisRound':False,'old90PrimeBlocksRecompiledThisRound':False,
    'thirdCandidate':'finite height/diagonal consumer is source-ready only, never published or executed; originalbadfreeze preserved, correctedstaticcandidate tested, no newCI',
    'thirdDiagnostic':'HEIGHT-DIAGNOSTIC.json','thirdCorrectedStaticReady':'HEIGHT-CORRECTED-STATIC-READY.json',
    'allOriginalsAndPartialsRetained':True,'duplicateRetention':'RAW_INTAKE member storedPath points verified exact prior bytes; ordinary/object parts not duplicated when matched',
    'resourceRecord':'FINAL-RESOURCE.json','automaticPushClosed':True,'expiredManualGuardUtc':'2026-10-04T17:28:00Z',
    'localPythonASTCount':ast_count,'localPythonAST':'pass','publicationBy':'Leader; C did not commit or push',
    'remaining':['two uniform unbounded Real theta bounds not proved','unconditional infinite Nat Gap not supplied','unresolved original largei>30000 lowratio region','R7 and low23 unchanged'],
    'noveltyClaimed':False,'fullB699Claimed':False}
write(HERE/'FINAL.json',final)
inventory=[]
for path in sorted(HERE.rglob('*')):
    if not path.is_file() or '__pycache__' in path.parts or path.name=='ordinary-inventory.json':continue
    if path.suffix.lower() in ['.zip','.olean','.ilean','.o','.so','.dll','.pyc','.part']:raise RuntimeError('Binary/cache inside runtime ordinary inventory:'+str(path))
    inventory.append({'path':path.relative_to(ROOT).as_posix(),'bytes':path.stat().st_size,'sha256':sha(path)})
write(HERE/'ordinary-inventory.json',{'utc':now,'ownership':'C runtime only','memberCount':len(inventory),
    'totalBytes':sum(r['bytes'] for r in inventory),'selfExcluded':True,'files':inventory})
print(json.dumps({'utc':now,'status':final['status'],'packets':len(packets),'namedSsignatures':len(signatures),
    'DfreeBytes':resource['DfreeBytes'],'ownedCIActiveCount':0,'ownedTransferActiveCount':0,'localLeanLaunched':0,
    'ordinaryFiles':len(inventory),'ordinaryBytes':sum(r['bytes'] for r in inventory),'finalSha256':sha(HERE/'FINAL.json')}))
