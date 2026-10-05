"""Source-only semantic/byte review of five conditional bridge targets."""
import hashlib,json,re
from datetime import datetime,timezone
from pathlib import Path
HERE=Path(__file__).resolve().parent
REPO=next(p for p in HERE.parents if (p/'.git').exists())
CONT=HERE.parent.parent
paths=[CONT/'20261004-tail-twohour-finish/supply/ThetaOriginalLegacy.lean',HERE.parent/'supply/ThetaLocalizedLegacy.lean',HERE/'ThetaOriginalExactLegacy.lean',HERE/'ThetaLocalizedExactLegacy.lean']
rows=[]
for path in paths:
    raw=path.read_bytes(); text=raw.decode('utf-8-sig')
    if re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',text): raise RuntimeError('Forbidden source construct')
    roots=re.findall(r'^#print axioms (\S+)\s*$',text,re.M)
    if not roots or len(roots)!=len(set(roots)): raise RuntimeError('Missing/duplicate AX inventory')
    rows.append({'path':path.relative_to(REPO).as_posix(),'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest(),'roots':roots})
if rows[0]['sha256']!='9682b9d5432d518702701349c7bcd172a978a13c6d850ec2b5ae6b6e8cbf836d': raise RuntimeError('Old unchanged bridge source differs')
if rows[1]['sha256']!='c4cbc577333009a5d873ac0ee8e6ec1d8f52be3d5471d1efcc6118bd48f0776f': raise RuntimeError('A frozen localized source differs')
result={'status':'independent-source-ready-not-kernel-accepted','verifier':'/root/tail2h_verification','utc':datetime.now(timezone.utc).isoformat(),'class':'complex-established-semantic-review','model':'gpt-6.1-sol','reasoningEffort':'xhigh','sources':rows,'producerRootCount':5,'independentExactLiteralRootCount':5,'conditionalInputs':{'globalUpper':'forall Real x>0, theta(x)-x<=x/36260','localizedUpper':'forall Real x>122568683, theta(x)-x<=x/36260','lower':'forall Real x>122568683, x-theta(x)<=x/(20*(log x)^2)'},'eachConsumerExternalUnboundedInputCount':2,'noneOfTheseInputsSupplied':True,'actualThetaFunction':'Pinned mathlib Chebyshev.theta','localizedSourceReview':'Original high-tail consumer uses U only at y>=122568684, hence y>122568683; L is used at z=y+y/4095>122568683. No analytical estimate is proved or assumed true by definition. Exact literals expose both unbounded Real hypotheses and real Nat prime witnesses.','conclusionDomains':['Gap4095 for all Nat y>=122568684 (localized helper)','Gap4095 for all Nat y>=10000000 (given two explicit estimates and accepted finite initial)','Original all Nat n/i/j with4883<=i<i? j<=n/2; exact source statement is4883<=i and i<j<=n/2, same actual Prime p>=i divides both complete chooses'],'finiteInitialDependencyStillPending':True,'oldThetaObjectsMustActuallyBeRestoredOrFreshChecked':True,'newUnconditionalOriginalIndicesFromTheseConditionalBridges':0,'sourceFrozenUntilLeaderACK':True,'kernelExecutionByS':False,'scriptSha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
result['conclusionDomains'][-1]='All Nat n/i/j with4883<=i and i<j<=n/2, same actual Prime p>=i divides both complete n.choose i and n.choose j'
(HERE/'BRIDGE-SOURCE-READY.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('4 frozen files /5 producer+5 independent exact conditional roots source-ready; no estimate/Gap/unconditional acceptance')
