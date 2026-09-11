from pathlib import Path
from hashlib import sha256
from datetime import datetime,timezone
import json,re
REPO=Path.cwd()
RUN=REPO/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
SRC=RUN/'experiments/huan-pade-construction-5e2d13bb'; DST=RUN/'lean/Pade'
OUT=Path(__file__).resolve().parent
pairs={'Content.lean':'PContentTransform.lean','Coefficients.lean':'AdjacentCoefficientMultiplication.lean','Magnitude.lean':'ActualMagnitudeRecurrence.lean','Recurrence.lean':'ActualPolynomialRecurrence.lean','RawDet.lean':'ActualRawDeterminant.lean','RawHom.lean':'ActualRawHomogeneous.lean','Rows.lean':'ActualNormalizedRows.lean','Checkpoint.lean':'ActualDeterminantCheckpoint.lean'}
oldprefix='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-pade-construction-5e2d13bb».'
newprefix='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.'
rewrites={oldprefix+Path(src).stem:newprefix+Path(dst).stem for dst,src in pairs.items()}
expected={}
for fn in ['FREEZE_CONTENT_V1.json','FREEZE_COEFFICIENT_MULTIPLICATION_V1.json','FREEZE_ACTUAL_CHAIN_V1.json']:
 d=json.loads((SRC/fn).read_text(encoding='utf-8-sig'))
 for x in d.get('sources',[d]):expected[x['source']]=x['sha256']
def body(b):return b''.join(l for l in b.splitlines(keepends=True) if not l.lstrip(b'\xef\xbb\xbf').startswith(b'import '))
rows=[]
for dst,src in pairs.items():
 a=(SRC/src).read_bytes();b=(DST/dst).read_bytes()
 ia=re.findall(r'^import\s+(.+)$',a.decode('utf-8-sig'),re.M)
 ib=re.findall(r'^import\s+(.+)$',b.decode('utf-8-sig'),re.M)
 sh=sha256(a).hexdigest();dh=sha256(b).hexdigest()
 row={'source':(SRC/src).relative_to(REPO).as_posix(),'destination':(DST/dst).relative_to(REPO).as_posix(),'source_sha256':sh,'destination_sha256':dh,'frozen_source_matches':sh==expected[src],'exact_byte_equal':a==b,'non_import_bytes_equal':body(a)==body(b),'imports_before':ia,'imports_after':ib,'import_rewrite_matches':ib==[rewrites.get(m,m) for m in ia]}
 assert row['frozen_source_matches'] and row['non_import_bytes_equal'] and row['import_rewrite_matches']
 rows.append(row)
record={'utc':datetime.now(timezone.utc).isoformat(),'reviewer':'/root/pade_construction','scope':'read-only source/import correspondence and mathematical premise/boundary review; no Lean execution','status':'PASS_SOURCE_CORRESPONDENCE','rows':rows,'all_eight_non_import_bytes_identical':True,'exact_byte_identical_files':['Content.lean','Coefficients.lean'],'all_import_rewrites_expected':True,'mathematical_blocker_found_in_review':False,'kernel_acceptance':'pending primary verification; not inferred from this audit','worker_lean_invocations':0,'source_files_modified_by_reviewer':False,'script_sha256':sha256(Path(__file__).read_bytes()).hexdigest()}
(OUT/'integration-audit.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in record.items() if k!='rows'},ensure_ascii=False))
