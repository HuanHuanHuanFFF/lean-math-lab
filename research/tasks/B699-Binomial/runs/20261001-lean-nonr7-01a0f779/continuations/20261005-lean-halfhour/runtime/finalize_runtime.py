"""Final administrative record; independent S owns technical acceptance."""
import ast,ctypes,datetime as dt,hashlib,json,shutil,subprocess
from pathlib import Path
HERE=Path(__file__).resolve().parent;ROOT=Path.cwd()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def read(p):return json.loads(p.read_text())
def write(p,d):p.write_text(json.dumps(d,indent=2)+'\n')
now=dt.datetime.now(dt.timezone.utc).isoformat()
rawpath=HERE/'ci/37225133204-finiteheight/RAW_INTAKE.json';raw=read(rawpath)
for r in raw['members']:
    if not Path(r['storedPath']).is_file() or Path(r['storedPath']).stat().st_size!=r['bytes']:raise RuntimeError('Retained member missing or resized')
sigpath=HERE.parent/'reviews/FINITE-HEIGHT-INDEPENDENT-ACCEPTED.json';sig=read(sigpath)
diagnostic={'status':'failed-engineering-preflight-no-Lean','source':'40982733d42e16784acb8a2884b67701da26cb0e',
 'runId':37225855901,'jobId':111505234001,'jobStartUtc':'2026-10-04T18:48:39Z',
 'firstGuardUtc':'2026-10-04T18:48:41Z','firstGuardResult':'success','checkoutEndUtc':'2026-10-04T18:49:08Z',
 'rawErrorUtc':'2026-10-04T18:49:08.1618570Z','rawError':'RuntimeError: Expired job-start gate',
 'originalLogPath':'D:/ResearchArtifacts/b699-lean-halfhour/37225855901-job111505234001-original.log',
 'originalLogBytes':22495,'originalLogSha256':'d878404d29cbc1748011265e5c86a911271e2b224053381338a939b06ae6ce03',
 'cause':'The same launch deadline was tested again after27second checkout, despite early admission passing',
 'classification':'engineering job-admission bug, not mathematical/API/Lean complexity failure',
 'LeanCacheProofStarts':0,'actualArtifacts':[],
 'CExecutionFailure':'C did not freeze and publish the authorized engineering retry in time; actual18:54:22 was past1853:10publish/1853:30launch fallback',
 'retryActualExecuted':False,'deadlineExtensionUsed':False,'staticCorrection':'ENGINEERING-CANDIDATE-STATIC-READY.json',
 'mathematicalSourceUnchanged':True,'originalV1Preserved':'paper-stage.py/spec/READY and previous/v1-184451-* retain original bytes'}
log=Path(diagnostic['originalLogPath'])
if log.stat().st_size!=diagnostic['originalLogBytes'] or sha(log)!=diagnostic['originalLogSha256']:raise RuntimeError('Original failure log differs')
write(HERE/'SECOND-FAILURE-DIAGNOSTIC.json',diagnostic)
fields=[('length',ctypes.c_ulong),('load',ctypes.c_ulong)]+[(n,ctypes.c_ulonglong) for n in ['totalPhysical','availablePhysical','totalPagefile','availablePagefile','totalVirtual','availableVirtual','availableExtendedVirtual']]
M=type('M',(ctypes.Structure,),{'_fields_':fields});m=M();m.length=ctypes.sizeof(m)
ok=ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(m))
resource={'utc':now,'DfreeBytes':shutil.disk_usage('D:/').free,'minimumReserveBytes':10*1024**3,
 'localPhysicalAvailableBytes':m.availablePhysical if ok else None,'localMemoryAndCPUQuota':'unavailable Windows task limit; not inferred from hardware',
 'ownedCIActiveCount':0,'ownedTransferActiveCount':0,'localLeanLaunched':0,
 'activeEvidence':'first37225133204completedSUCCESS; second37225855901completedFAILUREbeforeLean; all C transfer/intake/log commands exited; no retry dispatched',
 'actualHeavyProfile':'CI serial2CPU nice19 -j1 asyncfalse Lean-M6144 startup6144MiB/tree5120MiB',
 'otherProcessesKilled':0,'filesDeleted':0,'permissionOrAuthChanges':False}
