"""Record frozen diagnostic inputs separately from final contribution artifacts."""
import hashlib, json
from datetime import datetime, timezone
from pathlib import Path

BASE=Path(__file__).resolve().parent
R=BASE/'profiling/20261007-ci7-timeouts'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
 request=json.loads((R/'PROBE-REQUEST.json').read_text(encoding='utf-8'))
 retained=json.loads((BASE/'RETAINED-SOURCES.json').read_text(encoding='utf-8'))
 entries={'prepare_ci7_profiles.py':('generator','Generate six exact independent source-prefix/subset diagnosis probes from fixed original sources.'),'audit_ci7_profiles.py':('audit','Bind source hashes, namespaces, policy, declaration counts and profiler options; actual execution pending.'),'retain_ci7_profiles.py':('generator','Retain diagnostic inputs separately from the complete contribution artifact set.')}
 for name in ['PROBE-REQUEST.json','STATIC-PROBE-AUDIT.json','PROFILE-OPTIONS-SOURCE.json','source-policy.json','resource-preflight.json','PREPARE.log']:
  entries['profiling/20261007-ci7-timeouts/'+name]=('diagnosis-record','Fixed bounded CI7 timeout localization plan/input/policy/resource evidence; no proof acceptance.')
 for probe in request['probes']:
  entries['profiling/20261007-ci7-timeouts/probes/'+Path(probe['path']).name]=('diagnosis-input','Exact serial180s profiling input; not one of the complete S contribution artifacts.')
 for entry in retained['requiredSupportingSources']:
  p=BASE/entry['path'];entry.update(bytes=p.stat().st_size,sha256=sha(p))
 present={x['path'] for x in retained['requiredSupportingSources']}
 for rel,(category,purpose) in entries.items():
  if rel in present:continue
  p=BASE/rel;retained['requiredSupportingSources'].append({'path':rel,'bytes':p.stat().st_size,'sha256':sha(p),'category':category,'purpose':purpose})
 retained['requiredSupportingBytes']=sum(x['bytes'] for x in retained['requiredSupportingSources'])
 retained['writtenAtUTC']=datetime.now(timezone.utc).isoformat()
 retained['diagnosticInputs']={'request':'profiling/20261007-ci7-timeouts/PROBE-REQUEST.json','requestSHA256':sha(R/'PROBE-REQUEST.json'),'sourceBytes':request['selectedBytes'],'sourceCount':6,'execution':'pending actual fixed Linux diagnosis; not artifact acceptance','proofAccepted':False}
 for entry in retained['externalRequiredReferences']:
  p=BASE/entry['path']
  if p.is_file():entry.update(bytes=p.stat().st_size,sha256=sha(p))
 (BASE/'RETAINED-SOURCES.json').write_text(json.dumps(retained,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'requestSHA256':sha(R/'PROBE-REQUEST.json'),'supportEntries':len(retained['requiredSupportingSources']),'diagnosticSources':6,'diagnosticSourceBytes':496719,'finalArtifactSetUnchanged':True,'nativeLeanExecuted':False}))

if __name__=='__main__':main()
