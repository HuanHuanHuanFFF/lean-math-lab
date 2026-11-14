"""Administrative minimum ordinary-source selection; no proof checks or mutations."""
import hashlib,json,subprocess
from datetime import datetime,timezone
from pathlib import Path

BASE=Path(__file__).resolve().parent
REPO=BASE.parents[7]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def entry(rel,purpose):
 p=BASE/rel
 tracked=bool(subprocess.run(['git','ls-files','--',str(p.relative_to(REPO)).replace('\\','/')],cwd=REPO,text=True,capture_output=True,check=True).stdout.strip())
 changed=bool(subprocess.run(['git','status','--porcelain','--',str(p.relative_to(REPO)).replace('\\','/')],cwd=REPO,text=True,capture_output=True,check=True).stdout.strip())
 return {'path':rel,'bytes':p.stat().st_size,'sha256':sha(p),'purpose':purpose,'alreadyTracked':tracked,'currentlyChangedOrUntracked':changed}
def main():
 paths={}
 for folder,leaf,mapping in [
  ('20261007-above-polyglobal100','I11AboveFinalCandidate.lean','i11-above-local-proof.json'),
  ('20261007-below-runtime','I11BelowFinalCandidate.lean','i11-below-local-proof.json'),
  ('20261007-a151-structural','A151Packed.lean','a151-compression.json')]:
  root='repairs/'+folder+'/'
  paths[root+leaf]='Latest selected complete independent source; mathematical/runtime acceptance is pending official run.'
  paths[root+'FREEZE.json']='Exact source/root/full literal, source versions and required acceptance status.'
  paths[root+'analysis/'+mapping]='Required original declaration/local/global/namespace or all151 row source mapping.'
  paths[root+'analysis/data-roundtrip.json']='Decisive complete mathematical numeric-field/source representation comparison.'
  paths[root+'analysis/source-policy.json']='Unmodified official source-only rules and exact selected source SHA; human reviews remain.'
 for name in ['extract.py','compress_i11.py','pack_i11_growth.py','pack_consumer.py','compress_a151.py','freeze.py','repair_above_profile_errors.py','repair_below_runtime.py','freeze_a151_natrec.py','audit_above_profile_repair.py','audit_below_runtime.py','check_crt_reencoding.py']:
  paths[name]='Current minimal producer/audit import dependency; existing tracked unchanged files need no re-stage.'
 paths['v2/analysis/crt-reencoding-roundtrip.json']='Decisive36687cell/770427signed-cell original CRT representation comparison; not Lean acceptance.'
 paths['v2/FIRST-COMPILE-SNAPSHOT.json']='Small historical literal/provenance metadata used by the Above repair producer; no old Lean source payload required by the source selection.'
 paths['make_minimal_stage.py']='Administrative generation of this short exact file selection.'
 rows=[entry(rel,purpose) for rel,purpose in paths.items()]
 result={'status':'administrative minimal reproducible source selection, no proof or new runtime acceptance','timeUTC':datetime.now(timezone.utc).isoformat(),'pathBase':'implementation/ relative to publication20261006-contribution30000','selectedWholeSources':['repairs/20261007-above-polyglobal100/I11AboveFinalCandidate.lean','repairs/20261007-below-runtime/I11BelowFinalCandidate.lean','repairs/20261007-a151-structural/A151Packed.lean'],'files':rows,'ordinarySupportBytes':sum(x['bytes'] for x in rows),'untrackedOrChangedToStage':[x['path'] for x in rows if x['currentlyChangedOrUntracked']],'existingOriginalSources':'All six original consumer/source dependency files are existing tracked repository history, preserved. Parent-owned SOURCE-ENTRIES.json binds entry bytes. No pickle, oldolean or binary proof object is a delivered proof.','externalRequiredReferences':['../SOURCE-ENTRIES.json','../BUNDLE-SNAPSHOT.json','../environment/official fixed bootstrap and validation protocol','../reviews/current final7 source/literal/data coverage bindings'],'reproductionScope':'Current scripts regenerate candidate source from original source metadata. Historical fixedOldSource references in freezes are provenance, not active artifacts; old images/profiling data are not required to stage with the final seven. Runtime/rebuild caches remain D-drive scratch and are never treated as acceptance evidence.','notRequiredToStage':['RETAINED-SOURCES.json197-item inventory','oldfailed/intermediate large Lean drafts','allprofiling prefixes/revisions','__pycache__/*.pyc','.tools pickle/cache/object files','raworiginaldelivery archives'],'fullContract':'CompleteS={1,2,11,29}union[35,30000], alllegalNatn/i/j, actualsamePrime>=i divides bothcompletechoose; unchanged','actionsPerformed':'Read currentpaths/bytes/hashes/Git index/status only; no Lean, deletion, gitstage/commit, source/mirror/request mutation'}
 (BASE/'MINIMAL-STAGE-20261007.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'files':len(rows),'bytes':result['ordinarySupportBytes'],'untrackedOrChanged':len(result['untrackedOrChangedToStage']),'threeSourceSHA256':[x['sha256'] for x in rows if x['path'] in result['selectedWholeSources']],'proofAccepted':False}))

if __name__=='__main__':main()