if resource['DfreeBytes']<resource['minimumReserveBytes']:raise RuntimeError('Disk reserve violated')
write(HERE/'FINAL-RESOURCE.json',resource)
workflow=ROOT/'.github/workflows/b699-finite-onehour.yml'
if '\n  push:' in workflow.read_text():raise RuntimeError('Automatic push still open')
for p in HERE.glob('*.py'):ast.parse(p.read_text())
final={'status':'first-target-accepted; second-engineering-rejected-and-pending','utc':now,
 'executor':'/root/tail2h_runtime','class':'Complex established recovery/CI execution','model':'gpt-6.1-sol','effort':'xhigh',
 'roundStartUtc':'2026-10-04T18:31:34Z','proofStopUtc':'2026-10-04T18:57:00Z','originalHardDeadlineUtc':'2026-10-04T19:01:34Z',
 'extensionUsed':False,'headObserved':subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),
 'fixedFirstSource':'7f57671f5a42e7b6f5a143769231e7817c5491b3','firstRun':37225133204,'firstArtifact':11312185911,
 'originalArchive':raw['archivePath'],'zipBytes':raw['zipBytes'],'zipSha256':raw['zipSha256'],
 'nativeMembers':len(raw['members']),'ordinaryMembers':raw['ordinaryMemberCount'],'binaryMembers':raw['binaryMemberCount'],
 'RAW_INTAKE':rawpath.relative_to(ROOT).as_posix(),'RAW_INTAKE_SHA256':sha(rawpath),
 'verifier':'/root/tail2h_verification','signature':sigpath.relative_to(ROOT).as_posix(),'signatureSha256':sha(sigpath),
 'acceptedOriginalRegion':sig['acceptedOriginalRegion'],'acceptedCorollary':sig['acceptedOriginalCorollaryRegion'],
 'completeExtraMathematicalInputs':[],'preservedCompleteOriginalScope':'{1,2,11,29} union [35,30000]',
 'unconditionalCompleteOriginalIndexIncrement':0,'acceptedSourceObjectCount':347,
 'actualNewCompileSources':2,'actualNewAXRoots':4,'actualNewNormalCheckerExits':[0,0],
 'firstCompileSeconds':4.966027498245239,'firstNormalCheckerSeconds':10.304163932800293,
 'firstRelevantImportPassed':True,'firstPreparationSeconds':155,'firstPeakTreeBytes':4210339840,
 'historical90BlocksOr345SourcesRecompiled':False,'secondFailure':'SECOND-FAILURE-DIAGNOSTIC.json',
 'second8Sources28AXStatus':'source-ready only, never Lean/cache executed; not accepted',
 'optionalLP3Status':'producer+literal source-ready only; not in409/v1; never executed',
 'engineeringCandidate':'ENGINEERING-CANDIDATE-STATIC-READY.json; five admission fixtures plus hash/AST/alias checks pass, no actual CI/Lean',
 'automaticPushClosed':True,'manualLaunchGuardUtc':'2026-10-04T18:49:00Z expired',
 'ordinaryInventory':'ordinary-inventory.json','resource':'FINAL-RESOURCE.json','publicationOwner':'Root; C no commit/push',
 'remaining':['actual full LocalPowerIncrement bound not formally supplied','true Psi distribution bound not supplied','old uniform theta suppliers not supplied','original largei lowratio/R7/low23 remain'],
 'fullB699Claimed':False,'noveltyClaimed':False}
write(HERE/'FINAL.json',final)
rows=[]
for p in sorted(HERE.rglob('*')):
    if not p.is_file() or '__pycache__' in p.parts or p.name=='ordinary-inventory.json':continue
    if p.suffix.lower() in ['.zip','.olean','.ilean','.o','.dll','.so','.part','.pyc']:raise RuntimeError('Unexpected binary in ordinary runtime')
    rows.append({'path':p.relative_to(ROOT).as_posix(),'bytes':p.stat().st_size,'sha256':sha(p)})
write(HERE/'ordinary-inventory.json',{'utc':now,'ownership':'C runtime only','selfExcluded':True,'memberCount':len(rows),'totalBytes':sum(r['bytes'] for r in rows),'files':rows})
print(json.dumps({'utc':now,'status':final['status'],'DfreeBytes':resource['DfreeBytes'],'ownedCI0':True,'ownedTransfer0':True,'localLean0':True,
 'ordinaryCount':len(rows),'ordinaryBytes':sum(r['bytes'] for r in rows),'finalSha256':sha(HERE/'FINAL.json'),'inventorySha256':sha(HERE/'ordinary-inventory.json')}))
