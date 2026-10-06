"""Bind the authorized diagnostic source limit change against exact old bytes."""
import hashlib, json, re
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO

BASE=Path(__file__).resolve().parent
R=BASE/'profiling/20261007-ci7-timeouts'
OLD=R/'revisions/heartbeat10M'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def source(p):return {'path':str(p.relative_to(REPO).as_posix()),'bytes':p.stat().st_size,'sha256':sha(p)}
def main():
 previous=json.loads((OLD/'PROBE-REQUEST.json').read_text(encoding='utf-8'))
 current=json.loads((R/'PROBE-REQUEST.json').read_text(encoding='utf-8'))
 policy=json.loads((R/'source-policy.json').read_text(encoding='utf-8'))
 assert sha(OLD/'PROBE-REQUEST.json')=='1182d63404fa3a11abb9890fd7ef8ebca82843339fa603fa37f25ec899b399d3'
 before={x['id']:x for x in previous['probes']};rows=[]
 for item in current['probes']:
  oldp=OLD/'probes'/Path(item['path']).name;newp=REPO/item['path']
  assert sha(oldp)==before[item['id']]['sha256'] and sha(newp)==item['sha256']
  old=oldp.read_text(encoding='utf-8');new=newp.read_text(encoding='utf-8')
  assert old.count('set_option maxHeartbeats 10000000\n')==1
  assert new==old.replace('set_option maxHeartbeats 10000000\n','set_option maxHeartbeats 400000\n',1)
  assert re.findall(r'^\s*set_option maxHeartbeats ([^\n]+)$',new,re.M)==['400000']
  assert item['details']==before[item['id']]['details'],'typed prefix/data metadata changed'
  assert item['originalSource']==before[item['id']]['originalSource']
  assert item['root']==before[item['id']]['root']
  assert item['heartbeatLimit']==item['effectiveSourceHeartbeatLimit']==400000
  assert item['wallTimeoutSeconds']==180
  assert sha(REPO/item['originalSource']['path'])==item['originalSource']['sha256']
  rows.append({'id':item['id'],'oldSnapshot':source(oldp),'newInput':source(newp),'exactDifferenceOnlyGlobalHeartbeatValue':True,'sameDataAndTypedPrefix':True,'effectiveGlobalMaxHeartbeats':400000,'scopedOverrides':[]})
 options=R/'PROFILE-OPTIONS-SOURCE.json';metadata=json.loads(options.read_text(encoding='utf-8'))
 metadata.pop('probeRequestSHA256Unchanged',None);metadata['probeRequestSHA256']=sha(R/'PROBE-REQUEST.json');metadata['priorRequestSHA256']='1182d63404fa3a11abb9890fd7ef8ebca82843339fa603fa37f25ec899b399d3'
 options.write_text(json.dumps(metadata,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 receipt={'status':'source-only diagnostic budget repair; no actual Lean or proof acceptance','timeUTC':datetime.now(timezone.utc).isoformat(),'oldRequest':source(OLD/'PROBE-REQUEST.json'),'newRequest':source(R/'PROBE-REQUEST.json'),'oldSourceOptionMismatch':'source10M overrode declaredCLI400k; historical inputs never executed','inputs':rows,'sourcePolicyErrors':policy['errors'],'sourcePolicyReviews':policy['reviewFindings'],'currentSelectedBytes':current['selectedBytes'],'contributionSevenSourcesUnchanged':True,'fullSContractUnchanged':True,'nativeLeanExecuted':False,'proofAccepted':False}
 assert receipt['sourcePolicyErrors']==0
 (R/'BUDGET-REPAIR-RECEIPT.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'newRequestSHA256':sha(R/'PROBE-REQUEST.json'),'bytes':current['selectedBytes'],'probes':len(rows),'effectiveHeartbeats':400000,'onlyBudgetChanged':True,'sourceOnlyErrors':policy['errors'],'sourceOnlyReviews':policy['reviewFindings'],'sevenSourcesUnmodified':True}))

if __name__=='__main__':main()
