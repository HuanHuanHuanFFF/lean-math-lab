"""Static probe source/input audit; cannot establish execution or proof acceptance."""
import hashlib, importlib.util, json, re, sys
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO

BASE=Path(__file__).resolve().parent
R=BASE/'profiling/20261007-ci7-timeouts'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
 request=json.loads((R/'PROBE-REQUEST.json').read_text(encoding='utf-8'))
 policy=json.loads((R/'source-policy.json').read_text(encoding='utf-8'))
 assert policy['errors']==0
 checker=REPO/'.tools/b699-contribution-platform-20261006/contribution/src/conjectures_contribution/lean.py'
 spec=importlib.util.spec_from_file_location('b699_official_probe_syntax',checker)
 official=importlib.util.module_from_spec(spec);sys.modules[spec.name]=official;spec.loader.exec_module(official)
 files={x['sha256']:x for x in policy['sourceFiles']};rows=[]
 for probe in request['probes']:
  p=REPO/probe['path'];assert sha(p)==probe['sha256'] and p.stat().st_size==probe['bytes']
  original=REPO/probe['originalSource']['path'];assert sha(original)==probe['originalSource']['sha256']
  text=p.read_text(encoding='utf-8');names=official.declarations(text)
  assert len(names)<=200 and all(x.startswith('Contribution.B699Profiling'+probe['id']+'.') for x in names)
  assert '#check '+probe['root'] in text and '#print axioms '+probe['root'] in text
  assert 'set_option profiler true\nset_option profiler.threshold 100\n' in text
  assert text.count('set_option maxHeartbeats 400000\n')==1
  assert not re.search(r'(?m)^\s*set_option maxHeartbeats (?!400000\b)',text)
  assert re.findall(r'^\s*set_option maxHeartbeats ([^\n]+)$',text,re.M)==['400000']
  assert probe['heartbeatLimit']==probe['effectiveSourceHeartbeatLimit']==400000
  assert not re.search(r'\b(sorry|admit|native_decide|axiom|unsafe)\b',text)
  assert files[probe['sha256']]['bytes']==probe['bytes']
  rows.append({'id':probe['id'],'sha256':sha(p),'bytes':p.stat().st_size,'sourceDeclarations':len(names),'actualCompiled':False,'proofAccepted':False,'scope':probe['details']['claim']})
 result={'status':'static diagnosis input audit only; actual profiler/Lean results pending','timeUTC':datetime.now(timezone.utc).isoformat(),'probes':rows,'selectedBytes':sum(x['bytes'] for x in rows),'sourceOnlyErrors':policy['errors'],'sourceOnlyReviews':policy['reviewFindings'],'originalSourceHashesUnchanged':True,'nativeLeanExecuted':False,'fullSContractUnchanged':True,'independentScopeReview':'pending','noFullRangeProofAcceptance':True}
 (R/'STATIC-PROBE-AUDIT.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'probes':len(rows),'bytes':result['selectedBytes'],'sourceDeclarations':[x['sourceDeclarations'] for x in rows],'sourceOnlyErrors':0,'sourceOnlyReviews':policy['reviewFindings'],'nativeLeanExecuted':False,'proofAccepted':False}))

if __name__=='__main__':main()
